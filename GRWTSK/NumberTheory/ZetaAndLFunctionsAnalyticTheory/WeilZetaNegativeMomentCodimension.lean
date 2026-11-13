/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilZetaPoleRankOneReturn
import Mathlib.LinearAlgebra.FiniteDimensional.Lemmas
import Mathlib.Tactic

/-!
# The actual negative zeta pole moment loses at most one complex dimension

MSC2020: 11M26 (primary), 11M41, 15A03, 46C20.

Every finite-dimensional complex-linear family of original Lebesgue source
functions with the original genuine L1 integrability and support has
an ACTUAL complex-linear moment-difference functional Mplus - Mminus.
Its kernel has codimension at most one, and the unchanged, full,
two-orientation zeta correlation pole is nonnegative on that kernel.
A strictly negative full source form therefore remains negative in
its nonpole part on the kernel. No positivity of that nonpole form
or any RH/GRH hypothesis is assumed.

The source is the existing ZetaPoleRankOneReturn.plusMoment,
minusMoment, sourcePole, and sourcePole_nonneg_on_negative_kernel,
which directly consumes the original WeilCorrelationFourier
zeta_pole_correlation theorem and its two signed orientations.
The finite-dimensional test-family parameter is an honest
source-valued linear map, not a substitute Weil operator.
The two weighted moment integrability statements are proved from the
same original L1 and support premises; instantiation at the canonical
C_c^infinity submodule remains a separate formal obligation.

This is a classical rank-nullity calculation, not a novelty claim.
SOURCE_PROOF_CANDIDATE. Lean elaboration, complete dependency build,
fresh kernel replay, transitive axiom audit and independent review
NOT_RUN. No new research axiom, sorry/admit, RH or GRH conclusion.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory
open scoped ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ZetaNegativeMomentCodimension

open ZetaPoleRankOneReturn

variable {V : Type*} [AddCommGroup V] [Module ℂ V]

/-- Genuine exponential-weight integrability follows from the same
Lebesgue L1 and pointwise symmetric support hypotheses already used by
the original zeta pole theorem. No weighted-integrability postulate. -/
theorem integrable_source_exp_weight (f : ℝ → ℂ) (A y : ℝ)
    (hf : Integrable f volume)
    (hs : ∀ t : ℝ, A < |t| → f t = 0) :
    Integrable (fun t : ℝ => f t * (Real.exp (y * t) : ℂ)) volume := by
  have hc : Continuous (fun t : ℝ => (Real.exp (y * t) : ℂ)) := by
    fun_prop
  have hnorm (t : ℝ) :
      ‖f t * (Real.exp (y * t) : ℂ)‖ ≤
        ‖f t‖ * Real.exp (A * |y|) := by
    by_cases ht : |t| ≤ A
    · rw [norm_mul, Complex.norm_real, Real.norm_eq_abs,
        abs_of_pos (Real.exp_pos _)]
      apply mul_le_mul_of_nonneg_left _ (norm_nonneg _)
      apply Real.exp_le_exp.mpr
      calc
        y * t ≤ |y * t| := le_abs_self _
        _ = |y| * |t| := abs_mul _ _
        _ ≤ |y| * A := mul_le_mul_of_nonneg_left ht (abs_nonneg _)
        _ = A * |y| := mul_comm _ _
    · rw [hs t (lt_of_not_ge ht)]
      simp
  exact (hf.norm.mul_const (Real.exp (A * |y|))).mono'
    (hf.aestronglyMeasurable.mul hc.aestronglyMeasurable)
    (Filter.Eventually.of_forall hnorm)

private theorem integrable_plus_moment (f : ℝ → ℂ) (A : ℝ)
    (hf : Integrable f volume)
    (hs : ∀ t : ℝ, A < |t| → f t = 0) :
    Integrable (fun t : ℝ => f t * (Real.exp (t / 2) : ℂ)) volume := by
  convert integrable_source_exp_weight f A (1 / 2) hf hs using 1
  ext t
  congr 2
  ring

private theorem integrable_minus_moment (f : ℝ → ℂ) (A : ℝ)
    (hf : Integrable f volume)
    (hs : ∀ t : ℝ, A < |t| → f t = 0) :
    Integrable (fun t : ℝ => f t * (Real.exp (-t / 2) : ℂ)) volume := by
  convert integrable_source_exp_weight f A (-(1 / 2)) hf hs using 1
  ext t
  congr 2
  ring

