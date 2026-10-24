# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Digital.Variantd1838e57ccc5f953db6bf58cffe15996a7ddae25bb81cce1fe1daba4ed36d086

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f85b5fec091fed5c7a3a0d033060528f59c4091e` · SHA-256 `2e9c0fd4ceb71361b42e220c8505be84293bb886f149b581913f1248d3813fae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.CutDatum.Variantd682b033bfb58079f87071b8d5c04e3103f7ad3006c564126d5382a3d7cc8361","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d682b033bfb58079f87071b8d5c04e3103f7ad3006c564126d5382a3d7cc8361","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.CutDatum.Variantd682b033bfb58079f87071b8d5c04e3103f7ad3006c564126d5382a3d7cc8361","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"d682b033bfb58079f87071b8d5c04e3103f7ad3006c564126d5382a3d7cc8361","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BitMatrix/Surgery/Digital.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BitMatrix.Topology.RasterCubicalComplex
import Mathlib.Data.Int.Basic

/-!
# Finite digital surgery data

The operation here is exact replacement on a finite set of typed raster
cells.  It proves locality and reconstruction laws.  Topology-sensitive use is
represented by a provider-scoped `DigitalTopologySemantics` and a
`ControlledDigitalSurgery` checked against that one fixed provider.  This base
module remains provider-neutral.  The sibling `Surgery.CanonicalRaster` module
inhabits the interface for the project's finite foreground-graph profile; it
does not promote that digital graph model to smooth manifold surgery.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CutDatum.Variantd682b033bfb58079f87071b8d5c04e3103f7ad3006c564126d5382a3d7cc8361

namespace BitMatrix.Surgery.Digital

open BitMatrix.Runtime.Semantics
open BitMatrix.Topology.Raster

/-- A finite Boolean raster state. -/
abbrev RasterState (rows columns : Nat) := GridCell rows columns → Bool

/-- Local cut data: source state, selected cells, retained exterior, and its
edge-adjacent exposed interface. -/
structure CutDatum (rows columns : Nat) where
  source : RasterState rows columns
  selected : Finset (GridCell rows columns)

namespace CutDatum

/-- Cells retained by the finite cut. -/
def exterior {rows columns : Nat} (cut : CutDatum rows columns) :
    Finset (GridCell rows columns) :=
  Finset.univ \ cut.selected

/-- Retained cells sharing a cubical edge with at least one selected cell.
This is the exposed boundary of the retained cubical complex; the configurable
foreground/background digital-adjacency interfaces are defined separately
below. -/
def exposedInterface {rows columns : Nat} (cut : CutDatum rows columns) :
    Finset (GridCell rows columns) :=
  cut.exterior.filter fun outside =>
    ∃ inside ∈ cut.selected, EdgeAdjacent outside inside

theorem exposedInterface_subset_exterior {rows columns : Nat}
    (cut : CutDatum rows columns) :
    cut.exposedInterface ⊆ cut.exterior := by
  intro cell member
  exact (Finset.mem_filter.mp member).1

theorem exterior_disjoint_selected {rows columns : Nat}
    (cut : CutDatum rows columns) :
    Disjoint cut.exterior cut.selected := by
  rw [Finset.disjoint_left]
  intro cell exteriorMember selectedMember
  exact (Finset.mem_sdiff.mp exteriorMember).2 selectedMember

end CutDatum

/-- A replacement value for every selected cell. -/
structure Repair {rows columns : Nat} (cut : CutDatum rows columns) where
  replacement : (cell : GridCell rows columns) → cell ∈ cut.selected → Bool

namespace Repair

/-- Apply the local replacement and retain the source on its complement. -/
def apply {rows columns : Nat} {cut : CutDatum rows columns}
    (repair : Repair cut) : RasterState rows columns :=
  fun cell =>
    if member : cell ∈ cut.selected then repair.replacement cell member
    else cut.source cell

@[simp]
theorem apply_inside {rows columns : Nat} {cut : CutDatum rows columns}
    (repair : Repair cut) (cell : GridCell rows columns)
    (member : cell ∈ cut.selected) :
    repair.apply cell = repair.replacement cell member := by
  simp [apply, member]

@[simp]
theorem apply_outside {rows columns : Nat} {cut : CutDatum rows columns}
    (repair : Repair cut) (cell : GridCell rows columns)
    (outside : cell ∉ cut.selected) :
    repair.apply cell = cut.source cell := by
  simp [apply, outside]

/-- The exact set on which the state changes. -/
def changeSupport {rows columns : Nat} {cut : CutDatum rows columns}
    (repair : Repair cut) : Finset (GridCell rows columns) :=
  Finset.univ.filter fun cell => repair.apply cell ≠ cut.source cell

