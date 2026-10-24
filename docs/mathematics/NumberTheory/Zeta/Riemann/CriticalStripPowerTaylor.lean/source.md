# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripPowerTaylor

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `60f8a09a1e02a58652ffa4aecef27a59df933e7a` · SHA-256 `64ba6f771819e7cb078ef65b38d52b3fdfec93c716b706ad37fe44c15d665e65`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripLogEnclosure
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFinitePowerPatch
import Mathlib.Analysis.Complex.Exponential

set_option autoImplicit false

/-!
# From proved logarithm and exponential bounds to finite zeta-power enclosures

There is no logarithm or exponential oracle in the constructors below. A real-log
record can be constructed by CriticalStripLogEnclosure. The exponential remainder
uses Complex.exp_bound' at the pinned version, with the actual ratio guard. A
perturbed exponent is charged separately, using norm_exp_sub_one_le only when its
displacement is at most 1. The cpow identity is restricted to a positive real base.

Optional rounding requires exact finite-arithmetic inequalities. Concrete JSON or
Python output does not prove those inequalities in Lean. These source proofs still
require elaboration and transitive axiom replay.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent

open Complex Finset

noncomputable section

/-- n terms, through degree n-1, matching the upstream remainder convention. -/
def complexExpTaylor (n : ℕ) (z : ℂ) : ℂ :=
  ∑ j ∈ Finset.range n, z ^ j / (j.factorial : ℂ)

def complexExpTaylorRadius (n : ℕ) (R : ℝ) : ℝ :=
  R ^ n / (n.factorial : ℝ) * 2

lemma complexExpTaylorRadius_nonneg (n : ℕ) {R : ℝ} (hR : 0 ≤ R) :
    0 ≤ complexExpTaylorRadius n R := by
  unfold complexExpTaylorRadius
  positivity

/-- A rational R and ratio guard yield a fully algebraic exponential remainder. -/
theorem complexExpTaylor_error (n : ℕ) {z : ℂ} {R : ℝ}
    (hz : ‖z‖ ≤ R) (hguard : R / ((n : ℝ) + 1) ≤ 1 / 2) :
    ‖Complex.exp z - complexExpTaylor n z‖ ≤ complexExpTaylorRadius n R := by
  have hden : 0 ≤ (n : ℝ) + 1 := by positivity
  have hratio : ‖z‖ / (n.succ : ℝ) ≤ 1 / 2 := by
    simpa only [Nat.cast_succ] using
      (div_le_div_of_nonneg_right hz hden).trans hguard
  have h := Complex.exp_bound' (x := z) (n := n) hratio
  have hR : 0 ≤ R := (norm_nonneg z).trans hz
  apply h.trans
  unfold complexExpTaylorRadius
  gcongr

/-- The true exponent, rather than its approximation, anchors the exponential norm.
This avoids an unproved bound for exp of the approximate logarithm. -/
theorem exp_perturbation_error {x y : ℂ} {d C : ℝ}
    (hd : ‖y - x‖ ≤ d) (hd1 : d ≤ 1) (hC : ‖Complex.exp x‖ ≤ C) :
    ‖Complex.exp x - Complex.exp y‖ ≤ C * (2 * d) := by
  have hC0 : 0 ≤ C := (norm_nonneg _).trans hC
  have heq : Complex.exp x - Complex.exp y =
      Complex.exp x * (1 - Complex.exp (y - x)) := by
    rw [mul_sub, mul_one, ← Complex.exp_add, show x + (y - x) = y by ring]
  rw [heq, norm_mul, norm_sub_rev]
  exact mul_le_mul hC
    ((Complex.norm_exp_sub_one_le (hd.trans hd1)).trans
      (mul_le_mul_of_nonneg_left hd (by norm_num)))
    (norm_nonneg _) hC0

