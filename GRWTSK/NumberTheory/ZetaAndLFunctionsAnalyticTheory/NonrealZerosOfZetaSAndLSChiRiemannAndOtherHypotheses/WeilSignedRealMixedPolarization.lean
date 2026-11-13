/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.WeilSignedMixedPrimePoleH1
import Mathlib.Tactic

/-!
# Exact real mixed signed Weil form bilinearity and quadratic polarization

The input is the ORIGINAL real signed zeta physical source and the
primitive nonprincipal REAL conjugate-pair source. The mixed forms are
precisely SignedMixedPrimePoleH1.zetaRealMixedWeil and
SignedMixedPrimePoleH1.primitiveRealMixedWeil: no arithmetic weights,
pole signs, conductor, gamma parities, support window or matrix entries
are changed.

The preceding modules established exact diagonal returns and symmetry.
Here we construct the missing real bilinear source laws by actual
integral linearity, including gamma mixed-energy linearity. A genuine
supported window premise is used ONLY where the original zeta sinh
moment would otherwise fail to be integrable on the whole line.

A separate abstract real quadratic-polarization lemma shows why the
diagonal H1 upper bound is ENOUGH to control the mixed form once these
source laws are proved: for a symmetric bilinear B and a nonnegative
quadratic budget U with |B(f,f)| <= U(f),
B(f,g)^2 <= U(f)*U(g). This remains valid for INDEFINITE B and uses
no positivity of the full signed arithmetic Weil form.

The function-pair/supported-classical-H1 specialization of that lemma
is documented in the companion. Lean source compilation, kernel replay,
axiom auditing and independent review have NOT been run. No RH or
Dirichlet GRH proof is claimed.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.SignedRealMixedPolarization

open GRWTSK.NumberTheory.WeilQuadraticForm.OddRootProjection
open GRWTSK.NumberTheory.WeilQuadraticForm.OddSineForm
open GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur
open GRWTSK.NumberTheory.WeilQuadraticForm.SignedArithmeticH1Budget
open GRWTSK.NumberTheory.WeilQuadraticForm.SignedMixedPrimePoleH1
open GRWTSK.NumberTheory.WeilQuadraticForm.ExactZetaPoleH1
open GRWTSK.NumberTheory.WeilQuadraticForm.NativeMixedGammaH1

/-- Gamma mixed-energy additivity on the literal parity-weighted
translation density. The singular kernel is already integrable
on classical H1 sources, so this is TRUE Lebesgue linearity and
not an unjustified integral of nonintegrable pieces. -/
theorem realMixedGammaEnergy_add_left
    (a : ℕ) {f g h : ℝ → ℝ}
    (hf : ClassicalRealH1 f)
    (hg : ClassicalRealH1 g)
    (hh : ClassicalRealH1 h) :
    realMixedGammaEnergy a (f + g) h =
      realMixedGammaEnergy a f h +
        realMixedGammaEnergy a g h := by
  have hiF := realMixedGammaDensity_integrableOn a hf hh
  have hiG := realMixedGammaDensity_integrableOn a hg hh
  have hEq (r : ℝ) :
      realMixedGammaDensity a (f + g) h r =
        realMixedGammaDensity a f h r +
          realMixedGammaDensity a g h r := by
    have hF : Integrable (fun t : ℝ =>
        (f (t + r) - f t) * (h (t + r) - h t)) :=
      ((hf.f_memLp.comp_measurePreserving
        (measurePreserving_add_right volume r)).sub hf.f_memLp).integrable_mul
        ((hh.f_memLp.comp_measurePreserving
          (measurePreserving_add_right volume r)).sub hh.f_memLp)
    have hG : Integrable (fun t : ℝ =>
        (g (t + r) - g t) * (h (t + r) - h t)) :=
      ((hg.f_memLp.comp_measurePreserving
        (measurePreserving_add_right volume r)).sub hg.f_memLp).integrable_mul
        ((hh.f_memLp.comp_measurePreserving
          (measurePreserving_add_right volume r)).sub hh.f_memLp)
    have hShift :
        realMixedShiftEnergy (f + g) h r =
          realMixedShiftEnergy f h r +
            realMixedShiftEnergy g h r := by
      unfold realMixedShiftEnergy
      calc
        _ = ∫ t : ℝ,
          (f (t + r) - f t) * (h (t + r) - h t) +
            (g (t + r) - g t) * (h (t + r) - h t) := by
          apply integral_congr_ae
          filter_upwards [] with t
          simp only [Pi.add_apply]
          ring
        _ = _ := integral_add hF hG
    unfold realMixedGammaDensity
    rw [hShift]
    ring
  unfold realMixedGammaEnergy
  calc
    _ = ∫ r in Ioi (0 : ℝ),
          realMixedGammaDensity a f h r +
            realMixedGammaDensity a g h r := by
      apply integral_congr_ae
      filter_upwards [] with r
      exact hEq r
    _ = _ := integral_add hiF hiG

/-- Mixed real gamma right additivity uses its already established
EXACT real source symmetry, not a complex Hermitian assumption. -/
theorem realMixedGammaEnergy_add_right
    (a : ℕ) {f g h : ℝ → ℝ}
    (hf : ClassicalRealH1 f)
    (hg : ClassicalRealH1 g)
    (hh : ClassicalRealH1 h) :
    realMixedGammaEnergy a f (g + h) =
      realMixedGammaEnergy a f g +
        realMixedGammaEnergy a f h := by
  rw [realMixedGammaEnergy_symmetric,
      realMixedGammaEnergy_add_left a hg hh hf,
      realMixedGammaEnergy_symmetric a g f,
      realMixedGammaEnergy_symmetric a h f]

/-- The literal whole-line real pairing is additive on the first leg
on genuine L2 inputs. This supplies the conductor term unchanged. -/
theorem realPairing_add_left {f g h : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume)
    (hh : MemLp h 2 volume) :
    (∫ t : ℝ, (f + g) t * h t) =
      (∫ t : ℝ, f t * h t) + (∫ t : ℝ, g t * h t) := by
  have hF : Integrable (fun t => f t * h t) := hf.integrable_mul hh
  have hG : Integrable (fun t => g t * h t) := hg.integrable_mul hh
  calc
    _ = ∫ t : ℝ, f t * h t + g t * h t := by
      apply integral_congr_ae
      filter_upwards [] with t
      simp only [Pi.add_apply]
      ring
    _ = _ := integral_add hF hG

/-- Exact real scalar homogeneity of the genuine conductor pairing. -/
theorem realPairing_scale_left (c : ℝ) (f g : ℝ → ℝ) :
    (∫ t : ℝ, c * f t * g t) =
      c * (∫ t : ℝ, f t * g t) := by
  calc
    _ = ∫ t : ℝ, c * (f t * g t) := by
      apply integral_congr_ae
      filter_upwards [] with t
      ring
    _ = _ := integral_const_mul

