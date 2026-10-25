/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No root import.
-/
import GRWTSK.Logic.InformationLoss.KernelRetractionResidual

/-!
# Kernel splitting from an explicitly supplied complementary chart

Instead of assuming a retraction, supply a linear coordinate chart
V ≃ₗ[K] ker P × C whose first coordinate agrees with kernel inclusion.
The first coordinate of the inverse chart then yields a retraction.
No such chart is constructed merely from finiteness, and no topology,
boundedness, computational algorithm or RH consequence is asserted.
-/
set_option autoImplicit false
noncomputable section

universe u v w
namespace GRWTSK.Logic.InformationLoss

variable {K : Type*} [Field K]
variable {V : Type u} [AddCommGroup V] [Module K V]
variable {Y : Type v} [AddCommGroup Y] [Module K Y]
variable {C : Type w} [AddCommGroup C] [Module K C]

/-- The kernel coordinate of a supplied linear chart. -/
def kernelCoordinateOfChart
    (P : V →ₗ[K] Y)
    (chart : V ≃ₗ[K] (P.ker × C)) : V →ₗ[K] P.ker :=
  LinearMap.fst K P.ker C |>.comp chart.toLinearMap

/-- If the chart sends an included kernel vector to its own first
coordinate, the resulting kernel-coordinate map retracts inclusion. -/
theorem kernelCoordinateOfChart_retracts
    (P : V →ₗ[K] Y)
    (chart : V ≃ₗ[K] (P.ker × C))
    (hfirst : ∀ x : P.ker, (chart x.1).1 = x) :
    ∀ x : P.ker, kernelCoordinateOfChart P chart x.1 = x := by
  intro x
  exact hfirst x

/-- An exact chart whose first coordinate matches kernel inclusion
supplies a sharp paired observation. -/
theorem sharp_joint_of_kernel_chart
    (P : V →ₗ[K] Y)
    (chart : V ≃ₗ[K] (P.ker × C))
    (hfirst : ∀ x : P.ker, (chart x.1).1 = x) :
    Function.Injective (pairedLinearObservation P
      (kernelCoordinateOfChart P chart)) := by
  exact sharp_extra_of_kernel_retraction P
    (kernelCoordinateOfChart P chart)
    (kernelCoordinateOfChart_retracts P chart hfirst)

end GRWTSK.Logic.InformationLoss
