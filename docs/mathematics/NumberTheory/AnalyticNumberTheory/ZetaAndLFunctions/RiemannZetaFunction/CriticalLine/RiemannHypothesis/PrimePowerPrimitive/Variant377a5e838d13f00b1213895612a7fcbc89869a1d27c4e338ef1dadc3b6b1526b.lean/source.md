# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PrimePowerPrimitive.Variant377a5e838d13f00b1213895612a7fcbc89869a1d27c4e338ef1dadc3b6b1526b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7a40698ce7b3ad8e8f85053e5f264e87e53c3e97` · SHA-256 `377a5e838d13f00b1213895612a7fcbc89869a1d27c4e338ef1dadc3b6b1526b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.OpenArithmeticSuppliers

/-!
# Exact positive correction between the two chronological primitives

All integers and the same closed floor are used on both sides. The coefficient
difference removes first primes and leaves only nonnegative Mangoldt mass.
Thus the prime-power correction is positive, while either signed primitive
may have either sign. No estimate of its large-scale growth is inferred here.

Source: audited RH conversation Batches 04 and 13. Human direction:
grwtsk contributors. Local source adapter and Lean implementation: OpenAI Codex.
Mangoldt and its prime values retain their Mathlib formal-artifact origin.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.PrimePowerPrimitive

open OpenArithmeticSuppliers ArithmeticPrimitive CenteredVaughan
open ArithmeticFunction
open scoped BigOperators
noncomputable section

def primeLogAtom (n : ℕ) : ℝ := if n.Prime then Real.log n else 0
def primePowerCorrection (x : ℝ) : ℝ := actualPrimitive x - ordinaryPrimePrimitive x

theorem mangoldt_minus_primeLog_nonneg (n : ℕ) : 0 ≤ vonMangoldt n - primeLogAtom n := by
  by_cases hp : n.Prime
  · simp [primeLogAtom, hp, vonMangoldt_apply_prime hp]
  · simpa only [primeLogAtom, if_neg hp, sub_zero] using (vonMangoldt_nonneg (n := n))

/-- The exact correction retains the same atom weights, endpoint, and sign. -/
theorem primePowerCorrection_eq_sum (x : ℝ) :
    primePowerCorrection x =
      2 * ∑ n ∈ Finset.Icc 2 ⌊x⌋₊, (vonMangoldt n - primeLogAtom n) *
        (1 / Real.sqrt n - 1 / Real.sqrt x) := by
  unfold primePowerCorrection actualPrimitive ordinaryPrimePrimitive closedPrimitive finitePrimitive
  rw [show 2 * (∑ n ∈ Finset.Icc 2 ⌊x⌋₊,
      centeredMangoldt n * (1 / Real.sqrt n - 1 / Real.sqrt x)) -
      2 * (∑ n ∈ Finset.Icc 2 ⌊x⌋₊,
      ordinaryPrimeCoefficient n * (1 / Real.sqrt n - 1 / Real.sqrt x)) =
      2 * ∑ n ∈ Finset.Icc 2 ⌊x⌋₊,
      (centeredMangoldt n - ordinaryPrimeCoefficient n) *
        (1 / Real.sqrt n - 1 / Real.sqrt x) by
    rw [← mul_sub, ← Finset.sum_sub_distrib]
    congr 1
    apply Finset.sum_congr rfl
    intro n _hn
    ring]
  congr 1
  apply Finset.sum_congr rfl
  intro n hn
  have hn2 := (Finset.mem_Icc.mp hn).1
  rw [centeredMangoldt_apply hn2, ordinaryPrimeCoefficient_at_source_index hn2]
  unfold primeLogAtom
  ring

theorem primePowerCorrection_nonneg {x : ℝ} (hx : 1 ≤ x) : 0 ≤ primePowerCorrection x := by
  rw [primePowerCorrection_eq_sum]
  apply mul_nonneg (by norm_num)
  apply Finset.sum_nonneg
  intro n hn
  have hn2 := (Finset.mem_Icc.mp hn).1
  have hnx : (n : ℝ) ≤ x := (Nat.cast_le.mpr (Finset.mem_Icc.mp hn).2).trans
    (Nat.floor_le (by linarith : 0 ≤ x))
  have hn0 : (0 : ℝ) < n := by exact_mod_cast (by omega : 0 < n)
  have hi := one_div_le_one_div_of_le (Real.sqrt_pos.2 hn0) (Real.sqrt_le_sqrt hnx)
  exact mul_nonneg (mangoldt_minus_primeLog_nonneg n) (by linarith)

theorem ordinaryPrimePrimitive_le_actual {x : ℝ} (hx : 1 ≤ x) :
    ordinaryPrimePrimitive x ≤ actualPrimitive x := by
  have h := primePowerCorrection_nonneg hx
  unfold primePowerCorrection at h
  linarith

theorem actual_eq_ordinary_add_correction (x : ℝ) :
    actualPrimitive x = ordinaryPrimePrimitive x + primePowerCorrection x := by
  unfold primePowerCorrection
  ring

theorem primePowerCorrection_continuousAt {x : ℝ} (hx : 0 < x) :
    ContinuousAt primePowerCorrection x :=
  (actualPrimitive_continuousAt hx).sub
    (closedPrimitive_continuousAt ordinaryPrimeCoefficient hx)

end
end GRWTSK.RiemannHypothesis.Conversation.PrimePowerPrimitive
```