/-- The ACTUAL negative zeta moment as a complex-linear map on
source-valued finite families. Only original L1 and support hypotheses
are required: integrability of both exponential moments is proved. -/
def sourceNegativeMomentLinear (source : V →ₗ[ℂ] (ℝ → ℂ))
    (A : ℝ)
    (hf : ∀ v : V, Integrable (source v) volume)
    (hs : ∀ (v : V) (t : ℝ), A < |t| → source v t = 0) :
    V →ₗ[ℂ] ℂ where
  toFun v := plusMoment (source v) - minusMoment (source v)
  map_add' := by
    intro u v
    change plusMoment (source (u + v)) - minusMoment (source (u + v)) =
      (plusMoment (source u) - minusMoment (source u)) +
        (plusMoment (source v) - minusMoment (source v))
    have hp : plusMoment (source (u + v)) =
        plusMoment (source u) + plusMoment (source v) := by
      unfold plusMoment
      have heq : (fun t : ℝ => source (u + v) t *
          (Real.exp (t / 2) : ℂ)) =
          (fun t : ℝ =>
            source u t * (Real.exp (t / 2) : ℂ) +
            source v t * (Real.exp (t / 2) : ℂ)) := by
        funext t
        simp only [map_add, Pi.add_apply, add_mul]
      rw [heq, integral_add
        (integrable_plus_moment (source u) A (hf u) (hs u))
        (integrable_plus_moment (source v) A (hf v) (hs v))]
    have hm : minusMoment (source (u + v)) =
        minusMoment (source u) + minusMoment (source v) := by
      unfold minusMoment
      have heq : (fun t : ℝ => source (u + v) t *
          (Real.exp (-t / 2) : ℂ)) =
          (fun t : ℝ =>
            source u t * (Real.exp (-t / 2) : ℂ) +
            source v t * (Real.exp (-t / 2) : ℂ)) := by
        funext t
        simp only [map_add, Pi.add_apply, add_mul]
      rw [heq, integral_add
        (integrable_minus_moment (source u) A (hf u) (hs u))
        (integrable_minus_moment (source v) A (hf v) (hs v))]
    rw [hp, hm]
    abel
  map_smul' := by
    intro c v
    change plusMoment (source (c • v)) - minusMoment (source (c • v)) =
      c • (plusMoment (source v) - minusMoment (source v))
    have hp : plusMoment (source (c • v)) =
        c * plusMoment (source v) := by
      unfold plusMoment
      have heq : (fun t : ℝ => source (c • v) t *
          (Real.exp (t / 2) : ℂ)) =
          (fun t : ℝ => c *
            (source v t * (Real.exp (t / 2) : ℂ))) := by
        funext t
        simp only [map_smul, Pi.smul_apply, smul_eq_mul]
        ring
      rw [heq, integral_const_mul]
    have hm : minusMoment (source (c • v)) =
        c * minusMoment (source v) := by
      unfold minusMoment
      have heq : (fun t : ℝ => source (c • v) t *
          (Real.exp (-t / 2) : ℂ)) =
          (fun t : ℝ => c *
            (source v t * (Real.exp (-t / 2) : ℂ))) := by
        funext t
        simp only [map_smul, Pi.smul_apply, smul_eq_mul]
        ring
      rw [heq, integral_const_mul]
    rw [hp, hm]
    simp only [smul_eq_mul]
    ring

/-- The original full zeta pole source is nonnegative on a kernel of
complex codimension at most one. This is a rank-one SOURCE theorem,
not a pole-neutral restriction of the original test domain. -/
theorem sourcePole_nonneg_on_codimension_one_kernel
    [FiniteDimensional ℂ V] (source : V →ₗ[ℂ] (ℝ → ℂ))
    (A : ℝ)
    (hf : ∀ v : V, Integrable (source v) volume)
    (hs : ∀ (v : V) (t : ℝ), A < |t| → source v t = 0) :
    let ℓ := sourceNegativeMomentLinear source A hf hs
    Module.finrank ℂ V ≤ Module.finrank ℂ (LinearMap.ker ℓ) + 1 ∧
      (∀ v : LinearMap.ker ℓ, 0 ≤ sourcePole (source v.1)) := by
  intro ℓ
  have hrange : Module.finrank ℂ (LinearMap.range ℓ) ≤ 1 := by
    calc
      _ ≤ Module.finrank ℂ ℂ := (LinearMap.range ℓ).finrank_le
      _ = 1 := by simp
  have hrank := ℓ.finrank_range_add_finrank_ker
  constructor
  · omega
  · intro v
    have hv : ℓ v.1 = 0 := (LinearMap.mem_ker).mp v.property
    have hzero : plusMoment (source v.1) -
        minusMoment (source v.1) = 0 := by
      simpa [ℓ, sourceNegativeMomentLinear] using hv
    have hmoment : plusMoment (source v.1) =
        minusMoment (source v.1) := sub_eq_zero.mp hzero
    exact sourcePole_nonneg_on_negative_kernel
      (source v.1) A (hf v.1) (hs v.1) hmoment

/-- If the ACTUAL full zeta form is negative definite on a finite
source subspace, its nonpole component stays strictly negative on
a subspace of codimension at most one. No sign of the nonpole
component is postulated. -/
theorem negative_full_source_implies_negative_nonpole_on_kernel
    [FiniteDimensional ℂ V] (source : V →ₗ[ℂ] (ℝ → ℂ))
    (A : ℝ)
    (hf : ∀ v : V, Integrable (source v) volume)
    (hs : ∀ (v : V) (t : ℝ), A < |t| → source v t = 0)
    (nonpole : V → ℝ)
    (hnegative : ∀ v : V, v ≠ 0 →
      nonpole v + sourcePole (source v) < 0) :
    let ℓ := sourceNegativeMomentLinear source A hf hs
    Module.finrank ℂ V ≤ Module.finrank ℂ (LinearMap.ker ℓ) + 1 ∧
      (∀ v : LinearMap.ker ℓ, (v : V) ≠ 0 → nonpole v.1 < 0) := by
  intro ℓ
  have h := sourcePole_nonneg_on_codimension_one_kernel
    source A hf hs
  constructor
  · exact h.1
  · intro v hv
    have hp := h.2 v
    have hn := hnegative v.1 hv
    linarith

end GRWTSK.NumberTheory.WeilQuadraticForm.ZetaNegativeMomentCodimension
