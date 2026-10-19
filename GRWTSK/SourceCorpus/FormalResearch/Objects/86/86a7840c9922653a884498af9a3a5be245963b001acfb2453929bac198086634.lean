import Mathematics.SemiLocalDefect.ResidueDeflection.Phase
import Mathematics.SemiLocalDefect.Hardy.BlockDecomposition

/-!
# Operator representation of the residue phase

The two-element phase acts through a proof-bearing unitary representation.
This operator channel is separate from positive amplitude transport.
-/

namespace Mathematics.SemiLocalDefect.ResidueDeflection

structure PhaseOperatorRepresentation
    (model : OperatorModel) where
  operations : Hardy.OperatorComposition model
  operator : Phase3 → model.Operator
  identity_operator :
    operator .identity = model.identity
  multiplication :
    ∀ left right,
      operator (Phase3.mul left right) =
        operations.compose
          (operator left)
          (operator right)
  reflection_selfAdjoint :
    model.SelfAdjoint (operator .reflect)
  reflection_left_unitary :
    operations.compose
        (operations.adjoint
          (operator .reflect))
        (operator .reflect) =
      model.identity
  reflection_right_unitary :
    operations.compose
        (operator .reflect)
        (operations.adjoint
          (operator .reflect)) =
      model.identity

end Mathematics.SemiLocalDefect.ResidueDeflection
