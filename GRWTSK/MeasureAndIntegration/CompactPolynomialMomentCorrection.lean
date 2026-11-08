/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.Analysis.Calculus.Deriv.Pow
import Mathlib.Tactic

/-!
# A compact zero-moment corrector and uniform signed dilation sums

The literal profile is p(x)=(1-x^2)^2*(1-7*x^2). Its compact extension rho
has rho(0)=1 and integral rho=0. Both endpoint values and derivatives vanish.
The signed finite sums are controlled BEFORE taking absolute values termwise.
Exact polynomial Euler telescopes give bounds 40 and 140 independent of the
number of terms, when N*u <= 1 <= (N+1)*u and 0<u<=1. The second profile is
x*p'(x), whose integral also vanishes. It controls the logarithmic derivative
of the actual multiplicative summation map in the analytical consumer.

Consumer: ProlateTraceCorrection.
The finite-prolate seed has two different trace conditions; this corrector
repairs one without changing the other. It supplies neither a Weil spectral
lower bound nor a comparison with a genuine ground eigenfunction.

Primary argument: explicit primitives and finite polynomial telescoping.
Independent check: signed Riemann sums have bounds by integral |p'| <=31
and integral |(x*p')'| <=120. Those sharper integral inequalities are explained
in the analytical record; this module proves the looser 40/140 constants.
No prolate eigenfunction, Fourier-unitarity or arithmetic-operator theorem is
postulated or implemented here. Mathlib retains its upstream authorship/license.
Lean v4.34.1; Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
AI-assisted source. Elaboration, fresh kernel, transitive axiom audit and
independent analytical review: NOT_RUN. Novelty not assessed.
-/

set_option autoImplicit false
noncomputable section
open Set MeasureTheory
open scoped BigOperators Interval

namespace GRWTSK.Analysis.RealAnalysis.CompactMomentCorrection

/-- Polynomial on the unit support, not its extension outside the support. -/
def profile (x : ℝ) : ℝ := (1 - x ^ 2) ^ 2 * (1 - 7 * x ^ 2)

def primitive (x : ℝ) : ℝ := x - 3 * x ^ 3 + 3 * x ^ 5 - x ^ 7

def profileSlope (x : ℝ) : ℝ := -18 * x + 60 * x ^ 3 - 42 * x ^ 5

/-- The profile controlling differentiation with respect to log(u). -/
def dilationProfile (x : ℝ) : ℝ := -18 * x ^ 2 + 60 * x ^ 4 - 42 * x ^ 6

def dilationPrimitive (x : ℝ) : ℝ := -6 * x ^ 3 + 12 * x ^ 5 - 6 * x ^ 7

/-- Ioc and Icc extensions coincide because the value at -1 is zero. -/
def corrector : ℝ → ℝ := (Ioc (-1 : ℝ) 1).indicator profile

theorem profile_expanded (x : ℝ) :
    profile x = 1 - 9 * x ^ 2 + 15 * x ^ 4 - 7 * x ^ 6 := by
  unfold profile
  ring

@[simp] theorem profile_zero : profile 0 = 1 := by norm_num [profile]
@[simp] theorem profile_one : profile 1 = 0 := by norm_num [profile]
@[simp] theorem profile_neg_one : profile (-1) = 0 := by norm_num [profile]
@[simp] theorem profileSlope_one : profileSlope 1 = 0 := by norm_num [profileSlope]
@[simp] theorem profileSlope_neg_one : profileSlope (-1) = 0 := by norm_num [profileSlope]

theorem profile_even (x : ℝ) : profile (-x) = profile x := by simp [profile]

theorem dilationProfile_eq (x : ℝ) : dilationProfile x = x * profileSlope x := by
  unfold dilationProfile profileSlope
  ring

theorem primitive_factored (x : ℝ) : primitive x = x * (1 - x ^ 2) ^ 3 := by
  unfold primitive
  ring

theorem dilationPrimitive_factored (x : ℝ) :
    dilationPrimitive x = -6 * x ^ 3 * (1 - x ^ 2) ^ 2 := by
  unfold dilationPrimitive
  ring

theorem hasDerivAt_primitive (x : ℝ) : HasDerivAt primitive (profile x) x := by
  have h := (((hasDerivAt_id x).sub (((hasDerivAt_id x).pow 3).const_mul 3)).add
    (((hasDerivAt_id x).pow 5).const_mul 3)).sub ((hasDerivAt_id x).pow 7)
  convert h using 1 <;> dsimp [primitive, profile] <;> ring

theorem hasDerivAt_profile (x : ℝ) : HasDerivAt profile (profileSlope x) x := by
  have h := ((((hasDerivAt_const x (1 : ℝ)).sub
    (((hasDerivAt_id x).pow 2).const_mul 9)).add
    (((hasDerivAt_id x).pow 4).const_mul 15)).sub
    (((hasDerivAt_id x).pow 6).const_mul 7))
  have he : profile = fun y : ℝ => 1 - 9 * y ^ 2 + 15 * y ^ 4 - 7 * y ^ 6 := by
    funext y
    exact profile_expanded y
  rw [he]
  convert h using 1 <;> dsimp [profileSlope] <;> ring

theorem hasDerivAt_dilationPrimitive (x : ℝ) :
    HasDerivAt dilationPrimitive (dilationProfile x) x := by
  have h := ((((hasDerivAt_id x).pow 3).const_mul (-6)).add
    (((hasDerivAt_id x).pow 5).const_mul 12)).sub
    (((hasDerivAt_id x).pow 7).const_mul 6)
  convert h using 1 <;> dsimp [dilationPrimitive, dilationProfile] <;> ring

theorem integral_profile : (∫ x in (0 : ℝ)..1, profile x) = 0 := by
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x _ => hasDerivAt_primitive x)
    ((show Continuous profile by unfold profile; fun_prop).intervalIntegrable 0 1)
  simpa [primitive] using h

