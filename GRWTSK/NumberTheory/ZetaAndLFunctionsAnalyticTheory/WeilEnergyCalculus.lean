/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilTranslationEnergyDomain
import Mathlib.Analysis.InnerProductSpace.Calculus
import Mathlib.Analysis.Calculus.Gradient.Basic
import Mathlib.Geometry.Manifold.IsManifold.Basic

/-!
# Complete Hilbert models and correctly typed energy differentials

The physical L2 space, weighted energy space and maximal graph domain are
complete real Hilbert spaces. Their manifold structures use the standard
single global identity chart; no finite-dimensional Jacobian is substituted
for a continuous linear map. In particular the graph model uses WithLp 2.

For each BOUNDED map A the half squared norm has differential
h |-> inner (A x) (A h), gradient A* A x, and constant gradient derivative
A* A. Applying this to a finite-lag cutoff is valid on physical L2.
Applying it to the full output is valid on the complete graph domain.
It does NOT assert that the unbounded full energy has an ambient-L2
gradient at every form-domain point.

The metric is the constant Hilbert inner product; its Riesz map is an
actual continuous linear equivalence. Ordinary curl, differentiability
of sharp lag indicators, normalized-source sphere charts, nonlinear chart
changes of the energy measure, and self-adjoint source association are
not consequences of these statements.

SOURCE_PROOF_CANDIDATE. Elaboration, exact types, fresh kernel replay,
transitive axiom audit and independent review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory
open scoped Topology Manifold

namespace GRWTSK.NumberTheory.WeilQuadraticForm.EnergyCalculus

open TranslationCutoffs TranslationEnergyDomain

section BoundedEnergy

variable {H E : Type*}
variable [NormedAddCommGroup H] [InnerProductSpace ℝ H] [CompleteSpace H]
variable [NormedAddCommGroup E] [InnerProductSpace ℝ E] [CompleteSpace E]

/-- Half squared energy of an actual bounded linear observation. -/
def halfEnergy (A : H →L[ℝ] E) (x : H) : ℝ := ‖A x‖ ^ 2 / 2

theorem halfEnergy_contDiff (A : H →L[ℝ] E) : ContDiff ℝ ∞ (halfEnergy A) := by
  exact (A.contDiff.norm_sq ℝ).div_const 2

theorem halfEnergy_hasFDerivAt (A : H →L[ℝ] E) (x : H) :
    HasFDerivAt (halfEnergy A) ((innerSL ℝ (A x)).comp A) x := by
  have h := A.hasFDerivAt.norm_sq.const_smul (1 / 2 : ℝ)
  convert h using 1
  · funext y
    simp only [halfEnergy, smul_eq_mul]
    ring
  · simp only [smul_smul]
    norm_num

theorem halfEnergy_fderiv_apply (A : H →L[ℝ] E) (x v : H) :
    fderiv ℝ (halfEnergy A) x v = inner ℝ (A x) (A v) := by
  rw [(halfEnergy_hasFDerivAt A x).fderiv]
  rfl

/-- The gradient identity is relative to the stated ambient Hilbert metric. -/
theorem halfEnergy_gradient_pairing (A : H →L[ℝ] E) (x v : H) :
    fderiv ℝ (halfEnergy A) x v = inner ℝ (A.adjoint (A x)) v := by
  rw [halfEnergy_fderiv_apply]
  exact (ContinuousLinearMap.adjoint_inner_left A v (A x)).symm

def energyGradient (A : H →L[ℝ] E) : H →L[ℝ] H := A.adjoint.comp A

theorem energyGradient_hasFDerivAt (A : H →L[ℝ] E) (x : H) :
    HasFDerivAt (energyGradient A) (A.adjoint.comp A) x :=
  (A.adjoint.comp A).hasFDerivAt

/-- The Hessian pairing is a bilinear form, not a scalar partial derivative. -/
theorem energyHessian_pairing (A : H →L[ℝ] E) (v w : H) :
    inner ℝ ((A.adjoint.comp A) v) w = inner ℝ (A v) (A w) := by
  exact ContinuousLinearMap.adjoint_inner_left A w (A v)

theorem energyHessian_nonnegative (A : H →L[ℝ] E) (v : H) :
    0 ≤ inner ℝ ((A.adjoint.comp A) v) v := by
  rw [energyHessian_pairing, real_inner_self_eq_norm_sq]
  positivity

end BoundedEnergy

/-- Existing identity-chart manifold instance on the physical space. -/
theorem physical_manifold :
    IsManifold (modelWithCornersSelf ℝ Physical) ∞ Physical := inferInstance

theorem energy_manifold :
    IsManifold (modelWithCornersSelf ℝ Energy) ∞ Energy := inferInstance

theorem formDomain_manifold (T : ℝ) :
    IsManifold (modelWithCornersSelf ℝ (FormDomain T)) ∞ (FormDomain T) := inferInstance

/-- Completeness refers to the source graph Hilbert norm, not inherited L2. -/
theorem formDomain_complete (T : ℝ) : CompleteSpace (FormDomain T) := inferInstance

/-- A constant strong Hilbert metric in the global identity chart. -/
def formMetric (T : ℝ) (_base v w : FormDomain T) : ℝ := inner ℝ v w

theorem formMetric_diag (T : ℝ) (x v : FormDomain T) :
    formMetric T x v v = ‖v‖ ^ 2 := real_inner_self_eq_norm_sq v

theorem formMetric_definite (T : ℝ) (x v : FormDomain T) :
    formMetric T x v v = 0 ↔ v = 0 := by
  rw [formMetric_diag, sq_eq_zero_iff, norm_eq_zero]

/-- Surjectivity of the metric-to-covector map is explicit: this is a
strong Hilbert metric, not a weak L2 metric on the graph domain. -/
def metricRieszEquiv (T : ℝ) :
    FormDomain T ≃L[ℝ] StrongDual ℝ (FormDomain T) :=
  (InnerProductSpace.toDual ℝ (FormDomain T)).toContinuousLinearEquiv

theorem input_contDiff (T : ℝ) : ContDiff ℝ ∞ (input T) := (input T).contDiff

theorem output_contDiff (T : ℝ) : ContDiff ℝ ∞ (output T) := (output T).contDiff

theorem cutoff_fderiv (m : ℕ) (f : Physical) :
    fderiv ℝ (cutoff m) f = cutoff m := (cutoff m).hasFDerivAt.fderiv

theorem cutoff_second_fderiv (m : ℕ) (f : Physical) :
    fderiv ℝ (fun g : Physical => fderiv ℝ (cutoff m) g) f = 0 := by
  have h : (fun g : Physical => fderiv ℝ (cutoff m) g) = fun _ => cutoff m := by
    funext g
    exact cutoff_fderiv m g
  rw [h]
  simp

/-- Full gamma energy is a smooth quadratic function in the COMPLETE
form-domain chart. No ambient-L2 differentiability is inferred. -/
theorem fullGamma_contDiff (T : ℝ) :
    ContDiff ℝ ∞ (fun z : FormDomain T => OddHighComplement.oddArchimedeanEnergy (input T z)) := by
  have heq : (fun z : FormDomain T => OddHighComplement.oddArchimedeanEnergy (input T z)) =
      fun z => ‖output T z‖ ^ 2 := by
    funext z
    exact (form_output_norm_sq T z).symm
  rw [heq]
  exact (output T).contDiff.norm_sq ℝ

theorem fullGamma_halfEnergy (T : ℝ) (z : FormDomain T) :
    halfEnergy (output T) z = OddHighComplement.oddArchimedeanEnergy (input T z) / 2 := by
  rw [halfEnergy, form_output_norm_sq]

end GRWTSK.NumberTheory.WeilQuadraticForm.EnergyCalculus
