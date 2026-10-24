# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PrimeSquareGreen.Variant3dfec50355aaece3eab013558e109d9af6153b14e1ddd24fad766f79edb2d006

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7ac3e4f2b5e54c5405d674efff6614b50aa8e405` · SHA-256 `3dfec50355aaece3eab013558e109d9af6153b14e1ddd24fad766f79edb2d006`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.PrimePowerGreen

/-!
# The literal prime-square sector strengthens the selected Green payment

Batch 09's favorable prime-square mass is isolated at each actual integer
index. Its coefficient is log(p) at p^2 and zero away from prime squares.
It is bounded by the complete higher-prime-power coefficient. The next consumer
therefore improves the actual selected-suffix Green bound by retaining this
nonnegative sector. No square asymptotic or actual selected cap is supplied.

Human prime-power compensation direction: grwtsk contributors. Local exact atom
adapter and Green consumer: OpenAI Codex. Mangoldt powers and integer square
roots retain Mathlib identity.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.PrimeSquareGreen

open PrimePowerPrimitive PrimePowerGreen OpenArithmeticSuppliers FirstCrossingGreen
open ArithmeticFunction
open scoped BigOperators
noncomputable section

def squareLogAtom (n : ℕ) : ℝ :=
  if (Nat.sqrt n).Prime ∧ n = (Nat.sqrt n) ^ 2 then Real.log (Nat.sqrt n) else 0

theorem square_log_atom_at_prime_square {p : ℕ} (hp : p.Prime) :
    squareLogAtom (p ^ 2) = Real.log p := by
  simp [squareLogAtom, Nat.sqrt_eq', hp]

theorem square_log_atom_nonneg (n : ℕ) : 0 ≤ squareLogAtom n := by
  unfold squareLogAtom
  split_ifs with h
  · exact Real.log_nonneg (by exact_mod_cast h.1.one_lt.le)
  · rfl

theorem square_log_atom_le_higher_powers (n : ℕ) :
    squareLogAtom n ≤ vonMangoldt n - primeLogAtom n := by
  by_cases h : (Nat.sqrt n).Prime ∧ n = (Nat.sqrt n) ^ 2
  · have hnp : ¬ n.Prime := by
      rw [h.2]
      exact Nat.Prime.not_prime_pow (by decide : 2 ≤ (2 : ℕ))
    have hΛ : vonMangoldt n = Real.log (Nat.sqrt n) := by
      calc
        _ = vonMangoldt ((Nat.sqrt n) ^ 2) := congrArg vonMangoldt h.2
        _ = vonMangoldt (Nat.sqrt n) := vonMangoldt_apply_pow (by decide : (2 : ℕ) ≠ 0)
        _ = _ := vonMangoldt_apply_prime h.1
    rw [squareLogAtom, if_pos h, primeLogAtom, if_neg hnp, hΛ, sub_zero]
  · simpa only [squareLogAtom, h, ite_false] using mangoldt_minus_primeLog_nonneg n

def primeSquareWork (N K : ℕ) : ℝ := ∑ j ∈ Finset.range K,
  squareLogAtom (N + j + 1) * actualSuffix N K (j + 1)

theorem prime_square_work_nonneg {N K : ℕ}
    (hpositive : ∀ j : ℕ, j < K → 0 ≤ actualSuffix N K j) :
    0 ≤ primeSquareWork N K := by
  apply Finset.sum_nonneg
  intro j hj
  have hjK := Finset.mem_range.mp hj
  have hs : 0 ≤ actualSuffix N K (j + 1) := by
    by_cases ht : j + 1 = K
    · rw [ht, actualSuffix_terminal]
    · exact hpositive _ (by omega)
  exact mul_nonneg (square_log_atom_nonneg _) hs

theorem prime_square_work_le_higher_powers {N K : ℕ}
    (hpositive : ∀ j : ℕ, j < K → 0 ≤ actualSuffix N K j) :
    primeSquareWork N K ≤ primePowerWork N K := by
  apply Finset.sum_le_sum
  intro j hj
  have hjK := Finset.mem_range.mp hj
  have hs : 0 ≤ actualSuffix N K (j + 1) := by
    by_cases ht : j + 1 = K
    · rw [ht, actualSuffix_terminal]
    · exact hpositive _ (by omega)
  exact mul_le_mul_of_nonneg_right (square_log_atom_le_higher_powers _) hs

theorem actual_prime_green_le_complete_minus_squares {N K : ℕ} (hN : 1 ≤ N)
    (hpositive : ∀ j : ℕ, j < K → 0 ≤ actualSuffix N K j) :
    profileWork (fun j => ArithmeticPrimitive.cumulativeDiscrepancy
      ordinaryPrimeCoefficient (N + j)) (actualSuffix N K) K ≤
      completeMangoldtWork N K - primeSquareWork N K := by
  rw [actual_prime_green_decomposition hN]
  exact sub_le_sub_left (prime_square_work_le_higher_powers hpositive) _

end
end GRWTSK.RiemannHypothesis.Conversation.PrimeSquareGreen
```
