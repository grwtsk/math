/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusPR103ClosureAndCausalBridges
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusPR103ModOneAdapter
import Mathlib.Analysis.Complex.CauchyIntegral
import Mathlib.NumberTheory.Harmonic.ZetaAsymp
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators Topology
open MeasureTheory Set Filter

/-!
# Reciprocal-zeta and truncated Perron reduction for the original Mertens prefix

The current PR103 chain already contains:

* the exact modulus-one specialization of the external Dirichlet theorem;
* the finite complex Abel identity for the actual Möbius coefficients;
* the integer-to-real cutoff transfer;
* the exact causal velocity-to-energy calculus.

The genuinely analytic gap is the inverse direction: turn a zero-free half-plane
into a power bound for the original Mertens prefix.  This file does not hide that
gap in one monolithic proposition.  It introduces the pole-regularized reciprocal
of zeta, proves its exact holomorphy and rectangular contour-shift interface, and
reduces the remaining transfer to two quantitative inputs:

1. subpower vertical growth for the regularized reciprocal on every closed
   sub-half-plane strictly inside the zero-free region;
2. a half-integer truncated Perron approximation on the fixed right line `Re s=2`.

From those two inputs, the source proves all parameter choices, vertical and
horizontal exponent bookkeeping, logarithmic-error absorption, half-integer
cutoff conversion, the actual integer Mertens power estimate, and the existing
`ZeroFreeToMertensPowerBridge`.

No reciprocal-growth theorem, truncated Perron theorem, all-positive-rate
endpoint estimate, or Riemann Hypothesis conclusion is asserted unconditionally.
-/

namespace GRWTSK.NumberTheory.Moebius.ReciprocalZetaPerronBridge

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvillePR103FixedPower
open GRWTSK.NumberTheory.Moebius.CausalMertensSquareBridge
open GRWTSK.NumberTheory.Moebius.StrongFixedPowerPR103
open GRWTSK.NumberTheory.Moebius.PR103ClosureAndCausalBridges
open GRWTSK.NumberTheory.Moebius.PR103ModOneAdapter
open GRWTSK.NumberTheory.Moebius.PR103ExactEnergyAbscissa

/-- The pole-regularized reciprocal.  Mathlib's entire `riemannZeta₁`
satisfies `ζ(s) = (s-1)⁻¹ * riemannZeta₁(s)` away from one. -/
def regularizedReciprocalZeta (s : ℂ) : ℂ :=
  (s - 1) / ZetaAsymptotics.riemannZeta₁ s

@[simp]
theorem regularizedReciprocalZeta_one :
    regularizedReciprocalZeta 1 = 0 := by
  simp [regularizedReciprocalZeta]

/-- A zero-free zeta half-plane makes the entire denominator
`riemannZeta₁` nonzero throughout that half-plane, including the removed pole. -/
theorem riemannZeta₁_ne_zero_of_zeroFree
    {theta : ℝ} (hz : ZetaZeroFreeRightOf theta)
    {s : ℂ} (hs : theta < s.re) :
    ZetaAsymptotics.riemannZeta₁ s ≠ 0 := by
  by_cases hsone : s = 1
  · subst s
    simp
  · intro hzero
    have hzeta : _root_.riemannZeta s ≠ 0 := hz s hs hsone
    have hid := ZetaAsymptotics.riemannZeta_eq_inv_sub_mul hsone
    rw [hzero, mul_zero] at hid
    exact hzeta hid

/-- Away from the pole, the regularized reciprocal is literally `1 / ζ(s)`. -/
theorem regularizedReciprocalZeta_eq_inv_riemannZeta
    {s : ℂ} (hsone : s ≠ 1) (hzeta : _root_.riemannZeta s ≠ 0) :
    regularizedReciprocalZeta s = (_root_.riemannZeta s)⁻¹ := by
  have hden : ZetaAsymptotics.riemannZeta₁ s ≠ 0 := by
    intro hzero
    have hid := ZetaAsymptotics.riemannZeta_eq_inv_sub_mul hsone
    rw [hzero, mul_zero] at hid
    exact hzeta hid
  rw [ZetaAsymptotics.riemannZeta_eq_inv_sub_mul hsone]
  unfold regularizedReciprocalZeta
  field_simp [sub_ne_zero.mpr hsone, hden]

