# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCenteredPowerJet

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e49e42771f17bc7f0ef4fc50564887eb6337408a` · SHA-256 `db2afbeab460a9ebc2987c5e83c0edf5ee8ca26ac3a8ebf56e1eed05f692ad5e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripPowerTaylor
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Source-bound centered exponential jets

This polynomial is built from a separately enclosed value at c and a proved
real-logarithm enclosure for the SAME positive arithmetic base. The displacement
is s-c; its complex norm, real part, Taylor order and all errors remain explicit.
The theorem is uniform on a declared region, not a sample-to-region coercion.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredPowerJet
open Complex Finset
noncomputable section

def value (c q : ℂ) (a : ℝ) (n : ℕ) (s : ℂ) : ℂ :=
  q * complexExpTaylor n (-(s-c) * (a : ℂ))

/-- A norm bound for the displaced true power, not its polynomial approximation. -/
lemma displaced_power_bound {k : ℝ} {c s : ℂ}
    (hk : 1 ≤ k) (hk8 : k ≤ 8) (hleft : -(s-c).re ≤ 1) :
    ‖(k : ℂ) ^ (-(s-c))‖ ≤ (8 : ℝ) := by
  rw [Complex.norm_cpow_eq_rpow_re_of_pos (zero_lt_one.trans_le hk), Complex.neg_re]
  calc
    k ^ (-(s-c).re) ≤ k ^ (1 : ℝ) := Real.rpow_le_rpow_of_exponent_le hk hleft
    _ = k := Real.rpow_one k
    _ ≤ 8 := hk8

/-- Exactly charged centered power jet. The raw kernel/source is never replaced
by the polynomial; this theorem bounds their difference. -/
theorem encloses {k a δ ε ρ : ℝ} {c q s : ℂ} {n : ℕ}
    (hk : 1 ≤ k) (hk8 : k ≤ 8) (hc : 0 ≤ c.re)
    (hδ : 0 ≤ δ) (hlog : |Real.log k-a| ≤ δ)
    (hε : 0 ≤ ε) (hq : ‖(k : ℂ)^(-c)-q‖ ≤ ε)
    (hdisp : ‖s-c‖ ≤ ρ) (hleft : -(s-c).re ≤ 1)
    (hsmall : ρ*δ ≤ 1)
    (hguard : (ρ*|a|)/((n : ℝ)+1) ≤ 1/2)
    (hverror : 16*ρ*δ+complexExpTaylorRadius n (ρ*|a|) ≤ 1) :
    ‖(k : ℂ)^(-s)-value c q a n s‖ ≤
      16*ρ*δ+complexExpTaylorRadius n (ρ*|a|)+9*ε := by
  let e : RealLogEnclosure k := ⟨a,δ,hδ,hlog⟩
  have hkn := displaced_power_bound hk hk8 hleft
  have ha : ‖(-(s-c))*(a : ℂ)‖ ≤ ρ*|a| := by
    rw [norm_mul, norm_neg, Complex.norm_real, Real.norm_eq_abs]
    exact mul_le_mul_of_nonneg_right hdisp (abs_nonneg _)
  have ht := realLog_powerTaylor_error (zero_lt_one.trans_le hk) e (-(s-c)) n
    (ρ*|a|) 8
    (by simpa only [e, norm_neg] using (mul_le_mul_of_nonneg_right hdisp hδ).trans hsmall)
    ha hguard hkn
  have ht' : ‖(k : ℂ)^(-(s-c))-complexExpTaylor n (-(s-c)*(a : ℂ))‖ ≤
      16*ρ*δ+complexExpTaylorRadius n (ρ*|a|) := by
    apply ht.trans
    dsimp only [e]
    rw [norm_neg]
    have h := mul_le_mul_of_nonneg_right hdisp hδ
    nlinarith
  have hpoly : ‖complexExpTaylor n (-(s-c)*(a : ℂ))‖ ≤ (9 : ℝ) := by
    have htri := norm_sub_le ((k : ℂ)^(-(s-c)))
      ((k : ℂ)^(-(s-c))-complexExpTaylor n (-(s-c)*(a : ℂ)))
    rw [sub_sub_cancel] at htri
    linarith
  have hcn := positive_base_neg_power_norm_le_one hk hc
  have hid : (k : ℂ)^(-s) = (k : ℂ)^(-c)*(k : ℂ)^(-(s-c)) := by
    rw [←Complex.cpow_add _ _ (Complex.ofReal_ne_zero.mpr (zero_lt_one.trans_le hk).ne')]
    congr 1
    ring
  have heq : (k : ℂ)^(-s)-value c q a n s =
      (k : ℂ)^(-c)*((k : ℂ)^(-(s-c))-complexExpTaylor n (-(s-c)*(a : ℂ))) +
      ((k : ℂ)^(-c)-q)*complexExpTaylor n (-(s-c)*(a : ℂ)) := by
    rw [hid]
    unfold value
    ring
  rw [heq]
  apply (norm_add_le _ _).trans
  rw [norm_mul, norm_mul]
  have h1 := mul_le_mul hcn ht' (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 1)
  have h2 := mul_le_mul hq hpoly (norm_nonneg _) hε
  nlinarith

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredPowerJet
```
