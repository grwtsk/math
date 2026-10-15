/- Actual coefficient-one consumers and the sharp absolute-interchange obstruction.
Source and license notices are in GaussianContour.lean. Apache-2.0. -/
import GRWTSK.NumberTheory.LSeries.GaussianContour

namespace GRWTSK.NumberTheory.LSeries.GaussianContour.Checks
noncomputable section
open MeasureTheory
open GRWTSK.Analysis.MellinTransform.NormalizedGaussian

theorem gaussianContour_generic (σ Z : ℝ) (hσ : 1 < σ) (hZ : 0 < Z) :
    gaussianZetaContour σ Z = ∑' n : ℕ, gaussianMellinProfile ((n+1 : ℝ)/Z) :=
  gaussianZetaContour_eq_tsum σ Z hσ hZ

theorem gaussianContour_two_one :
    gaussianZetaContour 2 1 = ∑' n : ℕ, gaussianMellinProfile (n+1 : ℝ) := by
  simpa using gaussianZetaContour_eq_tsum 2 1 (by norm_num) (by norm_num)

theorem gaussianProfile_sum_one :
    Summable (fun n : ℕ => gaussianMellinProfile (n+1 : ℝ)) := by
  simpa using gaussianMellinProfile_sum_summable 1 (by norm_num)

/-- The p-series supplier itself fails at the boundary. -/
theorem gaussianDirichletWeight_one_not_summable :
    ¬ Summable (fun n : ℕ => (n+1 : ℝ)^(-(1:ℝ))) := by
  rw [gaussianDirichletWeight_summable_iff]
  norm_num

/-- At sigma=Z=1 the actual integrated norms are a nonzero Gaussian factor
 times the harmonic sequence, so the required absolute interchange bound fails.
 This makes no claim that all analytically continued contour formulas are false. -/
theorem gaussianZetaSummand_one_integral_norm_not_summable :
    ¬ Summable (fun n : ℕ => ∫ v : ℝ, ‖gaussianZetaSummand 1 1 n v‖) := by
  have hg : (∫ v : ℝ, Real.exp (-(v^2))) = Real.sqrt Real.pi := by
    simpa using integral_gaussian (1 : ℝ)
  have hk : (1 : ℝ)^(1 : ℝ) * Real.exp ((1:ℝ)^2) *
      (∫ v : ℝ, Real.exp (-(v^2))) ≠ 0 := by
    rw [hg]
    positivity
  intro hs
  apply gaussianDirichletWeight_one_not_summable
  apply (summable_mul_left_iff hk).mp
  simpa only [gaussianZetaSummand_integral_norm (1:ℝ) 1 (by norm_num)] using hs

end
end GRWTSK.NumberTheory.LSeries.GaussianContour.Checks
