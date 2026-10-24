# Complete source: GRWTSK.Algebra.UniversalAlgebra.Semantics.Variant8f93bffc3206eaa9a6ba14790351afa119071d20771242b87d1b30ce71749672

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d325acc5255166b97ea499d17d5ff86551015452` · SHA-256 `9558901e6d8637df47cdcde69c4c38a916ec64ff0bdeb737a3eeb66476979fc3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.BitField.Varianteebd0a014cd1503decacdc8a43c85297f48290e8251ff47ce8946e9b07e75904","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eebd0a014cd1503decacdc8a43c85297f48290e8251ff47ce8946e9b07e75904","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.BitField.Varianteebd0a014cd1503decacdc8a43c85297f48290e8251ff47ce8946e9b07e75904","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"eebd0a014cd1503decacdc8a43c85297f48290e8251ff47ce8946e9b07e75904","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/audit/evidence-resume-workspaces/producer/9591c6ff30638559b50c01f70f8215488732641430867dc44c348c446c634ebe/workspace/Surface/BitMatrix/Runtime/Semantics.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BitMatrix.Codec.BitDocument
import BitMatrix.Core.Basic
import BitMatrix.Rhetorical.Core
import Mathlib.Algebra.BigOperators.Group.Finset.Basic

/-!
# Runtime-visible Bit semantics

These definitions are the formal side of the runtime correspondence ledger.
They do not claim byte-for-byte equivalence with a Rust or JavaScript program;
that promotion additionally requires the executable conformance tests recorded
by the concept ledger.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.BitField.Varianteebd0a014cd1503decacdc8a43c85297f48290e8251ff47ce8946e9b07e75904

namespace BitMatrix.Runtime.Semantics

/-- A checked fixed-width natural-number bit field. -/
structure BitField (width : Nat) where
  value : Nat
  inRange : value < 2 ^ width

/-- Read a field bit through a typed index. -/
def BitField.bitAt {width : Nat} (field : BitField width) (index : Fin width) : Bool :=
  Nat.testBit field.value index.val

/-- A typed row-major cell address. -/
structure GridCell (rows columns : Nat) where
  row : Fin rows
  column : Fin columns
  deriving DecidableEq

/-- Row-major index with an intrinsic range proof. -/
def GridCell.rowMajorIndex
    {rows columns : Nat}
    (cell : GridCell rows columns) : Fin (rows * columns) :=
  BitMatrix.ArrayBacked.flatIdx cell.row cell.column

/-- Finite carrier grid, distinguished origin, and carrier multiplicity. -/
structure CarrierGrid (rows columns : Nat) where
  origin : GridCell rows columns
  carrierMultiplicity : GridCell rows columns → Nat

/-- Ownership is a Boolean mask over a typed finite grid. -/
abbrev OwnershipMask (rows columns : Nat) := BitMatrix rows columns

/-- A normalized finite raster state. -/
structure FiniteRasterState (carrierCount : Nat) where
  weight : Fin carrierCount → ℝ
  nonnegative : ∀ carrier, 0 ≤ weight carrier
  normalized : ∑ carrier, weight carrier = 1

/-- The exact three-state triangle carrier. -/
inductive TriangleVertex where
  | point0
  | point1
  | point2
  deriving DecidableEq, Repr

/-- Triangle successor cycle `0 → 1 → 2 → 0`. -/
def triangleSuccessor : Equiv.Perm TriangleVertex where
  toFun
    | .point0 => .point1
    | .point1 => .point2
    | .point2 => .point0
  invFun
    | .point0 => .point2
    | .point1 => .point0
    | .point2 => .point1
  left_inv vertex := by cases vertex <;> rfl
  right_inv vertex := by cases vertex <;> rfl

@[simp]
theorem triangleSuccessor_third_power (vertex : TriangleVertex) :
    (triangleSuccessor ^ 3) vertex = vertex := by
  cases vertex <;> rfl

/-- Runtime braid semantics expose an endpoint permutation, not a braid-group proof. -/
structure BraidEndpointPresentation (Endpoint : Type) where
  endpointPermutation : Equiv.Perm Endpoint

/-- The canonical eight-stage runtime pipeline order. -/
inductive PipelineStage where
  | motion
  | strokeRegion
  | setCombination
  | rasterCoverage
  | ownership
  | bitField
  | finiteRasterState
  | annotations
  deriving DecidableEq, Repr

def canonicalPipelineStages : List PipelineStage :=
  [.motion, .strokeRegion, .setCombination, .rasterCoverage,
    .ownership, .bitField, .finiteRasterState, .annotations]

/-- A completed pipeline trace must retain the canonical stage order. -/
structure PipelineTrace where
  stages : List PipelineStage
  canonicalOrder : stages = canonicalPipelineStages

/-- User-controlled inputs from which runtime dimensions are derived. -/
structure ConfigurationInput where
  bitLength : Nat
  cellExtentPixels : Nat
  bitLengthPositive : 0 < bitLength
  cellExtentPositive : 0 < cellExtentPixels

/-- Immutable derived configuration values. -/
structure DerivedConfiguration where
  cellsPerAxis : Nat
  rasterTotalPixelsPerAxis : Nat
  payloadOffsetDigits : Nat

/-- One deterministic derivation authority for runtime dimensions. -/
def deriveConfiguration (input : ConfigurationInput) : DerivedConfiguration where
  cellsPerAxis := input.bitLength
  rasterTotalPixelsPerAxis := input.bitLength * input.cellExtentPixels
  payloadOffsetDigits := input.bitLength

@[simp]
theorem derive_cells_per_axis (input : ConfigurationInput) :
    (deriveConfiguration input).cellsPerAxis = input.bitLength :=
  rfl

@[simp]
theorem derive_raster_extent (input : ConfigurationInput) :
    (deriveConfiguration input).rasterTotalPixelsPerAxis =
      input.bitLength * input.cellExtentPixels :=
  rfl

/-- A runtime representation relation with an explicit abstraction function. -/
structure RepresentationRelation (Semantic Runtime : Type) where
  abstract : Runtime → Semantic
  represents : Runtime → Semantic → Prop
  represents_iff : ∀ runtime semantic,
    represents runtime semantic ↔ abstract runtime = semantic

/-- Evidence levels used by the formal–runtime correspondence ledger. -/
inductive CorrespondenceStatus where
  | specified
  | executableTested
  | theoremBacked
  | conditional
  deriving DecidableEq, Repr

end BitMatrix.Runtime.Semantics
```
