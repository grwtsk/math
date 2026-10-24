# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FirstCrossingGreen.Variant78bee269bbdd7b2f8d5b21227e7c239adb552baf179cd25c10e36b4814f60053

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `815565d4e53bec3a190445cbc1dd0b68de654268` · SHA-256 `78bee269bbdd7b2f8d5b21227e7c239adb552baf179cd25c10e36b4814f60053`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.AccordionConsumer
import FormalResearch.RiemannHypothesis.Conversation.WeightedVariance

/-!
# The finite Green profile retains its entrance term

Audited RH conversation Batch 13. A finite suffix profile yields a precise
signed discrepancy/energy identity. The initial storage and terminal value
are hypotheses or displayed terms; neither is silently deleted. The actual
ordinary-prime suffix profile is then used as a consumer.

Human mathematical direction: grwtsk contributors. Local interfaces and Lean
implementation: OpenAI Codex. No selected-profile prime bound is supplied.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.FirstCrossingGreen

open CausalRecords OpenArithmeticSuppliers ArithmeticPrimitive AccordionConsumer
open scoped BigOperators
noncomputable section

def profileWork (B S : ℕ → ℝ) (N : ℕ) : ℝ :=
  ∑ j ∈ Finset.range N, (B (j + 1) - B j) * S (j + 1)

def profileEnergy (B w : ℕ → ℝ) (N : ℕ) : ℝ :=
  ∑ j ∈ Finset.range N, B j ^ 2 * w j

theorem finite_green_identity (B S : ℕ → ℝ) (N : ℕ) (hS : S N = 0) :
    profileWork B S N =
      (∑ j ∈ Finset.range N, B j * (S j - S (j + 1))) - B 0 * S 0 := by
  have h := suffix_summation_by_parts B S N
  have he : (∑ j ∈ Finset.range N, B j * (S (j + 1) - S j)) =
      -(∑ j ∈ Finset.range N, B j * (S j - S (j + 1))) := by
    rw [← Finset.sum_neg_distrib]
    apply Finset.sum_congr rfl
    intro j _hj
    ring
  rw [he, hS] at h
  simp only [zero_sub, mul_neg, Finset.sum_neg_distrib] at h
  unfold profileWork
  linarith

theorem finite_green_energy (B S w : ℕ → ℝ) (N : ℕ) (hS : S N = 0)
    (hstep : ∀ j ∈ Finset.range N, S j - S (j + 1) = B j * w j) :
    profileWork B S N = profileEnergy B w N - B 0 * S 0 := by
  rw [finite_green_identity B S N hS]
  congr 1
  apply Finset.sum_congr rfl
  intro j hj
  rw [hstep j hj]
  ring

/-- Nonpositive entrance storage and a nonnegative suffix pay no harmful boundary term. -/
theorem energy_le_green_work {B S w : ℕ → ℝ} {N : ℕ} (hS : S N = 0)
    (hstep : ∀ j ∈ Finset.range N, S j - S (j + 1) = B j * w j)
    (hB : B 0 ≤ 0) (hS0 : 0 ≤ S 0) : profileEnergy B w N ≤ profileWork B S N := by
  rw [finite_green_energy B S w N hS hstep]
  have hprod := mul_nonpos_of_nonpos_of_nonneg hB hS0
  linarith

def actualSuffix (N K j : ℕ) : ℝ :=
  ordinaryPrimePrimitive (N + K : ℕ) - ordinaryPrimePrimitive (N + j : ℕ)

theorem actualSuffix_terminal (N K : ℕ) : actualSuffix N K K = 0 := by
  simp [actualSuffix]

theorem actualSuffix_step {N : ℕ} (hN : 1 ≤ N) (K j : ℕ) :
    actualSuffix N K j - actualSuffix N K (j + 1) =
      cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j) *
        cellClock (N + j) (N + j + 1 : ℕ) := by
  have h := ordinaryPrime_integer_step (n := N + j) (by omega)
  unfold actualSuffix
  rw [show N + (j + 1) = N + j + 1 by omega]
  linarith

/-- The actual chronological prime profile, not an independently selected test,
satisfies the finite source Green identity. -/
theorem actual_prime_profile_green {N : ℕ} (hN : 1 ≤ N) (K : ℕ) :
    profileWork (fun j => cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j))
      (actualSuffix N K) K =
      profileEnergy (fun j => cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j))
        (fun j => cellClock (N + j) (N + j + 1 : ℕ)) K -
        cumulativeDiscrepancy ordinaryPrimeCoefficient N *
          (ordinaryPrimePrimitive (N + K : ℕ) - ordinaryPrimePrimitive N) := by
  simpa only [Nat.add_zero, actualSuffix] using
    finite_green_energy (fun j => cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j))
      (actualSuffix N K) (fun j => cellClock (N + j) (N + j + 1 : ℕ)) K
      (actualSuffix_terminal N K) (fun j _ => actualSuffix_step hN K j)

end
end GRWTSK.RiemannHypothesis.Conversation.FirstCrossingGreen
```
