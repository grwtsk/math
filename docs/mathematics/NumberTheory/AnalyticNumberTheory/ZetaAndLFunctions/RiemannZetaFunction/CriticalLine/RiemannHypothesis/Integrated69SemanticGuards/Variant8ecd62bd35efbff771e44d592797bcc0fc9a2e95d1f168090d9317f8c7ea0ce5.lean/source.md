# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Integrated69SemanticGuards.Variant8ecd62bd35efbff771e44d592797bcc0fc9a2e95d1f168090d9317f8c7ea0ce5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b48cff39785852b03998f8bc857338e243585e0b` · SHA-256 `8ecd62bd35efbff771e44d592797bcc0fc9a2e95d1f168090d9317f8c7ea0ce5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.HigherPowerAsymptotic

open FormalResearch.RiemannHypothesis.SourceComparison
open HigherPowerSource HigherPowerTsum PrimeSquareSource HigherPowerAsymptotic

/-- Higher prime powers include fourth powers, despite those being ordinary squares. -/
example (p : ℕ) (hp : p.Prime) :
    IsHigherPrimePower (p ^ 4) ∧ ¬IsPrimeSquare (p ^ 4) := by
  have hh : IsHigherPrimePower (p ^ 4) := ⟨p, 4, hp, by norm_num, rfl⟩
  exact ⟨hh, fun hs ↦ primeSquare_not_higher _ hs hh⟩

/-- Prime two's square belongs only to the prime-square sector. -/
example : IsPrimeSquare 4 ∧ ¬IsHigherPrimePower 4 := by
  have hs : IsPrimeSquare 4 := ⟨2, Nat.prime_two, by norm_num⟩
  exact ⟨hs, primeSquare_not_higher 4 hs⟩

/-- Prime two's cube belongs only to the higher sector. -/
example : IsHigherPrimePower 8 ∧ ¬IsPrimeSquare 8 := eight_higher_not_square

/-- Prime two's fourth power belongs only to the higher sector. -/
example : IsHigherPrimePower 16 ∧ ¬IsPrimeSquare 16 := by
  have hh : IsHigherPrimePower 16 := ⟨2, 4, Nat.prime_two, by norm_num, by norm_num⟩
  exact ⟨hh, fun hs ↦ primeSquare_not_higher 16 hs hh⟩

/-- The prime-two cube cutoff remains strict, with no endpoint half-weight. -/
example (A : ℝ) : 8 ∈ higherPrimePowerIndices A ↔ (8 : ℝ) < Real.exp (2 * A) :=
  eight_mem_higherPrimePowerIndices_iff A

/-- The exact preimage retains each original natural prime-power value, not a sampled index. -/
example (A : ℝ) (q : {p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k}) :
    q ∈ higherPairIndices A ↔ ((q.1.val ^ q.2.val : ℕ) : ℝ) < Real.exp (2 * A) :=
  mem_higherPairIndices_iff A q

/-- The actual higher-sector estimate has only its radius-domain premise. -/
example (A : ℝ) (hA : 1 ≤ A) :
    |higherPrimePowerContribution A - higherPowerConstant| ≤ higherPowerBudget / A ^ 2 :=
  actualHigherPower_deviation_bound A hA

/-- The one-sided upper estimate uses the same arithmetic constant. -/
example (A : ℝ) (hA : 1 ≤ A) : higherPrimePowerContribution A ≤ higherPowerConstant :=
  actualHigherPower_le_constant A hA
```
