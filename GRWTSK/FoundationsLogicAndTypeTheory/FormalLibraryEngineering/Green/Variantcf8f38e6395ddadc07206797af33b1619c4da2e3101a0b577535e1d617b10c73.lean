-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Band.Variant03202bba0f8f5a8b875bad1efe83bbfe1c38e030ee9d732cfd2e9fa0b9096745","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"03202bba0f8f5a8b875bad1efe83bbfe1c38e030ee9d732cfd2e9fa0b9096745","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Band.Variant03202bba0f8f5a8b875bad1efe83bbfe1c38e030ee9d732cfd2e9fa0b9096745","mathematical_subject":"Foundations.Unclassified","original_sha256":"03202bba0f8f5a8b875bad1efe83bbfe1c38e030ee9d732cfd2e9fa0b9096745","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/.quarentine/61026/docs/ontology/Color/Green.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Color.Admissibility


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Band.Variant03202bba0f8f5a8b875bad1efe83bbfe1c38e030ee9d732cfd2e9fa0b9096745

namespace Color

namespace Green

def band : Band :=
  { name := "green",
    namespaceName := "Color.Green",
    bitDepth := 8,
    rangeMin := 0,
    rangeMax := 255,
    centroid := greenCentroid }

def accepts : ColorAtom → Prop := acceptsOnly ColorAtom.green

def rejects : ColorAtom → Prop := rejectsUnresolved

def admissibility : Admissibility :=
  { band, accepts, rejects, symmetric := true }

theorem namespace_eq : band.namespaceName = "Color.Green" := rfl

end Green

end Color
