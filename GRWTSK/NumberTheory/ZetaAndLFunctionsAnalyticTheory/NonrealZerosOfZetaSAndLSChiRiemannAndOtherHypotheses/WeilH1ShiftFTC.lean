/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.WeilGammaH1ShiftBudget
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.MeasureTheory.Integral.Prod
import Mathlib.Tactic

/-!
# The real classical H1 translation inequality for the original Weil gamma source

The previous source WeilGammaH1ShiftBudget retained NearH1ShiftBound as an
explicit premise. On genuinely classical real functions with continuous
first derivative and L2 mass, this source derives that precise proposition
using the actual Lebesgue translation invariance and the pinned Mathlib FTC.

The argument has three components:
* f(t+r)-f(t) is the true finite interval integral of first(t+u).
* For r>0, the square of this integral is at most r times the
  integral of first(t+u)^2, by a NONNEGATIVE SQUARE; no pointwise
  Lipschitz upper bound replaces the L2 derivative mass.
* Product integrability is obtained from the actual L2 mass of first:
  the u-fibres have the same Lebesgue L2 mass for every translation,
  and the u measure has finite volume r. Fubini is then applicable.

As a result the exact former NearH1ShiftBound is constructed, not
postulated, for real classical C1 inputs with MemLp f and first. The
original true gamma parity source bound can be used with no supplied
near-shift or gamma-integrability premise on this classical carrier.

No smooth-test density, mixed full Weil form continuity, global sign,
completed-zero amplifier, or RH/Dirichlet GRH is asserted.
MANUAL LEAN SOURCE PROOF CANDIDATE; elaboration, pinned dependency build,
kernel replay, transitive axiom audit and independent review NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set Filter
open scoped Interval BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.NativeH1ShiftFTC

open GRWTSK.NumberTheory.WeilQuadraticForm.NativeGammaH1ShiftBudget
open GRWTSK.NumberTheory.WeilQuadraticForm.OddRootProjection

