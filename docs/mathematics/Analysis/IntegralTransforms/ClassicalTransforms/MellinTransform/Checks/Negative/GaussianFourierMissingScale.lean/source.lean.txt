/- Intended rejection: zero is outside the actual real-power cancellation helper domain.
No zero-scale Schwartz constructor or full Fourier-moment claim is used. -/
import GRWTSK.Analysis.MellinTransform.Checks.Positive.GaussianFourierMoments
open GRWTSK.Analysis.MellinTransform.GaussianFourierMoments
example : (0:ℝ)^(1:ℝ)*(0:ℝ)^(-(1:ℝ))=1 :=
  scale_rpow_cancel 0 1 (le_refl (0:ℝ))
