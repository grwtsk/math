# Complete source: GRWTSK.Analysis.Complex.DigammaShift

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6f905518ff4bc0c75f0bf6c6c853ce5a01c977c0` · SHA-256 `9f036a12540aa109b3c303b1d57a3035bb7330907594bf18221dadec48d3045c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.SpecialFunctions.Gamma.Digamma
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic
import Mathlib.Tactic.Ring

set_option autoImplicit false

/-!
# Finite digamma shifts in a positive half-plane

Reuse the upstream digamma, including its pole exclusions. The finite shift
identity is exact; the half-plane estimate needs no asymptotic expansion or
Gauss integral. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.Complex.DigammaShift

open scoped BigOperators

noncomputable section

theorem ne_neg_nat_of_re_pos (z : ℂ) (hz : 0 < z.re) (k : ℕ) : z ≠ -(k : ℂ) := by
  intro he
  have hr := congrArg Complex.re he
  simp only [Complex.neg_re, Complex.natCast_re] at hr
  linarith [Nat.cast_nonneg (α := ℝ) k]

/-- The finite sum contains exactly k consecutive reciprocals. -/
theorem digamma_add_nat (z : ℂ) (hz : 0 < z.re) (k : ℕ) :
    Complex.digamma (z + (k : ℂ)) = Complex.digamma z +
      ∑ j ∈ Finset.range k, (z + (j : ℂ))⁻¹ := by
  induction k with
  | zero => simp
  | succ k ih =>
      have hp : 0 < (z + (k : ℂ)).re := by
        simpa using add_pos_of_pos_of_nonneg hz (Nat.cast_nonneg k)
      rw [Nat.cast_succ, ← add_assoc,
        Complex.digamma_apply_add_one _ (ne_neg_nat_of_re_pos _ hp), ih,
        Finset.sum_range_succ]
      ring

/-- Every reciprocal is controlled by its positive real part, including at zero height. -/
theorem norm_shift_inv_le_half (z : ℂ) (hz : 2 ≤ z.re) (j : ℕ) :
    ‖(z + (j : ℂ))⁻¹‖ ≤ (1 / 2 : ℝ) := by
  have hr : 2 ≤ (z + (j : ℂ)).re := by
    simp only [Complex.add_re, Complex.natCast_re]
    linarith [Nat.cast_nonneg (α := ℝ) j]
  have hn : 2 ≤ ‖z + (j : ℂ)‖ :=
    hr.trans ((le_abs_self _).trans (Complex.abs_re_le_norm _))
  rw [norm_inv, inv_eq_one_div]
  exact div_le_div_of_nonneg_left (by norm_num) (by norm_num) hn

theorem norm_reciprocal_sum_le (z : ℂ) (hz : 2 ≤ z.re) (k : ℕ) :
    ‖∑ j ∈ Finset.range k, (z + (j : ℂ))⁻¹‖ ≤ (k : ℝ) / 2 := by
  calc
    _ ≤ ∑ j ∈ Finset.range k, ‖(z + (j : ℂ))⁻¹‖ := norm_sum_le _ _
    _ ≤ ∑ _j ∈ Finset.range k, (1 / 2 : ℝ) :=
      Finset.sum_le_sum (fun j _ => norm_shift_inv_le_half z hz j)
    _ = _ := by simp [div_eq_mul_inv]

end
end GRWTSK.Analysis.Complex.DigammaShift
```
