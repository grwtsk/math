/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.

Source proof candidates; native compilation/kernel/axiom checks remain pending.
The target is genuine Euclidean two-space, not the default sup-norm product.
This is a bounded operator obstruction, not a physical mass-gap theorem. -/
import GRWTSK.Analysis.OperatorTheory.BoundedPortDefect
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Analysis.InnerProductSpace.Adjoint

set_option autoImplicit false

namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.ProperIsometricLiftObstruction

open GRWTSK.Analysis.OperatorTheory.BoundedPortDefect

noncomputable section

/-- Real Hilbert two-space with its Euclidean norm. -/
abbrev Target := EuclideanSpace ℝ (Fin 2)

/-- The inclusion into the first coordinate, as an actual bounded linear map. -/
def lift : ℝ →L[ℝ] Target :=
  (PiLp.continuousLinearEquiv 2 ℝ (fun _ : Fin 2 => ℝ)).symm.toContinuousLinearMap.comp
    (ContinuousLinearMap.single ℝ (fun _ : Fin 2 => ℝ) 0)

/-- The source operator is the identity. -/
def sourceOperator : ℝ →L[ℝ] ℝ := ContinuousLinearMap.id ℝ ℝ

/-- The target operator keeps the first coordinate and kills the second. -/
def targetOperator : Target →L[ℝ] Target :=
  lift.comp (PiLp.proj 2 (fun _ : Fin 2 => ℝ) 0)

@[simp] theorem lift_apply (x : ℝ) : lift x = PiLp.single 2 (0 : Fin 2) x := rfl

@[simp] theorem sourceOperator_apply (x : ℝ) : sourceOperator x = x := rfl

@[simp] theorem targetOperator_apply (y : Target) :
    targetOperator y = PiLp.single 2 (0 : Fin 2) (y 0) := rfl

/-- The source inclusion preserves the Euclidean norm exactly. -/
@[simp] theorem lift_norm (x : ℝ) : ‖lift x‖ = ‖x‖ := by
  simp only [lift_apply, PiLp.norm_single]

theorem lift_isometry : Isometry lift :=
  AddMonoidHomClass.isometry_of_norm lift lift_norm

theorem sourceOperator_selfAdjoint : IsSelfAdjoint sourceOperator := by
  rw [ContinuousLinearMap.isSelfAdjoint_iff_isSymmetric]
  intro x y
  rfl

theorem targetOperator_selfAdjoint : IsSelfAdjoint targetOperator := by
  rw [ContinuousLinearMap.isSelfAdjoint_iff_isSymmetric]
  intro x y
  change ⟪PiLp.single 2 (0 : Fin 2) (x 0), y⟫_ℝ =
    ⟪x, PiLp.single 2 (0 : Fin 2) (y 0)⟫_ℝ
  simp [EuclideanSpace.inner_single_left, EuclideanSpace.inner_single_right, mul_comm]

/-- There is exact intertwining, with no residual or approximation hypothesis. -/
theorem exact_intertwining : Intertwines lift sourceOperator targetOperator := by
  change lift.comp sourceOperator = targetOperator.comp lift
  ext x i
  simp [ContinuousLinearMap.comp_apply]

theorem defect_eq_zero : defect lift sourceOperator targetOperator = 0 :=
  (intertwines_iff_defect_eq_zero lift sourceOperator targetOperator).mp exact_intertwining

/-- The exact quantitative source premise consumed by the existing theorem. -/
theorem unit_source_gap (x : ℝ) :
    (1 : ℝ) * ‖x‖ ≤ ‖(lift.comp sourceOperator) x‖ := by
  simp [ContinuousLinearMap.comp_apply]

/-- The original defect theorem correctly gives injectivity of the transported
composite. It makes no assertion that the whole target operator is injective. -/
theorem transported_injective : Function.Injective (targetOperator.comp lift) := by
  apply injective_of_defect_lt_gap lift sourceOperator targetOperator unit_source_gap
  rw [defect_eq_zero, norm_zero]
  exact zero_lt_one

/-- A unit vector in the complementary coordinate. -/
def kernelWitness : Target := PiLp.single 2 (1 : Fin 2) (1 : ℝ)

@[simp] theorem kernelWitness_norm : ‖kernelWitness‖ = 1 := by
  simp [kernelWitness]

theorem kernelWitness_ne_zero : kernelWitness ≠ 0 := by
  intro h
  have hnorm := congrArg norm h
  simpa using hnorm

@[simp] theorem targetOperator_kernelWitness : targetOperator kernelWitness = 0 := by
  simp [kernelWitness]

theorem targetOperator_not_injective : ¬ Function.Injective targetOperator := by
  intro hinj
  apply kernelWitness_ne_zero
  apply hinj
  simp

/-- No positive norm lower bound can hold on all target states. -/
theorem no_positive_target_lower_bound :
    ¬ ∃ γ : ℝ, 0 < γ ∧ ∀ y : Target, γ * ‖y‖ ≤ ‖targetOperator y‖ := by
  rintro ⟨γ, hγ, hbound⟩
  have h := hbound kernelWitness
  simp only [kernelWitness_norm, targetOperator_kernelWitness, norm_zero, mul_one] at h
  exact (not_le_of_gt hγ) h

/-- The isometric inclusion is proper: the complementary unit vector is absent. -/
theorem lift_not_surjective : ¬ Function.Surjective lift := by
  intro honto
  obtain ⟨x, hx⟩ := honto kernelWitness
  have hsecond := congrArg (fun y : Target => y (1 : Fin 2)) hx
  simpa [kernelWitness] using hsecond

end

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.ProperIsometricLiftObstruction
