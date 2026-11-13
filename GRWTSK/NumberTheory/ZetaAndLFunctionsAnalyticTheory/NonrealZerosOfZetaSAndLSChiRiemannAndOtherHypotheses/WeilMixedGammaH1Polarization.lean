/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.WeilH1ShiftFTC
import Mathlib.Tactic

/-!
# Source-exact mixed real Weil gamma integrability and polarization

Use the ORIGINAL parityKernel(a,r) and genuine whole-line shift
differences of f and g. The mixed physical gamma form is defined by
the literal integrated product, not an abstract positive surrogate.

For real classical C1 tests with whole-line L2 functions/derivatives:
* the gamma densities of f+g and f-g are integrable by the already
  published native classical H1 shift gamma bound;
* at each shift, their difference equals FOUR TIMES the actual mixed
  translation correlation;
* thus the mixed gamma density is integrable on Ioi 0 and the genuine
  mixed source equals (Gamma_a(f+g)-Gamma_a(f-g))/4;
* a parallel sum identity yields the exact diagonal parallelogram
  formula for the original source, whence the balanced bound
    |Gamma_a(f,g)| <= (Gamma_a(f)+Gamma_a(g))/2;
* the original parity-a H1 estimate then gives an explicit mixed
  derivative/mass bound without an additional gamma integrability axiom.

The source also proves the SQUARED H1 product budget from a genuine
real discriminant argument. Its square-root norm reformulation is
recorded in the mathematical companion. The full signed arithmetic
prime/pole mixed continuity, a global arithmetic lower sign, and
RH/Dirichlet GRH are NOT asserted.

MANUAL LEAN SOURCE_PROOF_CANDIDATE. No pinned Lean elaboration,
full dependency build, fresh kernel replay, transitive axiom audit,
or independent mathematical review has been run.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.NativeMixedGammaH1

open GRWTSK.NumberTheory.WeilQuadraticForm.NativeGammaH1ShiftBudget
open GRWTSK.NumberTheory.WeilQuadraticForm.NativeH1ShiftFTC
open GRWTSK.NumberTheory.WeilQuadraticForm.OddRootProjection
open GRWTSK.NumberTheory.WeilQuadraticForm.ExactGammaTail

/-- Classical whole-line H1 test with its ACTUAL first derivative.
The assumption is classical and pointwise, not an unconstructed weak
Sobolev derivative. Compact support is not required for gamma bounds. -/
structure ClassicalRealH1 (f : ℝ → ℝ) where
  first : ℝ → ℝ
  derivative : ∀ t : ℝ, HasDerivAt f (first t) t
  first_continuous : Continuous first
  f_memLp : MemLp f 2 volume
  first_memLp : MemLp first 2 volume

def ClassicalRealH1.add {f g : ℝ → ℝ}
    (hf : ClassicalRealH1 f) (hg : ClassicalRealH1 g) :
    ClassicalRealH1 (f + g) where
  first := hf.first + hg.first
  derivative := fun t => (hf.derivative t).add (hg.derivative t)
  first_continuous := hf.first_continuous.add hg.first_continuous
  f_memLp := hf.f_memLp.add hg.f_memLp
  first_memLp := hf.first_memLp.add hg.first_memLp

def ClassicalRealH1.sub {f g : ℝ → ℝ}
    (hf : ClassicalRealH1 f) (hg : ClassicalRealH1 g) :
    ClassicalRealH1 (f - g) where
  first := hf.first - hg.first
  derivative := fun t => (hf.derivative t).sub (hg.derivative t)
  first_continuous := hf.first_continuous.sub hg.first_continuous
  f_memLp := hf.f_memLp.sub hg.f_memLp
  first_memLp := hf.first_memLp.sub hg.first_memLp

private theorem realGamma_integrable_nonneg_bound
    (a : ℕ) {f : ℝ → ℝ} (hf : ClassicalRealH1 f) :
    IntegrableOn (realGammaDensity a f) (Ioi 0) ∧
      0 ≤ realGammaEnergy a f ∧
      realGammaEnergy a f ≤
        (7 / 12 : ℝ) * (∫ t : ℝ, hf.first t ^ 2) +
          2 * tailUpper a 1 * (∫ t : ℝ, f t ^ 2) := by
  have hCont : Continuous f := fun t => (hf.derivative t).continuousAt
  exact realGammaEnergy_integrable_and_bound a f hf.first hCont
    hf.f_memLp hf.first_memLp
    (nearH1ShiftBound_of_classical_derivative f hf.first
      hf.derivative hf.first_continuous hf.f_memLp hf.first_memLp)