theorem integral_profile_symmetric : (∫ x in (-1 : ℝ)..1, profile x) = 0 := by
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x _ => hasDerivAt_primitive x)
    ((show Continuous profile by unfold profile; fun_prop).intervalIntegrable (-1) 1)
  norm_num [primitive] at h ⊢
  exact h

theorem integral_dilationProfile : (∫ x in (0 : ℝ)..1, dilationProfile x) = 0 := by
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x _ => hasDerivAt_dilationPrimitive x)
    ((show Continuous dilationProfile by unfold dilationProfile; fun_prop).intervalIntegrable 0 1)
  norm_num [dilationPrimitive] at h ⊢
  exact h

@[simp] theorem corrector_zero : corrector 0 = 1 := by
  simp [corrector, profile]

theorem corrector_eq_profile {x : ℝ} (hx : x ∈ Ioc (-1 : ℝ) 1) :
    corrector x = profile x := Set.indicator_of_mem hx _

theorem corrector_eq_zero_of_one_le {x : ℝ} (hx : 1 ≤ x) : corrector x = 0 := by
  rcases eq_or_lt_of_le hx with h | h
  · subst x
    simp [corrector, profile]
  · exact Set.indicator_of_notMem (by
      rintro ⟨_, hx1⟩
      exact (not_le_of_gt h) hx1) _

theorem integrable_corrector : Integrable corrector := by
  apply (integrable_indicator_iff measurableSet_Ioc).mpr
  exact ((show Continuous profile by unfold profile; fun_prop).intervalIntegrable (-1) 1).1

/-- A genuine ordinary integral, not a zero-moment field of a proposed object. -/
theorem integral_corrector : (∫ x : ℝ, corrector x) = 0 := by
  unfold corrector
  rw [integral_indicator measurableSet_Ioc,
    ← intervalIntegral.integral_of_le (by norm_num : (-1 : ℝ) ≤ 1)]
  exact integral_profile_symmetric

/-- No inverse or spectral projection is used in the correction. -/
def repair (h : ℝ → ℝ) (x : ℝ) : ℝ := h x - h 0 * corrector x

