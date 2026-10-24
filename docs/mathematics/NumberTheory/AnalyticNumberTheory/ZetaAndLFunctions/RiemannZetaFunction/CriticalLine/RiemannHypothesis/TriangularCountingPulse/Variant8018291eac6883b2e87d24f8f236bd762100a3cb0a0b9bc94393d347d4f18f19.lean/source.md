# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TriangularCountingPulse.Variant8018291eac6883b2e87d24f8f236bd762100a3cb0a0b9bc94393d347d4f18f19

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ca92355480c5457dc733b4bc679386950d39bfa5` · SHA-256 `8018291eac6883b2e87d24f8f236bd762100a3cb0a0b9bc94393d347d4f18f19`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.NativeClockDecay

/-!
# The literal square-root-scale triangular counting pulse

B09's pulse starts at N=M^2, has storage a*min(k,2M-k), and is zero outside
that exact integer interval. Its unchanged counting weight 1+B_n-B_(n-1)
lies in [1-a,1+a]. The finite complete counting inventory telescopes exactly
and has the square-root storage envelope. These are changed positive weights,
not prime or Mangoldt weights.

The infinite disjoint pulse bank and every-p regulator divergence are separate
consumers. Human positive-weight and source-boundary direction: grwtsk contributors. Local literal pulse formalization: OpenAI Codex. Mathlib finite sums
and square-root laws retain upstream identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.TriangularCountingPulse
open ArithmeticPrimitive
open scoped BigOperators
noncomputable section

/-- The triangle in this module, with the following exact parameterization.

def triangle (M n : ℕ) : ℕ := min (n - M ^ 2) (M ^ 2 + 2 * M - n)
-/
def triangle (M n : ℕ) : ℕ := min (n - M ^ 2) (M ^ 2 + 2 * M - n)
/-- The storage in this module, with the following exact parameterization.

def storage (M : ℕ) (a : ℝ) (n : ℕ) : ℝ := a * triangle M n
-/
def storage (M : ℕ) (a : ℝ) (n : ℕ) : ℝ := a * triangle M n
/-- The weight in this module, with the following exact parameterization.

def weight (M : ℕ) (a : ℝ) (n : ℕ) : ℝ := 1 + storage M a n - storage M a (n - 1)
-/
def weight (M : ℕ) (a : ℝ) (n : ℕ) : ℝ := 1 + storage M a n - storage M a (n - 1)
/-- The coefficient in this module, with the following exact parameterization.

def coefficient (M : ℕ) (a : ℝ) (n : ℕ) : ℝ := weight M a n - 1
-/
def coefficient (M : ℕ) (a : ℝ) (n : ℕ) : ℝ := weight M a n - 1

theorem pulse_has_exact_source_shape {M k : ℕ} (hk : k ≤ 2 * M) (a : ℝ) :
    storage M a (M ^ 2 + k) = a * (min k (2 * M - k) : ℕ) := by
  simp [storage, triangle,
    show M ^ 2 + 2 * M - (M ^ 2 + k) = 2 * M - k by omega]

theorem pulse_is_zero_outside {M n : ℕ} (hn : n ≤ M ^ 2 ∨ M ^ 2 + 2 * M ≤ n) (a : ℝ) :
    storage M a n = 0 := by
  rcases hn with hn | hn
  · simp [storage, triangle, Nat.sub_eq_zero_of_le hn]
  · simp [storage, triangle, Nat.sub_eq_zero_of_le hn]

theorem pulse_height_le_M (M n : ℕ) : triangle M n ≤ M := by
  unfold triangle
  omega

theorem adjacent_triangle_difference_at_most_one (M n : ℕ) :
    |(triangle M n : ℝ) - triangle M (n - 1)| ≤ 1 := by
  have h1 : triangle M n ≤ triangle M (n - 1) + 1 := by unfold triangle; omega
  have h2 : triangle M (n - 1) ≤ triangle M n + 1 := by unfold triangle; omega
  have hr1 : (triangle M n : ℝ) ≤ triangle M (n - 1) + 1 := by exact_mod_cast h1
  have hr2 : (triangle M (n - 1) : ℝ) ≤ triangle M n + 1 := by exact_mod_cast h2
  exact abs_le.mpr ⟨by linarith, by linarith⟩

theorem literal_positive_weight_bounds (M n : ℕ) {a : ℝ} (ha : 0 ≤ a) :
    1 - a ≤ weight M a n ∧ weight M a n ≤ 1 + a := by
  have h := abs_le.mp (adjacent_triangle_difference_at_most_one M n)
  have hlo := mul_le_mul_of_nonneg_left h.1 ha
  have hhi := mul_le_mul_of_nonneg_left h.2 ha
  unfold weight storage
  constructor <;> nlinarith

theorem literal_counting_weights_positive (M n : ℕ) {a : ℝ} (ha0 : 0 ≤ a) (ha1 : a < 1) :
    0 < weight M a n := by
  have h := (literal_positive_weight_bounds M n ha0).1
  linarith

theorem exact_pulse_native_storage {M n : ℕ} (hM : 2 ≤ M) (hn : 1 ≤ n) (a : ℝ) :
    cumulativeDiscrepancy (coefficient M a) n = storage M a n := by
  have hs1 : storage M a 1 = 0 := pulse_is_zero_outside (Or.inl (by nlinarith)) a
  induction n with
  | zero => omega
  | succ n ih =>
    by_cases hz : n = 0
    · subst n; simpa [cumulativeDiscrepancy] using hs1.symm
    · have hn1 : 1 ≤ n := by omega
      have hstep : cumulativeDiscrepancy (coefficient M a) (n + 1) =
          cumulativeDiscrepancy (coefficient M a) n + coefficient M a (n + 1) := by
        unfold cumulativeDiscrepancy
        rw [Finset.sum_Icc_succ_top (by omega : 2 ≤ n + 1)]
      rw [hstep, ih hn1]
      simp only [coefficient, weight, Nat.add_sub_cancel]
      ring

theorem exact_complete_counting_inventory {M n : ℕ} (hM : 2 ≤ M) (hn : 1 ≤ n) (a : ℝ) :
    (∑ k ∈ Finset.Icc 2 n, weight M a k) = (n - 1 : ℕ) + storage M a n := by
  have h := exact_pulse_native_storage hM hn a
  unfold cumulativeDiscrepancy coefficient at h
  rw [Finset.sum_sub_distrib] at h
  have hcard : (∑ _k ∈ Finset.Icc 2 n, (1 : ℝ)) = (n - 1 : ℕ) := by
    simp [Nat.card_Icc]
  rw [hcard] at h
  linarith

theorem literal_square_root_storage_envelope (M n : ℕ) {a : ℝ} (ha : 0 ≤ a) :
    0 ≤ storage M a n ∧ storage M a n ≤ a * Real.sqrt n := by
  constructor
  · unfold storage; positivity
  · by_cases hn : n ≤ M ^ 2
    · rw [pulse_is_zero_outside (Or.inl hn) a]
      positivity
    · have hm : (M : ℝ) ≤ Real.sqrt n := by
        rw [Real.le_sqrt (Nat.cast_nonneg _) (Nat.cast_nonneg _)]
        exact_mod_cast (Nat.le_of_lt (Nat.lt_of_not_ge hn))
      have htri : (triangle M n : ℝ) ≤ M := by exact_mod_cast pulse_height_le_M M n
      exact mul_le_mul_of_nonneg_left (htri.trans hm) ha

end
end GRWTSK.RiemannHypothesis.Conversation.TriangularCountingPulse
```