/-- FTC for the actual shifted first derivative, without introducing
a replacement translation operator or arbitrary Fourier normalization. -/
theorem actual_shift_eq_interval_integral
    (f first : ℝ → ℝ)
    (hf : ∀ t : ℝ, HasDerivAt f (first t) t)
    (hfirst : Continuous first)
    (t r : ℝ) (hr : 0 ≤ r) :
    f (t + r) - f t =
      ∫ u in Ioc (0 : ℝ) r, first (t + u) := by
  have hd (u : ℝ) :
      HasDerivAt (fun v : ℝ => f (t + v)) (first (t + u)) u := by
    simpa only [Function.comp_def] using
      (hf (t + u)).comp u ((hasDerivAt_id u).const_add t)
  have hCont : Continuous (fun u : ℝ => first (t + u)) := by
    fun_prop
  have hFTC :=
    intervalIntegral.integral_eq_sub_of_hasDerivAt
      (a := (0 : ℝ)) (b := r) (f := fun u : ℝ => f (t + u))
      (f' := fun u : ℝ => first (t + u))
      (fun u _ => hd u)
      (hCont.intervalIntegrable 0 r)
  rw [intervalIntegral.integral_of_le hr] at hFTC
  simpa only [add_zero] using hFTC.symm

/-- A purely real integral Cauchy-Schwarz inequality on (0,r].
The proof uses the NONNEGATIVE square of r*g-integral(g), avoiding
square roots and requiring no unproved weighted Fourier Parseval. -/
private theorem interval_integral_sq_le
    (r : ℝ) (hr : 0 < r) (g : ℝ → ℝ) (hg : Continuous g) :
    (∫ u in Ioc (0 : ℝ) r, g u) ^ 2 ≤
      r * (∫ u in Ioc (0 : ℝ) r, g u ^ 2) := by
  let A : ℝ := ∫ u in Ioc (0 : ℝ) r, g u
  have hgI : IntegrableOn g (Ioc (0 : ℝ) r) :=
    (hg.intervalIntegrable 0 r).1
  have hg2 : IntegrableOn (fun u => g u ^ 2) (Ioc (0 : ℝ) r) :=
    ((hg.pow 2).intervalIntegrable 0 r).1
  have hga : IntegrableOn (fun u => A ^ 2) (Ioc (0 : ℝ) r) :=
    ((continuous_const : Continuous (fun _ : ℝ => A ^ 2)).intervalIntegrable 0 r).1
  have hconst :
      (∫ _u in Ioc (0 : ℝ) r, A ^ 2) = r * A ^ 2 := by
    rw [← intervalIntegral.integral_of_le hr.le, intervalIntegral.integral_const]
    simp only [sub_zero, smul_eq_mul]
  have hSqNonneg :
      0 ≤ ∫ u in Ioc (0 : ℝ) r, (r * g u - A) ^ 2 :=
    integral_nonneg (fun _ => sq_nonneg _)
  have hExpand :
      (∫ u in Ioc (0 : ℝ) r, (r * g u - A) ^ 2) =
        r ^ 2 * (∫ u in Ioc (0 : ℝ) r, g u ^ 2) -
          (2 * r * A) * (∫ u in Ioc (0 : ℝ) r, g u) +
            r * A ^ 2 := by
    calc
      _ = ∫ u in Ioc (0 : ℝ) r,
          (r ^ 2 * g u ^ 2 - (2 * r * A) * g u) + A ^ 2 := by
        apply integral_congr_ae
        filter_upwards [] with u
        ring
      _ = _ := by
        rw [integral_add
            ((hg2.const_mul (r ^ 2)).sub (hgI.const_mul (2 * r * A))) hga,
          integral_sub (hg2.const_mul (r ^ 2))
            (hgI.const_mul (2 * r * A)),
          integral_const_mul, integral_const_mul, hconst]
  rw [hExpand] at hSqNonneg
  have hMul : r * A ^ 2 ≤
      r * (r * (∫ u in Ioc (0 : ℝ) r, g u ^ 2)) := by
    dsimp [A] at hSqNonneg ⊢
    nlinarith [hSqNonneg]
  exact (mul_le_mul_left hr).mp hMul

/-- Product-integrability of the exact translated derivative square.
The u-domain is a finite interval; each t-fibre has the SAME
physical L2 mass by Lebesgue translation invariance. -/
private theorem translated_square_integrable_prod
    (first : ℝ → ℝ) (hfirst : Continuous first)
    (hf2 : Integrable (fun t : ℝ => first t ^ 2))
    (r : ℝ) (hr : 0 ≤ r) :
    Integrable (fun z : ℝ × ℝ => first (z.2 + z.1) ^ 2)
      ((volume.restrict (Ioc (0 : ℝ) r)).prod volume) := by
  let μ : Measure ℝ := volume.restrict (Ioc (0 : ℝ) r)
  haveI : IsFiniteMeasure μ := ⟨by simp [μ, Real.volume_Ioc]⟩
  have hm :
      AEStronglyMeasurable
        (fun z : ℝ × ℝ => first (z.2 + z.1) ^ 2)
        (μ.prod volume) := by
    apply Measurable.aestronglyMeasurable
    fun_prop
  apply (integrable_prod_iff hm).2
  constructor
  · filter_upwards [] with u
    exact (measurePreserving_add_right volume u).integrable_comp_of_integrable hf2
  · have hConst :
        (fun u : ℝ => ∫ t : ℝ, ‖first (t + u) ^ 2‖) =
          (fun _u : ℝ => ∫ t : ℝ, first t ^ 2) := by
      funext u
      have hs :
          (fun t : ℝ => ‖first (t + u) ^ 2‖) =
            (fun t : ℝ => first (t + u) ^ 2) := by
        funext t
        rw [Real.norm_eq_abs, abs_of_nonneg (sq_nonneg _)]
      rw [hs]
      exact integral_add_right_eq_self (fun t : ℝ => first t ^ 2) u
    rw [hConst]
    exact integrable_const _

/-- The squared first-derivative double integral returns EXACTLY
r times the whole-line derivative mass: Fubini, Lebesgue invariance,
and the finite interval volume, not a numerical gamma surrogate. -/
private theorem integral_translated_square_eq
    (first : ℝ → ℝ) (hfirst : Continuous first)
    (hf2 : Integrable (fun t : ℝ => first t ^ 2))
    (r : ℝ) (hr : 0 ≤ r) :
    (∫ t : ℝ, ∫ u in Ioc (0 : ℝ) r, first (t + u) ^ 2) =
      r * (∫ t : ℝ, first t ^ 2) := by
  have hp := translated_square_integrable_prod first hfirst hf2 r hr
  have hSwap :
      (∫ t : ℝ, ∫ u in Ioc (0 : ℝ) r,
        first (t + u) ^ 2) =
      ∫ u in Ioc (0 : ℝ) r,
        ∫ t : ℝ, first (t + u) ^ 2 := by
    exact (integral_integral_swap (μ := volume.restrict (Ioc (0 : ℝ) r))
      (ν := volume) hp).symm
  rw [hSwap]
  have hTrans (u : ℝ) :
      (∫ t : ℝ, first (t + u) ^ 2) =
        ∫ t : ℝ, first t ^ 2 :=
    integral_add_right_eq_self (fun t : ℝ => first t ^ 2) u
  simp_rw [hTrans]
  rw [← intervalIntegral.integral_of_le hr, intervalIntegral.integral_const]
  simp only [sub_zero, smul_eq_mul]

/-- The former near-zero H1-shift condition is NOW an exact conclusion
for actual classical C1 source data, rather than an assumed bound. -/
theorem nearH1ShiftBound_of_classical_derivative
    (f first : ℝ → ℝ)
    (hf : ∀ t : ℝ, HasDerivAt f (first t) t)
    (hfirst : Continuous first)
    (hf2 : MemLp f 2 volume)
    (hfirst2 : MemLp first 2 volume) :
    NearH1ShiftBound f first := by
  intro r hr
  have hrPos : 0 < r := hr.1
  have hfirstSq : Integrable (fun t : ℝ => first t ^ 2) :=
    hfirst2.integrable_sq
  have hDiffSq : Integrable (fun t : ℝ => (f (t + r) - f t) ^ 2) :=
    ((hf2.comp_measurePreserving
      (measurePreserving_add_right volume r)).sub hf2).integrable_sq
  have hPair := translated_square_integrable_prod first hfirst
    hfirstSq r hrPos.le
  have hShiftIntegrable :
      Integrable (fun t : ℝ =>
        ∫ u in Ioc (0 : ℝ) r, first (t + u) ^ 2) :=
    hPair.integral_prod_right
  have hPoint (t : ℝ) :
      (f (t + r) - f t) ^ 2 ≤
        r * (∫ u in Ioc (0 : ℝ) r, first (t + u) ^ 2) := by
    rw [actual_shift_eq_interval_integral f first hf hfirst t r hrPos.le]
    exact interval_integral_sq_le r hrPos
      (fun u => first (t + u)) (by fun_prop)
  unfold realShiftEnergy
  calc
    (∫ t : ℝ, (f (t + r) - f t) ^ 2) ≤
      ∫ t : ℝ, r *
        (∫ u in Ioc (0 : ℝ) r, first (t + u) ^ 2) := by
          exact integral_mono hDiffSq (hShiftIntegrable.const_mul r) hPoint
    _ = r * (∫ t : ℝ,
        ∫ u in Ioc (0 : ℝ) r, first (t + u) ^ 2) := by
          rw [integral_const_mul]
    _ = r ^ 2 * (∫ t : ℝ, first t ^ 2) := by
          rw [integral_translated_square_eq first hfirst hfirstSq r hrPos.le]
          ring

/-- The EXACT original zeta gamma integral now has its H1 head/tail
budget from classical derivative data, WITHOUT supplying
NearH1ShiftBound, gamma integrability or a new Fourier operator. -/
theorem zeta_gamma_H1_bound_of_classical
    (f first : ℝ → ℝ)
    (hf : ∀ t : ℝ, HasDerivAt f (first t) t)
    (hfirst : Continuous first)
    (hf2 : MemLp f 2 volume)
    (hfirst2 : MemLp first 2 volume) :
    realGammaEnergy 0 f ≤
      (7 / 12 : ℝ) * (∫ t : ℝ, first t ^ 2) +
        2 * GRWTSK.NumberTheory.WeilQuadraticForm.ExactGammaTail.tailUpper 0 1 *
          (∫ t : ℝ, f t ^ 2) := by
  have hfCont : Continuous f := fun t => (hf t).continuousAt
  exact zeta_realGamma_H1_bound f first hfCont hf2 hfirst2
    (nearH1ShiftBound_of_classical_derivative f first hf hfirst hf2 hfirst2)

/-- The primitive paired-character gamma retains its ORIGINAL gamma
parity and conductor sector; no prime-phase or pole cancellation. -/
theorem primitive_gamma_H1_bound_of_classical
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q)
    (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (f first : ℝ → ℝ)
    (hf : ∀ t : ℝ, HasDerivAt f (first t) t)
    (hfirst : Continuous first)
    (hf2 : MemLp f 2 volume)
    (hfirst2 : MemLp first 2 volume) :
    realGammaEnergy (gammaParity chi) f ≤
      (7 / 12 : ℝ) * (∫ t : ℝ, first t ^ 2) +
        2 * GRWTSK.NumberTheory.WeilQuadraticForm.ExactGammaTail.tailUpper
          (gammaParity chi) 1 * (∫ t : ℝ, f t ^ 2) := by
  have hfCont : Continuous f := fun t => (hf t).continuousAt
  exact primitive_paired_realGamma_H1_bound chi hp hn f first hfCont hf2 hfirst2
    (nearH1ShiftBound_of_classical_derivative f first hf hfirst hf2 hfirst2)

end GRWTSK.NumberTheory.WeilQuadraticForm.NativeH1ShiftFTC
