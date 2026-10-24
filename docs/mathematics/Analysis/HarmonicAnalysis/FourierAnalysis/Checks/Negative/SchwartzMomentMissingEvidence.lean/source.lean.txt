/- Intended rejection: the actual nonzero Gaussian has no zero source-pair budget. -/
import GRWTSK.Analysis.Fourier.Checks.Positive.SchwartzMoments
open scoped FourierTransform SchwartzMap
open MeasureTheory
open GRWTSK.Analysis.Fourier.SchwartzMoments
open GRWTSK.Analysis.MellinTransform.CompactGaussianWindow
example :
    (1:ℝ)*(∫t : ℝ,(1+‖t‖)^0*‖(𝓕 (gaussianDyadicSchwartz 1 (by norm_num) 0)) t‖)≤
      (2:ℝ)^0*(coefficientMomentBound 0 0+coefficientMomentBound 0 0) :=
  uniform_fourier_one_plus_moment _ 0 1 0 (by norm_num) (by norm_num) (le_refl (0:ℝ))