@[simp] theorem repair_zero (h : ℝ → ℝ) : repair h 0 = 0 := by simp [repair]

theorem integrable_repair {h : ℝ → ℝ} (hh : Integrable h) : Integrable (repair h) :=
  hh.sub (integrable_corrector.const_mul (h 0))

theorem integral_repair {h : ℝ → ℝ} (hh : Integrable h) :
    (∫ x : ℝ, repair h x) = ∫ x : ℝ, h x := by
  unfold repair
  rw [integral_sub hh (integrable_corrector.const_mul (h 0)),
    integral_const_mul, integral_corrector, mul_zero, sub_zero]

/-- N terms, indexed from 1, rather than from 0. -/
def prefix (f : ℝ → ℝ) (u : ℝ) (N : ℕ) : ℝ :=
  ∑ k ∈ Finset.range N, f (((k : ℝ) + 1) * u)

/-- All Bernoulli endpoint terms of the degree-six polynomial are retained. -/
def endpoint (u y : ℝ) : ℝ :=
  (profile y - 1) / 2 +
    u * (-3 * y / 2 + 5 * y ^ 3 - 7 * y ^ 5 / 2) +
    u ^ 3 * (-y / 2 + 7 * y ^ 3 / 6) - u ^ 5 * y / 6

def dilationEndpoint (u y : ℝ) : ℝ :=
  dilationProfile y / 2 + u * (-3 * y + 20 * y ^ 3 - 21 * y ^ 5) +
    u ^ 3 * (-2 * y + 7 * y ^ 3) - u ^ 5 * y

/-- Exact finite Euler summation, proved by polynomial induction. -/
theorem scaled_prefix (u : ℝ) (N : ℕ) :
    u * prefix profile u N = primitive ((N : ℝ) * u) +
      u * endpoint u ((N : ℝ) * u) := by
  induction N with
  | zero => simp [prefix, primitive, endpoint, profile]
  | succ N ih =>
      simp only [prefix, Finset.sum_range_succ] at ih ⊢
      rw [mul_add, ih]
      push_cast
      dsimp [primitive, endpoint, profile]
      ring

theorem scaled_dilation_prefix (u : ℝ) (N : ℕ) :
    u * prefix dilationProfile u N = dilationPrimitive ((N : ℝ) * u) +
      u * dilationEndpoint u ((N : ℝ) * u) := by
  induction N with
  | zero => simp [prefix, dilationPrimitive, dilationEndpoint, dilationProfile]
  | succ N ih =>
      simp only [prefix, Finset.sum_range_succ] at ih ⊢
      rw [mul_add, ih]
      push_cast
      dsimp [dilationPrimitive, dilationEndpoint, dilationProfile]
      ring

private lemma unit_pow {x : ℝ} (hx : 0 ≤ x) (hx1 : x ≤ 1) (n : ℕ) :
    0 ≤ x ^ n ∧ x ^ n ≤ 1 := ⟨pow_nonneg hx n, pow_le_one₀ hx hx1⟩

private lemma unit_mul_abs {x y B : ℝ} (hx : 0 ≤ x) (hx1 : x ≤ 1)
    (hy : |y| ≤ B) : |x * y| ≤ B := by
  rw [abs_mul, abs_of_nonneg hx]
  simpa using mul_le_mul hx1 hy (abs_nonneg y) (by norm_num : (0 : ℝ) ≤ 1)

