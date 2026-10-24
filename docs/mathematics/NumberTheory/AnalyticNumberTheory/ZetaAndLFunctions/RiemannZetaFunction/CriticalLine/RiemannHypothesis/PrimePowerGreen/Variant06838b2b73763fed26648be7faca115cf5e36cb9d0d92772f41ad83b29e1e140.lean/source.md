# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PrimePowerGreen.Variant06838b2b73763fed26648be7faca115cf5e36cb9d0d92772f41ad83b29e1e140

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c7f6354a41f5b7fb5907b2ef9bfd4696af622965` · SHA-256 `06838b2b73763fed26648be7faca115cf5e36cb9d0d92772f41ad83b29e1e140`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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

/-- The complete mangoldt work in this module, with the following exact parameterization.

def completeMangoldtWork (N K : ℕ) : ℝ := ∑ j ∈ Finset.range K, centeredMangoldt (N + j + 1) *
actualSuffix N K (j + 1)
-/
def completeMangoldtWork (N K : ℕ) : ℝ :=
  ∑ j ∈ Finset.range K, centeredMangoldt (N + j + 1) * actualSuffix N K (j + 1)

/-- The prime power work in this module, with the following exact parameterization.

def primePowerWork (N K : ℕ) : ℝ := ∑ j ∈ Finset.range K, (vonMangoldt (N + j + 1) -
primeLogAtom (N + j + 1)) * actualSuffix N K (j + 1)
-/
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
