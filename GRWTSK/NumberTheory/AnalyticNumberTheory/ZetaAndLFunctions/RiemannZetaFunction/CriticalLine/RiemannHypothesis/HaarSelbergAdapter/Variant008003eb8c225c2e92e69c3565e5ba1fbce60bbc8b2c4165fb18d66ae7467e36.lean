import FormalResearch.RiemannHypothesis.Conversation.PrimeStorage
import FormalResearch.RiemannHypothesis.Conversation.WeightedHodge

/-!
# Uniform Haar detail is a literal short-interval theta discrepancy

Batch 07's fixed finite block adapter retains every integer and the +1 storage
convention. The squared Haar detail is at most half the complete short-interval
square sum. This does not identify uniform widths with native inverse-root
widths, or transfer a fixed-family estimate to a source-selected tree.

Human mathematical direction: grwtsk contributors. Local finite adapter and
Lean implementation: OpenAI Codex. Chebyshev and finite-sum laws retain their
Mathlib formal-artifact origin.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.HaarSelbergAdapter

open ArithmeticPrimitive OpenArithmeticSuppliers
open scoped BigOperators
noncomputable section

/-- The block error in this module, with the following exact parameterization.

def blockError (B : ℕ → ℝ) (n h : ℕ) : ℝ := B (n + h) - B n
-/
def blockError (B : ℕ → ℝ) (n h : ℕ) : ℝ := B (n + h) - B n

/-- The uniform haar in this module, with the following exact parameterization.

def uniformHaar (B : ℕ → ℝ) (a h : ℕ) : ℝ := ((∑ r ∈ Finset.range h, B (a + r)) - ∑ r ∈
Finset.range h, B (a + h + r)) / Real.sqrt (2 * (h : ℝ))
-/
def uniformHaar (B : ℕ → ℝ) (a h : ℕ) : ℝ :=
  ((∑ r ∈ Finset.range h, B (a + r)) - ∑ r ∈ Finset.range h, B (a + h + r)) /
    Real.sqrt (2 * (h : ℝ))

theorem haar_eq_block_errors (B : ℕ → ℝ) (a h : ℕ) :
    uniformHaar B a h = -(∑ r ∈ Finset.range h, blockError B (a + r) h) /
      Real.sqrt (2 * (h : ℝ)) := by
  unfold uniformHaar blockError
  simp_rw [show ∀ r : ℕ, a + r + h = a + h + r by omega]
  rw [Finset.sum_sub_distrib]
  ring

theorem haar_square_le (B : ℕ → ℝ) (a h : ℕ) (hh : 0 < h) :
    (uniformHaar B a h) ^ 2 ≤ (1 / 2 : ℝ) *
      ∑ r ∈ Finset.range h, (blockError B (a + r) h) ^ 2 := by
  have hhr : (0 : ℝ) < h := by exact_mod_cast hh
  have hcs := WeightedHodge.finite_refinement_mono (Finset.range h) (fun _ => (1 : ℝ))
    (fun r => blockError B (a + r) h) (by intros; norm_num) (by simpa using hhr.ne')
  simp only [Finset.sum_const, Finset.card_range, nsmul_eq_mul, mul_one, div_one] at hcs
  have hsum := (div_le_iff₀ hhr).mp hcs
  rw [haar_eq_block_errors, div_pow, neg_sq, Real.sq_sqrt (by positivity)]
  apply (div_le_iff₀ (by positivity : (0 : ℝ) < 2 * h)).mpr
  nlinarith

theorem actual_storage_block_error {n : ℕ} (hn : 1 ≤ n) (h : ℕ) :
    blockError (cumulativeDiscrepancy ordinaryPrimeCoefficient) n h =
      Chebyshev.theta (n + h : ℕ) - Chebyshev.theta n - h := by
  unfold blockError
  rw [PrimeStorage.actual_storage_eq_theta _ (by omega),
    PrimeStorage.actual_storage_eq_theta _ hn, Nat.cast_add]
  ring

theorem actual_theta_haar {a : ℕ} (ha : 1 ≤ a) (h : ℕ) :
    uniformHaar (cumulativeDiscrepancy ordinaryPrimeCoefficient) a h =
      -(∑ r ∈ Finset.range h,
        (Chebyshev.theta (a + r + h : ℕ) - Chebyshev.theta (a + r : ℕ) - h)) /
        Real.sqrt (2 * (h : ℝ)) := by
  rw [haar_eq_block_errors]
  congr 2
  apply Finset.sum_congr rfl
  intro r _hr
  exact actual_storage_block_error (by omega) h

theorem actual_theta_haar_square_le {a h : ℕ} (ha : 1 ≤ a) (hh : 0 < h) :
    (uniformHaar (cumulativeDiscrepancy ordinaryPrimeCoefficient) a h) ^ 2 ≤
      (1 / 2 : ℝ) * ∑ r ∈ Finset.range h,
        (Chebyshev.theta (a + r + h : ℕ) - Chebyshev.theta (a + r : ℕ) - h) ^ 2 := by
  have heq (r : ℕ) : blockError (cumulativeDiscrepancy ordinaryPrimeCoefficient) (a + r) h =
      Chebyshev.theta (a + r + h : ℕ) - Chebyshev.theta (a + r : ℕ) - h :=
    actual_storage_block_error (by omega) h
  simpa only [heq] using haar_square_le (cumulativeDiscrepancy ordinaryPrimeCoefficient) a h hh

end
end GRWTSK.RiemannHypothesis.Conversation.HaarSelbergAdapter