/-- The regularized reciprocal is holomorphic at every point of a zero-free
half-plane.  The pole at one has become a zero of the numerator. -/
theorem regularizedReciprocalZeta_differentiableAt
    {theta : ℝ} (hz : ZetaZeroFreeRightOf theta)
    {s : ℂ} (hs : theta < s.re) :
    DifferentiableAt ℂ regularizedReciprocalZeta s := by
  unfold regularizedReciprocalZeta
  exact (differentiableAt_id.sub_const 1).div
    ZetaAsymptotics.differentiable_riemannZeta₁.differentiableAt
    (riemannZeta₁_ne_zero_of_zeroFree hz hs)

/-- Perron's analytic kernel, using the pole-regularized reciprocal. -/
def perronKernel (x : ℝ) (s : ℂ) : ℂ :=
  (x : ℂ) ^ s * regularizedReciprocalZeta s / s

/-- The normalized vertical Perron integral. -/
def perronVertical (x sigma T : ℝ) : ℂ :=
  (2 * (Real.pi : ℂ))⁻¹ *
    ∫ t in -T..T,
      perronKernel x ((sigma : ℂ) + (t : ℂ) * Complex.I)

/-- The normalized horizontal correction produced by shifting from `c`
to `sigma`.  The two orientations are retained exactly. -/
def perronHorizontalCorrection (x sigma c T : ℝ) : ℂ :=
  (2 * (Real.pi : ℂ))⁻¹ *
    (Complex.I⁻¹ *
      ((∫ a in sigma..c,
          perronKernel x ((a : ℂ) + (T : ℂ) * Complex.I)) -
       (∫ a in sigma..c,
          perronKernel x ((a : ℂ) - (T : ℂ) * Complex.I))))

/-- The Perron kernel is holomorphic wherever the real part is positive
and zeta is zero-free. -/
theorem perronKernel_differentiableAt
    {theta x : ℝ} (htheta : 0 ≤ theta) (hx : 0 < x)
    (hz : ZetaZeroFreeRightOf theta)
    {s : ℂ} (hs : theta < s.re) :
    DifferentiableAt ℂ (perronKernel x) s := by
  have hx0 : (x : ℂ) ≠ 0 := ofReal_ne_zero.mpr (ne_of_gt hx)
  have hpow : DifferentiableAt ℂ (fun z : ℂ => (x : ℂ) ^ z) s :=
    differentiableAt_id.const_cpow (Or.inl hx0)
  have hrec := regularizedReciprocalZeta_differentiableAt hz hs
  have hs0 : s ≠ 0 := by
    intro hzero
    subst s
    norm_num at hs
    linarith
  exact (hpow.mul hrec).div differentiableAt_id hs0

