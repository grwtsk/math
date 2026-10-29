/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported Mathlib finite sums and inner-product theory retain upstream authorship/licenses. -/
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Algebra.Order.BigOperators.Ring.Finset
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
# Signed finite-family approximation with the full input-mass cost

The residual is the literal signed sum of a specified residual family.
Its squared norm is bounded by the coefficient square mass times the sum
of residual squared norms. Orthogonality is explicit when it removes a
mixed term; without it, the mixed term is retained by an exact identity.
The endpoint handoff is conditional on the displayed source equality/error
and orthogonality. It is not a proof of RH or of the pickup-response API bridge.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.InnerProductSpace.FiniteSignedApproximation

variable {I E : Type*} [Fintype I] [NormedAddCommGroup E] [InnerProductSpace ℝ E]

def signedSum (a : I → ℝ) (u : I → E) : E := ∑ i, a i • u i

def coefficientMass (a : I → ℝ) : ℝ := ∑ i, (a i) ^ 2

def residualTrace (r : I → E) : ℝ := ∑ i, ‖r i‖ ^ 2

theorem coefficientMass_nonnegative (a : I → ℝ) : 0 ≤ coefficientMass a :=
  Finset.sum_nonneg (fun _ _ => sq_nonneg _)

theorem signedSum_add (a : I → ℝ) (p r : I → E) :
    signedSum a (fun i => p i + r i) = signedSum a p + signedSum a r := by
  simp only [signedSum, smul_add, Finset.sum_add_distrib]

/-- No signs are discarded from the source; absolute values occur only in the residual estimate. -/
theorem signedSum_norm_sq_le (a : I → ℝ) (r : I → E) :
    ‖signedSum a r‖ ^ 2 ≤ coefficientMass a * residualTrace r := by
  classical
  have hn : ‖signedSum a r‖ ≤ ∑ i, |a i| * ‖r i‖ := by
    calc
      _ ≤ ∑ i, ‖a i • r i‖ := norm_sum_le _ _
      _ = _ := by simp only [norm_smul, Real.norm_eq_abs]
  have hs : 0 ≤ ∑ i, |a i| * ‖r i‖ :=
    Finset.sum_nonneg (fun _ _ => mul_nonneg (abs_nonneg _) (norm_nonneg _))
  have hc := Finset.sum_mul_sq_le_sq_mul_sq Finset.univ
    (fun i => |a i|) (fun i => ‖r i‖)
  simp only [sq_abs] at hc
  have hp := mul_nonneg (sub_nonneg.mpr hn)
    (add_nonneg hs (norm_nonneg (signedSum a r)))
  unfold coefficientMass residualTrace
  nlinarith

/-- Exact mixed term before any orthogonality assumption. -/
theorem signedSum_norm_sq_split (a : I → ℝ) (p r : I → E) :
    ‖signedSum a (fun i => p i + r i)‖ ^ 2 =
      ‖signedSum a p‖ ^ 2 + 2 * inner ℝ (signedSum a p) (signedSum a r) +
        ‖signedSum a r‖ ^ 2 := by
  rw [signedSum_add]
  simp only [← real_inner_self_eq_norm_sq, inner_add_left, inner_add_right]
  rw [real_inner_comm (signedSum a r) (signedSum a p)]
  ring

theorem signedSum_norm_sq_le_of_orthogonal (a : I → ℝ) (p r : I → E)
    (horth : inner ℝ (signedSum a p) (signedSum a r) = 0)
    {η : ℝ} (htrace : residualTrace r ≤ η) :
    ‖signedSum a (fun i => p i + r i)‖ ^ 2 ≤
      ‖signedSum a p‖ ^ 2 + coefficientMass a * η := by
  have hr := (signedSum_norm_sq_le a r).trans
    (mul_le_mul_of_nonneg_left htrace (coefficientMass_nonnegative a))
  rw [signedSum_norm_sq_split, horth]
  linarith

/-- Exact-source endpoint handoff: diagonal subtraction and the quarter allowance stay visible. -/
theorem endpoint_le_of_orthogonal_residual (a : I → ℝ) (p r : I → E)
    {endpoint diagonal η : ℝ}
    (hsource : |endpoint - (‖signedSum a (fun i => p i + r i)‖ ^ 2 - diagonal)| ≤ 1 / 4)
    (horth : inner ℝ (signedSum a p) (signedSum a r) = 0)
    (htrace : residualTrace r ≤ η) :
    endpoint ≤ ‖signedSum a p‖ ^ 2 - diagonal + 1 / 4 + coefficientMass a * η := by
  have hs := (abs_le.mp hsource).2
  have hb := signedSum_norm_sq_le_of_orthogonal a p r horth htrace
  linarith

/-- Algebraic eigenvalue-ratio consumer only: the spectral bounds are explicit premises. -/
theorem spectral_ratio_le {λ₀ λ₁ ν₀ ν₁ ε : ℝ}
    (hν₀ : 0 < ν₀) (hλ₀ : ν₀ ≤ λ₀) (hλ₁ : λ₁ ≤ ν₁ + ε)
    (hupper : 0 ≤ ν₁ + ε) :
    λ₁ / λ₀ ≤ (ν₁ + ε) / ν₀ := by
  have hp : 0 < λ₀ := hν₀.trans_le hλ₀
  calc
    _ ≤ (ν₁ + ε) / λ₀ := div_le_div_of_nonneg_right hλ₁ hp.le
    _ ≤ _ := div_le_div_of_nonneg_left hupper hν₀ hλ₀

theorem spectral_ratio_lt_one {λ₀ λ₁ ν₀ ν₁ ε : ℝ}
    (hν₀ : 0 < ν₀) (hλ₀ : ν₀ ≤ λ₀) (hλ₁ : λ₁ ≤ ν₁ + ε)
    (hgap : ν₁ + ε < ν₀) : λ₁ / λ₀ < 1 := by
  have hp : 0 < λ₀ := hν₀.trans_le hλ₀
  apply (div_lt_one hp).mpr
  exact hλ₁.trans_lt (hgap.trans_le hλ₀)

end GRWTSK.Analysis.InnerProductSpace.FiniteSignedApproximation
