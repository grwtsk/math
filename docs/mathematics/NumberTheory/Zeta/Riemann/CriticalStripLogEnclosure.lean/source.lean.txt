/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.SpecialFunctions.Complex.LogBounds
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Proof-bearing real logarithm enclosures for positive arithmetic bases

The two logarithm Taylor series at q and -q are subtracted only for real 0<=q<1.
The identity log((1+q)/(1-q))=log(1+q)-log(1-q) consequently has no complex-branch
ambiguity. Every series remainder is inherited from the pinned Mathlib theorem.
Dyadic range reduction is an exact multiplication identity, not a numerical log
oracle. The centers below are real expressions; for rational inputs all Taylor
centers and radius expressions use finite rational arithmetic.

These source proofs have not been elaborated or kernel-audited.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent

open Complex Finset

noncomputable section

/-- A radius about a declared center, for the actual real logarithm. -/
structure RealLogEnclosure (x : ℝ) where
  center : ℝ
  radius : ℝ
  radius_nonneg : 0 ≤ radius
  encloses : |Real.log x - center| ≤ radius

namespace RealLogEnclosure

/-- Radius widening is a finite order check, never an unchecked rounding convention. -/
def enlarge {x : ℝ} (e : RealLogEnclosure x) (E : ℝ) (hE : e.radius ≤ E) :
    RealLogEnclosure x where
  center := e.center
  radius := E
  radius_nonneg := e.radius_nonneg.trans hE
  encloses := e.encloses.trans hE

/-- Rounding the center requires a separate proved arithmetic error. -/
def recenter {x : ℝ} (e : RealLogEnclosure x) (a η : ℝ)
    (hη : 0 ≤ η) (ha : |e.center - a| ≤ η) : RealLogEnclosure x where
  center := a
  radius := e.radius + η
  radius_nonneg := add_nonneg e.radius_nonneg hη
  encloses := by
    calc
      |Real.log x - a| = |(Real.log x - e.center) + (e.center - a)| := by
        congr 1; ring
      _ ≤ |Real.log x - e.center| + |e.center - a| := abs_add_le _ _
      _ ≤ e.radius + η := add_le_add e.encloses ha

/-- Positive-base multiplication with the exact real logarithm identity. -/
def mul {x y : ℝ} (e : RealLogEnclosure x) (f : RealLogEnclosure y)
    (hx : 0 < x) (hy : 0 < y) : RealLogEnclosure (x * y) where
  center := e.center + f.center
  radius := e.radius + f.radius
  radius_nonneg := add_nonneg e.radius_nonneg f.radius_nonneg
  encloses := by
    rw [Real.log_mul hx.ne' hy.ne']
    calc
      |Real.log x + Real.log y - (e.center + f.center)| =
          |(Real.log x - e.center) + (Real.log y - f.center)| := by congr 1; ring
      _ ≤ |Real.log x - e.center| + |Real.log y - f.center| := abs_add_le _ _
      _ ≤ e.radius + f.radius := add_le_add e.encloses f.encloses

/-- Natural powers charge the log radius with the same natural multiplicity. -/
def powNat {x : ℝ} (e : RealLogEnclosure x) (j : ℕ) : RealLogEnclosure (x ^ j) where
  center := (j : ℝ) * e.center
  radius := (j : ℝ) * e.radius
  radius_nonneg := mul_nonneg (Nat.cast_nonneg _) e.radius_nonneg
  encloses := by
    rw [Real.log_pow, ← mul_sub, abs_mul, abs_of_nonneg (Nat.cast_nonneg j)]
    exact mul_le_mul_of_nonneg_left e.encloses (Nat.cast_nonneg _)

/-- Retarget only along an actual equality of positive arithmetic sources. -/
def transport {x y : ℝ} (e : RealLogEnclosure x) (h : x = y) : RealLogEnclosure y :=
  h ▸ e

end RealLogEnclosure

/-- Difference of the two degree-at-most-n logarithm Taylor polynomials. -/
def ratioLogCenter (q : ℝ) (n : ℕ) : ℝ :=
  (Complex.logTaylor (n + 1) (q : ℂ) -
    Complex.logTaylor (n + 1) (-(q : ℂ))).re

/-- Sum of the two genuine Taylor radii. No signed cancellation is assumed in it. -/
def ratioLogRadius (q : ℝ) (n : ℕ) : ℝ :=
  2 * (q ^ (n + 1) * (1 - q)⁻¹ / ((n : ℝ) + 1))

lemma ratioLogRadius_nonneg {q : ℝ} (hq : 0 ≤ q) (hq1 : q < 1) (n : ℕ) :
    0 ≤ ratioLogRadius q n := by
  unfold ratioLogRadius
  have hden : 0 < 1 - q := sub_pos.mpr hq1
  positivity