/-- These bounds use only the unit interval, not cancellation between sample points. -/
theorem endpoint_abs_le {u y : ℝ} (hu : 0 ≤ u) (hu1 : u ≤ 1)
    (hy : 0 ≤ y) (hy1 : y ≤ 1) : |endpoint u y| ≤ 29 := by
  have y2 := unit_pow hy hy1 2
  have y3 := unit_pow hy hy1 3
  have y4 := unit_pow hy hy1 4
  have y5 := unit_pow hy hy1 5
  have y6 := unit_pow hy hy1 6
  have h0 : |(profile y - 1) / 2| ≤ 16 := by
    rw [profile_expanded]
    apply abs_le.mpr
    constructor <;> nlinarith [y2.1, y2.2, y4.1, y4.2, y6.1, y6.2]
  have h1 : |-3 * y / 2 + 5 * y ^ 3 - 7 * y ^ 5 / 2| ≤ 10 := by
    apply abs_le.mpr
    constructor <;> nlinarith [y3.1, y3.2, y5.1, y5.2]
  have h3 : |-y / 2 + 7 * y ^ 3 / 6| ≤ 2 := by
    apply abs_le.mpr
    constructor <;> nlinarith [y3.1, y3.2]
  have h5 : |y / 6| ≤ 1 := by rw [abs_of_nonneg (by positivity)]; linarith
  have b1 := unit_mul_abs hu hu1 h1
  have b3 := unit_mul_abs (unit_pow hu hu1 3).1 (unit_pow hu hu1 3).2 h3
  have b5 := unit_mul_abs (unit_pow hu hu1 5).1 (unit_pow hu hu1 5).2 h5
  have b5' : |u ^ 5 * y / 6| ≤ 1 := by
    simpa only [mul_div_assoc] using b5
  unfold endpoint
  calc
    _ ≤ |(profile y - 1) / 2 + u * (-3 * y / 2 + 5 * y ^ 3 - 7 * y ^ 5 / 2) +
        u ^ 3 * (-y / 2 + 7 * y ^ 3 / 6)| + |u ^ 5 * y / 6| := abs_sub _ _
    _ ≤ (|(profile y - 1) / 2| +
        |u * (-3 * y / 2 + 5 * y ^ 3 - 7 * y ^ 5 / 2)|) +
        |u ^ 3 * (-y / 2 + 7 * y ^ 3 / 6)| + |u ^ 5 * y / 6| := by
      exact add_le_add_right
        ((abs_add_le _ _).trans (add_le_add_right (abs_add_le _ _) _)) _
    _ ≤ 29 := by linarith

theorem dilationEndpoint_abs_le {u y : ℝ} (hu : 0 ≤ u) (hu1 : u ≤ 1)
    (hy : 0 ≤ y) (hy1 : y ≤ 1) : |dilationEndpoint u y| ≤ 114 := by
  have y2 := unit_pow hy hy1 2
  have y3 := unit_pow hy hy1 3
  have y4 := unit_pow hy hy1 4
  have y5 := unit_pow hy hy1 5
  have y6 := unit_pow hy hy1 6
  have h0 : |dilationProfile y / 2| ≤ 60 := by
    unfold dilationProfile
    apply abs_le.mpr
    constructor <;> nlinarith [y2.1, y2.2, y4.1, y4.2, y6.1, y6.2]
  have h1 : |-3 * y + 20 * y ^ 3 - 21 * y ^ 5| ≤ 44 := by
    apply abs_le.mpr
    constructor <;> nlinarith [y3.1, y3.2, y5.1, y5.2]
  have h3 : |-2 * y + 7 * y ^ 3| ≤ 9 := by
    apply abs_le.mpr
    constructor <;> nlinarith [y3.1, y3.2]
  have b1 := unit_mul_abs hu hu1 h1
  have b3 := unit_mul_abs (unit_pow hu hu1 3).1 (unit_pow hu hu1 3).2 h3
  have b5 := unit_mul_abs (unit_pow hu hu1 5).1 (unit_pow hu hu1 5).2
    (show |y| ≤ 1 by rw [abs_of_nonneg hy]; exact hy1)
  unfold dilationEndpoint
  calc
    _ ≤ |dilationProfile y / 2 + u * (-3 * y + 20 * y ^ 3 - 21 * y ^ 5) +
        u ^ 3 * (-2 * y + 7 * y ^ 3)| + |u ^ 5 * y| := abs_sub _ _
    _ ≤ (|dilationProfile y / 2| + |u * (-3 * y + 20 * y ^ 3 - 21 * y ^ 5)|) +
        |u ^ 3 * (-2 * y + 7 * y ^ 3)| + |u ^ 5 * y| := by
      exact add_le_add_right
        ((abs_add_le _ _).trans (add_le_add_right (abs_add_le _ _) _)) _
    _ ≤ 114 := by linarith