/-- Real scaling of the ORIGINAL paired mixed prime-power source,
keeping every signed w_chi and BOTH true shift orientations. -/
theorem pairedMixedPrimeResponse_scale_left
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q)
    (T c : ℝ) (f g : ℝ → ℝ) :
    pairedMixedPrimeResponse chi T (fun t => c * f t) g =
      c * pairedMixedPrimeResponse chi T f g := by
  have hCross (r : ℝ) :
      realCrossCorrelation (fun t => c * f t) g r =
        c * realCrossCorrelation f g r := by
    unfold realCrossCorrelation
    calc
      _ = ∫ t : ℝ, c * (f t * g (t + r)) := by
        apply integral_congr_ae
        filter_upwards [] with t
        ring
      _ = _ := integral_const_mul
  have hSymShift (r : ℝ) :
      realSymmetricShift (fun t => c * f t) g r =
        c * realSymmetricShift f g r := by
    unfold realSymmetricShift
    rw [hCross, hCross]
    ring
  unfold pairedMixedPrimeResponse
  simp_rw [hSymShift]
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n _
  ring

/-- Untwisted native zeta real prime-power response scalar law. -/
theorem zetaMixedPrimeResponse_scale_left
    (T c : ℝ) (f g : ℝ → ℝ) :
    zetaMixedPrimeResponse T (fun t => c * f t) g =
      c * zetaMixedPrimeResponse T f g := by
  have hCross (r : ℝ) :
      realCrossCorrelation (fun t => c * f t) g r =
        c * realCrossCorrelation f g r := by
    unfold realCrossCorrelation
    calc
      _ = ∫ t : ℝ, c * (f t * g (t + r)) := by
        apply integral_congr_ae
        filter_upwards [] with t
        ring
      _ = _ := integral_const_mul
  have hSymShift (r : ℝ) :
      realSymmetricShift (fun t => c * f t) g r =
        c * realSymmetricShift f g r := by
    unfold realSymmetricShift
    rw [hCross, hCross]
    ring
  unfold zetaMixedPrimeResponse
  simp_rw [hSymShift]
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n _
  ring

/-- Literal pointwise support on the ORIGINAL fixed real window. -/
def SupportedOnWindow (T : ℝ) (f : ℝ → ℝ) : Prop :=
  ∀ t : ℝ, t ∉ Icc (-T) T → f t = 0

theorem SupportedOnWindow.add (T : ℝ) {f g : ℝ → ℝ}
    (hf : SupportedOnWindow T f)
    (hg : SupportedOnWindow T g) :
    SupportedOnWindow T (f + g) := by
  intro t ht
  simp only [Pi.add_apply, hf t ht, hg t ht, add_zero]

theorem SupportedOnWindow.sub (T : ℝ) {f g : ℝ → ℝ}
    (hf : SupportedOnWindow T f)
    (hg : SupportedOnWindow T g) :
    SupportedOnWindow T (f - g) := by
  intro t ht
  simp only [Pi.sub_apply, hf t ht, hg t ht, sub_zero]

theorem SupportedOnWindow.scale (T c : ℝ) {f : ℝ → ℝ}
    (hf : SupportedOnWindow T f) :
    SupportedOnWindow T (fun t => c * f t) := by
  intro t ht
  simp only [hf t ht, mul_zero]

/-- The exact ORIGINAL zeta sinh moment is additive only after
recording the compact support needed for genuine Lebesgue integration.
No unjustified global moment of an arbitrary L2 test is used. -/
theorem oddZetaPoleMoment_add
    (T : ℝ) (hT : 0 < T)
    {f g : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume)
    (hsf : SupportedOnWindow T f) (hsg : SupportedOnWindow T g) :
    oddZetaPoleMoment (f + g) =
      oddZetaPoleMoment f + oddZetaPoleMoment g := by
  have hw := sourceSinhWindow_memLp T hT
  have hiF : Integrable (fun t : ℝ =>
      f t * sourceSinhWindow T t) := hf.integrable_mul hw
  have hiG : Integrable (fun t : ℝ =>
      g t * sourceSinhWindow T t) := hg.integrable_mul hw
  rw [original_odd_pole_eq_window_pair T (f + g) (SupportedOnWindow.add T hsf hsg),
    original_odd_pole_eq_window_pair T f hsf,
    original_odd_pole_eq_window_pair T g hsg]
  calc
    _ = ∫ t : ℝ,
        f t * sourceSinhWindow T t +
          g t * sourceSinhWindow T t := by
      apply integral_congr_ae
      filter_upwards [] with t
      simp only [Pi.add_apply]
      ring
    _ = _ := integral_add hiF hiG

/-- Source-preserving scalar homogeneity of the original compact sinh
pole moment, including zero and negative scaling factors. -/
theorem oddZetaPoleMoment_scale
    (T c : ℝ) (f : ℝ → ℝ)
    (hsf : SupportedOnWindow T f) :
    oddZetaPoleMoment (fun t => c * f t) =
      c * oddZetaPoleMoment f := by
  rw [original_odd_pole_eq_window_pair T (fun t => c * f t)
       (SupportedOnWindow.scale T c hsf),
    original_odd_pole_eq_window_pair T f hsf]
  calc
    _ = ∫ t : ℝ, c * (f t * sourceSinhWindow T t) := by
      apply integral_congr_ae
      filter_upwards [] with t
      ring
    _ = _ := integral_const_mul

theorem zetaMixedPoleResponse_add_left
    (T : ℝ) (hT : 0 < T)
    {f g h : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume)
    (hsf : SupportedOnWindow T f) (hsg : SupportedOnWindow T g) :
    zetaMixedPoleResponse (f + g) h =
      zetaMixedPoleResponse f h + zetaMixedPoleResponse g h := by
  unfold zetaMixedPoleResponse
  rw [oddZetaPoleMoment_add T hT hf hg hsf hsg]
  ring

theorem zetaMixedPoleResponse_scale_left
    (T c : ℝ) (f g : ℝ → ℝ)
    (hsf : SupportedOnWindow T f) :
    zetaMixedPoleResponse (fun t => c * f t) g =
      c * zetaMixedPoleResponse f g := by
  unfold zetaMixedPoleResponse
  rw [oddZetaPoleMoment_scale T c f hsf]
  ring

