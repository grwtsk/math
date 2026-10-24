/-
Copyright (c) 2026 grwtsk contributors. MIT.
Research direction: grwtsk contributors. Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Optional mathematical leaf.
-/
import GRWTSK.Algebra.LinearAlgebra.BilinearAndQuadraticForms.WeightedFiniteReflection

/-!
# Optional doubled rational reflection

Both channels of the direct sum are retained. This mathematical construction
does not enable a runtime adapter, flatten independent fibers or modify the
diffuser-free deterministic core. No real/complex metric or RH is selected.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Algebra.LinearAlgebra.WeightedFiniteReflection.OptionalDoubled

variable {ι : Type*} [Fintype ι]

def doubledPairing (p : Weights ι) (z w : Vec ι × Vec ι) : ℚ :=
  pairing p z.1 w.1 + pairing p z.2 w.2

def lift (p : Weights ι) (b : ι → Bool) (z : Vec ι × Vec ι) : Vec ι × Vec ι :=
  (step p b z.2, inverseStep p b z.1)

theorem lift_selfAdjoint (p : Weights ι) (b : ι → Bool) (z w : Vec ι × Vec ι) :
    doubledPairing p (lift p b z) w = doubledPairing p z (lift p b w) := by
  simp only [doubledPairing, lift]
  rw [step_adjoint_inverse, inverseStep_adjoint]
  ring

theorem lift_involutive (p : Weights ι) (b : ι → Bool) :
    Function.Involutive (lift p b) := by
  intro z
  apply Prod.ext
  · change step p b (inverseStep p b z.1) = z.1
    exact step_rightInverse p b z.1
  · change inverseStep p b (step p b z.2) = z.2
    exact step_leftInverse p b z.2

/-- Law 14: an optional self-adjoint involution on the full doubled carrier. -/
theorem lift_selfAdjoint_and_involutive (p : Weights ι) (b : ι → Bool) :
    (∀ z w : Vec ι × Vec ι,
      doubledPairing p (lift p b z) w = doubledPairing p z (lift p b w)) ∧
      Function.Involutive (lift p b) :=
  ⟨lift_selfAdjoint p b, lift_involutive p b⟩

end GRWTSK.Algebra.LinearAlgebra.WeightedFiniteReflection.OptionalDoubled
