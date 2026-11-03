/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.CanonicalSupportCreditBridge

set_option autoImplicit false
noncomputable section

/-!
# Exact exponent loss under relative energy errors

If the height and radical observables each have relative error alpha<1,
an operator comparison at epsilon yields the larger arithmetic exponent
(1+epsilon)(1+alpha)/(1-alpha). The source comparison and both error
bounds are explicit hypotheses, not constructed arithmetic estimates.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.NumberTheory.ABC.RelativeEnergyExponentLoss
open RetainedFactorization AdditiveDefectEstimate

def adjustedEpsilon (ε α : ℝ) : ℝ := (1 + ε) * (1 + α) / (1 - α) - 1

theorem adjustedEpsilon_formula (ε α : ℝ) (hα : α ≠ 1) :
    adjustedEpsilon ε α = (ε + 2 * α + ε * α) / (1 - α) := by
  unfold adjustedEpsilon
  field_simp [sub_ne_zero.mpr (Ne.symm hα)]
  ring

theorem defect_bound_of_relative_energy_comparison (T : CoprimeAdditiveTriple)
    (ε α C E F : ℝ) (hε : 0 ≤ ε) (hα : α < 1)
    (hheight : |E - Real.log (T.c : ℝ)| ≤ α * Real.log (T.c : ℝ))
    (hradical : |F - Real.log (UniqueFactorizationMonoid.radical T.product : ℝ)| ≤
      α * Real.log (UniqueFactorizationMonoid.radical T.product : ℝ))
    (hcomparison : E ≤ C + (1 + ε) * F) :
    defect T (adjustedEpsilon ε α) ≤ C / (1 - α) := by
  let h := Real.log (T.c : ℝ)
  let r := Real.log (UniqueFactorizationMonoid.radical T.product : ℝ)
  have hh : (1 - α) * h ≤ E := by
    have hb := (abs_le.mp hheight).1
    dsimp [h]
    nlinarith
  have hr : F ≤ (1 + α) * r := by
    have hb := (abs_le.mp hradical).2
    dsimp [r]
    nlinarith
  have hm := mul_le_mul_of_nonneg_left hr (show 0 ≤ 1 + ε by linarith)
  have hd : 0 < 1 - α := by linarith
  have htotal : h ≤ (C + (1 + ε) * (1 + α) * r) / (1 - α) := by
    apply (le_div_iff₀ hd).mpr
    nlinarith
  change h - (1 + adjustedEpsilon ε α) * r ≤ C / (1 - α)
  unfold adjustedEpsilon
  have he : 1 + ((1 + ε) * (1 + α) / (1 - α) - 1) =
      (1 + ε) * (1 + α) / (1 - α) := by ring
  rw [he]
  calc
    _ ≤ (C + (1 + ε) * (1 + α) * r) / (1 - α) -
        ((1 + ε) * (1 + α) / (1 - α)) * r := sub_le_sub_right htotal _
    _ = C / (1 - α) := by ring

end GRWTSK.NumberTheory.ABC.RelativeEnergyExponentLoss