/-- The ORIGINAL primitive REAL mixed Weil form is additive in its
first real leg, retaining actual conductor, gamma parity and signed
two-direction prime powers. -/
theorem primitiveRealMixedWeil_add_left
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q)
    (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (T : ℝ) {f g h : ℝ → ℝ}
    (hf : ClassicalRealH1 f)
    (hg : ClassicalRealH1 g)
    (hh : ClassicalRealH1 h) :
    primitiveRealMixedWeil chi hp hn T (f + g) h =
      primitiveRealMixedWeil chi hp hn T f h +
        primitiveRealMixedWeil chi hp hn T g h := by
  have hMass := realPairing_add_left
    hf.f_memLp hg.f_memLp hh.f_memLp
  simp only [primitiveRealMixedWeil]
  rw [hMass,
    realMixedGammaEnergy_add_left (gammaParity chi) hf hg hh,
    pairedMixedPrimeResponse_add_left chi T f g h
      hf.f_memLp hg.f_memLp hh.f_memLp]
  ring

theorem primitiveRealMixedWeil_scale_left
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q)
    (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (T c : ℝ) (f g : ℝ → ℝ) :
    primitiveRealMixedWeil chi hp hn T (fun t => c * f t) g =
      c * primitiveRealMixedWeil chi hp hn T f g := by
  simp only [primitiveRealMixedWeil]
  rw [realPairing_scale_left,
    realMixedGammaEnergy_scale_left,
    pairedMixedPrimeResponse_scale_left]
  ring

/-- True full real odd zeta mixed form additivity, with the compact
sinh source support explicitly paid rather than discarded. -/
theorem zetaRealMixedWeil_add_left
    (T : ℝ) (hT : 0 < T)
    {f g h : ℝ → ℝ}
    (hf : ClassicalRealH1 f)
    (hg : ClassicalRealH1 g)
    (hh : ClassicalRealH1 h)
    (hsf : SupportedOnWindow T f)
    (hsg : SupportedOnWindow T g) :
    zetaRealMixedWeil T (f + g) h =
      zetaRealMixedWeil T f h + zetaRealMixedWeil T g h := by
  have hMass := realPairing_add_left
    hf.f_memLp hg.f_memLp hh.f_memLp
  simp only [zetaRealMixedWeil]
  rw [hMass, realMixedGammaEnergy_add_left 0 hf hg hh,
    zetaMixedPrimeResponse_add_left T f g h
      hf.f_memLp hg.f_memLp hh.f_memLp,
    zetaMixedPoleResponse_add_left T hT hf.f_memLp hg.f_memLp hsf hsg]
  ring

theorem zetaRealMixedWeil_scale_left
    (T c : ℝ) (f g : ℝ → ℝ)
    (hsf : SupportedOnWindow T f) :
    zetaRealMixedWeil T (fun t => c * f t) g =
      c * zetaRealMixedWeil T f g := by
  simp only [zetaRealMixedWeil]
  rw [realPairing_scale_left,
    realMixedGammaEnergy_scale_left,
    zetaMixedPrimeResponse_scale_left,
    zetaMixedPoleResponse_scale_left T c f g hsf]
  ring

/-- Real right-leg additivity of both complete forms is a CONSEQUENCE
of the newly proved left addition and the previously maintained
native mixed symmetry. No complex-character Hermitian assumption. -/
theorem primitiveRealMixedWeil_add_right
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q)
    (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (T : ℝ) {f g h : ℝ → ℝ}
    (hf : ClassicalRealH1 f)
    (hg : ClassicalRealH1 g)
    (hh : ClassicalRealH1 h) :
    primitiveRealMixedWeil chi hp hn T f (g + h) =
      primitiveRealMixedWeil chi hp hn T f g +
        primitiveRealMixedWeil chi hp hn T f h := by
  rw [primitiveRealMixedWeil_symmetric,
    primitiveRealMixedWeil_add_left chi hp hn T hg hh hf,
    primitiveRealMixedWeil_symmetric chi hp hn T g f,
    primitiveRealMixedWeil_symmetric chi hp hn T h f]

theorem zetaRealMixedWeil_add_right
    (T : ℝ) (hT : 0 < T)
    {f g h : ℝ → ℝ}
    (hf : ClassicalRealH1 f)
    (hg : ClassicalRealH1 g)
    (hh : ClassicalRealH1 h)
    (hsg : SupportedOnWindow T g)
    (hsh : SupportedOnWindow T h) :
    zetaRealMixedWeil T f (g + h) =
      zetaRealMixedWeil T f g +
        zetaRealMixedWeil T f h := by
  rw [zetaRealMixedWeil_symmetric,
    zetaRealMixedWeil_add_left T hT hg hh hf hsg hsh,
    zetaRealMixedWeil_symmetric T g f,
    zetaRealMixedWeil_symmetric T h f]

/-! ## Real indefinite quadratic-form polarization

This is not a positivity assertion for a signed Weil form. It is an
algebraic boundedness result for any symmetric real bilinear source,
consumed by the real original-source specialization below. -/

private theorem real_quadratic_nonneg_discriminant
    (A B C : ℝ) (hA : 0 ≤ A) (hC : 0 ≤ C)
    (hquad : ∀ s : ℝ, 0 ≤ s ^ 2 * A + 2 * s * B + C) :
    B ^ 2 ≤ A * C := by
  by_cases hAz : A = 0
  · by_cases hBz : B = 0
    · nlinarith [mul_nonneg hA hC]
    · have htest := hquad (-(C + 1) / B)
      rw [hAz] at htest
      have hcancel : (-(C + 1) / B) * B = -(C + 1) := by
        field_simp [hBz]
      nlinarith [htest, hcancel]
  · have hApos : 0 < A := lt_of_le_of_ne hA (Ne.symm hAz)
    have htest := hquad (-B / A)
    have hmul := mul_nonneg hApos.le htest
    have hident :
        A * (((-B / A) ^ 2) * A + 2 * (-B / A) * B + C) =
          A * C - B ^ 2 := by
      field_simp [hApos.ne']
      ring
    rw [hident] at hmul
    nlinarith

/-- Exact algebraic polarization of an honest symmetric REAL bilinear
form. Works for the signed, indefinite Weil source just as it does
for a positive inner product; no order assumption is made on B. -/
theorem real_symmetric_bilinear_polarization
    {V : Type*} [AddCommGroup V] [Module ℝ V]
    (B : V → V → ℝ)
    (hadd : ∀ x y z : V, B (x + y) z = B x z + B y z)
    (hscale : ∀ (c : ℝ) (x y : V), B (c • x) y = c * B x y)
    (hsymm : ∀ x y : V, B x y = B y x)
    (f g : V) :
    B (f + g) (f + g) - B (f - g) (f - g) =
      4 * B f g := by
  have hright (x y z : V) :
      B x (y + z) = B x y + B x z := by
    rw [hsymm x (y + z), hadd y z x, hsymm y x, hsymm z x]
  have hnegLeft (x y : V) :
      B (-x) y = - B x y := by
    calc
      _ = B ((-1 : ℝ) • x) y := by rw [neg_one_smul]
      _ = (-1 : ℝ) * B x y := hscale (-1) x y
      _ = _ := by ring
  have hnegRight (x y : V) :
      B x (-y) = -B x y := by
    rw [hsymm x (-y), hnegLeft y x, hsymm y x]
  have hplus (x y : V) :
      B (x + y) (x + y) =
        B x x + B y y + 2 * B x y := by
    calc
      _ = B x (x + y) + B y (x + y) := hadd x y (x + y)
      _ = (B x x + B x y) + (B y x + B y y) := by
        rw [hright x x y, hright y x y]
      _ = _ := by rw [hsymm y x]; ring
  have hminus :
      B (f - g) (f - g) =
        B f f + B g g - 2 * B f g := by
    have h := hplus f (-g)
    have hdiagNeg : B (-g) (-g) = B g g := by
      rw [hnegLeft, hnegRight, neg_neg]
    change B (f + -g) (f + -g) = _
    rw [h, hdiagNeg, hnegRight]
    ring
  rw [hplus f g, hminus]
  ring

/-- Cauchy bound for an INDEFINITE real symmetric bilinear form from
ONLY its absolute diagonal bound and a nonnegative quadratic budget.
The proof works also at U(f)=0; no division by any test norm. -/
theorem real_indefinite_bilinear_cauchy
    {V : Type*} [AddCommGroup V] [Module ℝ V]
    (B : V → V → ℝ)
    (U : V → ℝ)
    (hadd : ∀ x y z : V, B (x + y) z = B x z + B y z)
    (hscale : ∀ (c : ℝ) (x y : V), B (c • x) y = c * B x y)
    (hsymm : ∀ x y : V, B x y = B y x)
    (hUpar : ∀ x y : V,
      U (x + y) + U (x - y) = 2 * (U x + U y))
    (hUscale : ∀ (c : ℝ) (x : V), U (c • x) = c ^ 2 * U x)
    (hUpos : ∀ x : V, 0 ≤ U x)
    (hdiag : ∀ x : V, |B x x| ≤ U x)
    (f g : V) :
    (B f g) ^ 2 ≤ U f * U g := by
  have hbalanced (x y : V) :
      2 * |B x y| ≤ U x + U y := by
    have hp := real_symmetric_bilinear_polarization
      B hadd hscale hsymm x y
    have habs :
        4 * |B x y| =
          |B (x + y) (x + y) - B (x - y) (x - y)| := by
      rw [hp, abs_mul, abs_of_pos (by norm_num : (0 : ℝ) < 4)]
      ring
    have hb :
        |B (x + y) (x + y) - B (x - y) (x - y)| ≤
          U (x + y) + U (x - y) := by
      calc
        _ ≤ |B (x + y) (x + y)| + |B (x - y) (x - y)| :=
          abs_sub_le _ _
        _ ≤ _ := add_le_add (hdiag (x + y)) (hdiag (x - y))
    rw [← habs, hUpar x y] at hb
    linarith
  have hscaled (c : ℝ) :
      2 * |c * B f g| ≤ c ^ 2 * U f + U g := by
    have h := hbalanced (c • f) g
    rw [hscale c f g, hUscale c f] at h
    exact h
  have hquad (c : ℝ) :
      0 ≤ c ^ 2 * U f + 2 * c * B f g + U g := by
    have h := hscaled (-c)
    have hbelow : (-c) * B f g ≤ |(-c) * B f g| :=
      le_abs_self _
    nlinarith [h, hbelow]
  exact real_quadratic_nonneg_discriminant
    (U f) (B f g) (U g)
    (hUpos f) (hUpos g) hquad

/-! ## Exact native signed Weil quadratic difference -/

/-- Subtraction in the ORIGINAL primitive real mixed right leg follows
from source additivity, real symmetry and scalar homogeneity. -/
theorem primitiveRealMixedWeil_sub_right
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q)
    (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (T : ℝ) {f g h : ℝ → ℝ}
    (hf : ClassicalRealH1 f)
    (hg : ClassicalRealH1 g)
    (hh : ClassicalRealH1 h) :
    primitiveRealMixedWeil chi hp hn T f (g - h) =
      primitiveRealMixedWeil chi hp hn T f g -
        primitiveRealMixedWeil chi hp hn T f h := by
  have hhn : ClassicalRealH1 (-h) := by
    simpa only [neg_one_mul, Pi.neg_apply] using (hh.scale (-1))
  have hAdd := primitiveRealMixedWeil_add_right
    chi hp hn T hf hg hhn
  have hNeg :
      primitiveRealMixedWeil chi hp hn T f (-h) =
        -primitiveRealMixedWeil chi hp hn T f h := by
    calc
      _ = primitiveRealMixedWeil chi hp hn T (-h) f :=
        primitiveRealMixedWeil_symmetric chi hp hn T f (-h)
      _ = (-1 : ℝ) * primitiveRealMixedWeil chi hp hn T h f := by
        simpa only [neg_one_mul] using
          (primitiveRealMixedWeil_scale_left
            chi hp hn T (-1) h f)
      _ = _ := by
        rw [primitiveRealMixedWeil_symmetric chi hp hn T h f]
        ring
  calc
    _ = primitiveRealMixedWeil chi hp hn T f (g + -h) := by
      rw [sub_eq_add_neg]
    _ = primitiveRealMixedWeil chi hp hn T f g +
          primitiveRealMixedWeil chi hp hn T f (-h) := hAdd
    _ = _ := by rw [hNeg]; ring

/-- Exact real odd zeta right subtraction also keeps the ORIGINAL
compact support of the signed sinh moment. -/
theorem zetaRealMixedWeil_sub_right
    (T : ℝ) (hT : 0 < T) {f g h : ℝ → ℝ}
    (hf : ClassicalRealH1 f)
    (hg : ClassicalRealH1 g)
    (hh : ClassicalRealH1 h)
    (hsg : SupportedOnWindow T g)
    (hsh : SupportedOnWindow T h) :
    zetaRealMixedWeil T f (g - h) =
      zetaRealMixedWeil T f g - zetaRealMixedWeil T f h := by
  have hhn : ClassicalRealH1 (-h) := by
    simpa only [neg_one_mul, Pi.neg_apply] using (hh.scale (-1))
  have hshn : SupportedOnWindow T (-h) := by
    intro t ht
    simp only [Pi.neg_apply, hsh t ht, neg_zero]
  have hAdd := zetaRealMixedWeil_add_right
    T hT hf hg hhn hsg hshn
  have hNeg :
      zetaRealMixedWeil T f (-h) =
        -zetaRealMixedWeil T f h := by
    calc
      _ = zetaRealMixedWeil T (-h) f :=
        zetaRealMixedWeil_symmetric T f (-h)
      _ = (-1 : ℝ) * zetaRealMixedWeil T h f := by
        simpa only [neg_one_mul] using
          (zetaRealMixedWeil_scale_left T (-1) h f hsh)
      _ = _ := by
        rw [zetaRealMixedWeil_symmetric T h f]
        ring
  calc
    _ = zetaRealMixedWeil T f (g + -h) := by
      rw [sub_eq_add_neg]
    _ = zetaRealMixedWeil T f g +
          zetaRealMixedWeil T f (-h) := hAdd
    _ = _ := by rw [hNeg]; ring

/-- ORIGINAL primitive nonprincipal REAL paired source polarization,
with exact conductor/parity, signed active prime powers, and no pole.
There is no hidden arithmetic lower-sign premise. -/
theorem primitiveRealPhysical_difference_eq_mixed
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q)
    (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (T : ℝ) {f g : ℝ → ℝ}
    (hf : ClassicalRealH1 f) (hg : ClassicalRealH1 g) :
    primitivePairedOddPhysicalValue chi hp hn T f -
      primitivePairedOddPhysicalValue chi hp hn T g =
        primitiveRealMixedWeil chi hp hn T (f + g) (f - g) := by
  have hAdd := primitiveRealMixedWeil_add_left
    chi hp hn T hf hg (hf.sub hg)
  have hFS := primitiveRealMixedWeil_sub_right
    chi hp hn T hf hf hg
  have hGS := primitiveRealMixedWeil_sub_right
    chi hp hn T hg hf hg
  have hB :
      primitiveRealMixedWeil chi hp hn T (f + g) (f - g) =
        primitiveRealMixedWeil chi hp hn T f f -
          primitiveRealMixedWeil chi hp hn T g g := by
    rw [hAdd, hFS, hGS,
      primitiveRealMixedWeil_symmetric chi hp hn T g f]
    ring
  rw [hB, primitiveRealMixedWeil_diag chi hp hn T f,
    primitiveRealMixedWeil_diag chi hp hn T g]

/-- ORIGINAL real odd zeta physical quadratic difference: signed pole
-2*m(f)m(g) and BOTH original prime translation orientations survive.
The source f,g must lie on the same compact support window. -/
theorem zetaRealPhysical_difference_eq_mixed
    (T : ℝ) (hT : 0 < T)
    {f g : ℝ → ℝ}
    (hf : ClassicalRealH1 f) (hg : ClassicalRealH1 g)
    (hsf : SupportedOnWindow T f)
    (hsg : SupportedOnWindow T g) :
    zetaOddPhysicalValue T f - zetaOddPhysicalValue T g =
      zetaRealMixedWeil T (f + g) (f - g) := by
  have hAdd := zetaRealMixedWeil_add_left
    T hT hf hg (hf.sub hg) hsf hsg
  have hFS := zetaRealMixedWeil_sub_right
    T hT hf hf hg hsf hsg
  have hGS := zetaRealMixedWeil_sub_right
    T hT hg hf hg hsf hsg
  have hB :
      zetaRealMixedWeil T (f + g) (f - g) =
        zetaRealMixedWeil T f f - zetaRealMixedWeil T g g := by
    rw [hAdd, hFS, hGS, zetaRealMixedWeil_symmetric T g f]
    ring
  rw [hB, zetaRealMixedWeil_diag T f,
    zetaRealMixedWeil_diag T g]

/-! ## Original physical H1 quadratic-budget operations -/

/-- The genuine whole-line REAL L2 mass satisfies the exact
parallelogram law for real L2 source tests. No Fourier completeness
or spectral positivity is needed. -/
theorem physicalMass_parallelogram
    (f g : ℝ → ℝ) (hf : MemLp f 2 volume)
    (hg : MemLp g 2 volume) :
    physicalMass (f + g) + physicalMass (f - g) =
      2 * (physicalMass f + physicalMass g) := by
  have hp : Integrable (fun t : ℝ => ((f + g) t) ^ 2) :=
    (hf.add hg).integrable_sq
  have hm : Integrable (fun t : ℝ => ((f - g) t) ^ 2) :=
    (hf.sub hg).integrable_sq
  have hf2 : Integrable (fun t : ℝ => f t ^ 2) :=
    hf.integrable_sq
  have hg2 : Integrable (fun t : ℝ => g t ^ 2) :=
    hg.integrable_sq
  unfold physicalMass
  calc
    _ = ∫ t : ℝ, ((f + g) t) ^ 2 + ((f - g) t) ^ 2 :=
      (integral_add hp hm).symm
    _ = ∫ t : ℝ, 2 * (f t ^ 2 + g t ^ 2) := by
      apply integral_congr_ae
      filter_upwards [] with t
      simp only [Pi.add_apply, Pi.sub_apply]
      ring
    _ = _ := by
      rw [integral_const_mul, integral_add hf2 hg2]

/-- Exact real L2 mass homogeneity including negative and zero scalars.
A similar identity applies to the genuine physical derivative mass. -/
theorem physicalMass_scale (c : ℝ) (f : ℝ → ℝ) :
    physicalMass (fun t => c * f t) =
      c ^ 2 * physicalMass f := by
  unfold physicalMass
  calc
    _ = ∫ t : ℝ, c ^ 2 * f t ^ 2 := by
      apply integral_congr_ae
      filter_upwards [] with t
      ring
    _ = _ := by rw [integral_const_mul]

/-- The actual weighted H1 diagonal budget. Its two coefficients
are supplied by the original zeta or paired-character source,
not a new spectral comparison parameter. -/
def physicalWeightedBudget (A alpha : ℝ)
    (f first : ℝ → ℝ) : ℝ :=
  A * physicalMass f + alpha * physicalDerivativeMass first

theorem physicalWeightedBudget_scale (A alpha c : ℝ)
    (f first : ℝ → ℝ) :
    physicalWeightedBudget A alpha
      (fun t => c * f t) (fun t => c * first t) =
        c ^ 2 * physicalWeightedBudget A alpha f first := by
  have hD :
      (∫ t : ℝ, (c * first t) ^ 2) =
        c ^ 2 * (∫ t : ℝ, first t ^ 2) := by
    calc
      _ = ∫ t : ℝ, c ^ 2 * first t ^ 2 := by
        apply integral_congr_ae
        filter_upwards [] with t
        ring
      _ = _ := by rw [integral_const_mul]
  unfold physicalWeightedBudget physicalDerivativeMass
  rw [physicalMass_scale, hD]
  ring

/-- Source-exact weighted H1 parallelogram, applied to functions and
their REAL first derivatives separately. This is the hypothesis
needed to specialize real_indefinite_bilinear_cauchy to the original
supported classical test carrier. -/
theorem physicalWeightedBudget_parallelogram
    (A alpha : ℝ) (f g firstF firstG : ℝ → ℝ)
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume)
    (hdf : MemLp firstF 2 volume) (hdg : MemLp firstG 2 volume) :
    physicalWeightedBudget A alpha (f + g) (firstF + firstG) +
      physicalWeightedBudget A alpha (f - g) (firstF - firstG) =
        2 * (physicalWeightedBudget A alpha f firstF +
          physicalWeightedBudget A alpha g firstG) := by
  have hE := physicalMass_parallelogram f g hf hg
  have hD :
      physicalDerivativeMass (firstF + firstG) +
        physicalDerivativeMass (firstF - firstG) =
          2 * (physicalDerivativeMass firstF +
            physicalDerivativeMass firstG) := by
    simpa only [physicalDerivativeMass, physicalMass] using
      (physicalMass_parallelogram firstF firstG hdf hdg)
  unfold physicalWeightedBudget
  calc
    _ = A * (physicalMass (f + g) + physicalMass (f - g)) +
          alpha * (physicalDerivativeMass (firstF + firstG) +
            physicalDerivativeMass (firstF - firstG)) := by ring
    _ = A * (2 * (physicalMass f + physicalMass g)) +
          alpha * (2 * (physicalDerivativeMass firstF +
            physicalDerivativeMass firstG)) := by rw [hE, hD]
    _ = _ := by ring

/-- The exact signed physical primitive source also has the REAL
4-way polarization formula; it is not an arbitrary completion operator.
This returns directly to its original completed arithmetic value. -/
theorem primitiveRealMixedWeil_eq_quadratic_polar
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q)
    (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (T : ℝ) {f g : ℝ → ℝ}
    (hf : ClassicalRealH1 f) (hg : ClassicalRealH1 g) :
    4 * primitiveRealMixedWeil chi hp hn T f g =
      primitivePairedOddPhysicalValue chi hp hn T (f + g) -
        primitivePairedOddPhysicalValue chi hp hn T (f - g) := by
  have h := primitiveRealPhysical_difference_eq_mixed
    chi hp hn T (hf.add hg) (hf.sub hg)
  have hfDouble :
      (f + g) + (f - g) = (fun t : ℝ => 2 * f t) := by
    funext t
    simp only [Pi.add_apply, Pi.sub_apply]
    ring
  have hgDouble :
      (f + g) - (f - g) = (fun t : ℝ => 2 * g t) := by
    funext t
    simp only [Pi.add_apply, Pi.sub_apply]
    ring
  rw [hfDouble, hgDouble] at h
  have hRight :
      primitiveRealMixedWeil chi hp hn T f (fun t => 2 * g t) =
        2 * primitiveRealMixedWeil chi hp hn T f g := by
    calc
      _ = primitiveRealMixedWeil chi hp hn T (fun t => 2 * g t) f :=
        primitiveRealMixedWeil_symmetric chi hp hn T f _
      _ = 2 * primitiveRealMixedWeil chi hp hn T g f :=
        primitiveRealMixedWeil_scale_left chi hp hn T 2 g f
      _ = _ := by
        rw [primitiveRealMixedWeil_symmetric chi hp hn T g f]
  rw [primitiveRealMixedWeil_scale_left chi hp hn T 2 f
    (fun t => 2 * g t), hRight] at h
  nlinarith

/-- The ACTUAL real odd zeta signed source obeys polarization only on
the common compact support window on which both real pole moments
exist. Both zeta pole orientations remain in the source return. -/
theorem zetaRealMixedWeil_eq_quadratic_polar
    (T : ℝ) (hT : 0 < T)
    {f g : ℝ → ℝ}
    (hf : ClassicalRealH1 f) (hg : ClassicalRealH1 g)
    (hsf : SupportedOnWindow T f)
    (hsg : SupportedOnWindow T g) :
    4 * zetaRealMixedWeil T f g =
      zetaOddPhysicalValue T (f + g) -
        zetaOddPhysicalValue T (f - g) := by
  have h := zetaRealPhysical_difference_eq_mixed
    T hT (hf.add hg) (hf.sub hg)
    (SupportedOnWindow.add T hsf hsg)
    (SupportedOnWindow.sub T hsf hsg)
  have hfDouble :
      (f + g) + (f - g) = (fun t : ℝ => 2 * f t) := by
    funext t
    simp only [Pi.add_apply, Pi.sub_apply]
    ring
  have hgDouble :
      (f + g) - (f - g) = (fun t : ℝ => 2 * g t) := by
    funext t
    simp only [Pi.add_apply, Pi.sub_apply]
    ring
  rw [hfDouble, hgDouble] at h
  have hRight :
      zetaRealMixedWeil T f (fun t => 2 * g t) =
        2 * zetaRealMixedWeil T f g := by
    calc
      _ = zetaRealMixedWeil T (fun t => 2 * g t) f :=
        zetaRealMixedWeil_symmetric T f _
      _ = 2 * zetaRealMixedWeil T g f :=
        zetaRealMixedWeil_scale_left T 2 g f hsg
      _ = _ := by rw [zetaRealMixedWeil_symmetric T g f]
  rw [zetaRealMixedWeil_scale_left T 2 f
    (fun t => 2 * g t) hsf, hRight] at h
  nlinarith

/-! ## Locally supported quantitative real H1 Cauchy return -/

/-- A LOCAL source-level weighted H1 Cauchy theorem.

The ingredients are exact source polarization and classical diagonal
budgets for EVERY real rescaling s of the first test, evaluated at
sf+g and sf-g. This needs NO global bounded bilinear extension to
all (possibly nonintegrable) real functions. It therefore applies
directly to fixed compact-supported Weil physical tests rather than
assuming the real Weil form is already a continuous Hilbert operator. -/
theorem physical_mixed_sq_le_of_scaled_diagonal
    (A alpha : ℝ)
    (Q : (ℝ → ℝ) → ℝ)
    (B : (ℝ → ℝ) → (ℝ → ℝ) → ℝ)
    (f g firstF firstG : ℝ → ℝ)
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume)
    (hdf : MemLp firstF 2 volume)
    (hdg : MemLp firstG 2 volume)
    (hUf : 0 ≤ physicalWeightedBudget A alpha f firstF)
    (hUg : 0 ≤ physicalWeightedBudget A alpha g firstG)
    (hscale : ∀ s : ℝ, B (fun t => s * f t) g = s * B f g)
    (hpolar : ∀ s : ℝ,
      4 * B (fun t => s * f t) g =
        Q ((fun t => s * f t) + g) -
          Q ((fun t => s * f t) - g))
    (hdiag : ∀ s : ℝ,
      |Q ((fun t => s * f t) + g)| ≤
        physicalWeightedBudget A alpha
          ((fun t => s * f t) + g)
          ((fun t => s * firstF t) + firstG) ∧
      |Q ((fun t => s * f t) - g)| ≤
        physicalWeightedBudget A alpha
          ((fun t => s * f t) - g)
          ((fun t => s * firstF t) - firstG)) :
    (B f g) ^ 2 ≤
      physicalWeightedBudget A alpha f firstF *
        physicalWeightedBudget A alpha g firstG := by
  let U : ℝ → ℝ := fun s =>
    physicalWeightedBudget A alpha
      (fun t => s * f t) (fun t => s * firstF t)
  let E : ℝ := physicalWeightedBudget A alpha f firstF
  let G : ℝ := physicalWeightedBudget A alpha g firstG
  have hscaled (s : ℝ) :
      2 * |s * B f g| ≤ s ^ 2 * E + G := by
    have hp := hpolar s
    rw [hscale s] at hp
    obtain ⟨hplus, hminus⟩ := hdiag s
    have habs :
        4 * |s * B f g| =
          |Q ((fun t => s * f t) + g) -
            Q ((fun t => s * f t) - g)| := by
      rw [← hp, abs_mul, abs_of_pos (by norm_num : (0 : ℝ) < 4)]
      ring
    have hbound :
        4 * |s * B f g| ≤
          physicalWeightedBudget A alpha
            ((fun t => s * f t) + g)
            ((fun t => s * firstF t) + firstG) +
          physicalWeightedBudget A alpha
            ((fun t => s * f t) - g)
            ((fun t => s * firstF t) - firstG) := by
      calc
        _ = |Q ((fun t => s * f t) + g) -
              Q ((fun t => s * f t) - g)| := habs
        _ ≤ |Q ((fun t => s * f t) + g)| +
              |Q ((fun t => s * f t) - g)| := abs_sub_le _ _
        _ ≤ _ := add_le_add hplus hminus
    have hpar := physicalWeightedBudget_parallelogram
      A alpha (fun t => s * f t) g
      (fun t => s * firstF t) firstG
      (hf.const_mul s) hg (hdf.const_mul s) hdg
    have hsourceScale := physicalWeightedBudget_scale A alpha s f firstF
    rw [hpar, hsourceScale] at hbound
    change 4 * |s * B f g| ≤ 2 * (s ^ 2 * E + G) at hbound
    linarith
  have hquadratic (s : ℝ) :
      0 ≤ s ^ 2 * E + 2 * s * B f g + G := by
    have h := hscaled (-s)
    have hb : (-s) * B f g ≤ |(-s) * B f g| :=
      le_abs_self _
    nlinarith [h, hb]
  exact real_quadratic_nonneg_discriminant E (B f g) G
    hUf hUg hquadratic

