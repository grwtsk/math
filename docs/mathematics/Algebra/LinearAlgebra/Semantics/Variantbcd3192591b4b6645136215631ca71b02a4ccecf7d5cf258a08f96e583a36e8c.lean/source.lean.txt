-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.BitField.Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.BitField.Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/audit/evidence-resume-workspaces/producer/4906331608756021ddcb6dd1d52b4faa5d9ca3175a0c0315b5bfbcf4f1aaefe4/workspace/Surface/BitMatrix/Runtime/Semantics.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BitMatrix.Codec.BitDocument
import BitMatrix.Core.Basic
import BitMatrix.Geometry.GridCell
import BitMatrix.Rhetorical.Core
import Mathlib.Algebra.BigOperators.Group.Finset.Basic

/-!
# Runtime-visible Bit semantics

These definitions are the formal side of the runtime correspondence ledger.
They do not claim byte-for-byte equivalence with a Rust or JavaScript program;
that promotion additionally requires the executable conformance tests recorded
by the concept ledger.
-/


namespace GRWTSK.Algebra.LinearAlgebra.BitField.Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389

namespace BitMatrix.Runtime.Semantics

/-- A checked fixed-width natural-number bit field. -/
structure BitField (width : Nat) where
  value : Nat
  inRange : value < 2 ^ width

/-- Read a field bit through a typed index. -/
def BitField.bitAt {width : Nat} (field : BitField width) (index : Fin width) : Bool :=
  Nat.testBit field.value index.val

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

/-! ## Elementary graph--diagonal fixed-point semantics -/

/-- The doubled carrier used to compare a map's graph with the diagonal. -/
abbrev CarrierProduct (Point : Type*) := Point × Point

/-- Forget the second coordinate of a doubled carrier. -/
def firstProjection {Point : Type*} : CarrierProduct Point → Point :=
  Prod.fst

/-- Embed one carrier point on the diagonal of the doubled carrier.

This is a section `p ↦ (p, p)` of `firstProjection`.  It must not be confused
with the JavaScript operation named `reflectDiagonal`: that runtime operation
is coordinate reflection `(x, y) ↦ (y, x)`, has a different type, and has no
runtime-correspondence theorem asserted by this module.
-/
def diagonalSection {Point : Type*} (point : Point) : CarrierProduct Point :=
  (point, point)

/-- The canonical point on the graph of an endomap above `point`. -/
def graphPoint {Point : Type*}
    (dynamics : Point → Point) (point : Point) : CarrierProduct Point :=
  (point, dynamics point)

/-- A doubled point lies on the diagonal when its coordinates agree. -/
def LiesOnDiagonal {Point : Type*} (point : CarrierProduct Point) : Prop :=
  point.1 = point.2

/-- A doubled point lies on the graph of `dynamics`. -/
def LiesOnGraph {Point : Type*}
    (dynamics : Point → Point) (point : CarrierProduct Point) : Prop :=
  point.2 = dynamics point.1

/-- The fixed set of an endomap, represented as a set of carrier points. -/
def FixedSet {Point : Type*} (dynamics : Point → Point) : Set Point :=
  { point | dynamics point = point }

/-- A fixed point packaged with its defining equality. -/
abbrev FixedPoint {Point : Type*} (dynamics : Point → Point) :=
  { point // point ∈ FixedSet dynamics }

/-- A graph point packaged with evidence that it also lies on the diagonal. -/
abbrev GraphDiagonalIntersection {Point : Type*} (dynamics : Point → Point) :=
  { point : CarrierProduct Point //
      LiesOnGraph dynamics point ∧ LiesOnDiagonal point }

@[simp]
theorem firstProjection_diagonalSection {Point : Type*} (point : Point) :
    firstProjection (diagonalSection point) = point :=
  rfl

/-- The diagonal embedding is a section of the first projection. -/
theorem firstProjection_comp_diagonalSection {Point : Type*} :
    (firstProjection : CarrierProduct Point → Point) ∘ diagonalSection = id := by
  funext point
  rfl

@[simp]
theorem graphPoint_liesOnGraph {Point : Type*}
    (dynamics : Point → Point) (point : Point) :
    LiesOnGraph dynamics (graphPoint dynamics point) :=
  rfl

/-- A point is fixed exactly when its graph point lies on the diagonal. -/
theorem mem_fixedSet_iff_graphPoint_liesOnDiagonal {Point : Type*}
    (dynamics : Point → Point) (point : Point) :
    point ∈ FixedSet dynamics ↔
      LiesOnDiagonal (graphPoint dynamics point) := by
  simp only [FixedSet, Set.mem_setOf_eq, LiesOnDiagonal, graphPoint]
  exact eq_comm

/-- Fixed points are canonically the intersection of the graph and diagonal.

This is a plain type equivalence.  No topological, smooth, or spectral
structure is assumed or inferred.
-/
def fixedPointEquivGraphDiagonalIntersection {Point : Type*}
    (dynamics : Point → Point) :
    FixedPoint dynamics ≃ GraphDiagonalIntersection dynamics where
  toFun point :=
    ⟨diagonalSection point.1, point.2.symm, rfl⟩
  invFun point :=
    ⟨point.1.1, point.2.1.symm.trans point.2.2.symm⟩
  left_inv point := by
    apply Subtype.ext
    rfl
  right_inv point := by
    apply Subtype.ext
    apply Prod.ext
    · rfl
    · exact point.2.2

/-- Every point is fixed by the identity endomap. -/
@[simp]
theorem fixedSet_identity {Point : Type*} :
    FixedSet (id : Point → Point) = Set.univ := by
  ext point
  simp [FixedSet]

/-- If the fixed set is the singleton `{equilibrium}`, every fixed point is
that equilibrium.  This statement does not imply global attraction.
-/
theorem fixedPoint_eq_of_fixedSet_eq_singleton {Point : Type*}
    {dynamics : Point → Point} {equilibrium point : Point}
    (hfixedSet : FixedSet dynamics = {equilibrium})
    (hpoint : point ∈ FixedSet dynamics) :
    point = equilibrium := by
  have : point ∈ ({equilibrium} : Set Point) := by
    rw [← hfixedSet]
    exact hpoint
  simpa using this

/-! ## Linear fixed sets -/

/-- For a linear endomorphism, the fixed set is exactly the kernel of
`id - T`.  This is an equality of predicates and does not assert attraction,
hyperbolicity, or uniqueness of a fixed point. -/
theorem mem_fixedSet_linear_iff_mem_ker_id_sub
    {R V : Type*} [Ring R] [AddCommGroup V] [Module R V]
    (transformation : V →ₗ[R] V) (point : V) :
    point ∈ FixedSet transformation ↔
      point ∈ LinearMap.ker (LinearMap.id - transformation) := by
  change transformation point = point ↔ point - transformation point = 0
  rw [sub_eq_zero]
  exact eq_comm

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