/-- Exact Cauchy-Goursat identity on the Perron rectangle. -/
theorem perronKernel_boundary_rect_eq_zero
    {theta x sigma c T : ℝ}
    (htheta : 0 ≤ theta) (hx : 0 < x)
    (hz : ZetaZeroFreeRightOf theta)
    (hsigma : theta < sigma) (hsc : sigma ≤ c) (hT : 0 ≤ T) :
    (∫ a in sigma..c,
        perronKernel x ((a : ℂ) - (T : ℂ) * Complex.I)) -
      (∫ a in sigma..c,
        perronKernel x ((a : ℂ) + (T : ℂ) * Complex.I)) +
      Complex.I *
        (∫ t in -T..T,
          perronKernel x ((c : ℂ) + (t : ℂ) * Complex.I)) -
      Complex.I *
        (∫ t in -T..T,
          perronKernel x ((sigma : ℂ) + (t : ℂ) * Complex.I)) = 0 := by
  have hdiff :
      DifferentiableOn ℂ (perronKernel x)
        ([[sigma, c]] ×ℂ [[-T, T]]) := by
    intro s hs
    have hsre : sigma ≤ s.re := by
      have hmem := hs.1
      simpa [uIcc_of_le hsc] using hmem
    exact (perronKernel_differentiableAt htheta hx hz
      (hsigma.trans_le hsre)).differentiableWithinAt
  have hrect :=
    Complex.integral_boundary_rect_eq_zero_of_differentiableOn
      (perronKernel x)
      ((sigma : ℂ) - (T : ℂ) * Complex.I)
      ((c : ℂ) + (T : ℂ) * Complex.I)
      hdiff
  simpa [smul_eq_mul, hsc, hT, sub_eq_add_neg, add_comm,
    add_left_comm, add_assoc] using hrect

/-- Exact normalized contour shift.  No growth estimate is used. -/
theorem perronVertical_shift
    {theta x sigma c T : ℝ}
    (htheta : 0 ≤ theta) (hx : 0 < x)
    (hz : ZetaZeroFreeRightOf theta)
    (hsigma : theta < sigma) (hsc : sigma ≤ c) (hT : 0 ≤ T) :
    perronVertical x c T =
      perronVertical x sigma T +
        perronHorizontalCorrection x sigma c T := by
  have hzero :=
    perronKernel_boundary_rect_eq_zero
      htheta hx hz hsigma hsc hT
  unfold perronVertical perronHorizontalCorrection
  field_simp [Real.pi_ne_zero, Complex.I_ne_zero]
  linear_combination hzero

/-- Half-integer cutoff used to avoid Perron boundary weights. -/
def halfIntegerCutoff (N : ℕ) : ℝ := (N : ℝ) + 1 / 2

/-- A fixed quadratic truncation height. -/
def perronHeight (N : ℕ) : ℝ := (halfIntegerCutoff N) ^ 2

/-- Zeta-specific minimum-modulus input before contour integration.
For every closed sub-half-plane strictly inside a zero-free half-plane,
the regularized reciprocal grows more slowly than every fixed power on
vertical lines.  Nonvanishing alone does not imply this statement. -/
def RegularizedReciprocalSubpower : Prop :=
  ∀ (theta0 sigma eta : ℝ),
    theta0 < sigma → 0 < eta →
    ZetaZeroFreeRightOf theta0 →
    ∃ B : ℝ, 0 ≤ B ∧
      ∀ (a t : ℝ), sigma ≤ a → a ≤ 2 →
        ‖regularizedReciprocalZeta
          ((a : ℂ) + (t : ℂ) * Complex.I)‖ ≤
          B * (1 + |t|) ^ eta

/-- Quantitative reciprocal-zeta input, already integrated over the shifted
vertical and horizontal segments.  Its ordinary derivation uses a subpower
bound for `regularizedReciprocalZeta`, the exact contour shift above, and
norm estimates on the three segments. -/
def ZeroFreeReciprocalPerronBounds : Prop :=
  ∀ (theta0 sigma eta : ℝ),
    theta0 < sigma → 0 < sigma →
    0 < eta → eta ≤ 1 →
    ZetaZeroFreeRightOf theta0 →
    ∃ B : ℝ, 0 ≤ B ∧
      ∀ N : ℕ, 1 ≤ N →
        ‖perronVertical (halfIntegerCutoff N) sigma (perronHeight N)‖ ≤
          2 * B * (1 / sigma + 1 / eta) *
            (halfIntegerCutoff N) ^ (sigma + 2 * eta) ∧
        ‖perronHorizontalCorrection
            (halfIntegerCutoff N) sigma 2 (perronHeight N)‖ ≤
          4 * B * (halfIntegerCutoff N) ^ (2 * eta)

