-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Stabilizes.Variant06b603b8847880318287f7d960c810b3d607ed3cc160263d652a3470c518f427","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"06b603b8847880318287f7d960c810b3d607ed3cc160263d652a3470c518f427","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Stabilizes.Variant06b603b8847880318287f7d960c810b3d607ed3cc160263d652a3470c518f427","mathematical_subject":"Foundations.Unclassified","original_sha256":"06b603b8847880318287f7d960c810b3d607ed3cc160263d652a3470c518f427","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Orbit/Stabilizer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Orbit.FiniteCyclic

/-! # Stabilizers remain separate from orbit size -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Stabilizes.Variant06b603b8847880318287f7d960c810b3d607ed3cc160263d652a3470c518f427

namespace Mathematics.Orbit

universe u v

def Stabilizes
    {G : Type u} {Point : Type v}
    (action : G → Point → Point)
    (groupElement : G)
    (point : Point) : Prop :=
  action groupElement point = point

def Stabilizer
    {G : Type u} {Point : Type v}
    (action : G → Point → Point)
    (point : Point) : Set G :=
  {groupElement | Stabilizes action groupElement point}

end Mathematics.Orbit
