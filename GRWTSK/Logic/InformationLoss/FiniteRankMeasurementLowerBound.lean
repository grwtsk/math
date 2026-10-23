/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No root import.
-/
import GRWTSK.Logic.InformationLoss.FiniteRankMeasurementRange
import Mathlib.LinearAlgebra.Dimension.StrongRankCondition

/-!
# Finrank lower bound for added linear measurements

Joint injectivity forces the old invisible subspace to embed in the
additional measurement target. When that target is finite-dimensional,
its natural-number finrank bounds the old kernel's finrank. This is a
necessary capacity bound, not a construction attaining equality or a
stability theorem.

The target hypothesis is essential: for V = K = Q, P = 0 and the constants
embedding A : Q -> Q[X], the paired observation is injective but the two
natural-number finranks are 1 and 0, respectively. Infinite-dimensional
targets require a cardinal-rank statement instead of this finrank bound.
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
exceed the finite dimension of the target of an injective added measurement. -/
theorem old_kernel_finrank_le_extra_finrank
    [FiniteDimensional K W]
    (P : V →ₗ[K] Y) (A : V →ₗ[K] W)
    (hpair : Function.Injective (pairedLinearObservation P A)) :
    Module.finrank K P.ker ≤ Module.finrank K W := by
  exact LinearMap.finrank_le_finrank_of_injective
    (f := extraOnOldKernel P A) (extraOnOldKernel_injective P A hpair)

end GRWTSK.Logic.InformationLoss