/-- Arithmetic-free segment integration target.  Its proof splits the
vertical integral at `|t|=1`, integrates `t^(eta-1)`, and bounds the two
horizontal segments at height `x^2`. -/
def ReciprocalSubpowerSegmentIntegration : Prop :=
  RegularizedReciprocalSubpower →
    ZeroFreeReciprocalPerronBounds

/-- Truncated Perron input on the fixed right line `Re s = 2`.
The noninteger cutoff ensures the sum is exactly the original prefix through `N`. -/
def HalfIntegerMertensTruncatedPerron : Prop :=
  ∃ K : ℝ, 0 ≤ K ∧
    ∀ N : ℕ, 1 ≤ N →
      ‖(finiteMertensPrefix N : ℂ) -
        perronVertical (halfIntegerCutoff N) 2 (perronHeight N)‖ ≤
      K * (1 + Real.log (halfIntegerCutoff N))

private theorem halfIntegerCutoff_one_le
    {N : ℕ} (hN : 1 ≤ N) :
    1 ≤ halfIntegerCutoff N := by
  have hNreal : (1 : ℝ) ≤ N := by exact_mod_cast hN
  unfold halfIntegerCutoff
  nlinarith

private theorem one_add_log_le_rpow_allowance
    {x eta : ℝ} (hx : 1 ≤ x) (heta : 0 < eta) :
    1 + Real.log x ≤ (1 + 1 / eta) * x ^ eta := by
  have hpow : 1 ≤ x ^ eta :=
    Real.one_le_rpow hx heta.le
  have hlog : Real.log x ≤ x ^ eta / eta :=
    Real.log_le_rpow_div (le_trans (by norm_num) hx) heta
  calc
    1 + Real.log x ≤ x ^ eta + x ^ eta / eta :=
      add_le_add hpow hlog
    _ = (1 + 1 / eta) * x ^ eta := by ring

private theorem halfIntegerCutoff_rpow_le_two_mul
    {N : ℕ} (hN : 1 ≤ N)
    {theta : ℝ} (htheta0 : 0 ≤ theta) (htheta1 : theta ≤ 1) :
    (halfIntegerCutoff N) ^ theta ≤
      2 * (N : ℝ) ^ theta := by
  have hNreal : (1 : ℝ) ≤ N := by exact_mod_cast hN
  have hx0 : 0 ≤ halfIntegerCutoff N := by
    unfold halfIntegerCutoff
    positivity
  have hxle : halfIntegerCutoff N ≤ 2 * (N : ℝ) := by
    unfold halfIntegerCutoff
    nlinarith
  have hmono :
      (halfIntegerCutoff N) ^ theta ≤
        (2 * (N : ℝ)) ^ theta :=
    Real.rpow_le_rpow hx0 hxle htheta0
  have htwo : (2 : ℝ) ^ theta ≤ 2 :=
    Real.rpow_le_self_of_one_le (by norm_num) htheta1
  calc
    (halfIntegerCutoff N) ^ theta ≤
        (2 * (N : ℝ)) ^ theta := hmono
    _ = (2 : ℝ) ^ theta * (N : ℝ) ^ theta := by
      rw [Real.mul_rpow (by norm_num) (Nat.cast_nonneg N)]
    _ ≤ 2 * (N : ℝ) ^ theta :=
      mul_le_mul_of_nonneg_right htwo (Real.rpow_nonneg _ _)

