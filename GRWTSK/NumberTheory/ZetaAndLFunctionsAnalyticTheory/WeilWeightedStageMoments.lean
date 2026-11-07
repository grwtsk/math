/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilWeightedStageBand
import Mathlib.MeasureTheory.Function.L2Space

/-!
# Integral return for the odd negative-band moment estimate

This is the analytic inequality used in the first theta-weighted stage,
not a numerical assertion about the theta kernel. `sigma` stays a real
function with explicit L2/moment hypotheses. The source application uses
sigma(t)^2 = phi(t)/(2*cosh(t/2)); it is not redefined by its moments.

The integral Cauchy--Schwarz proof expands a nonnegative square, including
the zero-mass case. The global sine majorant is integrated with its negative
fourth-order term intact. Integrating the resulting readout bound against
the actual negative band yields the signed moment price with 1/(2*pi),
the square of the unitary Fourier normalization. The Fourier sign is minus;
its phase disappears only after taking the squared modulus of an odd real
test's sine readout.

Consumer: `WeilWeightedFirstStage` and the supplied proof's negative-band
bound. Identification with the original Weil archimedean form, the actual
theta moment observations, and closed-form extension remain explicit
obligations. The pure integral theorem neither assumes nor proves RH.
These are standard integral and polynomial mechanisms, with no novelty claim.

Elaboration, compilation, fresh kernel replay, transitive axiom audit,
and independent analytical review: NOT_RUN. Imported declarations retain
their original assurance; source inspection is not a build.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory

namespace GRWTSK.NumberTheory.WeilQuadraticForm.WeightedStage

/-- The coordinate mass is Lebesgue L2 mass of u, not of sigma*u. -/
def coordinateMass (u : ℝ → ℝ) : ℝ := ∫ t : ℝ, u t ^ 2

theorem coordinateMass_nonneg (u : ℝ → ℝ) : 0 ≤ coordinateMass u :=
  integral_nonneg (fun _ => sq_nonneg _)

