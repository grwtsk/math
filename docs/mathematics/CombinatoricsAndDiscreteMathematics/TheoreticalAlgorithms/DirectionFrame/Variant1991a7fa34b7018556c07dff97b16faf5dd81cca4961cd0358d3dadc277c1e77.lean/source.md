# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DirectionFrame.Variant1991a7fa34b7018556c07dff97b16faf5dd81cca4961cd0358d3dadc277c1e77

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `77935d3a388211364ae5f65d1cf6352a5e42c005` · SHA-256 `91b22772445957956d815610ee32d429f8d3c39ac7fe72bfc516d6e972f06397`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DirectionFrame.Variantb70fa1288e1bc8f34d4cf4c474774fae321221fb71f346cdf39d45c4060973d3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b70fa1288e1bc8f34d4cf4c474774fae321221fb71f346cdf39d45c4060973d3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.DirectionFrame.Variantb70fa1288e1bc8f34d4cf4c474774fae321221fb71f346cdf39d45c4060973d3","mathematical_subject":"Computation.DataStructures","original_sha256":"b70fa1288e1bc8f34d4cf4c474774fae321221fb71f346cdf39d45c4060973d3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Cube/PrismaticGeometry/DirectionFrame.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Cube.ListTools

/-!
# Null-centered direction frames

Dimension-parametric generalization of the binary directed edge case. A
direction frame is finite syntax/data: it does not construct a sphere, a
prism, a prismatic site, or an analytic object unless a realization
certificate is supplied. Finite geometry syntax is not prismatic theorem
authority.

Object index: `DirectionFrame`, `OppositeDirectionPair`, `DirectionOrbit`,
`binaryDirectionFrame`, `binary_opposite_involutive`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DirectionFrame.Variantb70fa1288e1bc8f34d4cf4c474774fae321221fb71f346cdf39d45c4060973d3

universe u

namespace Boolean
namespace Cube
namespace PrismaticGeometry

/--
A null-centered direction frame: a finite dimension tag, a direction type
with an opposite involution, polarity grades, and a dyadic/rational phase
coordinate around the null point. The `directionIndexSound` field is
bookkeeping metadata for the indexing map.
-/
structure DirectionFrame where
  dim : Nat
  Direction : Type u
  directionIndex : Direction → Nat
  directionIndexSound : Prop
  directionIndexProof : directionIndexSound

  nullLabel : String

  opposite : Direction → Direction
  opposite_involutive :
    ∀ d : Direction, opposite (opposite d) = d

  polarity : Direction → Int

  /-- A finite denominator for full rotation around the null point. For the
  binary circle this is 2 half-turns; for an m-gon it is m arcs. -/
  fullTurnDenominator : Nat
  fullTurnPositive : fullTurnDenominator > 0

  /-- Directional phase coordinate as an integer numerator modulo
  `fullTurnDenominator`. This is syntax/metadata unless interpreted by a
  phase realization. -/
  phaseNumerator : Direction → Int

/-- A pair of opposite directions in a frame. -/
structure OppositeDirectionPair (F : DirectionFrame) where
  forward : F.Direction
  backward : F.Direction
  backward_eq_opposite : backward = F.opposite forward

/-- A finite orbit of directions cycling around the null point. The cycling
claim is a supplied proof field. -/
structure DirectionOrbit (F : DirectionFrame) where
  directions : List F.Direction
  cyclesAroundNull : Prop
  cyclesAroundNullProof : cyclesAroundNull

/-! ## Binary specialization -/

/-- The two binary directions `[0,1]` and `[1,0]`. -/
inductive BinaryDirection where
  | zeroToOne
  | oneToZero
deriving Repr, DecidableEq

/-- The dimension-1 binary direction frame: two opposite half-turns around
the balanced binary null point. -/
def binaryDirectionFrame : DirectionFrame where
  dim := 1
  Direction := BinaryDirection
  directionIndex := fun d =>
    match d with
    | .zeroToOne => 0
    | .oneToZero => 1
  directionIndexSound := True
  directionIndexProof := trivial
  nullLabel := "balanced binary null point"
  opposite := fun d =>
    match d with
    | .zeroToOne => .oneToZero
    | .oneToZero => .zeroToOne
  opposite_involutive := by
    intro d
    cases d <;> rfl
  polarity := fun d =>
    match d with
    | .zeroToOne => 1
    | .oneToZero => -1
  fullTurnDenominator := 2
  fullTurnPositive := by decide
  phaseNumerator := fun d =>
    match d with
    | .zeroToOne => 0
    | .oneToZero => 1

/-- The binary opposite involution, proved directly. -/
theorem binary_opposite_involutive :
    ∀ d : binaryDirectionFrame.Direction,
      binaryDirectionFrame.opposite
        (binaryDirectionFrame.opposite d) = d :=
  binaryDirectionFrame.opposite_involutive

/-- The binary opposite pair `[0,1]` / `[1,0]`. -/
def binaryOppositeDirectionPair :
    OppositeDirectionPair binaryDirectionFrame where
  forward := BinaryDirection.zeroToOne
  backward := BinaryDirection.oneToZero
  backward_eq_opposite := rfl

end PrismaticGeometry
end Cube
end Boolean
```
