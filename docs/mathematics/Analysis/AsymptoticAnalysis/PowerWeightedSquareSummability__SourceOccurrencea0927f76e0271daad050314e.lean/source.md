# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.PowerWeightedSquareSummability

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `86f3956f3032935b8e4f7a9ea14db870b35cb92b` · SHA-256 `697bedbfa34a3ae8946434849e5b5e4eb584b4072eb57b6c4937ce7035d359ee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing. -/
import Mathlib.Analysis.PSeries

/-!
# Square summability from a power bound

A pointwise real-power bound gives summability after a sufficiently strong
power weight.  The zero coefficient is stated explicitly so that negative
real powers at the natural-number origin require no convention-dependent
estimate.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.Asymptotics.PowerWeightedSquareSummability

theorem summable_sq_mul_rpow_of_abs_le_rpow
    (f : ℕ → ℝ) {C α q : ℝ}
    (hf0 : f 0 = 0)
    (hf : ∀ n : ℕ, 1 ≤ n → |f n| ≤ C * (n : ℝ) ^ α)
    (hexp : 2 * α - q < -1) :
    Summable (fun n : ℕ => f n ^ 2 * (n : ℝ) ^ (-q)) := by
  apply Summable.of_nonneg_of_le
    (fun n => mul_nonneg (sq_nonneg _) (Real.rpow_nonneg (Nat.cast_nonneg n) _))
    (fun n => ?_)
    ((Real.summable_nat_rpow.mpr hexp).mul_left (C ^ 2))
  rcases n with _ | n
  · have hne : 2 * α - q ≠ 0 := by linarith
    simp [hf0, Real.zero_rpow, hne]
  · have hn : 1 ≤ n + 1 := by omega
    have hnpos : (0 : ℝ) < (n + 1 : ℕ) := by positivity
    have hbound := hf (n + 1) hn
    have hsq : f (n + 1) ^ 2 ≤
        (C * ((n + 1 : ℕ) : ℝ) ^ α) ^ 2 := by
      rw [← sq_abs (f (n + 1))]
      simpa only [pow_two] using
        mul_self_le_mul_self (abs_nonneg _) hbound
    have hrpow : (((n + 1 : ℕ) : ℝ) ^ α) ^ 2 =
        ((n + 1 : ℕ) : ℝ) ^ (2 * α) := by
      calc
        _ = (((n + 1 : ℕ) : ℝ) ^ α) ^ (2 : ℝ) :=
          (Real.rpow_natCast _ 2).symm
        _ = ((n + 1 : ℕ) : ℝ) ^ (α * 2) :=
          (Real.rpow_mul hnpos.le α 2).symm
        _ = _ := by ring_nf
    calc
      f (n + 1) ^ 2 * ((n + 1 : ℕ) : ℝ) ^ (-q) ≤
          (C * ((n + 1 : ℕ) : ℝ) ^ α) ^ 2 *
            ((n + 1 : ℕ) : ℝ) ^ (-q) :=
        mul_le_mul_of_nonneg_right hsq (Real.rpow_nonneg hnpos.le _)
      _ = C ^ 2 * ((n + 1 : ℕ) : ℝ) ^ (2 * α - q) := by
        rw [mul_pow, hrpow, mul_assoc, ← Real.rpow_add hnpos]
        ring_nf

end GRWTSK.Analysis.Asymptotics.PowerWeightedSquareSummability

#print axioms GRWTSK.Analysis.Asymptotics.PowerWeightedSquareSummability.summable_sq_mul_rpow_of_abs_le_rpow
```
