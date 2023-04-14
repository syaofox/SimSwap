if (!(Test-Path -Path "venv")) {
    Write-Output  "Creating venv for python..."
    python -m venv venv
}
.\venv\Scripts\activate

Write-Output "Installing deps..."

pip install torch==1.12.1+cu116 torchvision==0.13.1+cu116 torchaudio==0.12.1 --extra-index-url https://download.pytorch.org/whl/cu116
pip install --ignore-installed imageio
pip install insightface==0.2.1 onnxruntime moviepy
pip install onnxruntime-gpu

Write-Output "Install completed"
Read-Host | Out-Null ;