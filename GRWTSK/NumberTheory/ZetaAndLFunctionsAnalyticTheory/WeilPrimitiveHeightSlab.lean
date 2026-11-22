/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveCofinalStageCriterion

/-! # Stability of the signed finite Weil head across heights -/

set_option autoImplicit false
noncomputable section

open Set
open GRWTSK.NumberTheory.WeilNegativeWitness
  (CriticalStripZero heightCount heightWindow mem_heightWindow zeroMultiplicity)
open GRWTSK.MeasureAndIntegration.FourierDerivativeDecay (derivativeL1Cost)
open GRWTSK.MeasureAndIntegration.DyadicDecayMoment (tailBudget tailBudget_one)

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open SourcePrimeCorrelation

/-- The change in the signed head is supported on the slab from the lower
height (included) to the upper height (excluded). One omitted-tail budget
at the lower height bounds this change. -/
theorem abs_primitiveHeightContribution_sub_le_tailBudget
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive)
    {D L : ℝ} (hD : 0 ≤ D) (hL : 0 ≤ L)
    (hcount : ∀ U : ℝ, 2 ≤ U →
      (heightCount χ hp U : ℝ) ≤ D * U * (Real.log U + L))
    (f : ℝ → ℂ) {T H K : ℝ} (hT : 0 ≤ T) (hf : WeilNegativeWitness.Admissible f)
    (hs : tsupport f ⊆ Icc (-T) T) (J : ℕ)
    (hJ : (2 : ℝ) ^ J ≤ 1 + H) (hHK : H ≤ K) :
    |primitiveHeightContribution χ hp f K - primitiveHeightContribution χ hp f H| ≤
      primitiveHeightTailBudget D L f T J := by
  classical
  let v : CriticalStripZero χ → ℂ := fun ρ => (zeroMultiplicity χ ρ : ℂ) *
    ∫ r : ℝ, correlation f r * Complex.exp ((ρ.1 - 1 / 2) * (r : ℂ))
  let t : CriticalStripZero χ → ℂ := fun ρ => if H ≤ |ρ.1.im| then v ρ else 0
  let S := heightWindow χ hp K \ heightWindow χ hp H
  have hsub : heightWindow χ hp H ⊆ heightWindow χ hp K := fun ρ hρ =>
    (mem_heightWindow χ hp K ρ).mpr (((mem_heightWindow χ hp H ρ).mp hρ).trans_le hHK)
  have hsum : (∑ ρ ∈ S, v ρ) + (∑ ρ ∈ heightWindow χ hp H, v ρ) =
      ∑ ρ ∈ heightWindow χ hp K, v ρ := Finset.sum_sdiff hsub
  have hdiff : (∑ ρ ∈ heightWindow χ hp K, v ρ) - (∑ ρ ∈ heightWindow χ hp H, v ρ) =
      ∑ ρ ∈ S, v ρ := sub_eq_of_eq_add hsum.symm
  have htail := primitive_height_tail_absolute_bound_of_heightCount χ hp hD hL hcount
    f T hT hf hs 1 J (by norm_num) H hJ
  change Summable (fun ρ => ‖t ρ‖) ∧ (∑' ρ, ‖t ρ‖) ≤ _ at htail
  have hslab : ∀ ρ ∈ S, v ρ = t ρ := by
    intro ρ hρ
    have hnot := (Finset.mem_sdiff.mp hρ).2
    have hheight := le_of_not_gt (fun h => hnot ((mem_heightWindow χ hp H ρ).mpr h))
    simp [t, hheight]
  calc
    _ = |(∑ ρ ∈ S, v ρ).re| := by
      change |(∑ ρ ∈ heightWindow χ hp K, v ρ).re -
        (∑ ρ ∈ heightWindow χ hp H, v ρ).re| = _
      rw [← Complex.sub_re, hdiff]
    _ ≤ ‖∑ ρ ∈ S, v ρ‖ := Complex.abs_re_le_norm _
    _ ≤ ∑ ρ ∈ S, ‖v ρ‖ := norm_sum_le _ _
    _ = ∑ ρ ∈ S, ‖t ρ‖ := Finset.sum_congr rfl (fun ρ hρ => congrArg norm (hslab ρ hρ))
    _ ≤ ∑' ρ, ‖t ρ‖ := htail.1.sum_le_tsum S (fun ρ _ => norm_nonneg (t ρ))
    _ ≤ _ := htail.2.trans_eq (by
      rw [tailBudget_one, show (2 : ℝ) * T * (1 / 2) = T by ring]
      unfold primitiveHeightTailBudget
      ring)

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