/-- Genuine principal cpow identity on a strictly positive real base. -/
theorem positive_cpow_eq_exp_realLog {x : ℝ} (hx : 0 < x) (w : ℂ) :
    (x : ℂ) ^ w = Complex.exp (w * (Real.log x : ℂ)) := by
  rw [Complex.cpow_def_of_ne_zero (Complex.ofReal_ne_zero.mpr hx.ne'),
    ← Complex.ofReal_log hx.le, mul_comm]

/-- Complete log-perturbation plus Taylor remainder for one complex power. -/
theorem realLog_powerTaylor_error {x : ℝ} (hx : 0 < x)
    (e : RealLogEnclosure x) (w : ℂ) (n : ℕ) (R C : ℝ)
    (hsmall : ‖w‖ * e.radius ≤ 1)
    (harg : ‖w * (e.center : ℂ)‖ ≤ R)
    (hguard : R / ((n : ℝ) + 1) ≤ 1 / 2)
    (hC : ‖(x : ℂ) ^ w‖ ≤ C) :
    ‖(x : ℂ) ^ w - complexExpTaylor n (w * (e.center : ℂ))‖ ≤
      C * (2 * (‖w‖ * e.radius)) + complexExpTaylorRadius n R := by
  have hdisp : ‖w * (e.center : ℂ) - w * (Real.log x : ℂ)‖ ≤ ‖w‖ * e.radius := by
    rw [← mul_sub, norm_mul, ← Complex.ofReal_sub, Complex.norm_real,
      Real.norm_eq_abs, abs_sub_comm]
    exact mul_le_mul_of_nonneg_left e.encloses (norm_nonneg _)
  have hnorm : ‖Complex.exp (w * (Real.log x : ℂ))‖ ≤ C := by
    rwa [← positive_cpow_eq_exp_realLog hx w]
  rw [positive_cpow_eq_exp_realLog hx w]
  calc
    _ = ‖(Complex.exp (w * (Real.log x : ℂ)) - Complex.exp (w * (e.center : ℂ))) +
          (Complex.exp (w * (e.center : ℂ)) - complexExpTaylor n (w * (e.center : ℂ)))‖ := by
      congr 1; ring
    _ ≤ ‖Complex.exp (w * (Real.log x : ℂ)) - Complex.exp (w * (e.center : ℂ))‖ +
          ‖Complex.exp (w * (e.center : ℂ)) - complexExpTaylor n (w * (e.center : ℂ))‖ :=
      norm_add_le _ _
    _ ≤ _ := add_le_add (exp_perturbation_error hdisp hsmall hnorm)
      (complexExpTaylor_error n harg hguard)

/-- A power enclosure identifies its exact base and exponent, not just a sample label. -/
structure ComplexPowerEnclosure (x : ℝ) (w : ℂ) where
  value : ℂ
  error : ℝ
  error_nonneg : 0 ≤ error
  encloses : ‖(x : ℂ) ^ w - value‖ ≤ error

namespace ComplexPowerEnclosure

def ofLogTaylor {x : ℝ} (hx : 0 < x) (e : RealLogEnclosure x)
    (w : ℂ) (n : ℕ) (R C : ℝ)
    (hsmall : ‖w‖ * e.radius ≤ 1)
    (harg : ‖w * (e.center : ℂ)‖ ≤ R)
    (hguard : R / ((n : ℝ) + 1) ≤ 1 / 2)
    (hC : ‖(x : ℂ) ^ w‖ ≤ C) : ComplexPowerEnclosure x w where
  value := complexExpTaylor n (w * (e.center : ℂ))
  error := C * (2 * (‖w‖ * e.radius)) + complexExpTaylorRadius n R
  error_nonneg := by
    have hC0 : 0 ≤ C := (norm_nonneg _).trans hC
    have hR0 : 0 ≤ R := (norm_nonneg _).trans harg
    exact add_nonneg (mul_nonneg hC0
      (mul_nonneg (by norm_num) (mul_nonneg (norm_nonneg _) e.radius_nonneg)))
      (complexExpTaylorRadius_nonneg n hR0)
  encloses := realLog_powerTaylor_error hx e w n R C hsmall harg hguard hC

/-- Increasing an error radius consumes the exact order proof. -/
def enlarge {x : ℝ} {w : ℂ} (e : ComplexPowerEnclosure x w)
    (E : ℝ) (hE : e.error ≤ E) : ComplexPowerEnclosure x w where
  value := e.value
  error := E
  error_nonneg := e.error_nonneg.trans hE
  encloses := e.encloses.trans hE

/-- A rounded rational complex sample incurs a separate exact arithmetic bound. -/
def recenter {x : ℝ} {w : ℂ} (e : ComplexPowerEnclosure x w)
    (v : ℂ) (η : ℝ) (hη : 0 ≤ η) (hv : ‖e.value - v‖ ≤ η) :
    ComplexPowerEnclosure x w where
  value := v
  error := e.error + η
  error_nonneg := add_nonneg e.error_nonneg hη
  encloses := by
    calc
      ‖(x : ℂ) ^ w - v‖ = ‖((x : ℂ) ^ w - e.value) + (e.value - v)‖ := by
        congr 1; ring
      _ ≤ ‖(x : ℂ) ^ w - e.value‖ + ‖e.value - v‖ := norm_add_le _ _
      _ ≤ e.error + η := add_le_add e.encloses hv

end ComplexPowerEnclosure

/-- The actual negative power has norm at most one in Re(s)>=0 for bases x>=1. -/
theorem positive_base_neg_power_norm_le_one {x : ℝ} (hx : 1 ≤ x)
    {s : ℂ} (hs : 0 ≤ s.re) : ‖(x : ℂ) ^ (-s)‖ ≤ 1 := by
  rw [Complex.norm_cpow_eq_rpow_re_of_pos (zero_lt_one.trans_le hx), Complex.neg_re]
  calc
    x ^ (-s.re) ≤ x ^ (0 : ℝ) :=
      Real.rpow_le_rpow_of_exponent_le hx (neg_nonpos.mpr hs)
    _ = 1 := Real.rpow_zero x

/-- All remaining guard inequalities can be discharged by rational coordinate bounds.
The analytic cpow magnitude bound is proved rather than passed as an oracle. -/
def negativePowerEnclosure {x : ℝ} (hx : 1 ≤ x) (e : RealLogEnclosure x)
    (s : ℂ) (hs : 0 ≤ s.re) (n : ℕ) (R : ℝ)
    (hsmall : ‖s‖ * e.radius ≤ 1)
    (harg : ‖(-s) * (e.center : ℂ)‖ ≤ R)
    (hguard : R / ((n : ℝ) + 1) ≤ 1 / 2) : ComplexPowerEnclosure x (-s) :=
  ComplexPowerEnclosure.ofLogTaylor (zero_lt_one.trans_le hx) e (-s) n R 1
    (by simpa only [norm_neg] using hsmall) harg hguard
    (positive_base_neg_power_norm_le_one hx hs)

/-- Rational coordinate-norm upper bounds yield a radius with no remaining
transcendental norm in its arithmetic expression. -/
def negativePowerEnclosureOfBounds {x : ℝ} (hx : 1 ≤ x) (e : RealLogEnclosure x)
    (s : ℂ) (hs : 0 ≤ s.re) (n : ℕ) (S R : ℝ)
    (hS : ‖s‖ ≤ S) (hsmall : S * e.radius ≤ 1)
    (harg : S * |e.center| ≤ R)
    (hguard : R / ((n : ℝ) + 1) ≤ 1 / 2) : ComplexPowerEnclosure x (-s) := by
  have hsmall' : ‖s‖ * e.radius ≤ 1 :=
    (mul_le_mul_of_nonneg_right hS e.radius_nonneg).trans hsmall
  have harg' : ‖(-s) * (e.center : ℂ)‖ ≤ R := by
    rw [norm_mul, norm_neg, Complex.norm_real, Real.norm_eq_abs]
    exact (mul_le_mul_of_nonneg_right hS (abs_nonneg _)).trans harg
  let d := negativePowerEnclosure hx e s hs n R hsmall' harg' hguard
  refine d.enlarge (2 * (S * e.radius) + complexExpTaylorRadius n R) ?_
  change 1 * (2 * (‖-s‖ * e.radius)) + complexExpTaylorRadius n R ≤ _
  rw [one_mul, norm_neg]
  have h := mul_le_mul_of_nonneg_right hS e.radius_nonneg
  linarith

/-- The endpoint power is recovered from the SAME final term, with exact source
identity. This avoids a second transcendental evaluation, not its error charge. -/
theorem positive_base_endpoint_power {x : ℝ} (hx : 0 < x) (s : ℂ) :
    (x : ℂ) ^ (1 - s) = (x : ℂ) * (x : ℂ) ^ (-s) := by
  rw [sub_eq_add_neg, Complex.cpow_add _ _ (Complex.ofReal_ne_zero.mpr hx.ne'),
    Complex.cpow_one]

/-- Complete finite term support is required. No claim is made for k=0 or missing k. -/
def FinitePowerEnclosure.ofNegativePowerDisks (N : ℕ) (hN : 1 ≤ N) (s : ℂ)
    (disk : ∀ k ∈ Finset.Icc 1 N, ComplexPowerEnclosure (k : ℝ) (-s)) :
    FinitePowerEnclosure N s := by
  classical
  have hNN : N ∈ Finset.Icc 1 N := Finset.mem_Icc.mpr ⟨hN, le_rfl⟩
  refine {
    value := fun k => if hk : k ∈ Finset.Icc 1 N then (disk k hk).value else 0,
    error := fun k => if hk : k ∈ Finset.Icc 1 N then (disk k hk).error else 0,
    error_nonneg := ?_,
    encloses := ?_,
    endpoint := (N : ℂ) * (disk N hNN).value,
    endpoint_error := (N : ℝ) * (disk N hNN).error,
    endpoint_error_nonneg := mul_nonneg (Nat.cast_nonneg _) (disk N hNN).error_nonneg,
    endpoint_encloses := ?_ }
  · intro k hk
    simpa only [dif_pos hk] using (disk k hk).error_nonneg
  · intro k hk
    simpa only [dif_pos hk, Complex.ofReal_natCast] using (disk k hk).encloses
  · have hpos : 0 < (N : ℝ) := by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hN)
    have heq := positive_base_endpoint_power hpos s
    simp only [Complex.ofReal_natCast] at heq
    rw [heq, ← mul_sub, norm_mul, Complex.norm_natCast]
    simpa only [Complex.ofReal_natCast] using
      mul_le_mul_of_nonneg_left (disk N hNN).encloses (Nat.cast_nonneg N)

/-- The finite enclosure can now be produced from proven log/exp bounds and finite
arithmetic checks, and the existing Mellin source tail remains explicit. -/
theorem source_enclosed_by_power_disks (N : ℕ) (hN : 1 ≤ N) (s : ℂ)
    (disk : ∀ k ∈ Finset.Icc 1 N, ComplexPowerEnclosure (k : ℝ) (-s))
    {σ : ℝ} (hσ : 0 < σ) (hs : σ ≤ s.re) :
    let e := FinitePowerEnclosure.ofNegativePowerDisks N hN s disk
    ‖poleNormalizedZeta s - e.sample‖ ≤ e.sourceError σ := by
  exact (FinitePowerEnclosure.ofNegativePowerDisks N hN s disk).source_encloses hN hσ hs

end

end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent
```
