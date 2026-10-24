# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PrimePowerGreen.Variant3ebd8c5873c2eab68e831752e3bd58671bda3eb901af8b5feaad76943a7931f6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e06ea5115c8204beb1395d66fe1988fffd1294e3` · SHA-256 `3ebd8c5873c2eab68e831752e3bd58671bda3eb901af8b5feaad76943a7931f6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.PrimeStorage
import FormalResearch.RiemannHypothesis.Conversation.PrimePowerPrimitive

/-!
# The prime Green work keeps the Mangoldt correction separate

Batch 13's finite profile identity uses the actual prime-minus-one forcing.
It equals the complete centered Mangoldt work minus the nonnegative
prime-power coefficient work. The selected suffix, integer inventory and
terminal zero are unchanged. This is not a bound on either signed work.

Human direction: grwtsk contributors. Exact source adapter and Lean proof:
OpenAI Codex. Mangoldt identities retain Mathlib origin.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.PrimePowerGreen

open OpenArithmeticSuppliers FirstCrossingGreen PrimeStorage PrimePowerPrimitive CenteredVaughan
open ArithmeticFunction
open scoped BigOperators
noncomputable section

def completeMangoldtWork (N K : ℕ) : ℝ :=
  ∑ j ∈ Finset.range K, centeredMangoldt (N + j + 1) * actualSuffix N K (j + 1)

def primePowerWork (N K : ℕ) : ℝ :=
  ∑ j ∈ Finset.range K, (vonMangoldt (N + j + 1) - primeLogAtom (N + j + 1)) *
    actualSuffix N K (j + 1)

theorem actual_prime_green_decomposition {N : ℕ} (hN : 1 ≤ N) (K : ℕ) :
    profileWork (fun j => ArithmeticPrimitive.cumulativeDiscrepancy
      ordinaryPrimeCoefficient (N + j)) (actualSuffix N K) K =
      completeMangoldtWork N K - primePowerWork N K := by
  rw [actual_green_work_eq_prime_atoms hN]
  unfold completeMangoldtWork primePowerWork
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro j _hj
  have hn : 2 ≤ N + j + 1 := by omega
  rw [centeredMangoldt_apply hn, ordinaryPrimeCoefficient_at_source_index hn]
  unfold primeLogAtom
  ring

theorem primePowerWork_nonneg {N K : ℕ}
    (hpositive : ∀ j : ℕ, j < K → 0 ≤ actualSuffix N K j) :
    0 ≤ primePowerWork N K := by
  apply Finset.sum_nonneg
  intro j hj
  have hjK := Finset.mem_range.mp hj
  have hs : 0 ≤ actualSuffix N K (j + 1) := by
    by_cases hterminal : j + 1 = K
    · rw [hterminal, actualSuffix_terminal]
    · exact hpositive _ (by omega)
  exact mul_nonneg (mangoldt_minus_primeLog_nonneg _) hs

/-- Dropping this correction gives only a one-sided larger complete-work bound. -/
theorem prime_green_le_complete_work {N K : ℕ} (hN : 1 ≤ N)
    (hpositive : ∀ j : ℕ, j < K → 0 ≤ actualSuffix N K j) :
    profileWork (fun j => ArithmeticPrimitive.cumulativeDiscrepancy
      ordinaryPrimeCoefficient (N + j)) (actualSuffix N K) K ≤ completeMangoldtWork N K := by
  rw [actual_prime_green_decomposition hN]
  exact sub_le_self _ (primePowerWork_nonneg hpositive)

end
end GRWTSK.RiemannHypothesis.Conversation.PrimePowerGreen
```
