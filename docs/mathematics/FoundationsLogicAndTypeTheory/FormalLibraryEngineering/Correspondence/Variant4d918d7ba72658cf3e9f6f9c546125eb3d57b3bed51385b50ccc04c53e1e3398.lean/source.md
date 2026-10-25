# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Correspondence.Variant4d918d7ba72658cf3e9f6f9c546125eb3d57b3bed51385b50ccc04c53e1e3398

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `31223269736b43050c347319b44699ad325678e6` · SHA-256 `4d918d7ba72658cf3e9f6f9c546125eb3d57b3bed51385b50ccc04c53e1e3398`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BitMatrix.Formal
import BitMatrix.Runtime.Semantics
import Mathlib.Tactic

namespace BitMatrix.Tests.Correspondence

open BitMatrix.Carrier

private def identityCantor : DesignatedCantorRepresentation where
  Scalar := BitStream
  theta := Equiv.refl BitStream

private def falseBaseline : BooleanState Nat := fun _ => false

example (target : BooleanState Nat) :
    baselineEquiv (Equiv.refl Nat) identityCantor falseBaseline
      ((baselineEquiv (Equiv.refl Nat) identityCantor falseBaseline).symm target) =
        target :=
  (baselineEquiv (Equiv.refl Nat) identityCantor falseBaseline).apply_symm_apply target

example : BitMatrix.Codec.lengthPrefixDigits 4 5 =
    [true, false, true, false] := by
  native_decide

example : BitMatrix.Codec.byteDigitsMSB 128 =
    [true, false, false, false, false, false, false, false] := by
  native_decide

example (vertex : BitMatrix.Runtime.Semantics.TriangleVertex) :
    (BitMatrix.Runtime.Semantics.triangleSuccessor ^ 3) vertex = vertex :=
  BitMatrix.Runtime.Semantics.triangleSuccessor_third_power vertex

example : BitMatrix.Configuration.Schema003.Valid
    BitMatrix.Configuration.Schema003.policy :=
  BitMatrix.Configuration.Schema003.policy_valid

example (theory : BitMatrix.Rhetorical.InvariantTheory) :
    let presentations := BitMatrix.Rhetorical.fourModePresentation theory
    presentations.formalHypotactic.semanticValue =
      presentations.formalParatactic.semanticValue := by
  simpa using
    (BitMatrix.Rhetorical.FourModePresentation.semantic_invariance
      (BitMatrix.Rhetorical.fourModePresentation theory)).1

end BitMatrix.Tests.Correspondence
```