/-- A literal square-integral inequality, with the zero-mass case retained. -/
theorem integral_pair_sq_le {u h : ℝ → ℝ}
    (hu : MemLp u 2 volume) (hh : MemLp h 2 volume) :
    (∫ t : ℝ, u t * h t) ^ 2 ≤ coordinateMass u * coordinateMass h := by
  let M := coordinateMass u
  let R := coordinateMass h
  let B := ∫ t : ℝ, u t * h t
  have hu2 := hu.integrable_sq
  have hh2 := hh.integrable_sq
  have huh := hu.integrable_mul hh
  have hquad (r : ℝ) : 0 ≤ r ^ 2 * M - 2 * r * B + R := by
    have heq : (∫ t : ℝ, (r * u t - h t) ^ 2) = r ^ 2 * M - 2 * r * B + R := by
      calc
        _ = ∫ t : ℝ, r ^ 2 * (u t ^ 2) - (2 * r) * (u t * h t) + h t ^ 2 := by
          apply integral_congr_ae
          filter_upwards [] with t
          ring
        _ = _ := by
          rw [integral_add ((hu2.const_mul _).sub (huh.const_mul _)) hh2,
            integral_sub (hu2.const_mul _) (huh.const_mul _),
            integral_const_mul, integral_const_mul]
    rw [← heq]
    exact integral_nonneg (fun _ => sq_nonneg _)
  have hM : 0 ≤ M := coordinateMass_nonneg u
  change B ^ 2 ≤ M * R
  rcases eq_or_lt_of_le hM with hM | hM
  · have hM0 : M = 0 := hM.symm
    by_cases hB : B = 0
    · simp [hM0, hB]
    · have h := hquad ((R + 1) / (2 * B))
      have heq : ((R + 1) / (2 * B)) ^ 2 * M -
          2 * ((R + 1) / (2 * B)) * B + R = -1 := by
        rw [hM0, mul_zero, zero_sub]
        field_simp [hB]
        <;> ring
      rw [heq] at h
      linarith
  · have h := mul_nonneg hM.le (hquad (B / M))
    have heq : M * ((B / M) ^ 2 * M - 2 * (B / M) * B + R) = M * R - B ^ 2 := by
      field_simp [hM.ne']
      <;> ring
    rw [heq] at h
    linarith

/-- An even moment of the actual spatial multiplier, before observation. -/
def spatialMoment (sigma : ℝ → ℝ) (k : ℕ) : ℝ :=
  ∫ t : ℝ, t ^ k * sigma t ^ 2

/-- The real sine readout of the physical test sigma*u. -/
def sineReadout (sigma u : ℝ → ℝ) (xi : ℝ) : ℝ :=
  ∫ t : ℝ, u t * (sigma t * Real.sin (xi * t))

def sineSquareMass (sigma : ℝ → ℝ) (xi : ℝ) : ℝ :=
  ∫ t : ℝ, sigma t ^ 2 * Real.sin (xi * t) ^ 2

def sineMomentPrice (sigma : ℝ → ℝ) (xi : ℝ) : ℝ :=
  xi ^ 2 * spatialMoment sigma 2 - (xi ^ 4 / 3) * spatialMoment sigma 4 +
    (2 * xi ^ 6 / 45) * spatialMoment sigma 6

theorem sineReadout_sq_le {sigma u : ℝ → ℝ} (xi : ℝ)
    (hu : MemLp u 2 volume)
    (hk : MemLp (fun t => sigma t * Real.sin (xi * t)) 2 volume) :
    sineReadout sigma u xi ^ 2 ≤ coordinateMass u * sineSquareMass sigma xi := by
  have h := integral_pair_sq_le hu hk
  simpa only [coordinateMass, sineReadout, sineSquareMass, mul_pow] using h

/-- The negative fourth moment is retained before any rounding. -/
theorem sineSquareMass_le_momentPrice {sigma : ℝ → ℝ} (xi : ℝ)
    (h2 : Integrable (fun t : ℝ => t ^ 2 * sigma t ^ 2))
    (h4 : Integrable (fun t : ℝ => t ^ 4 * sigma t ^ 2))
    (h6 : Integrable (fun t : ℝ => t ^ 6 * sigma t ^ 2))
    (hk : MemLp (fun t => sigma t * Real.sin (xi * t)) 2 volume) :
    sineSquareMass sigma xi ≤ sineMomentPrice sigma xi := by
  have hs : Integrable (fun t : ℝ => sigma t ^ 2 * Real.sin (xi * t) ^ 2) := by
    simpa only [mul_pow] using hk.integrable_sq
  have hp := ((h2.const_mul (xi ^ 2)).sub (h4.const_mul (xi ^ 4 / 3))).add
    (h6.const_mul (2 * xi ^ 6 / 45))
  unfold sineSquareMass sineMomentPrice spatialMoment
  calc
    _ ≤ ∫ t : ℝ, xi ^ 2 * (t ^ 2 * sigma t ^ 2) -
        (xi ^ 4 / 3) * (t ^ 4 * sigma t ^ 2) +
        (2 * xi ^ 6 / 45) * (t ^ 6 * sigma t ^ 2) := by
      apply integral_mono hs hp
      intro t
      have h := mul_le_mul_of_nonneg_left (sin_sq_le_sextic (xi * t)) (sq_nonneg (sigma t))
      convert h using 1 <;> ring
    _ = _ := by
      rw [integral_add ((h2.const_mul _).sub (h4.const_mul _)) (h6.const_mul _),
        integral_sub (h2.const_mul _) (h4.const_mul _)]
      simp only [integral_const_mul]

/-- Literal negative-band readout with the unitary normalization squared. -/
def oddBandObservation (sigma u : ℝ → ℝ) : ℝ :=
  (∫ xi : ℝ, baseNegativeBand xi * sineReadout sigma u xi ^ 2) / (2 * Real.pi)

def signedMomentPrice (sigma : ℝ → ℝ) : ℝ :=
  (spatialMoment sigma 2 * frequencyMoment 2 -
    spatialMoment sigma 4 * frequencyMoment 4 / 3 +
    2 * spatialMoment sigma 6 * frequencyMoment 6 / 45) / (2 * Real.pi)

/-- Integrability is visible, rather than obtained from Lean's convention of
assigning zero to an undefined Bochner integral. The source Fourier
identification is NOT a premise concealed inside this inequality. -/
theorem oddBandObservation_le_signedMomentPrice {sigma u : ℝ → ℝ}
    (hu : MemLp u 2 volume)
    (hk : ∀ xi : ℝ, MemLp (fun t => sigma t * Real.sin (xi * t)) 2 volume)
    (h2 : Integrable (fun t : ℝ => t ^ 2 * sigma t ^ 2))
    (h4 : Integrable (fun t : ℝ => t ^ 4 * sigma t ^ 2))
    (h6 : Integrable (fun t : ℝ => t ^ 6 * sigma t ^ 2))
    (hobs : Integrable (fun xi : ℝ => baseNegativeBand xi * sineReadout sigma u xi ^ 2)) :
    oddBandObservation sigma u ≤ coordinateMass u * signedMomentPrice sigma := by
  let M := coordinateMass u
  let a := spatialMoment sigma 2
  let b := spatialMoment sigma 4 / 3
  let c := 2 * spatialMoment sigma 6 / 45
  let rhs := fun xi : ℝ => M * (a * (baseNegativeBand xi * xi ^ 2) -
      b * (baseNegativeBand xi * xi ^ 4) + c * (baseNegativeBand xi * xi ^ 6))
  have hM : 0 ≤ M := coordinateMass_nonneg u
  have hi2 := integrable_frequencyMoment 2
  have hi4 := integrable_frequencyMoment 4
  have hi6 := integrable_frequencyMoment 6
  have hrhs : Integrable rhs :=
    (((hi2.const_mul a).sub (hi4.const_mul b)).add (hi6.const_mul c)).const_mul M
  have hpoint (xi : ℝ) : baseNegativeBand xi * sineReadout sigma u xi ^ 2 ≤ rhs xi := by
    have hread := (sineReadout_sq_le xi hu (hk xi)).trans
      (mul_le_mul_of_nonneg_left (sineSquareMass_le_momentPrice xi h2 h4 h6 (hk xi)) hM)
    have h := mul_le_mul_of_nonneg_left hread (baseNegativeBand_nonneg xi)
    convert h using 1 <;> dsimp [rhs, sineMomentPrice, M, a, b, c] <;> ring
  have hbound := integral_mono hobs hrhs hpoint
  have heval : (∫ xi : ℝ, rhs xi) =
      M * (a * frequencyMoment 2 - b * frequencyMoment 4 + c * frequencyMoment 6) := by
    dsimp [rhs]
    rw [integral_const_mul,
      integral_add ((hi2.const_mul a).sub (hi4.const_mul b)) (hi6.const_mul c),
      integral_sub (hi2.const_mul a) (hi4.const_mul b)]
    simp only [integral_const_mul, frequencyMoment]
  rw [heval] at hbound
  have hdiv := div_le_div_of_nonneg_right hbound (by positivity : (0 : ℝ) ≤ 2 * Real.pi)
  convert hdiv using 1 <;> dsimp [oddBandObservation, signedMomentPrice, M, a, b, c] <;> ring

end GRWTSK.NumberTheory.WeilQuadraticForm.WeightedStage
