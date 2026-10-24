# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Carrier.Variant4896de3999b8e81a3fd7dbb551c56f6e0341873da1b6afd96aaa862455e91ae0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ac19591131f632b7871780c296d42d26831cef6e` · SHA-256 `03af562e324053a569bf34e892ffd9d89ec92f9e23ef30f9d8ff57f2d821e4b4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.CommunicationCarrier.Variantf34cad29cdda3b610e4988135fc76817ee362d8345920a33aa3d4aa3486c6f4a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f34cad29cdda3b610e4988135fc76817ee362d8345920a33aa3d4aa3486c6f4a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.CommunicationCarrier.Variantf34cad29cdda3b610e4988135fc76817ee362d8345920a33aa3d4aa3486c6f4a","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"f34cad29cdda3b610e4988135fc76817ee362d8345920a33aa3d4aa3486c6f4a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/ContinuousAssurance/WorldModel/Carrier.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.ContinuousAssurance.WorldModel.TranslationDefect
import Mathlib.Data.Set.Finite.Basic

/-!
# Finite communication carriers and exact model loci

The carrier is finite incidence metadata. Adjacency and overlap do not imply a
semantic translation, compatible assumptions, or model equivalence.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CommunicationCarrier.Variantf34cad29cdda3b610e4988135fc76817ee362d8345920a33aa3d4aa3486c6f4a

universe u

namespace Surface.ContinuousAssurance.WorldModel

/-- Finite graded communication carrier. -/
structure CommunicationCarrier where
  Cell : Type u
  cellFintype : Fintype Cell
  cellDecEq : DecidableEq Cell
  dimension : Cell → Nat
  incident : Cell → Cell → Prop
  incidentDecidable : DecidableRel incident
  incidenceFinite : ∀ cell, Set.Finite {other | incident cell other}
  identity : ArtifactIdentity

attribute [instance] CommunicationCarrier.cellFintype
  CommunicationCarrier.cellDecEq CommunicationCarrier.incidentDecidable

/-- Exact finite support of one model on a communication carrier. -/
structure ModelLocus
    (carrier : CommunicationCarrier)
    (model : MathematicalWorldModel) where
  occupiedCells : Finset carrier.Cell
  exactSupport : Prop
  assumptionsCompatible : Prop
  authorityCompatible : Prop
  versionCompatible : Prop

/-- Exact loci for every model in an active region. -/
structure ExactLocusAssignment
    (registry : WorldModelRegistry)
    (region : ActiveModelRegion registry)
    (carrier : CommunicationCarrier) where
  locus : ∀ id, id ∈ region.activeModels →
    ModelLocus carrier (registry.model id)
  exact : ∀ id member, (locus id member).exactSupport

/-- CAR-01: every active model in an assignment has a finite exact locus. -/
theorem ExactLocusAssignment.active_model_has_finite_exact_locus
    {registry : WorldModelRegistry}
    {region : ActiveModelRegion registry}
    {carrier : CommunicationCarrier}
    (assignment : ExactLocusAssignment registry region carrier)
    {id : registry.ModelId}
    (member : id ∈ region.activeModels) :
    ∃ locus : ModelLocus carrier (registry.model id),
      locus.exactSupport ∧
      Set.Finite {cell | cell ∈ locus.occupiedCells} := by
  refine ⟨assignment.locus id member, assignment.exact id member, ?_⟩
  exact Set.finite_mem_finset _

/-- CAR-02: overlap cannot identify versions already known to differ. -/
theorem locus_overlap_does_not_imply_equivalence
    {carrier : CommunicationCarrier}
    {left right : MathematicalWorldModel}
    (leftLocus : ModelLocus carrier left)
    (rightLocus : ModelLocus carrier right)
    (_overlap : ∃ cell,
      cell ∈ leftLocus.occupiedCells ∧
      cell ∈ rightLocus.occupiedCells)
    (different : left.identity ≠ right.identity) :
    left.identity ≠ right.identity :=
  different

/-- Concrete finite carrier whose adjacency relation is universal. -/
def universalBoolCarrier : CommunicationCarrier where
  Cell := Bool
  cellFintype := inferInstance
  cellDecEq := inferInstance
  dimension := fun _ ↦ 0
  incident := fun _ _ ↦ True
  incidentDecidable := inferInstance
  incidenceFinite := fun _ ↦ Set.toFinite _
  identity := ⟨"world-model-carrier:universal-bool"⟩

/-- CAR-03 negative example: carrier adjacency proves no arbitrary compatibility. -/
theorem carrier_adjacency_not_semantic_compatibility :
    ∃ left right : universalBoolCarrier.Cell,
      universalBoolCarrier.incident left right ∧ ¬ False := by
  exact ⟨false, true, trivial, by simp⟩

end Surface.ContinuousAssurance.WorldModel
```