/-- The primitive is small at the last sample because the next sample crosses one. -/
theorem primitive_abs_le {u y : ℝ} (hu : 0 ≤ u) (hy : 0 ≤ y)
    (hy1 : y ≤ 1) (hclose : 1 - y ≤ u) : |primitive y| ≤ 8 * u := by
  have hz0 : 0 ≤ 1 - y := by linarith
  have hz1 : 1 - y ≤ 1 := by linarith
  have hz3 : (1 - y) ^ 3 ≤ 1 - y := by
    nlinarith [mul_nonneg hz0 (sub_nonneg.mpr hz1),
      mul_nonneg (sq_nonneg (1 - y)) (sub_nonneg.mpr hz1)]
  have hp3 : (1 + y) ^ 3 ≤ 8 := by
    simpa using pow_le_pow_left₀ (by linarith : 0 ≤ 1 + y)
      (by linarith : 1 + y ≤ 2) 3
  have he : primitive y = y * (1 - y) ^ 3 * (1 + y) ^ 3 := by
    unfold primitive
    ring
  have hfirst : y * (1 - y) ^ 3 ≤ u := by
    simpa using mul_le_mul hy1 (hz3.trans hclose) (by positivity)
      (by norm_num : (0 : ℝ) ≤ 1)
  rw [he, abs_of_nonneg (by positivity)]
  calc
    _ ≤ u * 8 := mul_le_mul hfirst hp3 (by positivity) hu
    _ = 8 * u := by ring

theorem dilationPrimitive_abs_le {u y : ℝ} (hu : 0 ≤ u) (hy : 0 ≤ y)
    (hy1 : y ≤ 1) (hclose : 1 - y ≤ u) : |dilationPrimitive y| ≤ 24 * u := by
  have hz0 : 0 ≤ 1 - y := by linarith
  have hz2 : (1 - y) ^ 2 ≤ u := by
    nlinarith [mul_nonneg hz0 hy]
  have hp2 : (1 + y) ^ 2 ≤ 4 := by
    simpa using pow_le_pow_left₀ (by linarith : 0 ≤ 1 + y)
      (by linarith : 1 + y ≤ 2) 2
  have he : dilationPrimitive y = -(6 * y ^ 3 * (1 - y) ^ 2 * (1 + y) ^ 2) := by
    unfold dilationPrimitive
    ring
  rw [he, abs_neg, abs_of_nonneg (by positivity)]
  calc
    _ ≤ (6 * 1) * u * 4 := by
      apply mul_le_mul _ hp2 (by positivity) (by positivity)
      exact mul_le_mul (mul_le_mul_of_nonneg_left (unit_pow hy hy1 3).2 (by norm_num))
        hz2 (sq_nonneg _) (by norm_num)
    _ = 24 * u := by ring

/-- Uniform signed sum; no factor equal to the number of samples remains. -/
theorem prefix_profile_abs_le {u : ℝ} (hu : 0 < u) (hu1 : u ≤ 1) (N : ℕ)
    (hleft : (N : ℝ) * u ≤ 1) (hright : 1 ≤ ((N : ℝ) + 1) * u) :
    |prefix profile u N| ≤ 40 := by
  have hy : 0 ≤ (N : ℝ) * u := mul_nonneg (Nat.cast_nonneg N) hu.le
  have hp := primitive_abs_le hu.le hy hleft (by linarith)
  have he := endpoint_abs_le hu.le hu1 hy hleft
  have hmul : |u * prefix profile u N| ≤ u * 37 := by
    rw [scaled_prefix]
    calc
      _ ≤ |primitive ((N : ℝ) * u)| + |u * endpoint u ((N : ℝ) * u)| := abs_add_le _ _
      _ ≤ 8 * u + u * 29 := by
        rw [abs_mul, abs_of_pos hu]
        exact add_le_add hp (mul_le_mul_of_nonneg_left he hu.le)
      _ = u * 37 := by ring
  rw [abs_mul, abs_of_pos hu] at hmul
  exact ((mul_le_mul_left hu).mp hmul).trans (by norm_num)

