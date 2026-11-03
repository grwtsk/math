/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletGenuineCharacterVectorNorm
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletCyclicBoundaryObstruction

set_option autoImplicit false
noncomputable section

/-! Necessary full-vector error budget near a genuine even character.
This is an obstruction/accounting result, not an accurate-vector supplier.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletEvenCharacterPerturbationBudget
open DirichletGenuineCharacterVectorNorm DirichletScalarCorrectionResidualBudget
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory
open ArithmeticCyclicOperatorStability
variable (N : ℕ) [NeZero N]

theorem necessary_even_character_budget (χ : DirichletCharacter ℂ N)
    (hN : N ≠ 1) (heven : χ (-1)=1) (t : ℝ) (q : ZMod N → ℝ) (λ : ℂ)
    (r : EuclideanSpace ℂ (ZMod N)) (ε δ : ℝ) (hε : 0 ≤ ε)
    (hclose : ‖characterVector N χ-r‖ ≤ δ*Real.sqrt (Nat.totient N : ℝ))
    (hres : ‖hamiltonianOperator N t q r-λ • r‖ ≤ ε*‖r‖) :
    2*|t| ≤ (ε*(1+δ)+(2*|t|+‖q‖+‖λ‖)*δ)*Real.sqrt (Nat.totient N : ℝ) := by
  have hl := DirichletCyclicBoundaryObstruction.even_character_residual_lower
    N χ hN heven t q λ
  change 2*|t| ≤ ‖hamiltonianOperator N t q (characterVector N χ)-λ • characterVector N χ‖ at hl
  have ht := residual_change_bound N (hamiltonianOperator N t q) λ (characterVector N χ) r
  have hn : ‖r‖ ≤ (1+δ)*Real.sqrt (Nat.totient N : ℝ) := by
    have he : r=characterVector N χ+(r-characterVector N χ) := by abel
    calc
      _ = ‖characterVector N χ+(r-characterVector N χ)‖ := congrArg norm he
      _ ≤ ‖characterVector N χ‖+‖r-characterVector N χ‖ := norm_add_le _ _
      _ ≤ (1+δ)*Real.sqrt (Nat.totient N : ℝ) := by
        rw [characterVector_norm, norm_sub_rev]
        linarith
  have hscale := ArithmeticCyclicHoppingBounds.operator_norm_bound N t q
  have hc : 0 ≤ 2*|t|+‖q‖+‖λ‖ := by positivity
  have hs := mul_le_mul_of_nonneg_right (add_le_add_right hscale ‖λ‖)
    (norm_nonneg (characterVector N χ-r))
  have hv := mul_le_mul_of_nonneg_left hclose hc
  have hr := mul_le_mul_of_nonneg_left hn hε
  nlinarith

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletEvenCharacterPerturbationBudget
