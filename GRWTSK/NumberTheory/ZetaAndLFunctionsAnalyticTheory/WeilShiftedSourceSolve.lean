/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilClosedSourceBilinear
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFormDomainDensity
import Mathlib.Analysis.InnerProductSpace.LaxMilgram

/-!
# A source-exact fixed-window variational solution

Lax--Milgram is applied to the ACTUAL signed source form plus the explicit
physical-mass shift `perturbationBound T beta + 1`. Completeness, source
identity and coercivity are supplied by the preceding source modules, not
postulated in a record. This constructs a unique response to every supported
odd physical L2 load, with a graph-norm stability bound and a precise weak
equation on every point of the maximal form domain.

The induced bounded physical response is symmetric, nonnegative, injective
and has dense range. The injectivity and dense range use the source-specific
sine/Parseval density proof. The physical response is not zero, a finite-mode
surrogate, or a map defined only on selected tests.

The physical unbounded inverse and its self-adjoint/source association
are constructed by the consumer `WeilPhysicalSourceOperator`. Nothing here removes
the regularization or proves the cofinal arithmetic lower signs.

SOURCE_PROOF_CANDIDATE. Elaboration, exact types, fresh kernel replay,
transitive axiom audit and independent mathematical review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped Topology

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ShiftedSourceSolve

open TranslationCutoffs TranslationEnergyDomain FormDomainDensity
open ClosedSourceBilinear MirroredHermitian

/-- The existing Lax--Milgram construction applied to proved source coercivity. -/
def variationalEquiv (T β : ℝ) (hT : 0 < T) : FormDomain T ≃L[ℝ] FormDomain T :=
  (coerciveForm_isCoercive T β hT.le).continuousLinearEquivOfBilin

theorem variationalEquiv_pairing (T β : ℝ) (hT : 0 < T) (z w : FormDomain T) :
    inner ℝ (variationalEquiv T β hT z) w = coerciveForm T β z w :=
  (coerciveForm_isCoercive T β hT.le).continuousLinearEquivOfBilin_apply z w

/-- Unique graph-domain response to an actual supported odd physical load. -/
def weakSolve (T β : ℝ) (hT : 0 < T) : WindowPhysical T →L[ℝ] FormDomain T :=
  (variationalEquiv T β hT).symm.toContinuousLinearMap.comp (windowInput T).adjoint

/-- The exact weak equation holds against EVERY form-domain test. -/
theorem weakSolve_spec (T β : ℝ) (hT : 0 < T)
    (h : WindowPhysical T) (w : FormDomain T) :
    coerciveForm T β (weakSolve T β hT h) w = inner ℝ h (windowInput T w) := by
  have he : variationalEquiv T β hT (weakSolve T β hT h) =
      (windowInput T).adjoint h :=
    (variationalEquiv T β hT).apply_symm_apply _
  calc
    _ = inner ℝ (variationalEquiv T β hT (weakSolve T β hT h)) w :=
      (variationalEquiv_pairing T β hT _ w).symm
    _ = inner ℝ ((windowInput T).adjoint h) w := by rw [he]
    _ = _ := ContinuousLinearMap.adjoint_inner_left (windowInput T) w h

/-- Return to the original signed source, keeping the physical shift explicit. -/
theorem weakSolve_source_equation (T β : ℝ) (hT : 0 < T)
    (h : WindowPhysical T) (w : FormDomain T) :
    sourcePairing T β (input T (weakSolve T β hT h)) (input T w) +
      regularization T β * inner ℝ (input T (weakSolve T β hT h)) (input T w) =
        inner ℝ h (windowInput T w) := by
  simpa only [coerciveForm_apply, sourceForm_apply] using weakSolve_spec T β hT h w

theorem weakSolve_unique (T β : ℝ) (hT : 0 < T) (h : WindowPhysical T)
    (u : FormDomain T)
    (hu : ∀ w, coerciveForm T β u w = inner ℝ h (windowInput T w)) :
    u = weakSolve T β hT h := by
  apply (variationalEquiv T β hT).injective
  apply ext_inner_right ℝ
  intro w
  rw [variationalEquiv_pairing, variationalEquiv_pairing, weakSolve_spec]
  exact hu w

