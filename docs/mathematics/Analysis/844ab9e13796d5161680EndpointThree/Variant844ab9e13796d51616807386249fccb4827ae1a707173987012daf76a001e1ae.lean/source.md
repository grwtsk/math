# Complete source: GRWTSK.Analysis.844ab9e13796d5161680EndpointThree.Variant844ab9e13796d51616807386249fccb4827ae1a707173987012daf76a001e1ae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `30f112d1f27fac22605edf5b47889c9d36f7e7f4` · SHA-256 `844ab9e13796d51616807386249fccb4827ae1a707173987012daf76a001e1ae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Tactic

/-!
Independent quantitative endpoint-envelope refinement for RH issue #16.
This elementary scalar lemma does not estimate the signed strict interior.
AI attribution: OpenAI Codex independent challenge and proof construction.
-/

namespace RH16IndependentChallenge

/-- The source's already proved exponential endpoint envelope costs at most three. -/
theorem endpoint_exponential_envelope_le_three (A : ℝ) (hA : 0 ≤ A) :
    2 * A ^ 3 * Real.exp (-A) ≤ 3 := by
  have hlinear : Real.exp 1 * (A / 3) ≤ Real.exp (A / 3) :=
    Real.exp_one_mul_le_exp
  have hcube : (Real.exp 1 * (A / 3)) ^ 3 ≤ (Real.exp (A / 3)) ^ 3 := by
    gcongr
  have he1 : (Real.exp (1 : ℝ)) ^ 3 = Real.exp (3 : ℝ) := by
    rw [← Real.exp_nat_mul]
    norm_num
  have heA : (Real.exp (A / 3)) ^ 3 = Real.exp A := by
    rw [← Real.exp_nat_mul]
    congr 1
    ring
  rw [mul_pow, he1, heA] at hcube
  have hsum := Real.sum_le_exp_of_nonneg (by norm_num : (0 : ℝ) ≤ 3) 6
  norm_num [Finset.sum_range_succ, Nat.factorial] at hsum
  have hpoly : (2 / 3 : ℝ) * A ^ 3 ≤ Real.exp A := by
    have hpower : 0 ≤ (A / 3) ^ 3 := by positivity
    have hmul := mul_le_mul_of_nonneg_right hsum hpower
    nlinarith [hcube]
  have hmul := mul_le_mul_of_nonneg_right hpoly (Real.exp_pos (-A)).le
  have he : Real.exp A * Real.exp (-A) = 1 := by
    rw [← Real.exp_add]
    simp
  rw [he] at hmul
  nlinarith

end RH16IndependentChallenge

```
