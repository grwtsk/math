# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TriangularRealCounting.Variant0604666683458e99f311287c7fc6e52e8a0fc0cb5b6098d6ca845c5feb047d4a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b3211ca84a3b57c71c23d0ba230f1f59d6690d98` · SHA-256 `0604666683458e99f311287c7fc6e52e8a0fc0cb5b6098d6ca845c5feb047d4a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.TriangularCountingPulse

/-!
# The complete positive pulse inventory has its all-real square-root error

The first counting weight is retained exactly. The full inventory from one to
n is n+B_n, and for every real x>=1 its floor inventory lies between x-1 and
x+a*sqrt(x). Thus its absolute error is at most (a+1)*sqrt(x). This is the
source's single positive triangular pulse, not a prime model or an assembled
infinite divergent regulator. Human complete counting and first-atom direction:
grwtsk contributors. Local floor-bound consumer: OpenAI Codex. Mathlib floors,
sums and square-root laws retain upstream identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.TriangularRealCounting
open TriangularCountingPulse
open scoped BigOperators
noncomputable section

def count (M : ℕ) (a x : ℝ) : ℝ := ∑ n ∈ Finset.Icc 1 ⌊x⌋₊, weight M a n

theorem first_counting_weight_retained {M : ℕ} (hM : 2 ≤ M) (a : ℝ) :
    weight M a 1 = 1 := by
  have h1 : storage M a 1 = 0 := pulse_is_zero_outside (Or.inl (by nlinarith)) a
  have h0 : storage M a 0 = 0 := pulse_is_zero_outside (Or.inl (by omega)) a
  simp [weight, h1, h0]

theorem complete_integer_count {M n : ℕ} (hM : 2 ≤ M) (hn : 1 ≤ n) (a : ℝ) :
    (∑ k ∈ Finset.Icc 1 n, weight M a k) = (n : ℝ) + storage M a n := by
  induction n with
  | zero => omega
  | succ n ih =>
    by_cases hz : n = 0
    · subst n
      have hs : storage M a 1 = 0 := pulse_is_zero_outside (Or.inl (by nlinarith)) a
      simp [first_counting_weight_retained hM, hs]
    · have hn1 : 1 ≤ n := by omega
      rw [Finset.sum_Icc_succ_top (by omega : 1 ≤ n + 1), ih hn1]
      simp only [weight, Nat.add_sub_cancel, Nat.cast_add, Nat.cast_one]
      ring

theorem all_real_counting_bracket {M : ℕ} (hM : 2 ≤ M) {a x : ℝ}
    (ha : 0 ≤ a) (hx : 1 ≤ x) :
    -1 < count M a x - x ∧ count M a x - x ≤ a * Real.sqrt x := by
  have hn : 1 ≤ ⌊x⌋₊ := Nat.le_floor (by simpa only [Nat.cast_one] using hx)
  have hlo : (⌊x⌋₊ : ℝ) ≤ x := Nat.floor_le (by linarith)
  have hhi : x < (⌊x⌋₊ : ℝ) + 1 := Nat.lt_floor_add_one x
  have hs := literal_square_root_storage_envelope M ⌊x⌋₊ ha
  have hsu : storage M a ⌊x⌋₊ ≤ a * Real.sqrt x :=
    hs.2.trans (mul_le_mul_of_nonneg_left (Real.sqrt_le_sqrt hlo) ha)
  unfold count
  rw [complete_integer_count hM hn]
  constructor <;> linarith

theorem all_real_square_root_counting_error {M : ℕ} (hM : 2 ≤ M) {a x : ℝ}
    (ha : 0 ≤ a) (hx : 1 ≤ x) :
    |count M a x - x| ≤ (a + 1) * Real.sqrt x := by
  have h := all_real_counting_bracket hM ha hx
  have hs : 1 ≤ Real.sqrt x := by
    simpa only [Real.sqrt_one] using Real.sqrt_le_sqrt hx
  exact abs_le.mpr ⟨by nlinarith, by nlinarith⟩

end
end GRWTSK.RiemannHypothesis.Conversation.TriangularRealCounting
```