/-- The two quantitative analytic inputs imply the exact integer Mertens
power estimate for every strict target exponent.  All margin choices and
cutoff losses are explicit. -/
theorem integerMertensPower_of_reciprocalPerron
    (hsegments : ZeroFreeReciprocalPerronBounds)
    (hperron : HalfIntegerMertensTruncatedPerron)
    {theta0 theta : ℝ}
    (h0theta : theta0 < theta)
    (hhalf : (1 / 2 : ℝ) < theta)
    (htheta1 : theta < 1)
    (hz : ZetaZeroFreeRightOf theta0) :
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ N : ℕ, 1 ≤ N →
        |finiteMertensPrefix N| ≤ C * (N : ℝ) ^ theta := by
  let b : ℝ := max theta0 (1 / 2)
  let sigma : ℝ := (b + theta) / 2
  let eta : ℝ := (theta - b) / 8
  have hbtheta : b < theta := by
    dsimp [b]
    exact max_lt h0theta hhalf
  have hbhalf : (1 / 2 : ℝ) ≤ b := by
    dsimp [b]
    exact le_max_right _ _
  have hbsigma : b < sigma := by
    dsimp [sigma]
    linarith
  have htheta0sigma : theta0 < sigma :=
    lt_of_le_of_lt (le_max_left _ _) hbsigma
  have hsigma0 : 0 < sigma := by
    have : (0 : ℝ) < b :=
      (by norm_num : (0 : ℝ) < 1 / 2).trans_le hbhalf
    exact this.trans hbsigma
  have heta : 0 < eta := by
    dsimp [eta]
    linarith
  have heta1 : eta ≤ 1 := by
    dsimp [eta]
    linarith
  have hsigma2 : sigma ≤ 2 := by
    have hsigmaTheta : sigma < theta := by
      dsimp [sigma]
      linarith
    linarith
  have hverticalExp : sigma + 2 * eta < theta := by
    dsimp [sigma, eta]
    linarith
  have hhorizontalExp : 2 * eta < theta := by
    dsimp [eta]
    have hb0 : 0 < b :=
      (by norm_num : (0 : ℝ) < 1 / 2).trans_le hbhalf
    linarith
  have herrorExp : eta < theta := by
    dsimp [eta]
    have hb0 : 0 < b :=
      (by norm_num : (0 : ℝ) < 1 / 2).trans_le hbhalf
    linarith
  obtain ⟨B, hB, hbounds⟩ :=
    hsegments theta0 sigma eta
      htheta0sigma hsigma0 heta heta1 hz
  obtain ⟨K, hK, hPerron⟩ := hperron
  let A : ℝ :=
    K * (1 + 1 / eta) +
      2 * B * (1 / sigma + 1 / eta) + 4 * B
  have hA : 0 ≤ A := by
    dsimp [A]
    positivity
  refine ⟨2 * A, mul_nonneg (by norm_num) hA, ?_⟩
  intro N hN
  let x : ℝ := halfIntegerCutoff N
  let T : ℝ := perronHeight N
  have hx : 1 ≤ x := by
    dsimp [x]
    exact halfIntegerCutoff_one_le hN
  have hxpos : 0 < x := zero_lt_one.trans_le hx
  have hT : 0 ≤ T := by
    dsimp [T, perronHeight]
    positivity
  obtain ⟨hleft, hhorizontal⟩ := hbounds N hN
  have hb0 : 0 ≤ b := by
    exact (by norm_num : (0 : ℝ) ≤ 1 / 2).trans hbhalf
  have hzb : ZetaZeroFreeRightOf b := by
    intro s hs hsone
    exact hz s ((le_max_left theta0 (1 / 2)).trans_lt hs) hsone
  have hshift :
      perronVertical x 2 T =
        perronVertical x sigma T +
          perronHorizontalCorrection x sigma 2 T := by
    exact perronVertical_shift
      hb0 hxpos hzb hbsigma hsigma2 hT
  have hright :
      ‖perronVertical x 2 T‖ ≤
        ‖perronVertical x sigma T‖ +
          ‖perronHorizontalCorrection x sigma 2 T‖ := by
    rw [hshift]
    exact norm_add_le _ _
  have hperronN := hPerron N hN
  have hcomplex :
      ‖(finiteMertensPrefix N : ℂ)‖ ≤
        K * (1 + Real.log x) +
        2 * B * (1 / sigma + 1 / eta) *
          x ^ (sigma + 2 * eta) +
        4 * B * x ^ (2 * eta) := by
    calc
      ‖(finiteMertensPrefix N : ℂ)‖ ≤
          ‖(finiteMertensPrefix N : ℂ) -
              perronVertical x 2 T‖ +
            ‖perronVertical x 2 T‖ := by
        simpa [sub_add_cancel] using
          norm_add_le
            ((finiteMertensPrefix N : ℂ) -
              perronVertical x 2 T)
            (perronVertical x 2 T)
      _ ≤ K * (1 + Real.log x) +
          (‖perronVertical x sigma T‖ +
            ‖perronHorizontalCorrection x sigma 2 T‖) :=
        add_le_add hperronN hright
      _ ≤ K * (1 + Real.log x) +
          2 * B * (1 / sigma + 1 / eta) *
            x ^ (sigma + 2 * eta) +
          4 * B * x ^ (2 * eta) := by
        linarith
  have hlog :=
    one_add_log_le_rpow_allowance hx heta
  have hpowV :
      x ^ (sigma + 2 * eta) ≤ x ^ theta :=
    Real.rpow_le_rpow_of_exponent_le hx hverticalExp.le
  have hpowH :
      x ^ (2 * eta) ≤ x ^ theta :=
    Real.rpow_le_rpow_of_exponent_le hx hhorizontalExp.le
  have hpowE :
      x ^ eta ≤ x ^ theta :=
    Real.rpow_le_rpow_of_exponent_le hx herrorExp.le
  have htoX :
      |finiteMertensPrefix N| ≤ A * x ^ theta := by
    have hnorm :
        |finiteMertensPrefix N| =
          ‖(finiteMertensPrefix N : ℂ)‖ := by simp
    rw [hnorm]
    calc
      ‖(finiteMertensPrefix N : ℂ)‖ ≤
          K * (1 + Real.log x) +
          2 * B * (1 / sigma + 1 / eta) *
            x ^ (sigma + 2 * eta) +
          4 * B * x ^ (2 * eta) := hcomplex
      _ ≤ K * ((1 + 1 / eta) * x ^ eta) +
          2 * B * (1 / sigma + 1 / eta) * x ^ theta +
          4 * B * x ^ theta := by
        apply add_le_add
        · apply add_le_add
          · exact mul_le_mul_of_nonneg_left hlog hK
          · exact mul_le_mul_of_nonneg_left hpowV (by positivity)
        · exact mul_le_mul_of_nonneg_left hpowH (by positivity)
      _ ≤ K * ((1 + 1 / eta) * x ^ theta) +
          2 * B * (1 / sigma + 1 / eta) * x ^ theta +
          4 * B * x ^ theta := by
        apply add_le_add
        · apply add_le_add
          · exact mul_le_mul_of_nonneg_left
              (mul_le_mul_of_nonneg_left hpowE (by positivity)) hK
          · exact le_rfl
        · exact le_rfl
      _ = A * x ^ theta := by
        dsimp [A]
        ring
  have hxN :
      x ^ theta ≤ 2 * (N : ℝ) ^ theta := by
    dsimp [x]
    exact halfIntegerCutoff_rpow_le_two_mul
      hN hhalf.le htheta1.le
  calc
    |finiteMertensPrefix N| ≤ A * x ^ theta := htoX
    _ ≤ A * (2 * (N : ℝ) ^ theta) :=
      mul_le_mul_of_nonneg_left hxN hA
    _ = (2 * A) * (N : ℝ) ^ theta := by ring

