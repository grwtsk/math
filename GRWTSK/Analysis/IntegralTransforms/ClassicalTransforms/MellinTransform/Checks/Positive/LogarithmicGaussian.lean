/- Actual all-complex logarithmic Gaussian consumers. Apache-2.0.
Mathematical direction grwtsk contributors; formal implementation OpenAI Codex.
Imported results retain original authorship and licenses. -/
import GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.LogarithmicGaussian
open GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.LogarithmicGaussian

example (s : ℂ) :
    MellinConvergent (logarithmicGaussianWith (1 + Complex.I)) s :=
  logarithmicGaussianWith_convergent (by norm_num) s

example (s : ℂ) :
    mellin (logarithmicGaussianWith (1 + Complex.I)) s =
      gaussianMellinWith (1 + Complex.I) s :=
  logarithmicGaussianWith_mellin (by norm_num) s

example (s : ℂ) :
    MellinConvergent GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.ReverseInversion.logarithmicGaussian s :=
  logarithmicGaussian_convergent_all s

example (s : ℂ) :
    mellin GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.ReverseInversion.logarithmicGaussian s ≠ 0 :=
  logarithmicGaussian_mellin_ne_zero s

example :
    mellin GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.ReverseInversion.logarithmicGaussian 1 =
      Complex.exp (1 / (4 * (Real.pi : ℂ))) := by
  rw [logarithmicGaussian_mellin_all]
  simp [GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.ReverseInversion.gaussianMellin]

open MeasureTheory Set
open GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.LogarithmicGaussian
namespace GaussianWidthControl

lemma zero_width_profile (x : ℝ) : logarithmicGaussianWith 0 x = 1 := by
  simp [logarithmicGaussianWith]

lemma zero_width_nonnegative : 0 ≤ (0 : ℂ).re := by norm_num

lemma zero_width_not_convergent : ¬ MellinConvergent (logarithmicGaussianWith 0) 0 := by
  intro hc
  have hi := GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.ReverseInversion.integrable_logProfile
    (σ := 0) hc
  have hconst : Integrable (fun _ : ℝ => (1 : ℂ)) := by
    simpa [logarithmicGaussianWith] using hi
  have hfinite : IsFiniteMeasure (volume : Measure ℝ) :=
    (integrable_const_iff_isFiniteMeasure (one_ne_zero : (1 : ℂ) ≠ 0)).mp hconst
  exact (not_isFiniteMeasure_iff.mpr Real.volume_univ) hfinite

end GaussianWidthControl