/-- The inner function is the ACTUAL real mixed physical shift pairing. -/
def realMixedShiftEnergy (f g : ℝ → ℝ) (r : ℝ) : ℝ :=
  ∫ t : ℝ, (f (t + r) - f t) * (g (t + r) - g t)

def realMixedGammaDensity (a : ℕ) (f g : ℝ → ℝ) (r : ℝ) : ℝ :=
  parityKernel a r * realMixedShiftEnergy f g r

def realMixedGammaEnergy (a : ℕ) (f g : ℝ → ℝ) : ℝ :=
  ∫ r in Ioi (0 : ℝ), realMixedGammaDensity a f g r

private theorem shiftDifference_memLp
    (f : ℝ → ℝ) (hf : MemLp f 2 volume) (r : ℝ) :
    MemLp (fun t : ℝ => f (t + r) - f t) 2 volume :=
  (hf.comp_measurePreserving
    (measurePreserving_add_right volume r)).sub hf

private theorem mixedShift_integrable
    (f g : ℝ → ℝ) (hf : MemLp f 2 volume)
    (hg : MemLp g 2 volume) (r : ℝ) :
    Integrable (fun t : ℝ =>
      (f (t + r) - f t) * (g (t + r) - g t)) :=
  (shiftDifference_memLp f hf r).integrable_mul
    (shiftDifference_memLp g hg r)

/-- True shift-integral polarization at EACH real displacement, before
the singular parity kernel is introduced. -/
theorem mixedShift_eq_polar
    (f g : ℝ → ℝ) (hf : MemLp f 2 volume)
    (hg : MemLp g 2 volume) (r : ℝ) :
    realMixedShiftEnergy f g r =
      (realShiftEnergy (f + g) r - realShiftEnergy (f - g) r) / 4 := by
  have hPlus :
      Integrable (fun t : ℝ =>
        ((f + g) (t + r) - (f + g) t) ^ 2) :=
    (shiftDifference_memLp (f + g) (hf.add hg) r).integrable_sq
  have hMinus :
      Integrable (fun t : ℝ =>
        ((f - g) (t + r) - (f - g) t) ^ 2) :=
    (shiftDifference_memLp (f - g) (hf.sub hg) r).integrable_sq
  unfold realMixedShiftEnergy realShiftEnergy
  calc
    (∫ t : ℝ, (f (t + r) - f t) * (g (t + r) - g t)) =
        ∫ t : ℝ,
          (((f + g) (t + r) - (f + g) t) ^ 2 -
            ((f - g) (t + r) - (f - g) t) ^ 2) / 4 := by
      apply integral_congr_ae
      filter_upwards [] with t
      simp only [Pi.add_apply, Pi.sub_apply]
      ring
    _ = ((∫ t : ℝ,
          ((f + g) (t + r) - (f + g) t) ^ 2) -
          (∫ t : ℝ,
          ((f - g) (t + r) - (f - g) t) ^ 2)) / 4 := by
      rw [integral_div, integral_sub hPlus hMinus]

/-- Density polarization is pointwise in r, with the ORIGINAL kernel
and NO unproved interchange between the t and r integrals. -/
theorem realMixedGammaDensity_eq_polar
    (a : ℕ) (f g : ℝ → ℝ)
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume) (r : ℝ) :
    realMixedGammaDensity a f g r =
      (realGammaDensity a (f + g) r -
        realGammaDensity a (f - g) r) / 4 := by
  unfold realMixedGammaDensity realGammaDensity
  rw [mixedShift_eq_polar f g hf hg r]
  ring

/-- Mixed gamma integrability follows from the pre-existing ORIGINAL
diagonal gamma integrability for f+g and f-g. Neither a new singular
majorant nor a gamma-integrability premise for the mixed test is used. -/
theorem realMixedGammaDensity_integrableOn
    (a : ℕ) {f g : ℝ → ℝ}
    (hf : ClassicalRealH1 f) (hg : ClassicalRealH1 g) :
    IntegrableOn (realMixedGammaDensity a f g) (Ioi 0) := by
  have hPlus :=
    (realGamma_integrable_nonneg_bound a (hf.add hg)).1
  have hMinus :=
    (realGamma_integrable_nonneg_bound a (hf.sub hg)).1
  have hEq :
      realMixedGammaDensity a f g =
        fun r => (realGammaDensity a (f + g) r -
          realGammaDensity a (f - g) r) / 4 := by
    funext r
    exact realMixedGammaDensity_eq_polar a f g
      hf.f_memLp hg.f_memLp r
  rw [hEq]
  exact (hPlus.sub hMinus).div_const 4