theorem prefix_dilationProfile_abs_le {u : ℝ} (hu : 0 < u) (hu1 : u ≤ 1) (N : ℕ)
    (hleft : (N : ℝ) * u ≤ 1) (hright : 1 ≤ ((N : ℝ) + 1) * u) :
    |prefix dilationProfile u N| ≤ 140 := by
  have hy : 0 ≤ (N : ℝ) * u := mul_nonneg (Nat.cast_nonneg N) hu.le
  have hp := dilationPrimitive_abs_le hu.le hy hleft (by linarith)
  have he := dilationEndpoint_abs_le hu.le hu1 hy hleft
  have hmul : |u * prefix dilationProfile u N| ≤ u * 138 := by
    rw [scaled_dilation_prefix]
    calc
      _ ≤ |dilationPrimitive ((N : ℝ) * u)| +
        |u * dilationEndpoint u ((N : ℝ) * u)| := abs_add_le _ _
      _ ≤ 24 * u + u * 114 := by
        rw [abs_mul, abs_of_pos hu]
        exact add_le_add hp (mul_le_mul_of_nonneg_left he hu.le)
      _ = u * 138 := by ring
  rw [abs_mul, abs_of_pos hu] at hmul
  exact ((mul_le_mul_left hu).mp hmul).trans (by norm_num)

/-- The compact extension has exactly these terms before the support endpoint. -/
theorem prefix_corrector_eq {u : ℝ} (hu : 0 < u) (N : ℕ)
    (hleft : (N : ℝ) * u ≤ 1) : prefix corrector u N = prefix profile u N := by
  unfold prefix
  apply Finset.sum_congr rfl
  intro k hk
  apply corrector_eq_profile
  have hkN : (k : ℝ) + 1 ≤ N := by
    exact_mod_cast (Nat.succ_le_iff.mpr (Finset.mem_range.mp hk))
  constructor
  · have hp : (0 : ℝ) < ((k : ℝ) + 1) * u := by positivity
    linarith
  · exact (mul_le_mul_of_nonneg_right hkN hu.le).trans hleft

/-- Every omitted sample is zero, including a sample exactly at the endpoint. -/
theorem omitted_corrector_eq_zero {u : ℝ} (hu : 0 < u) (N k : ℕ)
    (hright : 1 ≤ ((N : ℝ) + 1) * u) (hk : N ≤ k) :
    corrector (((k : ℝ) + 1) * u) = 0 := by
  apply corrector_eq_zero_of_one_le
  exact hright.trans (mul_le_mul_of_nonneg_right
    (add_le_add_right (Nat.cast_le.mpr hk) 1) hu.le)

/-- Extending a complete sample list changes no term: every added term is zero. -/
theorem prefix_corrector_stable {u : ℝ} (hu : 0 < u) (N M : ℕ)
    (hright : 1 ≤ ((N : ℝ) + 1) * u) (hNM : N ≤ M) :
    prefix corrector u M = prefix corrector u N := by
  unfold prefix
  symm
  apply Finset.sum_subset (Finset.range_mono hNM)
  intro k _ hk
  exact omitted_corrector_eq_zero hu N k hright
    (Nat.le_of_not_gt (by simpa only [Finset.mem_range] using hk))

/-- A larger source inventory can be used without losing signed cancellation. -/
theorem prefix_corrector_abs_le {u : ℝ} (hu : 0 < u) (hu1 : u ≤ 1) (N M : ℕ)
    (hleft : (N : ℝ) * u ≤ 1) (hright : 1 ≤ ((N : ℝ) + 1) * u)
    (hNM : N ≤ M) : |prefix corrector u M| ≤ 40 := by
  rw [prefix_corrector_stable hu N M hright hNM, prefix_corrector_eq hu N hleft]
  exact prefix_profile_abs_le hu hu1 N hleft hright

end GRWTSK.Analysis.RealAnalysis.CompactMomentCorrection
