/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Real.RationalTentCorrectionLowerBound
import Mathlib.Analysis.Calculus.Deriv.ZPow
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Exact rational evaluation of finite tent-correction prefixes

The finite density prefix is

  sum_{k<N} t^(-(2k+3)).

For q=2k+1, the function

  A_k(t) = t^(-q) / (q(q+1))

has second derivative t^(-(q+2)). Integrating that second derivative
against the normalized tent gives the exact second difference

  (A_k(x+h) - 2 A_k(x) + A_k(x-h)) / h.

At rational x,h with 0<h and 1<x-h, every endpoint is rational and
nonzero. Hence every finite correction prefix is itself an exact rational
number. No logarithm, numerical quadrature, or external error oracle is
needed for this finite prefix.

The Boolean wrapper reuses `RationalTentCorrectionLowerBound`, with this
exact rational value and zero prefix-evaluation error. The only remaining
correction loss is the already proved complete geometric remainder and one
directed downward rounding.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. The proof scripts have not been
elaborated at the repository toolchain pin.
-/

namespace GRWTSK.Analysis.Real.RationalTentCorrectionPrefixExact

open MeasureTheory Set
open scoped Interval BigOperators
open GRWTSK.Analysis.Real.TentWeight
open GRWTSK.Analysis.Real.TentRationalCorrection
open GRWTSK.Analysis.Real.RationalTentCorrectionLowerBound
open GRWTSK.Analysis.Complex.RationalRoundedArithmetic

noncomputable section

/-- The odd exponent q=2k+1 whose twice-antiderivative produces
the density term t^(-(2k+3)). -/
def oddExponent (k : ℕ) : ℤ := 2 * (k : ℤ) + 1

theorem oddExponent_pos (k : ℕ) : 0 < oddExponent k := by
  simp [oddExponent]
  omega

/-- One summand of `densityPrefix`, in its original source form. -/
def densityTerm (k : ℕ) (t : ℝ) : ℝ :=
  (1 / t ^ 3) * (1 / t ^ 2) ^ k

/-- A twice-antiderivative of the kth density term. -/
def primitive (k : ℕ) (t : ℝ) : ℝ :=
  (1 / ((oddExponent k : ℝ) * ((oddExponent k + 1 : ℤ) : ℝ))) *
    t ^ (-oddExponent k)

/-- The first derivative of `primitive`, retained explicitly because it
cancels between the two tent halves. -/
def primitiveSlope (k : ℕ) (t : ℝ) : ℝ :=
  (1 / ((oddExponent k : ℝ) * ((oddExponent k + 1 : ℤ) : ℝ))) *
    ((-oddExponent k : ℤ) : ℝ) *
      t ^ (-oddExponent k - 1)

/-- The first derivative is the retained slope formula. -/
theorem hasDerivAt_primitive (k : ℕ) (t : ℝ) (ht : t ≠ 0) :
    HasDerivAt (primitive k) (primitiveSlope k t) t := by
  have h := hasDerivAt_zpow (-oddExponent k) t (Or.inl ht)
  simpa [primitive, primitiveSlope, mul_assoc] using
    h.const_mul
      (1 / ((oddExponent k : ℝ) * ((oddExponent k + 1 : ℤ) : ℝ)))

/-- The slope derivative is exactly the original density summand. -/
theorem hasDerivAt_primitiveSlope (k : ℕ) (t : ℝ) (ht : t ≠ 0) :
    HasDerivAt (primitiveSlope k) (densityTerm k t) t := by
  have h := hasDerivAt_zpow (-oddExponent k - 1) t (Or.inl ht)
  have hd := h.const_mul
    ((1 / ((oddExponent k : ℝ) * ((oddExponent k + 1 : ℤ) : ℝ))) *
      ((-oddExponent k : ℤ) : ℝ))
  convert hd using 1
  · simp [primitiveSlope, mul_assoc]
  · have hq : (0 : ℝ) < (oddExponent k : ℝ) := by
      exact_mod_cast oddExponent_pos k
    have hq1 : (0 : ℝ) < ((oddExponent k + 1 : ℤ) : ℝ) := by
      exact_mod_cast (show (0 : ℤ) < oddExponent k + 1 by
        have := oddExponent_pos k
        omega)
    rw [show -oddExponent k - 1 - 1 = -(oddExponent k + 2) by ring]
    have hpow :
        t ^ (-(oddExponent k + 2)) = densityTerm k t := by
      unfold densityTerm oddExponent
      rw [show -(2 * (k : ℤ) + 1 + 2) = -((2 * k + 3 : ℕ) : ℤ) by
        push_cast
        ring]
      simp only [zpow_neg, zpow_natCast]
      field_simp [ht]
      ring
    rw [hpow]
    field_simp [ne_of_gt hq, ne_of_gt hq1]
    ring