/-- The actual mixed physical gamma integral is exactly the
polarization of the pre-existing real gamma energy. -/
theorem realMixedGammaEnergy_eq_polar
    (a : ℕ) {f g : ℝ → ℝ}
    (hf : ClassicalRealH1 f) (hg : ClassicalRealH1 g) :
    realMixedGammaEnergy a f g =
      (realGammaEnergy a (f + g) -
        realGammaEnergy a (f - g)) / 4 := by
  have hPlus :=
    (realGamma_integrable_nonneg_bound a (hf.add hg)).1
  have hMinus :=
    (realGamma_integrable_nonneg_bound a (hf.sub hg)).1
  unfold realMixedGammaEnergy realGammaEnergy
  simp_rw [realMixedGammaDensity_eq_polar a f g
    hf.f_memLp hg.f_memLp]
  rw [integral_div, integral_sub hPlus hMinus]

/-- The original physical translation energy satisfies a true
parallelogram identity at every shift, derived by finite L2
integral linearity (not by assuming a Hilbert-space gamma operator). -/
theorem realShiftEnergy_parallelogram
    (f g : ℝ → ℝ) (hf : MemLp f 2 volume)
    (hg : MemLp g 2 volume) (r : ℝ) :
    realShiftEnergy (f + g) r + realShiftEnergy (f - g) r =
      2 * (realShiftEnergy f r + realShiftEnergy g r) := by
  have hPlus :
      Integrable (fun t : ℝ =>
        ((f + g) (t + r) - (f + g) t) ^ 2) :=
    (shiftDifference_memLp (f + g) (hf.add hg) r).integrable_sq
  have hMinus :
      Integrable (fun t : ℝ =>
        ((f - g) (t + r) - (f - g) t) ^ 2) :=
    (shiftDifference_memLp (f - g) (hf.sub hg) r).integrable_sq
  have hF :
      Integrable (fun t : ℝ => (f (t + r) - f t) ^ 2) :=
    (shiftDifference_memLp f hf r).integrable_sq
  have hG :
      Integrable (fun t : ℝ => (g (t + r) - g t) ^ 2) :=
    (shiftDifference_memLp g hg r).integrable_sq
  unfold realShiftEnergy
  calc
    _ = ∫ t : ℝ,
        ((f + g) (t + r) - (f + g) t) ^ 2 +
          ((f - g) (t + r) - (f - g) t) ^ 2 :=
      (integral_add hPlus hMinus).symm
    _ = ∫ t : ℝ, 2 *
        ((f (t + r) - f t) ^ 2 +
          (g (t + r) - g t) ^ 2) := by
      apply integral_congr_ae
      filter_upwards [] with t
      simp only [Pi.add_apply, Pi.sub_apply]
      ring
    _ = _ := by
      rw [integral_const_mul, integral_add hF hG]

/-- The exact ORIGINAL gamma energy inherits the parallelogram identity
once the four diagonal gamma integrals are known finite. -/
theorem realGammaEnergy_parallelogram
    (a : ℕ) {f g : ℝ → ℝ}
    (hf : ClassicalRealH1 f) (hg : ClassicalRealH1 g) :
    realGammaEnergy a (f + g) + realGammaEnergy a (f - g) =
      2 * (realGammaEnergy a f + realGammaEnergy a g) := by
  have hPlus := (realGamma_integrable_nonneg_bound a (hf.add hg)).1
  have hMinus := (realGamma_integrable_nonneg_bound a (hf.sub hg)).1
  have hF := (realGamma_integrable_nonneg_bound a hf).1
  have hG := (realGamma_integrable_nonneg_bound a hg).1
  have hpoint (r : ℝ) :
      realGammaDensity a (f + g) r +
        realGammaDensity a (f - g) r =
          2 * (realGammaDensity a f r +
            realGammaDensity a g r) := by
    unfold realGammaDensity
    calc
      _ = parityKernel a r *
            (realShiftEnergy (f + g) r +
              realShiftEnergy (f - g) r) := by ring
      _ = parityKernel a r *
            (2 * (realShiftEnergy f r + realShiftEnergy g r)) := by
          rw [realShiftEnergy_parallelogram f g hf.f_memLp hg.f_memLp r]
      _ = _ := by ring
  unfold realGammaEnergy
  calc
    _ = ∫ r in Ioi (0 : ℝ),
        (realGammaDensity a (f + g) r +
          realGammaDensity a (f - g) r) :=
      (integral_add hPlus hMinus).symm
    _ = ∫ r in Ioi (0 : ℝ),
        2 * (realGammaDensity a f r + realGammaDensity a g r) := by
      apply integral_congr_ae
      filter_upwards [] with r
      exact hpoint r
    _ = _ := by
      rw [integral_const_mul, integral_add hF hG]