/-- Analytic log enclosure; the test parameter is restricted to the real interval. -/
theorem ratioLog_encloses {q : ℝ} (hq : 0 ≤ q) (hq1 : q < 1) (n : ℕ) :
    |Real.log ((1 + q) / (1 - q)) - ratioLogCenter q n| ≤ ratioLogRadius q n := by
  have hqc : ‖(q : ℂ)‖ = q := by
    rw [Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg hq]
  have hqnc : ‖-(q : ℂ)‖ = q := by rw [norm_neg, hqc]
  have hp := Complex.norm_log_sub_logTaylor_le n (z := (q : ℂ)) (by rwa [hqc])
  have hm := Complex.norm_log_sub_logTaylor_le n (z := -(q : ℂ)) (by rwa [hqnc])
  simp only [hqc, hqnc, Nat.cast_add, Nat.cast_one] at hp hm
  have hlogp : Complex.log (1 + (q : ℂ)) = (Real.log (1 + q) : ℂ) := by
    simpa only [Complex.ofReal_add, Complex.ofReal_one] using
      (Complex.ofReal_log (by linarith : 0 ≤ 1 + q)).symm
  have hlogm : Complex.log (1 + -(q : ℂ)) = (Real.log (1 - q) : ℂ) := by
    simpa only [Complex.ofReal_sub, Complex.ofReal_one, sub_eq_add_neg] using
      (Complex.ofReal_log (by linarith : 0 ≤ 1 - q)).symm
  let d : ℂ := (Complex.log (1 + (q : ℂ)) - Complex.log (1 + -(q : ℂ))) -
    (Complex.logTaylor (n + 1) (q : ℂ) - Complex.logTaylor (n + 1) (-(q : ℂ)))
  have hd : ‖d‖ ≤ ratioLogRadius q n := by
    have heq : d =
        (Complex.log (1 + (q : ℂ)) - Complex.logTaylor (n + 1) (q : ℂ)) -
        (Complex.log (1 + -(q : ℂ)) - Complex.logTaylor (n + 1) (-(q : ℂ))) := by
      unfold d; ring
    rw [heq]
    exact (norm_sub_le _ _).trans (by unfold ratioLogRadius; linarith [hp, hm])
  have hre := (Complex.abs_re_le_norm d).trans hd
  simpa only [d, hlogp, hlogm, Complex.sub_re, Complex.ofReal_re, ratioLogCenter,
    Real.log_div (by linarith : (1 + q : ℝ) ≠ 0)
      (by linarith : (1 - q : ℝ) ≠ 0)] using hre

/-- An explicit construction for every real arithmetic base x>=1. -/
def logEnclosureOfRatio (x : ℝ) (hx : 1 ≤ x) (n : ℕ) : RealLogEnclosure x := by
  let q : ℝ := (x - 1) / (x + 1)
  have hxden : 0 < x + 1 := by linarith
  have hq : 0 ≤ q := div_nonneg (sub_nonneg.mpr hx) hxden.le
  have hq1 : q < 1 := (div_lt_one hxden).mpr (by linarith)
  have hqeq : q * (x + 1) = x - 1 := div_mul_cancel₀ _ hxden.ne'
  have hsource : (1 + q) / (1 - q) = x := by
    apply (div_eq_iff (sub_pos.mpr hq1).ne').mpr
    nlinarith [hqeq]
  exact { center := ratioLogCenter q n,
    radius := ratioLogRadius q n,
    radius_nonneg := ratioLogRadius_nonneg hq hq1 n,
    encloses := by simpa only [hsource] using ratioLog_encloses hq hq1 n }

/-- Efficient arithmetic range reduction: x=2^j*u with 1<=u<=2. The upper bound is
retained as a domain fact ensuring the ratio (u-1)/(u+1) is at most 1/3. -/
def dyadicLogEnclosure (j : ℕ) (u : ℝ) (hu : 1 ≤ u) (_hu2 : u ≤ 2) (n : ℕ) :
    RealLogEnclosure ((2 : ℝ) ^ j * u) :=
  ((logEnclosureOfRatio 2 (by norm_num) n).powNat j).mul
    (logEnclosureOfRatio u hu n) (pow_pos (by norm_num) _)
    (zero_lt_one.trans_le hu)

/-- The bounded Taylor parameter follows from the actual dyadic remainder interval. -/
theorem dyadic_ratio_le_one_third {u : ℝ} (hu : 1 ≤ u) (hu2 : u ≤ 2) :
    (u - 1) / (u + 1) ≤ (1 / 3 : ℝ) := by
  apply (div_le_iff₀ (by linarith : 0 < u + 1)).mpr
  linarith

/-- A small exact fixture: n=4 retains the two nonzero odd terms.
No numerical logarithm is used to establish this bound. -/
theorem log_two_low_order_enclosure : |Real.log 2 - (56 / 81 : ℝ)| ≤ 1 / 405 := by
  have h := ratioLog_encloses (q := (1 / 3 : ℝ)) (by norm_num) (by norm_num) 4
  norm_num [ratioLogCenter, ratioLogRadius, Complex.logTaylor, Finset.sum_range_succ] at h
  exact h

/-- The low-order fixture made available as a genuine input record. -/
def logTwoLowOrder : RealLogEnclosure 2 where
  center := 56 / 81
  radius := 1 / 405
  radius_nonneg := by norm_num
  encloses := log_two_low_order_enclosure

end

end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent
