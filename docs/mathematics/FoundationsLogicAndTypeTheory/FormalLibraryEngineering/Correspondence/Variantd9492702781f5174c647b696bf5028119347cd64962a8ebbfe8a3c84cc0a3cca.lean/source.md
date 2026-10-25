# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Correspondence.Variantd9492702781f5174c647b696bf5028119347cd64962a8ebbfe8a3c84cc0a3cca

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b09983cb38b790c7b9baa3e09e9bc020b9de21e0` · SHA-256 `d9492702781f5174c647b696bf5028119347cd64962a8ebbfe8a3c84cc0a3cca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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

private def natAddressEnumeration : AddressEnumeration Nat where
  enumerate := Equiv.refl Nat
  code := id
  codeInjective := Function.injective_id
  canonicalOrder := by
    intro left right
    rfl

example (target : BooleanState Nat) :
    baselineEquiv natAddressEnumeration.enumerate identityCantor falseBaseline
      ((baselineEquiv natAddressEnumeration.enumerate
        identityCantor falseBaseline).symm target) =
        target :=
  (baselineEquiv natAddressEnumeration.enumerate
    identityCantor falseBaseline).apply_symm_apply target

example (scalar : identityCantor.Scalar) :
    distinguishedInterpreter natAddressEnumeration.enumerate
      identityCantor falseBaseline scalar = falseBaseline ↔
        scalar = zeroScalar identityCantor :=
  distinguishedInterpreter_eq_baseline_iff
    natAddressEnumeration.enumerate identityCantor falseBaseline scalar

example : BitMatrix.Codec.lengthPrefixDigits 4 5 =
    [true, false, true, false] := by
  native_decide

example : BitMatrix.Codec.byteDigitsMSB 128 =
    [true, false, false, false, false, false, false, false] := by
  native_decide

example (vertex : BitMatrix.Runtime.Semantics.TriangleVertex) :
    (BitMatrix.Runtime.Semantics.triangleSuccessor ^ 3) vertex = vertex :=
  BitMatrix.Runtime.Semantics.triangleSuccessor_third_power vertex

example (point : Nat) :
    BitMatrix.Runtime.Semantics.firstProjection
      (BitMatrix.Runtime.Semantics.diagonalSection point) = point :=
  BitMatrix.Runtime.Semantics.firstProjection_diagonalSection point

example :
    (BitMatrix.Runtime.Semantics.firstProjection :
      BitMatrix.Runtime.Semantics.CarrierProduct Nat → Nat) ∘
        BitMatrix.Runtime.Semantics.diagonalSection = id :=
  BitMatrix.Runtime.Semantics.firstProjection_comp_diagonalSection

example (dynamics : Nat → Nat) (point : Nat) :
    point ∈ BitMatrix.Runtime.Semantics.FixedSet dynamics ↔
      BitMatrix.Runtime.Semantics.LiesOnDiagonal
        (BitMatrix.Runtime.Semantics.graphPoint dynamics point) :=
  BitMatrix.Runtime.Semantics.mem_fixedSet_iff_graphPoint_liesOnDiagonal
    dynamics point

example (dynamics : Nat → Nat) :
    BitMatrix.Runtime.Semantics.FixedPoint dynamics ≃
      BitMatrix.Runtime.Semantics.GraphDiagonalIntersection dynamics :=
  BitMatrix.Runtime.Semantics.fixedPointEquivGraphDiagonalIntersection dynamics

example :
    BitMatrix.Runtime.Semantics.FixedSet (id : Nat → Nat) = Set.univ :=
  BitMatrix.Runtime.Semantics.fixedSet_identity

example (dynamics : Nat → Nat) (equilibrium point : Nat)
    (hfixedSet :
      BitMatrix.Runtime.Semantics.FixedSet dynamics = {equilibrium})
    (hpoint :
      point ∈ BitMatrix.Runtime.Semantics.FixedSet dynamics) :
    point = equilibrium :=
  BitMatrix.Runtime.Semantics.fixedPoint_eq_of_fixedSet_eq_singleton
    hfixedSet hpoint

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

example (theory : BitMatrix.Rhetorical.InvariantTheory) :
    let presentations := BitMatrix.Rhetorical.fourModePresentation theory
    BitMatrix.Rhetorical.classify BitMatrix.Rhetorical.origin
        presentations.formalHypotactic.coordinate =
      .formalHypotaxis ∧
    BitMatrix.Rhetorical.classify BitMatrix.Rhetorical.origin
        presentations.formalParatactic.coordinate =
      .formalParataxis ∧
    BitMatrix.Rhetorical.classify BitMatrix.Rhetorical.origin
        presentations.pragmaticParatactic.coordinate =
      .pragmaticParataxis ∧
    BitMatrix.Rhetorical.classify BitMatrix.Rhetorical.origin
        presentations.pragmaticHypotactic.coordinate =
      .pragmaticHypotaxis := by
  rcases BitMatrix.Rhetorical.four_mode_coverage theory with
    ⟨_, _, _, _, formalHypotactic, formalParatactic,
      pragmaticParatactic, pragmaticHypotactic, _⟩
  exact ⟨formalHypotactic, formalParatactic,
    pragmaticParatactic, pragmaticHypotactic⟩

end BitMatrix.Tests.Correspondence
```