/-- Positive gamma energies give a TRUE mixed source bound.
It involves only the two original diagonal gamma energies. -/
theorem abs_realMixedGammaEnergy_le_half_sum
    (a : ℕ) {f g : ℝ → ℝ}
    (hf : ClassicalRealH1 f) (hg : ClassicalRealH1 g) :
    |realMixedGammaEnergy a f g| ≤
      (realGammaEnergy a f + realGammaEnergy a g) / 2 := by
  have hp : 0 ≤ realGammaEnergy a (f + g) :=
    (realGamma_integrable_nonneg_bound a (hf.add hg)).2.1
  have hm : 0 ≤ realGammaEnergy a (f - g) :=
    (realGamma_integrable_nonneg_bound a (hf.sub hg)).2.1
  have habs :
      |realGammaEnergy a (f + g) - realGammaEnergy a (f - g)| ≤
        realGammaEnergy a (f + g) + realGammaEnergy a (f - g) := by
    rw [abs_le]
    constructor <;> linarith
  rw [realMixedGammaEnergy_eq_polar a hf hg,
    abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 4)]
  calc
    _ ≤ (realGammaEnergy a (f + g) +
      realGammaEnergy a (f - g)) / 4 := by
        exact (div_le_div_of_nonneg_right habs (by norm_num))
    _ = (realGammaEnergy a f + realGammaEnergy a g) / 2 := by
      rw [realGammaEnergy_parallelogram a hf hg]
      ring

/-- A source-exact mixed gamma H1 bound. It retains the true parity
and two original masses/derivatives rather than silently invoking
an unverified gamma mixed pairing of arbitrary H1 equivalence classes.
The source-level squared Cauchy and H1 product bounds are proved
separately below; the norm-square-root formulation remains written. -/
theorem abs_realMixedGammaEnergy_H1_bound
    (a : ℕ) {f g : ℝ → ℝ}
    (hf : ClassicalRealH1 f) (hg : ClassicalRealH1 g) :
    |realMixedGammaEnergy a f g| ≤
      (7 / 24 : ℝ) *
        ((∫ t : ℝ, hf.first t ^ 2) +
          (∫ t : ℝ, hg.first t ^ 2)) +
      tailUpper a 1 *
        ((∫ t : ℝ, f t ^ 2) +
          (∫ t : ℝ, g t ^ 2)) := by
  have hhalf := abs_realMixedGammaEnergy_le_half_sum a hf hg
  have hfb := (realGamma_integrable_nonneg_bound a hf).2.2
  have hgb := (realGamma_integrable_nonneg_bound a hg).2.2
  calc
    _ ≤ (realGammaEnergy a f + realGammaEnergy a g) / 2 := hhalf
    _ ≤ ((7 / 12 : ℝ) * (∫ t : ℝ, hf.first t ^ 2) +
          2 * tailUpper a 1 * (∫ t : ℝ, f t ^ 2) +
          ((7 / 12 : ℝ) * (∫ t : ℝ, hg.first t ^ 2) +
            2 * tailUpper a 1 * (∫ t : ℝ, g t ^ 2))) / 2 := by
      exact (div_le_div_of_nonneg_right (add_le_add hfb hgb)
        (by norm_num))
    _ = _ := by ring

/-- Symmetry is a genuine real source integral symmetry. No unproved
complex-character Hermitian identification is being made. -/
theorem realMixedGammaEnergy_symmetric
    (a : ℕ) (f g : ℝ → ℝ) :
    realMixedGammaEnergy a f g = realMixedGammaEnergy a g f := by
  unfold realMixedGammaEnergy realMixedGammaDensity realMixedShiftEnergy
  apply integral_congr_ae
  filter_upwards [] with r
  congr 1
  apply integral_congr_ae
  filter_upwards [] with t
  ring