/-- Integer power control returns to the exact real cutoff and physical-time
Mertens envelope used by the causal consumer. -/
theorem mertensExponentialEnvelopeAt_of_integerPower
    {theta C : ℝ} (htheta0 : 0 ≤ theta) (hC : 0 ≤ C)
    (hInteger : ∀ N : ℕ, 1 ≤ N →
      |finiteMertensPrefix N| ≤ C * (N : ℝ) ^ theta) :
    MertensExponentialEnvelopeAt theta C := by
  refine ⟨hC, ?_⟩
  intro u hu
  have hx : (1 : ℝ) ≤ Real.exp u :=
    Real.one_le_exp_iff.mpr hu
  have hreal :=
    original_integer_to_real_Mertens_power
      theta C htheta0 hC hInteger (Real.exp u) hx
  have hrpow :
      (Real.exp u) ^ theta = Real.exp (theta * u) := by
    rw [Real.rpow_def_of_pos (Real.exp_pos u), Real.log_exp]
    congr 1
    ring
  simpa only [hrpow] using hreal

/-- The two precise Perron inputs discharge the repository's previously
monolithic zero-free-to-Mertens bridge. -/
theorem zeroFreeToMertensPowerBridge_of_reciprocalPerron
    (hsegments : ZeroFreeReciprocalPerronBounds)
    (hperron : HalfIntegerMertensTruncatedPerron) :
    ZeroFreeToMertensPowerBridge := by
  intro theta0 theta h0theta hhalf htheta1 hz
  obtain ⟨C, hC, hInteger⟩ :=
    integerMertensPower_of_reciprocalPerron
      hsegments hperron h0theta hhalf htheta1 hz
  exact ⟨C,
    mertensExponentialEnvelopeAt_of_integerPower
      hhalf.le hC hInteger⟩

