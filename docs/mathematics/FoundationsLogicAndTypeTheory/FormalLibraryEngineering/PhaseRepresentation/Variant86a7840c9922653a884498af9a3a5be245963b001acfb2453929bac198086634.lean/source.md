# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PhaseRepresentation.Variant86a7840c9922653a884498af9a3a5be245963b001acfb2453929bac198086634

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5eebe8db36b6acc52f0e700717b5653b4d0eb933` · SHA-256 `86a7840c9922653a884498af9a3a5be245963b001acfb2453929bac198086634`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