/-- Scalar multiplication preserves the real classical source carrier. -/
def ClassicalRealH1.scale {f : ℝ → ℝ}
    (hf : ClassicalRealH1 f) (c : ℝ) :
    ClassicalRealH1 (fun t => c * f t) where
  first := fun t => c * hf.first t
  derivative := fun t => (hf.derivative t).const_mul c
  first_continuous := hf.first_continuous.const_mul c
  f_memLp := hf.f_memLp.const_mul c
  first_memLp := hf.first_memLp.const_mul c

/-- The original whole-line shift energy has its exact quadratic scaling,
before any gamma integration. -/
theorem realShiftEnergy_scale (c : ℝ) (f : ℝ → ℝ) (r : ℝ) :
    realShiftEnergy (fun t => c * f t) r =
      c ^ 2 * realShiftEnergy f r := by
  unfold realShiftEnergy
  calc
    _ = ∫ t : ℝ, c ^ 2 * (f (t + r) - f t) ^ 2 := by
      apply integral_congr_ae
      filter_upwards [] with t
      ring
    _ = _ := by rw [integral_const_mul]

/-- True original gamma scaling for every parity. -/
theorem realGammaEnergy_scale (a : ℕ) (c : ℝ) (f : ℝ → ℝ) :
    realGammaEnergy a (fun t => c * f t) =
      c ^ 2 * realGammaEnergy a f := by
  have hDensity (r : ℝ) :
      realGammaDensity a (fun t => c * f t) r =
        c ^ 2 * realGammaDensity a f r := by
    unfold realGammaDensity
    rw [realShiftEnergy_scale]
    ring
  unfold realGammaEnergy
  simp_rw [hDensity]
  rw [integral_const_mul]

/-- Scaling a single leg in the actual mixed source is linear. -/
theorem realMixedGammaEnergy_scale_left
    (a : ℕ) (c : ℝ) (f g : ℝ → ℝ) :
    realMixedGammaEnergy a (fun t => c * f t) g =
      c * realMixedGammaEnergy a f g := by
  have hShift (r : ℝ) :
      realMixedShiftEnergy (fun t => c * f t) g r =
        c * realMixedShiftEnergy f g r := by
    unfold realMixedShiftEnergy
    calc
      _ = ∫ t : ℝ, c *
          ((f (t + r) - f t) * (g (t + r) - g t)) := by
        apply integral_congr_ae
        filter_upwards [] with t
        ring
      _ = _ := by rw [integral_const_mul]
  have hDensity (r : ℝ) :
      realMixedGammaDensity a (fun t => c * f t) g r =
        c * realMixedGammaDensity a f g r := by
    unfold realMixedGammaDensity
    rw [hShift]
    ring
  unfold realMixedGammaEnergy
  simp_rw [hDensity]
  rw [integral_const_mul]

/-- The real gamma polarization and parallelogram identities imply the
EXACT source addition formula, not an abstract comparison operator. -/
theorem realGammaEnergy_add_expansion
    (a : ℕ) {f g : ℝ → ℝ}
    (hf : ClassicalRealH1 f) (hg : ClassicalRealH1 g) :
    realGammaEnergy a (f + g) =
      realGammaEnergy a f + realGammaEnergy a g +
        2 * realMixedGammaEnergy a f g := by
  have hp := realGammaEnergy_parallelogram a hf hg
  have hmix := realMixedGammaEnergy_eq_polar a hf hg
  linarith

/-- Elementary real discriminant argument WITHOUT a prior Cauchy-Schwarz
axiom: a globally nonnegative quadratic polynomial has nonpositive
discriminant. The zero-leading-coefficient case is kept explicit. -/
private theorem real_quadratic_Cauchy
    (A B C : ℝ) (hA : 0 ≤ A) (hC : 0 ≤ C)
    (hquad : ∀ u : ℝ, 0 ≤ u ^ 2 * A + 2 * u * B + C) :
    B ^ 2 ≤ A * C := by
  by_cases hAz : A = 0
  · by_cases hBz : B = 0
    · simp [hBz]
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

