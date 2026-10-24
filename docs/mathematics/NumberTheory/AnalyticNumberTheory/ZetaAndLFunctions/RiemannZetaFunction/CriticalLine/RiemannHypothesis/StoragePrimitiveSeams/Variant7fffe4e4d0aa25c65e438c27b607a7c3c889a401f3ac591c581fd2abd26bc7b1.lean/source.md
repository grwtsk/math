# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.StoragePrimitiveSeams.Variant7fffe4e4d0aa25c65e438c27b607a7c3c889a401f3ac591c581fd2abd26bc7b1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0f379f131ad7d861e4823b3dc6be831ec3951d72` · SHA-256 `7fffe4e4d0aa25c65e438c27b607a7c3c889a401f3ac591c581fd2abd26bc7b1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.PrimeStorage
import FormalResearch.RiemannHypothesis.Conversation.ShortSourceConvolution

/-!
# Storage controls cell monotonicity; its zeros are not primitive zeros

Batch 05 AC05-10 retains both seam types. Within every unchanged closed native
cell the primitive increment has exactly the storage sign. A nonzero storage
allows at most one primitive zero in that cell. The actual ordinary-prime
primitive is zero at its first source endpoint although storage there is
strictly negative. A separate signed two-atom comparison has zero storage and
nonzero primitive. No continuous zero transport or arithmetic sign cap is added.

Human seam distinction: grwtsk contributors. Local native-cell adapter and exact
source examples: OpenAI Codex. Mathlib square-root and logarithm laws are upstream.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.StoragePrimitiveSeams
open ArithmeticPrimitive OpenArithmeticSuppliers
noncomputable section

theorem positive_native_clock_increment {x y : ℝ} (hx : 0 < x) (hxy : x < y) :
    0 < 2 * (1 / Real.sqrt x - 1 / Real.sqrt y) := by
  have hs := Real.sqrt_lt_sqrt hx.le hxy
  have hi := one_div_lt_one_div_of_lt (Real.sqrt_pos.mpr hx) hs
  linarith

theorem exact_cell_difference (b : ℕ → ℝ) (N : ℕ) {x y : ℝ}
    (hx : (N : ℝ) ≤ x) (hx1 : x < N + 1)
    (hy : (N : ℝ) ≤ y) (hy1 : y < N + 1) :
    closedPrimitive b y - closedPrimitive b x =
      cumulativeDiscrepancy b N * (2 * (1 / Real.sqrt x - 1 / Real.sqrt y)) := by
  rw [closed_cell_interpolation b N hx hx1, closed_cell_interpolation b N hy hy1]
  unfold cellClock
  ring

theorem storage_sign_is_cell_increment_sign (b : ℕ → ℝ) {N : ℕ} {x y : ℝ}
    (hN : 1 ≤ N) (hx : (N : ℝ) ≤ x) (hxy : x < y) (hy1 : y < N + 1) :
    (closedPrimitive b x < closedPrimitive b y ↔ 0 < cumulativeDiscrepancy b N) ∧
    (closedPrimitive b y < closedPrimitive b x ↔ cumulativeDiscrepancy b N < 0) ∧
    (closedPrimitive b x = closedPrimitive b y ↔ cumulativeDiscrepancy b N = 0) := by
  have hx0 : 0 < x := lt_of_lt_of_le (by exact_mod_cast (by omega : 0 < N)) hx
  have hw := positive_native_clock_increment hx0 hxy
  have hd := exact_cell_difference b N hx (hxy.trans hy1) (hx.trans hxy.le) hy1
  constructor
  · constructor <;> intro h
    · nlinarith
    · have := mul_pos h hw; linarith
  constructor
  · constructor <;> intro h
    · nlinarith
    · have := mul_neg_of_neg_of_pos h hw; linarith
  constructor
  · intro h
    have hz : cumulativeDiscrepancy b N * (2 * (1 / Real.sqrt x - 1 / Real.sqrt y)) = 0 := by
      linarith
    exact (mul_eq_zero.mp hz).resolve_right hw.ne'
  · intro h
    rw [h, zero_mul] at hd
    linarith

theorem nonzero_storage_has_at_most_one_cell_zero (b : ℕ → ℝ) {N : ℕ} {x y : ℝ}
    (hN : 1 ≤ N) (hB : cumulativeDiscrepancy b N ≠ 0)
    (hx : x ∈ Set.Ico (N : ℝ) (N + 1)) (hy : y ∈ Set.Ico (N : ℝ) (N + 1))
    (hfx : closedPrimitive b x = 0) (hfy : closedPrimitive b y = 0) : x = y := by
  rcases lt_trichotomy x y with hxy | heq | hyx
  · have hz := (storage_sign_is_cell_increment_sign b hN hx.1 hxy hy.2).2.2.mp
      (hfx.trans hfy.symm)
    exact (hB hz).elim
  · exact heq
  · have hz := (storage_sign_is_cell_increment_sign b hN hy.1 hyx hx.2).2.2.mp
      (hfy.trans hfx.symm)
    exact (hB hz).elim

/-- The actual first closed ordinary-prime hinge vanishes, despite negative storage. -/
theorem actual_ordinary_first_endpoint_seams_differ :
    closedPrimitive ordinaryPrimeCoefficient 2 = 0 ∧
      cumulativeDiscrepancy ordinaryPrimeCoefficient 2 < 0 := by
  constructor
  · norm_num [closedPrimitive, finitePrimitive]
  · norm_num [cumulativeDiscrepancy]
    rw [ordinaryPrimeCoefficient_at_source_index (by norm_num : 2 ≤ 2)]
    norm_num
    have h := Real.log_lt_sub_one_of_pos (by norm_num : (0 : ℝ) < 2) (by norm_num : (2 : ℝ) ≠ 1)
    linarith

/-- The two atom comparison in this module, with the following exact parameterization.

def twoAtomComparison (n : ℕ) : ℝ := if n = 2 then 1 else if n = 3 then -1 else 0
-/
def twoAtomComparison (n : ℕ) : ℝ := if n = 2 then 1 else if n = 3 then -1 else 0

theorem comparison_storage_zero_primitive_nonzero :
    cumulativeDiscrepancy twoAtomComparison 3 = 0 ∧
      closedPrimitive twoAtomComparison 3 > 0 := by
  have hw := positive_native_clock_increment (by norm_num : (0 : ℝ) < 2)
    (by norm_num : (2 : ℝ) < 3)
  norm_num [cumulativeDiscrepancy, closedPrimitive, finitePrimitive, twoAtomComparison,
    Finset.sum_Icc_succ_top] at *
  exact hw

/-- The native ordinary-prime consumer retains the complete every-integer storage. -/
theorem actual_ordinary_cell_increase_iff {N : ℕ} {x y : ℝ}
    (hN : 1 ≤ N) (hx : (N : ℝ) ≤ x) (hxy : x < y) (hy1 : y < N + 1) :
    closedPrimitive ordinaryPrimeCoefficient x < closedPrimitive ordinaryPrimeCoefficient y ↔
      0 < Chebyshev.theta N - N + 1 := by
  rw [← PrimeStorage.actual_storage_eq_theta N hN]
  exact (storage_sign_is_cell_increment_sign ordinaryPrimeCoefficient hN hx hxy hy1).1

end
end GRWTSK.RiemannHypothesis.Conversation.StoragePrimitiveSeams
```