/-- Graph-norm stability, not merely a bound in an auxiliary finite model. -/
theorem weakSolve_norm_le (T β : ℝ) (hT : 0 < T) (h : WindowPhysical T) :
    ‖weakSolve T β hT h‖ ≤ ‖h‖ := by
  let u := weakSolve T β hT h
  have hlo := (coerciveForm_bounds T β hT.le u).1
  rw [weakSolve_spec] at hlo
  have hup : inner ℝ h (windowInput T u) ≤ ‖h‖ * ‖u‖ :=
    (real_inner_le_norm h (windowInput T u)).trans
      (mul_le_mul_of_nonneg_left (windowInput_norm_le T u) (norm_nonneg h))
  change ‖u‖ ≤ ‖h‖
  by_cases hu : ‖u‖ = 0
  · rw [hu]
    exact norm_nonneg h
  · have huPos : 0 < ‖u‖ := lt_of_le_of_ne (norm_nonneg u) (Ne.symm hu)
    exact (mul_le_mul_iff_right₀ huPos).1
      (by simpa only [pow_two] using hlo.trans hup)

/-- The source variational objective on the complete graph domain. -/
def objective (T β : ℝ) (h : WindowPhysical T) (v : FormDomain T) : ℝ :=
  coerciveForm T β v v / 2 - inner ℝ h (windowInput T v)

/-- Exact energy error identity; it does not discard any arithmetic term. -/
theorem objective_error_identity (T β : ℝ) (hT : 0 < T)
    (h : WindowPhysical T) (v : FormDomain T) :
    objective T β h v - objective T β h (weakSolve T β hT h) =
      coerciveForm T β (v - weakSolve T β hT h) (v - weakSolve T β hT h) / 2 := by
  let u := weakSolve T β hT h
  have hexpand : coerciveForm T β (v - u) (v - u) =
      coerciveForm T β v v - coerciveForm T β v u -
        coerciveForm T β u v + coerciveForm T β u u := by
    simp only [map_sub, ContinuousLinearMap.sub_apply]
    ring
  have hv := weakSolve_spec T β hT h v
  have hu := weakSolve_spec T β hT h u
  have hs := coerciveForm_symmetric T β v u
  change objective T β h v - objective T β h u = coerciveForm T β (v - u) (v - u) / 2
  unfold objective
  rw [hexpand]
  change coerciveForm T β u v = inner ℝ h (windowInput T v) at hv
  change coerciveForm T β u u = inner ℝ h (windowInput T u) at hu
  linarith

/-- A quantitative minimizer certificate in the actual graph norm. -/
theorem objective_gap_lower (T β : ℝ) (hT : 0 < T)
    (h : WindowPhysical T) (v : FormDomain T) :
    ‖v - weakSolve T β hT h‖ ^ 2 / 2 ≤
      objective T β h v - objective T β h (weakSolve T β hT h) := by
  rw [objective_error_identity]
  exact div_le_div_of_nonneg_right (coerciveForm_bounds T β hT.le _).1 (by norm_num)

/-- A trial residual in the ENTIRE graph-domain dual. No finite list of
sampled rows is silently substituted for this functional. -/
def residualFunctional (T β : ℝ) (h : WindowPhysical T) (trial : FormDomain T) :
    StrongDual ℝ (FormDomain T) :=
  (innerSL ℝ h).comp (windowInput T) - coerciveForm T β trial

theorem residualFunctional_eq_error (T β : ℝ) (hT : 0 < T)
    (h : WindowPhysical T) (trial v : FormDomain T) :
    residualFunctional T β h trial v =
      coerciveForm T β (weakSolve T β hT h - trial) v := by
  change inner ℝ h (windowInput T v) - coerciveForm T β trial v = _
  rw [map_sub, ContinuousLinearMap.sub_apply, weakSolve_spec]

