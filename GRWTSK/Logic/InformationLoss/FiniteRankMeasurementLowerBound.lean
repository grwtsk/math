/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No root import.
-/
import GRWTSK.Logic.InformationLoss.FiniteRankMeasurementRange

/-!
# Finrank lower bound for added linear measurements

Joint injectivity forces the old invisible subspace to embed in the
additional measurement target. Consequently its finrank cannot exceed
the finrank of that target. This is a necessary capacity bound, not a
construction attaining equality or a stability theorem.
-/
set_option autoImplicit false
noncomputable section

universe u v w
namespace GRWTSK.Logic.InformationLoss

variable {K : Type*} [Field K]
variable {V : Type u} [AddCommGroup V] [Module K V]
variable {Y : Type v} [AddCommGroup Y] [Module K Y]
variable {W : Type w} [AddCommGroup W] [Module K W]

/-- The dimension of previously invisible source directions cannot
exceed the dimension of the output of an injective added measurement. -/
theorem old_kernel_finrank_le_extra_finrank
    (P : V →ₗ[K] Y) (A : V →ₗ[K] W)
    (hpair : Function.Injective (pairedLinearObservation P A)) :
    Module.finrank K P.ker ≤ Module.finrank K W := by
  have heq := finrank_extra_range_eq_old_kernel P A hpair
  calc
    Module.finrank K P.ker =
        Module.finrank K (extraOnOldKernel P A).range := heq.symm
    _ ≤ Module.finrank K W := Submodule.finrank_le _

end GRWTSK.Logic.InformationLoss
