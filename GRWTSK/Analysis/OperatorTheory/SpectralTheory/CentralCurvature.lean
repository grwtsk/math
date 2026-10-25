/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.

A bounded algebraic supplier for the noncommutative Yang--Mills
constant-central-curvature interface. This does not construct a torus,
projective module, compatible connection, trace, or Yang--Mills action.
-/
import Mathlib.Algebra.Module.Basic

set_option autoImplicit false

namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.CentralCurvature

/-- A constant integer-scalar endomorphism commutes with every additive
endomorphism. The differential-geometric application additionally requires
that the connection and its curvature have the stipulated types and laws. -/
theorem integer_central_curvature_commutes
    {E : Type*} [AddCommGroup E]
    (connection : E →+ E) (c : ℤ) :
    (∀ x : E, connection (c • x) = c • connection x) := by
  intro x
  exact map_zsmul connection c x

/-- Pointwise commutator of an additive map with integer-central curvature
vanishes. This is only the algebraic supplier for covariant constancy. -/
theorem integer_central_curvature_commutator_zero
    {E : Type*} [AddCommGroup E]
    (connection : E →+ E) (c : ℤ) (x : E) :
    connection (c • x) - c • connection x = 0 := by
  rw [integer_central_curvature_commutes connection c x]
  exact sub_self _

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.CentralCurvature