/-- Raw reciprocal subpower, its arithmetic-free segment integration,
and truncated Perron together discharge the old bridge. -/
theorem zeroFreeToMertensPowerBridge_of_subpowerPerron
    (hsubpower : RegularizedReciprocalSubpower)
    (hsegment : ReciprocalSubpowerSegmentIntegration)
    (hperron : HalfIntegerMertensTruncatedPerron) :
    ZeroFreeToMertensPowerBridge :=
  zeroFreeToMertensPowerBridge_of_reciprocalPerron
    (hsegment hsubpower) hperron

/-- PR103 consequence after supplying only the two remaining quantitative
Perron inputs and the exact external family theorem. -/
theorem pr103_pickupEnergy_clean_rate_of_perron
    (hCandidate : PR103DirichletStatement)
    (hsegments : ZeroFreeReciprocalPerronBounds)
    (hperron : HalfIntegerMertensTruncatedPerron) :
    FixedRateUpper pickupEnergy cleanPR103EnergyRate := by
  exact pr103_pickupEnergy_clean_rate
    GRWTSK.NumberTheory.Moebius.PR103ClosureAndCausalBridges.pickupVelocityPowerEnergyTransfer_source_proof
    (GRWTSK.NumberTheory.Moebius.PR103ClosureAndCausalBridges.PR103_mod_one_zeta_of_exact_candidate hCandidate)
    (zeroFreeToMertensPowerBridge_of_reciprocalPerron hsegments hperron)

/-- Exact causal-energy abscissa consequence at the external boundary. -/
theorem pickupEnergyAbscissa_le_exactPR103_of_perron
    (hCandidate : PR103DirichletStatement)
    (hsegments : ZeroFreeReciprocalPerronBounds)
    (hperron : HalfIntegerMertensTruncatedPerron) :
    pickupEnergyAbscissa ≤ exactPR103EnergyBoundary := by
  exact pickupEnergyAbscissa_le_exactPR103
    GRWTSK.NumberTheory.Moebius.PR103ClosureAndCausalBridges.pickupVelocityPowerEnergyTransfer_source_proof
    (GRWTSK.NumberTheory.Moebius.PR103ClosureAndCausalBridges.PR103_mod_one_zeta_of_exact_candidate hCandidate)
    (zeroFreeToMertensPowerBridge_of_reciprocalPerron hsegments hperron)

end GRWTSK.NumberTheory.Moebius.ReciprocalZetaPerronBridge