/-- Coercivity turns a PROVED full-dual residual norm into a graph error bound. -/
theorem error_le_residual (T β : ℝ) (hT : 0 < T)
    (h : WindowPhysical T) (trial : FormDomain T) :
    ‖weakSolve T β hT h - trial‖ ≤ ‖residualFunctional T β h trial‖ := by
  let e := weakSolve T β hT h - trial
  let r := residualFunctional T β h trial
  have hlo := (coerciveForm_bounds T β hT.le e).1
  have hr : r e = coerciveForm T β e e := residualFunctional_eq_error T β hT h trial e
  have hup : r e ≤ ‖r‖ * ‖e‖ := by
    exact (le_abs_self (r e)).trans (by simpa only [Real.norm_eq_abs] using r.le_opNorm e)
  rw [← hr] at hlo
  change ‖e‖ ≤ ‖r‖
  by_cases he : ‖e‖ = 0
  · rw [he]
    exact norm_nonneg r
  · have hePos : 0 < ‖e‖ := lt_of_le_of_ne (norm_nonneg e) (Ne.symm he)
    exact (mul_le_mul_iff_right₀ hePos).1
      (by simpa only [pow_two] using hlo.trans hup)

/-- Physical response, with the original supported odd L2 codomain. -/
def physicalResponse (T β : ℝ) (hT : 0 < T) : WindowPhysical T →L[ℝ] WindowPhysical T :=
  (windowInput T).comp (weakSolve T β hT)

theorem physicalResponse_norm_le (T β : ℝ) (hT : 0 < T) (h : WindowPhysical T) :
    ‖physicalResponse T β hT h‖ ≤ ‖h‖ :=
  (windowInput_norm_le T _).trans (weakSolve_norm_le T β hT h)

theorem physicalResponse_opNorm_le (T β : ℝ) (hT : 0 < T) :
    ‖physicalResponse T β hT‖ ≤ 1 := by
  apply ContinuousLinearMap.opNorm_le_bound _ zero_le_one
  intro h
  simpa only [one_mul] using physicalResponse_norm_le T β hT h

theorem physicalResponse_symmetric (T β : ℝ) (hT : 0 < T) :
    (physicalResponse T β hT).IsSymmetric := by
  intro h k
  change inner ℝ (windowInput T (weakSolve T β hT h)) k =
    inner ℝ h (windowInput T (weakSolve T β hT k))
  rw [real_inner_comm _ k, ← weakSolve_spec T β hT k (weakSolve T β hT h),
    coerciveForm_symmetric, weakSolve_spec]

theorem physicalResponse_nonnegative (T β : ℝ) (hT : 0 < T) (h : WindowPhysical T) :
    0 ≤ inner ℝ h (physicalResponse T β hT h) := by
  change 0 ≤ inner ℝ h (windowInput T (weakSolve T β hT h))
  rw [← weakSolve_spec T β hT h (weakSolve T β hT h)]
  exact (sq_nonneg _).trans (coerciveForm_bounds T β hT.le _).1

/-- Density rules out an invisible physical load. -/
theorem physicalResponse_injective (T β : ℝ) (hT : 0 < T) :
    Function.Injective (physicalResponse T β hT) := by
  intro h k heq
  have hu : weakSolve T β hT h = weakSolve T β hT k :=
    windowInput_injective T heq
  apply physical_pairing_unique T hT h k
  intro w
  rw [← weakSolve_spec T β hT h w, ← weakSolve_spec T β hT k w, hu]

/-- Symmetry and the proved trivial kernel give dense physical range. -/
theorem physicalResponse_range_closure (T β : ℝ) (hT : 0 < T) :
    (physicalResponse T β hT).range.topologicalClosure = ⊤ := by
  rw [Submodule.topologicalClosure_eq_top_iff, Submodule.eq_bot_iff]
  intro h hh
  have hz : physicalResponse T β hT h = 0 := by
    apply ext_inner_left ℝ
    intro k
    rw [inner_zero_right, ← physicalResponse_symmetric T β hT k h]
    exact hh (physicalResponse T β hT k) ⟨k, rfl⟩
  apply physicalResponse_injective T β hT
  simpa only [map_zero] using hz

end GRWTSK.NumberTheory.WeilQuadraticForm.ShiftedSourceSolve
