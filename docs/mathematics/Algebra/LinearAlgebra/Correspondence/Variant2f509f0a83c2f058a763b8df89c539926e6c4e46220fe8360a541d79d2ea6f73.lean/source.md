# Complete source: GRWTSK.Algebra.LinearAlgebra.Correspondence.Variant2f509f0a83c2f058a763b8df89c539926e6c4e46220fe8360a541d79d2ea6f73

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e70fec4d74d874029ed2da02737e9833f4a8cc10` · SHA-256 `2f509f0a83c2f058a763b8df89c539926e6c4e46220fe8360a541d79d2ea6f73`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BitMatrix.Formal
import BitMatrix.Codec.Profiles
import BitMatrix.Geometry.CarrierGrid
import BitMatrix.Runtime.Correspondence
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

example :
    BitMatrix.Codec.Profiles.normalizeLineEndings
        ['A', '\r', '\n', 'B', '\r', 'C'] =
      ['A', '\n', 'B', '\n', 'C'] := by
  native_decide

example :
    BitMatrix.Codec.Profiles.encodeRustProfile 8 ['A', '\n', 'B'] =
      BitMatrix.Codec.Profiles.encodeJavaScriptProfile 8 ['A', '\n', 'B'] := by
  native_decide

example :
    BitMatrix.Codec.Profiles.encodeRustProfile 8 ['A', '\r', '\n', 'B'] ≠
      BitMatrix.Codec.Profiles.encodeJavaScriptProfile 8
        ['A', '\r', '\n', 'B'] := by
  native_decide

example : ¬ BitMatrix.Codec.RepresentableLength 1
    (BitMatrix.Codec.Profiles.profilePayload
      .rustBytePreserving ['A', 'A']).bytes.size := by
  native_decide

example {size : Nat} {coordinate : ℚ} {cell : Fin size}
    (origin : BitMatrix.Geometry.CarrierGrid.AxisOriginMatches
      size coordinate cell) :
    BitMatrix.Geometry.CarrierGrid.AxisSupports size coordinate cell :=
  BitMatrix.Geometry.CarrierGrid.axisOriginMatches_implies_support origin

example {size : Nat}
    {point : BitMatrix.Geometry.CarrierGrid.NormalizedPoint}
    {cell : BitMatrix.Runtime.Semantics.GridCell size size}
    (origin : BitMatrix.Geometry.CarrierGrid.OriginMatches size point cell) :
    BitMatrix.Geometry.CarrierGrid.ExactCarrier size point cell :=
  BitMatrix.Geometry.CarrierGrid.originMatches_implies_exactCarrier origin

example :
    BitMatrix.Geometry.CarrierGrid.carrierMultiplicity 5
      { x := BitMatrix.Geometry.CarrierGrid.center,
        y := BitMatrix.Geometry.CarrierGrid.center } = 1 := by
  simpa using
    BitMatrix.Geometry.CarrierGrid.odd_center_carrierMultiplicity 2

example :
    BitMatrix.Geometry.CarrierGrid.carrierMultiplicity 4
      { x := BitMatrix.Geometry.CarrierGrid.center,
        y := BitMatrix.Geometry.CarrierGrid.center } = 4 := by
  simpa using
    BitMatrix.Geometry.CarrierGrid.even_center_carrierMultiplicity 1

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

example {R V : Type*} [Ring R] [AddCommGroup V] [Module R V]
    (transformation : V →ₗ[R] V) (point : V) :
    point ∈ BitMatrix.Runtime.Semantics.FixedSet transformation ↔
      point ∈ LinearMap.ker (LinearMap.id - transformation) :=
  BitMatrix.Runtime.Semantics.mem_fixedSet_linear_iff_mem_ker_id_sub
    transformation point

example {rows columns : Nat}
    (record : BitMatrix.Runtime.Correspondence.GridCellRecord rows columns) :
    (BitMatrix.Runtime.Correspondence.abstractGridCell record).rowMajorIndex =
      record.index :=
  BitMatrix.Runtime.Correspondence.abstractGridCell_rowMajorIndex record

example {size carrierCount : Nat}
    (record : BitMatrix.Runtime.Correspondence.CarrierStateRecord
      size carrierCount) :
    carrierCount = BitMatrix.Geometry.CarrierGrid.carrierMultiplicity
      size record.point :=
  BitMatrix.Runtime.Correspondence.carrierStateRecord_count_eq_carrierMultiplicity
    record

example (profile : BitMatrix.Codec.Profiles.RuntimeCodecProfile)
    (prefixWidth : Nat) (source : List Char)
    (representable : BitMatrix.Codec.RepresentableLength prefixWidth
      (BitMatrix.Codec.Profiles.profilePayload profile source).bytes.size) :
    BitMatrix.Runtime.Correspondence.codecDocumentRepresentation.represents
      (BitMatrix.Runtime.Correspondence.executeCodecInvocation
        profile prefixWidth source representable)
      (BitMatrix.Codec.Profiles.encodeWithProfile
        profile prefixWidth source) :=
  BitMatrix.Runtime.Correspondence.executeCodecInvocation_represents
    profile prefixWidth source representable

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
