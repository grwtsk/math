-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.TerrainSourceRealization.Variantdb5b247be7763127026cd57bedd5379aa71574c57840b2ab991d853e68639486","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"db5b247be7763127026cd57bedd5379aa71574c57840b2ab991d853e68639486","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.TerrainSourceRealization.Variantdb5b247be7763127026cd57bedd5379aa71574c57840b2ab991d853e68639486","mathematical_subject":"Logic.Foundations","original_sha256":"db5b247be7763127026cd57bedd5379aa71574c57840b2ab991d853e68639486","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Prismatic/TerrainRealization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Prismatic.SourceRealizationFunctoriality
import DAF.Terrain.GlobalReference

/-!
# Explicit terrain-to-prismatic source realization

A finite terrain state has no canonical arithmetic or prismatic meaning.  This
module therefore packages the representation choices needed to place every
absolute coordinate of a `KnownMaximalState` at an existing fabric cell and to
identify its declared state representation with the selected
`SourceRealization` object at that cell.

The record is representation data, not a construction of a prism.  In
particular, it neither creates `ConstructedBasePrism` nor discharges a
`BasePrismCertificate`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.TerrainSourceRealization.Variantdb5b247be7763127026cd57bedd5379aa71574c57840b2ab991d853e68639486

namespace DAF.Prismatic

universe uState uCoord

/-- A globally anchored terrain reference interpreted in one selected source. -/
structure TerrainSourceRealization
    {State : Type uState}
    (G : DAF.Terrain.KnownMaximalState State)
    (F : DAF.Fabric.Fabric)
    (P : Theory) where
  source : SourceRealization F P
  cellAt : G.Coord ↪ (Σ n : Nat, F.Cell n)
  stateRepresentation : State → P.DerivedAlg
  referenceRealizes :
    ∀ c : G.Coord,
      stateRepresentation (G.reference c) =
        source.cellCorrespondence (cellAt c).2

namespace TerrainSourceRealization

/-- The exact fabric cell globally assigned to one absolute coordinate. -/
def coordinateCell
    {State : Type uState}
    {G : DAF.Terrain.KnownMaximalState State}
    {F : DAF.Fabric.Fabric}
    {P : Theory}
    (R : TerrainSourceRealization G F P)
    (c : G.Coord) :
    F.Cell (R.cellAt c).1 :=
  (R.cellAt c).2

/-- Distinct global coordinates retain distinct located fabric cells. -/
theorem cellAt_injective
    {State : Type uState}
    {G : DAF.Terrain.KnownMaximalState State}
    {F : DAF.Fabric.Fabric}
    {P : Theory}
    (R : TerrainSourceRealization G F P) :
    Function.Injective R.cellAt :=
  R.cellAt.injective

/-- The state-to-cell realization square is the certificate stored in the record. -/
theorem reference_realization_commutes
    {State : Type uState}
    {G : DAF.Terrain.KnownMaximalState State}
    {F : DAF.Fabric.Fabric}
    {P : Theory}
    (R : TerrainSourceRealization G F P)
    (c : G.Coord) :
    R.stateRepresentation (G.reference c) =
      R.source.cellCorrespondence (R.cellAt c).2 :=
  R.referenceRealizes c

end TerrainSourceRealization

end DAF.Prismatic