/-- Selected cells changing from background to foreground. -/
def addedCells {rows columns : Nat} {cut : CutDatum rows columns}
    (repair : Repair cut) : Finset (GridCell rows columns) :=
  Finset.univ.filter fun cell =>
    cut.source cell = false ∧ repair.apply cell = true

/-- Selected cells changing from foreground to background. -/
def deletedCells {rows columns : Nat} {cut : CutDatum rows columns}
    (repair : Repair cut) : Finset (GridCell rows columns) :=
  Finset.univ.filter fun cell =>
    cut.source cell = true ∧ repair.apply cell = false

/-- Local replacement cannot modify a cell outside the declared cut. -/
theorem changeSupport_subset_selected {rows columns : Nat}
    {cut : CutDatum rows columns} (repair : Repair cut) :
    repair.changeSupport ⊆ cut.selected := by
  intro cell changed
  by_contra outside
  have differs : repair.apply cell ≠ cut.source cell :=
    (Finset.mem_filter.mp changed).2
  exact differs (repair.apply_outside cell outside)

theorem addedCells_subset_selected {rows columns : Nat}
    {cut : CutDatum rows columns} (repair : Repair cut) :
    repair.addedCells ⊆ cut.selected := by
  intro cell added
  apply repair.changeSupport_subset_selected
  rw [addedCells, Finset.mem_filter] at added
  rw [changeSupport, Finset.mem_filter]
  refine ⟨Finset.mem_univ cell, ?_⟩
  intro unchanged
  rw [unchanged, added.2.1] at added
  exact Bool.noConfusion added.2.2

theorem deletedCells_subset_selected {rows columns : Nat}
    {cut : CutDatum rows columns} (repair : Repair cut) :
    repair.deletedCells ⊆ cut.selected := by
  intro cell deleted
  apply repair.changeSupport_subset_selected
  rw [deletedCells, Finset.mem_filter] at deleted
  rw [changeSupport, Finset.mem_filter]
  refine ⟨Finset.mem_univ cell, ?_⟩
  intro unchanged
  rw [unchanged, deleted.2.1] at deleted
  exact Bool.noConfusion deleted.2.2

/-- Regluing the retained original values reconstructs the exact source. -/
def reconstruct {rows columns : Nat} (cut : CutDatum rows columns) : Repair cut where
  replacement := fun cell _ => cut.source cell

@[simp]
theorem reconstruct_apply {rows columns : Nat} (cut : CutDatum rows columns) :
    (reconstruct cut).apply = cut.source := by
  funext cell
  by_cases member : cell ∈ cut.selected <;>
    simp [reconstruct, apply, member]

/-- A later repair of the same cut overwrites the earlier replacement. -/
theorem overwrite {rows columns : Nat} {cut : CutDatum rows columns}
    (first second : Repair cut) :
    (fun cell =>
      if member : cell ∈ cut.selected then second.replacement cell member
      else first.apply cell) = second.apply := by
  funext cell
  by_cases member : cell ∈ cut.selected <;> simp [apply, member]

end Repair

/-- The explicitly chosen digital-neighbor convention. -/
inductive AdjacencyPolicy where
  | edge
  | vertex
  deriving DecidableEq, Repr

/-- Canonical mathematical denotation of the configured four- or
eight-neighbor policy. -/
def AdjacencyPolicy.Adjacent {rows columns : Nat}
    (policy : AdjacencyPolicy) (left right : GridCell rows columns) : Prop :=
  match policy with
  | .edge => EdgeAdjacent left right
  | .vertex => VertexAdjacent left right

instance adjacencyPolicyDecidable {rows columns : Nat}
    (policy : AdjacencyPolicy) (left right : GridCell rows columns) :
    Decidable (policy.Adjacent left right) := by
  cases policy <;> simp only [AdjacencyPolicy.Adjacent] <;> infer_instance

theorem AdjacencyPolicy.adjacent_symmetric {rows columns : Nat}
    (policy : AdjacencyPolicy) {left right : GridCell rows columns} :
    policy.Adjacent left right ↔ policy.Adjacent right left := by
  cases policy
  · exact edgeAdjacent_symmetric
  · exact vertexAdjacent_symmetric

theorem AdjacencyPolicy.not_adjacent_self {rows columns : Nat}
    (policy : AdjacencyPolicy) (cell : GridCell rows columns) :
    ¬ policy.Adjacent cell cell := by
  cases policy
  · exact not_edgeAdjacent_self cell
  · exact not_vertexAdjacent_self cell

namespace CutDatum

/-- The retained interface computed with an explicit digital-adjacency policy. -/
def adjacencyInterface {rows columns : Nat} (cut : CutDatum rows columns)
    (policy : AdjacencyPolicy) : Finset (GridCell rows columns) :=
  cut.exterior.filter fun outside =>
    ∃ inside ∈ cut.selected, policy.Adjacent outside inside