/-- Cauchy-Schwarz for the TRUE original mixed gamma integral, proved
from source polarization, positivity, scalar homogeneity and a
nonnegative real quadratic. No hidden gamma-space Hilbert operator. -/
theorem realMixedGammaEnergy_sq_le_diag
    (a : ℕ) {f g : ℝ → ℝ}
    (hf : ClassicalRealH1 f) (hg : ClassicalRealH1 g) :
    (realMixedGammaEnergy a f g) ^ 2 ≤
      realGammaEnergy a f * realGammaEnergy a g := by
  let A : ℝ := realGammaEnergy a f
  let B : ℝ := realMixedGammaEnergy a f g
  let C : ℝ := realGammaEnergy a g
  have hA : 0 ≤ A := (realGamma_integrable_nonneg_bound a hf).2.1
  have hC : 0 ≤ C := (realGamma_integrable_nonneg_bound a hg).2.1
  have hquad (u : ℝ) : 0 ≤ u ^ 2 * A + 2 * u * B + C := by
    have hnonneg :=
      (realGamma_integrable_nonneg_bound a ((hf.scale u).add hg)).2.1
    have hexpand := realGammaEnergy_add_expansion a (hf.scale u) hg
    rw [hexpand, realGammaEnergy_scale, realMixedGammaEnergy_scale_left] at hnonneg
    dsimp [A, B, C]
    nlinarith
  exact real_quadratic_Cauchy A B C hA hC hquad

/-- An actual MIXED H1 product budget with no square roots in the
formal statement. Its diagonal factors are the native gamma
head/tail masses, retaining the original parity parameter a.
The corresponding norm product bound follows by taking real square
roots, but is not required for this source-certified reduction. -/
theorem realMixedGammaEnergy_sq_le_H1_product
    (a : ℕ) {f g : ℝ → ℝ}
    (hf : ClassicalRealH1 f) (hg : ClassicalRealH1 g) :
    (realMixedGammaEnergy a f g) ^ 2 ≤
      ((7 / 12 : ℝ) * (∫ t : ℝ, hf.first t ^ 2) +
        2 * tailUpper a 1 * (∫ t : ℝ, f t ^ 2)) *
      ((7 / 12 : ℝ) * (∫ t : ℝ, hg.first t ^ 2) +
        2 * tailUpper a 1 * (∫ t : ℝ, g t ^ 2)) := by
  have hfFacts := realGamma_integrable_nonneg_bound a hf
  have hgFacts := realGamma_integrable_nonneg_bound a hg
  have hA : 0 ≤ realGammaEnergy a f := hfFacts.2.1
  have hB : 0 ≤ realGammaEnergy a g := hgFacts.2.1
  have hAf := hfFacts.2.2
  have hBg := hgFacts.2.2
  have hupperF : 0 ≤ (7 / 12 : ℝ) * (∫ t : ℝ, hf.first t ^ 2) +
      2 * tailUpper a 1 * (∫ t : ℝ, f t ^ 2) := hA.trans hAf
  calc
    _ ≤ realGammaEnergy a f * realGammaEnergy a g :=
      realMixedGammaEnergy_sq_le_diag a hf hg
    _ ≤ _ := mul_le_mul hAf hBg hB hupperF

/-- The physical gamma mixed-form bound automatically respects the
zeta parity a=0; signed arithmetic prime/pole terms remain separate. -/
theorem zeta_realMixedGamma_sq_le_H1
    {f g : ℝ → ℝ} (hf : ClassicalRealH1 f) (hg : ClassicalRealH1 g) :
    (realMixedGammaEnergy 0 f g) ^ 2 ≤
      ((7 / 12 : ℝ) * (∫ t : ℝ, hf.first t ^ 2) +
        2 * tailUpper 0 1 * (∫ t : ℝ, f t ^ 2)) *
      ((7 / 12 : ℝ) * (∫ t : ℝ, hg.first t ^ 2) +
        2 * tailUpper 0 1 * (∫ t : ℝ, g t ^ 2)) :=
  realMixedGammaEnergy_sq_le_H1_product 0 hf hg

/-- Primitive REAL conjugate-pair gamma retains exactly the character
gammaParity, not an individual complex-character magnetic form. -/
theorem primitive_realMixedGamma_sq_le_H1
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q)
    (_hp : chi.IsPrimitive) (_hn : chi ≠ 1)
    {f g : ℝ → ℝ} (hf : ClassicalRealH1 f) (hg : ClassicalRealH1 g) :
    (realMixedGammaEnergy (gammaParity chi) f g) ^ 2 ≤
      ((7 / 12 : ℝ) * (∫ t : ℝ, hf.first t ^ 2) +
        2 * tailUpper (gammaParity chi) 1 * (∫ t : ℝ, f t ^ 2)) *
      ((7 / 12 : ℝ) * (∫ t : ℝ, hg.first t ^ 2) +
        2 * tailUpper (gammaParity chi) 1 * (∫ t : ℝ, g t ^ 2)) :=
  realMixedGammaEnergy_sq_le_H1_product (gammaParity chi) hf hg

end GRWTSK.NumberTheory.WeilQuadraticForm.NativeMixedGammaH1
