/- Exact normalized Gaussian consumers and an actual omitted-coefficient obstruction.
Mathematical direction grwtsk contributors; formal implementation OpenAI Codex.
Released under Apache-2.0; imported OpenAI/Mathlib results retain their authorship. -/
import GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.NormalizedGaussian
import Mathlib.Analysis.Real.Pi.Bounds
open MeasureTheory Set
open GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform
open NormalizedGaussian LogarithmicGaussian

example (s : ℂ) : MellinConvergent gaussianMellinProfile s :=
  gaussianMellinProfile_convergent s

example (s : ℂ) : mellin gaussianMellinProfile s = Complex.exp (s ^ 2) :=
  gaussianMellinProfile_mellin s

example (σ : ℝ) :
    mellinInv σ (fun s : ℂ => Complex.exp (s ^ 2)) 1 = gaussianMellinProfile 1 :=
  gaussianMellinProfile_inverse σ (by norm_num)

example (σ : ℝ) {x : ℝ} (hx : 0 < x) :
    ((1/(2*Real.pi):ℝ):ℂ)*
      (∫v : ℝ,(x:ℂ)^(-((σ:ℂ)+v*Complex.I))*Complex.exp (((σ:ℂ)+v*Complex.I)^2))=
      gaussianMellinProfile x :=
  gaussianMellin_inversion x hx σ

namespace GaussianNormalizationControl
noncomputable def unnormalizedProfile (x : ℝ) : ℂ :=
  Complex.exp (-(Complex.log (x : ℂ)) ^ 2 / 4)

lemma unnormalizedProfile_eq_quarter {x : ℝ} (hx : 0 < x) :
    unnormalizedProfile x = logarithmicGaussianWith (1/4 : ℂ) x := by
  unfold unnormalizedProfile logarithmicGaussianWith
  rw [← Complex.ofReal_log hx.le]
  congr 1
  ring

lemma unnormalizedProfile_convergent (s : ℂ) : MellinConvergent unnormalizedProfile s := by
  have hbase := logarithmicGaussianWith_convergent (b := (1/4 : ℂ)) (by norm_num) s
  unfold MellinConvergent at *
  exact hbase.congr_fun (fun x hx => by
    dsimp only
    rw [unnormalizedProfile_eq_quarter hx]) measurableSet_Ioi

lemma unnormalizedProfile_mellin_zero :
    mellin unnormalizedProfile 0 = ((Real.pi : ℂ) / (1/4 : ℂ)) ^ (1/2 : ℂ) := by
  have heq : mellin unnormalizedProfile 0 = mellin (logarithmicGaussianWith (1/4 : ℂ)) 0 := by
    apply setIntegral_congr_fun measurableSet_Ioi
    intro x hx
    dsimp only
    rw [unnormalizedProfile_eq_quarter hx]
  rw [heq, logarithmicGaussianWith_mellin (by norm_num)]
  simp [gaussianMellinWith]

lemma unnormalizedProfile_not_unit_transform : mellin unnormalizedProfile 0 ≠ 1 := by
  intro heq
  have hsq : (mellin unnormalizedProfile 0) ^ 2 = (Real.pi : ℂ) / (1/4 : ℂ) := by
    rw [unnormalizedProfile_mellin_zero]
    simp
  rw [heq] at hsq
  have hr := congrArg Complex.re hsq
  norm_num [Complex.div_re, Complex.normSq] at hr
  linarith [Real.pi_gt_three]
end GaussianNormalizationControl