theorem adjacencyInterface_subset_exterior {rows columns : Nat}
    (cut : CutDatum rows columns) (policy : AdjacencyPolicy) :
    cut.adjacencyInterface policy ⊆ cut.exterior := by
  intro cell member
  exact (Finset.mem_filter.mp member).1

@[simp]
theorem adjacencyInterface_edge {rows columns : Nat}
    (cut : CutDatum rows columns) :
    cut.adjacencyInterface .edge = cut.exposedInterface :=
  rfl

end CutDatum

/--
A named provider of the topology-sensitive semantics needed to interpret a
finite raster replacement.  Each predicate is a function of the actual cut,
repair, or resulting state; individual surgery records cannot substitute an
unrelated proposition or unrelated Betti functions.

This structure is a conditional interface.  Supplying a value is not, by
itself, evidence that the chosen digital topology agrees with a smooth or
cubical-manifold theory.
-/
structure DigitalTopologySemantics (rows columns : Nat) where
  incidenceMap :
    AdjacencyPolicy → AdjacencyPolicy →
      Cell rows columns → Finset (Cell rows columns)
  incidenceLowersDimension :
    ∀ foreground background cell face,
      face ∈ incidenceMap foreground background cell →
        face.dimension < cell.dimension
  linkCondition :
    (foreground background : AdjacencyPolicy) →
      (cut : CutDatum rows columns) → Repair cut → Prop
  betti :
    AdjacencyPolicy → AdjacencyPolicy →
      RasterState rows columns → Nat → Nat
  exactCarrierCompatible :
    (foreground background : AdjacencyPolicy) →
      (cut : CutDatum rows columns) → Repair cut → Prop
  cubicalManifold :
    AdjacencyPolicy → AdjacencyPolicy → RasterState rows columns → Prop

/--
Proof-carrying obligations for calling a finite replacement *controlled
digital surgery*.  All topology-sensitive propositions are selected once by
the explicit semantics provider and are applied to the record's actual cut,
repair, and post-repair state.  Merely constructing `Repair` supplies none of
their evidence.
-/
structure ControlledDigitalSurgery {rows columns : Nat}
    (semantics : DigitalTopologySemantics rows columns)
    (cut : CutDatum rows columns) where
  repair : Repair cut
  foregroundAdjacency : AdjacencyPolicy
  backgroundAdjacency : AdjacencyPolicy
  adjacencyCompatible : foregroundAdjacency ≠ backgroundAdjacency
  linkConditionEvidence :
    semantics.linkCondition foregroundAdjacency backgroundAdjacency cut repair
  expectedBettiDelta : Nat → Int
  bettiDeltaVerified : ∀ degree,
    Int.ofNat
        (semantics.betti foregroundAdjacency backgroundAdjacency repair.apply degree) -
      Int.ofNat
        (semantics.betti foregroundAdjacency backgroundAdjacency cut.source degree) =
      expectedBettiDelta degree
  exactCarrierEvidence :
    semantics.exactCarrierCompatible
      foregroundAdjacency backgroundAdjacency cut repair
  cubicalManifoldEvidence :
    semantics.cubicalManifold
      foregroundAdjacency backgroundAdjacency repair.apply

namespace ControlledDigitalSurgery

/-- Every controlled surgery retains the unconditional finite locality law. -/
theorem changes_only_selected {rows columns : Nat}
    {semantics : DigitalTopologySemantics rows columns}
    {cut : CutDatum rows columns}
    (surgery : ControlledDigitalSurgery semantics cut) :
    surgery.repair.changeSupport ⊆ cut.selected :=
  surgery.repair.changeSupport_subset_selected

/-- Added cells are computed from the pre/post states and cannot be supplied
independently by a caller. -/
theorem added_only_selected {rows columns : Nat}
    {semantics : DigitalTopologySemantics rows columns}
    {cut : CutDatum rows columns}
    (surgery : ControlledDigitalSurgery semantics cut) :
    surgery.repair.addedCells ⊆ cut.selected :=
  surgery.repair.addedCells_subset_selected

/-- Deleted cells are computed from the pre/post states and cannot be supplied
independently by a caller. -/
theorem deleted_only_selected {rows columns : Nat}
    {semantics : DigitalTopologySemantics rows columns}
    {cut : CutDatum rows columns}
    (surgery : ControlledDigitalSurgery semantics cut) :
    surgery.repair.deletedCells ⊆ cut.selected :=
  surgery.repair.deletedCells_subset_selected

end ControlledDigitalSurgery

end BitMatrix.Surgery.Digital
```