/-- The TRUE primitive nonprincipal REAL conjugate-pair mixed Weil form
obeys a squared H1 product bound, even though the signed form need not
be positive. This is a source-specific return of the previous real
diagonal gamma-plus-ALL-primes budget, not a new arbitrary supplier. -/
theorem primitiveRealMixedWeil_sq_le_H1_budget
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q)
    (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (T : ℝ) {f g : ℝ → ℝ}
    (hf : ClassicalRealH1 f) (hg : ClassicalRealH1 g) :
    (primitiveRealMixedWeil chi hp hn T f g) ^ 2 ≤
      physicalWeightedBudget
        (|gammaConstant q (gammaParity chi)| + primeMass T +
          2 * GRWTSK.NumberTheory.WeilQuadraticForm.ExactGammaTail.tailUpper
            (gammaParity chi) 1) (7 / 12 : ℝ) f hf.first *
      physicalWeightedBudget
        (|gammaConstant q (gammaParity chi)| + primeMass T +
          2 * GRWTSK.NumberTheory.WeilQuadraticForm.ExactGammaTail.tailUpper
            (gammaParity chi) 1) (7 / 12 : ℝ) g hg.first := by
  let A : ℝ := |gammaConstant q (gammaParity chi)| + primeMass T +
    2 * GRWTSK.NumberTheory.WeilQuadraticForm.ExactGammaTail.tailUpper
      (gammaParity chi) 1
  let alpha : ℝ := 7 / 12
  have hUf : 0 ≤ physicalWeightedBudget A alpha f hf.first := by
    have h := primitivePairedPhysical_abs_H1_le
      chi hp hn T f hf.first hf.derivative hf.first_continuous
      hf.f_memLp hf.first_memLp
    have hc : |primitivePairedOddPhysicalValue chi hp hn T f| ≤
        physicalWeightedBudget A alpha f hf.first := by
      simpa only [physicalWeightedBudget, A, alpha] using h
    exact (abs_nonneg _).trans hc
  have hUg : 0 ≤ physicalWeightedBudget A alpha g hg.first := by
    have h := primitivePairedPhysical_abs_H1_le
      chi hp hn T g hg.first hg.derivative hg.first_continuous
      hg.f_memLp hg.first_memLp
    have hc : |primitivePairedOddPhysicalValue chi hp hn T g| ≤
        physicalWeightedBudget A alpha g hg.first := by
      simpa only [physicalWeightedBudget, A, alpha] using h
    exact (abs_nonneg _).trans hc
  have hScale (c : ℝ) :
      primitiveRealMixedWeil chi hp hn T (fun t => c * f t) g =
        c * primitiveRealMixedWeil chi hp hn T f g :=
    primitiveRealMixedWeil_scale_left chi hp hn T c f g
  have hPolar (c : ℝ) :
      4 * primitiveRealMixedWeil chi hp hn T (fun t => c * f t) g =
        primitivePairedOddPhysicalValue chi hp hn T
            ((fun t => c * f t) + g) -
          primitivePairedOddPhysicalValue chi hp hn T
            ((fun t => c * f t) - g) :=
    primitiveRealMixedWeil_eq_quadratic_polar
      chi hp hn T (hf.scale c) hg
  have hDiag (c : ℝ) :
      |primitivePairedOddPhysicalValue chi hp hn T
          ((fun t => c * f t) + g)| ≤
        physicalWeightedBudget A alpha
          ((fun t => c * f t) + g)
          ((fun t => c * hf.first t) + hg.first) ∧
      |primitivePairedOddPhysicalValue chi hp hn T
          ((fun t => c * f t) - g)| ≤
        physicalWeightedBudget A alpha
          ((fun t => c * f t) - g)
          ((fun t => c * hf.first t) - hg.first) := by
    let hc := hf.scale c
    let hPlus := hc.add hg
    let hMinus := hc.sub hg
    constructor
    · have h := primitivePairedPhysical_abs_H1_le chi hp hn T
        ((fun t => c * f t) + g)
        hPlus.first hPlus.derivative hPlus.first_continuous
        hPlus.f_memLp hPlus.first_memLp
      simpa only [physicalWeightedBudget, A, alpha] using h
    · have h := primitivePairedPhysical_abs_H1_le chi hp hn T
        ((fun t => c * f t) - g)
        hMinus.first hMinus.derivative hMinus.first_continuous
        hMinus.f_memLp hMinus.first_memLp
      simpa only [physicalWeightedBudget, A, alpha] using h
  change (primitiveRealMixedWeil chi hp hn T f g) ^ 2 ≤
    physicalWeightedBudget A alpha f hf.first *
      physicalWeightedBudget A alpha g hg.first
  exact physical_mixed_sq_le_of_scaled_diagonal A alpha
    (primitivePairedOddPhysicalValue chi hp hn T)
    (primitiveRealMixedWeil chi hp hn T)
    f g hf.first hg.first
    hf.f_memLp hg.f_memLp hf.first_memLp hg.first_memLp
    hUf hUg hScale hPolar hDiag

/-- ORIGINAL odd zeta mixed signed source: the sharp compact pole
allowance 2*(sinh T-T) survives inside the weighted H1 factor.
No positivity or pole-neutrality hypothesis has been inserted. -/
theorem zetaRealMixedWeil_sq_le_H1_budget
    (T : ℝ) (hT : 0 < T)
    {f g : ℝ → ℝ}
    (hf : ClassicalRealH1 f) (hg : ClassicalRealH1 g)
    (hsf : SupportedOnWindow T f)
    (hsg : SupportedOnWindow T g) :
    (zetaRealMixedWeil T f g) ^ 2 ≤
      physicalWeightedBudget
        (|gammaConstant 1 0| + primeMass T +
          2 * GRWTSK.NumberTheory.WeilQuadraticForm.ExactGammaTail.tailUpper
            0 1 + 2 * (Real.sinh T - T)) (7 / 12 : ℝ) f hf.first *
      physicalWeightedBudget
        (|gammaConstant 1 0| + primeMass T +
          2 * GRWTSK.NumberTheory.WeilQuadraticForm.ExactGammaTail.tailUpper
            0 1 + 2 * (Real.sinh T - T)) (7 / 12 : ℝ) g hg.first := by
  let A : ℝ := |gammaConstant 1 0| + primeMass T +
    2 * GRWTSK.NumberTheory.WeilQuadraticForm.ExactGammaTail.tailUpper
      0 1 + 2 * (Real.sinh T - T)
  let alpha : ℝ := 7 / 12
  have hUf : 0 ≤ physicalWeightedBudget A alpha f hf.first := by
    have h := zetaOddPhysical_abs_H1_le_of_supported
      T hT f hf.first hf.derivative hf.first_continuous
      hf.f_memLp hf.first_memLp hsf
    have hc : |zetaOddPhysicalValue T f| ≤
        physicalWeightedBudget A alpha f hf.first := by
      simpa only [physicalWeightedBudget, A, alpha] using h
    exact (abs_nonneg _).trans hc
  have hUg : 0 ≤ physicalWeightedBudget A alpha g hg.first := by
    have h := zetaOddPhysical_abs_H1_le_of_supported
      T hT g hg.first hg.derivative hg.first_continuous
      hg.f_memLp hg.first_memLp hsg
    have hc : |zetaOddPhysicalValue T g| ≤
        physicalWeightedBudget A alpha g hg.first := by
      simpa only [physicalWeightedBudget, A, alpha] using h
    exact (abs_nonneg _).trans hc
  have hScale (c : ℝ) :
      zetaRealMixedWeil T (fun t => c * f t) g =
        c * zetaRealMixedWeil T f g :=
    zetaRealMixedWeil_scale_left T c f g hsf
  have hPolar (c : ℝ) :
      4 * zetaRealMixedWeil T (fun t => c * f t) g =
        zetaOddPhysicalValue T ((fun t => c * f t) + g) -
          zetaOddPhysicalValue T ((fun t => c * f t) - g) :=
    zetaRealMixedWeil_eq_quadratic_polar T hT
      (hf.scale c) hg (SupportedOnWindow.scale T c hsf) hsg
  have hDiag (c : ℝ) :
      |zetaOddPhysicalValue T ((fun t => c * f t) + g)| ≤
        physicalWeightedBudget A alpha
          ((fun t => c * f t) + g)
          ((fun t => c * hf.first t) + hg.first) ∧
      |zetaOddPhysicalValue T ((fun t => c * f t) - g)| ≤
        physicalWeightedBudget A alpha
          ((fun t => c * f t) - g)
          ((fun t => c * hf.first t) - hg.first) := by
    let hc := hf.scale c
    let hPlus := hc.add hg
    let hMinus := hc.sub hg
    have hscaledSup : SupportedOnWindow T (fun t => c * f t) :=
      SupportedOnWindow.scale T c hsf
    constructor
    · have h := zetaOddPhysical_abs_H1_le_of_supported
        T hT ((fun t => c * f t) + g)
        hPlus.first hPlus.derivative hPlus.first_continuous
        hPlus.f_memLp hPlus.first_memLp
        (SupportedOnWindow.add T hscaledSup hsg)
      simpa only [physicalWeightedBudget, A, alpha] using h
    · have h := zetaOddPhysical_abs_H1_le_of_supported
        T hT ((fun t => c * f t) - g)
        hMinus.first hMinus.derivative hMinus.first_continuous
        hMinus.f_memLp hMinus.first_memLp
        (SupportedOnWindow.sub T hscaledSup hsg)
      simpa only [physicalWeightedBudget, A, alpha] using h
  change (zetaRealMixedWeil T f g) ^ 2 ≤
    physicalWeightedBudget A alpha f hf.first *
      physicalWeightedBudget A alpha g hg.first
  exact physical_mixed_sq_le_of_scaled_diagonal A alpha
    (zetaOddPhysicalValue T) (zetaRealMixedWeil T)
    f g hf.first hg.first
    hf.f_memLp hg.f_memLp hf.first_memLp hg.first_memLp
    hUf hUg hScale hPolar hDiag

/-- Quantitative REAL primitive paired-character physical H1 continuity,
stated as a squared inequality to retain exact original Lebesgue
source masses and avoid an unchecked square-root normalization.

The right-side second factor is the ORIGINAL weighted physical H1
mass of f-g. It tends to zero in the classical H1 topology, while
the first factor is locally bounded. This is continuity, NOT a
uniform lower spectral bound or a complex one-character GRH criterion. -/
theorem primitiveRealPhysical_difference_sq_H1_continuity
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q)
    (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (T : ℝ) {f g : ℝ → ℝ}
    (hf : ClassicalRealH1 f) (hg : ClassicalRealH1 g) :
    (primitivePairedOddPhysicalValue chi hp hn T f -
      primitivePairedOddPhysicalValue chi hp hn T g) ^ 2 ≤
      physicalWeightedBudget
        (|gammaConstant q (gammaParity chi)| + primeMass T +
          2 * GRWTSK.NumberTheory.WeilQuadraticForm.ExactGammaTail.tailUpper
            (gammaParity chi) 1) (7 / 12 : ℝ)
        (f + g) (hf.first + hg.first) *
      physicalWeightedBudget
        (|gammaConstant q (gammaParity chi)| + primeMass T +
          2 * GRWTSK.NumberTheory.WeilQuadraticForm.ExactGammaTail.tailUpper
            (gammaParity chi) 1) (7 / 12 : ℝ)
        (f - g) (hf.first - hg.first) := by
  have h := primitiveRealMixedWeil_sq_le_H1_budget
    chi hp hn T (hf.add hg) (hf.sub hg)
  have hsource := primitiveRealPhysical_difference_eq_mixed
    chi hp hn T hf hg
  rw [hsource]
  exact h

/-- Exact source-specific REAL odd zeta squared H1 continuity, with the
negative compact sinh pole and all active original prime powers.
Common support is charged explicitly on BOTH inputs. -/
theorem zetaRealPhysical_difference_sq_H1_continuity
    (T : ℝ) (hT : 0 < T) {f g : ℝ → ℝ}
    (hf : ClassicalRealH1 f) (hg : ClassicalRealH1 g)
    (hsf : SupportedOnWindow T f)
    (hsg : SupportedOnWindow T g) :
    (zetaOddPhysicalValue T f - zetaOddPhysicalValue T g) ^ 2 ≤
      physicalWeightedBudget
        (|gammaConstant 1 0| + primeMass T +
          2 * GRWTSK.NumberTheory.WeilQuadraticForm.ExactGammaTail.tailUpper
            0 1 + 2 * (Real.sinh T - T)) (7 / 12 : ℝ)
        (f + g) (hf.first + hg.first) *
      physicalWeightedBudget
        (|gammaConstant 1 0| + primeMass T +
          2 * GRWTSK.NumberTheory.WeilQuadraticForm.ExactGammaTail.tailUpper
            0 1 + 2 * (Real.sinh T - T)) (7 / 12 : ℝ)
        (f - g) (hf.first - hg.first) := by
  have hplus : SupportedOnWindow T (f + g) :=
    SupportedOnWindow.add T hsf hsg
  have hminus : SupportedOnWindow T (f - g) :=
    SupportedOnWindow.sub T hsf hsg
  have h := zetaRealMixedWeil_sq_le_H1_budget
    T hT (hf.add hg) (hf.sub hg) hplus hminus
  have hsource := zetaRealPhysical_difference_eq_mixed
    T hT hf hg hsf hsg
  rw [hsource]
  exact h

end GRWTSK.NumberTheory.WeilQuadraticForm.SignedRealMixedPolarization