/-- Continuity of one density term on a positive interval. -/
theorem densityTerm_continuousOn (k : ℕ) {a b : ℝ} (ha : 0 < a) :
    ContinuousOn (densityTerm k) (Icc a b) := by
  intro t ht
  have ht0 : t ≠ 0 := ne_of_gt (ha.trans_le ht.1)
  have hc : ContinuousAt (densityTerm k) t := by
    unfold densityTerm
    fun_prop (disch := assumption)
  exact hc.continuousWithinAt

/-- A generic normalized-tent identity for a supplied twice-antiderivative.
The derivative at the center cancels exactly. -/
theorem integral_tent_of_second_antiderivative
    (x h : ℝ) (hh : 0 < h)
    (F dF f : ℝ → ℝ)
    (hF : ∀ t ∈ Icc (x - h) (x + h), HasDerivAt F (dF t) t)
    (hdF : ∀ t ∈ Icc (x - h) (x + h), HasDerivAt dF (f t) t)
    (hleft : IntervalIntegrable (fun t => tent x h t * f t) volume (x - h) x)
    (hright : IntervalIntegrable (fun t => tent x h t * f t) volume x (x + h)) :
    (∫ t in (x - h)..(x + h), tent x h t * f t) =
      (F (x + h) - 2 * F x + F (x - h)) / h := by
  have hax : x - h ≤ x := by linarith
  have hxb : x ≤ x + h := by linarith
  have dl : ∀ t ∈ uIcc (x - h) x,
      HasDerivAt
        (fun u => (((u - (x - h)) * dF u - F u) / h))
        (tent x h t * f t) t := by
    intro t ht
    have htx : t ∈ Icc (x - h) x := (uIcc_of_le hax) ▸ ht
    have ht' : t ∈ Icc (x - h) (x + h) :=
      ⟨htx.1, htx.2.trans hxb⟩
    have hd :=
      ((((hasDerivAt_id t).sub_const (x - h)).mul (hdF t ht')).sub
        (hF t ht')).div_const h
    convert hd using 1
    · ext u
      rfl
    · rw [tent_on_left x h t hh htx.1 htx.2]
      field_simp [ne_of_gt hh]
      ring
  have dr : ∀ t ∈ uIcc x (x + h),
      HasDerivAt
        (fun u => (((x + h - u) * dF u + F u) / h))
        (tent x h t * f t) t := by
    intro t ht
    have htx : t ∈ Icc x (x + h) := (uIcc_of_le hxb) ▸ ht
    have ht' : t ∈ Icc (x - h) (x + h) :=
      ⟨hax.trans htx.1, htx.2⟩
    have hd :=
      ((((hasDerivAt_const t (x + h)).sub (hasDerivAt_id t)).mul
        (hdF t ht')).add (hF t ht')).div_const h
    convert hd using 1
    · ext u
      rfl
    · rw [tent_on_right x h t hh htx.1 htx.2]
      field_simp [ne_of_gt hh]
      ring
  have il := intervalIntegral.integral_eq_sub_of_hasDerivAt dl hleft
  have ir := intervalIntegral.integral_eq_sub_of_hasDerivAt dr hright
  rw [← intervalIntegral.integral_add_adjacent_intervals hleft hright, il, ir]
  field_simp [ne_of_gt hh]
  ring

/-- Exact real kth contribution of the normalized tent integral. -/
def termR (k : ℕ) (x h : ℝ) : ℝ :=
  (primitive k (x + h) - 2 * primitive k x + primitive k (x - h)) / h

/-- Exact rational kth contribution. -/
def termQ (k : ℕ) (x h : ℚ) : ℚ :=
  let q : ℕ := 2 * k + 1
  ((1 / (((q : ℚ) * ((q + 1 : ℕ) : ℚ)) * (x + h) ^ q)) -
      2 * (1 / (((q : ℚ) * ((q + 1 : ℕ) : ℚ)) * x ^ q)) +
      (1 / (((q : ℚ) * ((q + 1 : ℕ) : ℚ)) * (x - h) ^ q))) / h

/-- Cast the exact rational second difference to the real primitive formula. -/
theorem cast_termQ
    (k : ℕ) (x h : ℚ)
    (hh : h ≠ 0) (ha : x - h ≠ 0) (hx : x ≠ 0) (hb : x + h ≠ 0) :
    (termQ k x h : ℝ) = termR k (x : ℝ) (h : ℝ) := by
  unfold termQ termR primitive oddExponent
  push_cast
  simp only [zpow_neg, zpow_natCast]
  field_simp [hh, ha, hx, hb]
  ring

/-- The kth source integral is exactly the rational second difference. -/
theorem integral_tent_densityTerm
    (k : ℕ) (x h : ℚ) (hh : 0 < h) (ha : 1 < x - h) :
    (∫ t in ((x - h : ℚ) : ℝ)..((x + h : ℚ) : ℝ),
      tent (x : ℝ) (h : ℝ) t * densityTerm k t) =
        (termQ k x h : ℝ) := by
  have hhR : (0 : ℝ) < (h : ℝ) := by exact_mod_cast hh
  have haR : (1 : ℝ) < (x : ℝ) - (h : ℝ) := by exact_mod_cast ha
  have hleft : IntervalIntegrable
      (fun t => tent (x : ℝ) (h : ℝ) t * densityTerm k t)
      volume ((x : ℝ) - (h : ℝ)) (x : ℝ) := by
    apply ContinuousOn.intervalIntegrable_of_Icc (by linarith)
    exact (continuous_tent (x : ℝ) (h : ℝ)).continuousOn.mul
      (densityTerm_continuousOn k (by linarith))
  have hright : IntervalIntegrable
      (fun t => tent (x : ℝ) (h : ℝ) t * densityTerm k t)
      volume (x : ℝ) ((x : ℝ) + (h : ℝ)) := by
    apply ContinuousOn.intervalIntegrable_of_Icc (by linarith)
    exact (continuous_tent (x : ℝ) (h : ℝ)).continuousOn.mul
      (densityTerm_continuousOn k (by linarith))
  have hformula := integral_tent_of_second_antiderivative
    (x : ℝ) (h : ℝ) hhR (primitive k) (primitiveSlope k) (densityTerm k)
    (fun t ht => hasDerivAt_primitive k t
      (ne_of_gt ((lt_trans zero_lt_one haR).trans_le ht.1)))
    (fun t ht => hasDerivAt_primitiveSlope k t
      (ne_of_gt ((lt_trans zero_lt_one haR).trans_le ht.1)))
    hleft hright
  have hh0 : h ≠ 0 := ne_of_gt hh
  have ha0 : x - h ≠ 0 := ne_of_gt (lt_trans zero_lt_one ha)
  have hx0 : x ≠ 0 := by linarith
  have hb0 : x + h ≠ 0 := by linarith
  rw [cast_termQ k x h hh0 ha0 hx0 hb0]
  simpa only [Rat.cast_sub, Rat.cast_add] using hformula

/-- Exact rational recursion for the complete finite correction prefix. -/
def prefixValueQ : ℕ → ℚ → ℚ → ℚ
  | 0, _, _ => 0
  | N + 1, x, h => prefixValueQ N x h - termQ N x h

/-- The recursion is the negative finite sum of all normalized tent terms. -/
theorem prefixValueQ_eq_neg_sum (N : ℕ) (x h : ℚ) :
    prefixValueQ N x h = -∑ k ∈ Finset.range N, termQ k x h := by
  induction N with
  | zero => simp [prefixValueQ]
  | succ N ih =>
      rw [prefixValueQ, ih, Finset.sum_range_succ]
      ring

/-- The exact rational recursion casts to the independently defined analytic
finite correction prefix. -/
theorem prefixValueQ_exact
    (N : ℕ) (x h : ℚ) (hh : 0 < h) (ha : 1 < x - h) :
    (prefixValueQ N x h : ℝ) =
      correctionPrefix N (x : ℝ) (h : ℝ) := by
  induction N with
  | zero =>
      simp [prefixValueQ, correctionPrefix, densityPrefix]
  | succ N ih =>
      have hhR : (0 : ℝ) < (h : ℝ) := by exact_mod_cast hh
      have haR : (1 : ℝ) < (x : ℝ) - (h : ℝ) := by exact_mod_cast ha
      have hp : IntervalIntegrable
          (fun t => tent (x : ℝ) (h : ℝ) t * densityPrefix N t)
          volume ((x : ℝ) - (h : ℝ)) ((x : ℝ) + (h : ℝ)) := by
        apply ContinuousOn.intervalIntegrable_of_Icc (by linarith)
        exact (continuous_tent (x : ℝ) (h : ℝ)).continuousOn.mul
          (densityPrefix_continuousOn N haR)
      have ht : IntervalIntegrable
          (fun t => tent (x : ℝ) (h : ℝ) t * densityTerm N t)
          volume ((x : ℝ) - (h : ℝ)) ((x : ℝ) + (h : ℝ)) := by
        apply ContinuousOn.intervalIntegrable_of_Icc (by linarith)
        exact (continuous_tent (x : ℝ) (h : ℝ)).continuousOn.mul
          (densityTerm_continuousOn N (by linarith))
      rw [prefixValueQ, Rat.cast_sub, ih]
      unfold correctionPrefix
      rw [densityPrefix_succ]
      change -(∫ t in ((x : ℝ) - (h : ℝ))..((x : ℝ) + (h : ℝ)),
        tent (x : ℝ) (h : ℝ) t *
          (densityPrefix N t + densityTerm N t)) =
        -∫ t in ((x : ℝ) - (h : ℝ))..((x : ℝ) + (h : ℝ)),
          tent (x : ℝ) (h : ℝ) t * densityPrefix N t -
            (termQ N x h : ℝ)
      simp only [mul_add]
      rw [intervalIntegral.integral_add hp ht,
        integral_tent_densityTerm N x h hh ha]
      ring

/-- Exact rational finite-prefix evaluation supplies the prior semantic
`PrefixEnclosure` with zero evaluation error. -/
theorem exactPrefixEnclosure
    (N : ℕ) (x h : ℚ) (hh : 0 < h) (ha : 1 < x - h) :
    PrefixEnclosure N x h (prefixValueQ N x h) 0 := by
  unfold PrefixEnclosure
  rw [← prefixValueQ_exact N x h hh ha]
  simp

/-- Reuse the existing directed lower-endpoint verifier with exact prefix data. -/
def verifyExact
    (N : ℕ) (x h : ℚ) (bits : ℕ) (floor claimed : ℚ) : Bool :=
  RationalTentCorrectionLowerBound.verify
    N x h (prefixValueQ N x h) 0 bits floor claimed

/-- Exact-prefix acceptance needs no separately supplied prefix enclosure. -/
theorem verifyExact_sound
    (N : ℕ) (x h : ℚ) (bits : ℕ) (floor claimed : ℚ)
    (accepted : verifyExact N x h bits floor claimed = true) :
    (claimed : ℝ) ≤ rationalTentCorrection (x : ℝ) (h : ℝ) ∧
      floor ≤ claimed := by
  have accepted' :
      RationalTentCorrectionLowerBound.verify
        N x h (prefixValueQ N x h) 0 bits floor claimed = true := by
    simpa [verifyExact] using accepted
  have hv :=
    (RationalTentCorrectionLowerBound.verify_iff
      N x h (prefixValueQ N x h) 0 bits floor claimed).mp accepted'
  have hh : 0 < h := hv.1.1
  have ha : 1 < x - h := hv.1.2
  exact RationalTentCorrectionLowerBound.verify_sound
    N x h (prefixValueQ N x h) 0 bits floor claimed
    accepted' (exactPrefixEnclosure N x h hh ha)

/-- The requested exact-prefix floor is itself a sound correction lower bound. -/
theorem verifyExact_floor_sound
    (N : ℕ) (x h : ℚ) (bits : ℕ) (floor claimed : ℚ)
    (accepted : verifyExact N x h bits floor claimed = true) :
    (floor : ℝ) ≤ rationalTentCorrection (x : ℝ) (h : ℝ) := by
  have hs := verifyExact_sound N x h bits floor claimed accepted
  exact (by exact_mod_cast hs.2).trans hs.1

end

end GRWTSK.Analysis.Real.RationalTentCorrectionPrefixExact
