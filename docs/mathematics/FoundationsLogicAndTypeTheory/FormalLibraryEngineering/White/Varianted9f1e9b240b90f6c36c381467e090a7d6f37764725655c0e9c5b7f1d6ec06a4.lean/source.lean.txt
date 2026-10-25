-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Band.Variant5c6d9d10c7d312dd25ee7894ed994da2f5f2c89f913e1a2c073cb638ef9500af","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5c6d9d10c7d312dd25ee7894ed994da2f5f2c89f913e1a2c073cb638ef9500af","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Band.Variant5c6d9d10c7d312dd25ee7894ed994da2f5f2c89f913e1a2c073cb638ef9500af","mathematical_subject":"Foundations.Unclassified","original_sha256":"5c6d9d10c7d312dd25ee7894ed994da2f5f2c89f913e1a2c073cb638ef9500af","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/.quarentine/61026/docs/ontology/Color/White.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Color.Admissibility


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Band.Variant5c6d9d10c7d312dd25ee7894ed994da2f5f2c89f913e1a2c073cb638ef9500af

namespace Color

namespace White

def band : Band :=
  { name := "white",
    namespaceName := "Color.White",
    bitDepth := 8,
    rangeMin := 255,
    rangeMax := 255,
    centroid := whiteCentroid }

def accepts : ColorAtom → Prop := acceptsOnly ColorAtom.white

def rejects : ColorAtom → Prop := rejectsUnresolved

def admissibility : Admissibility :=
  { band, accepts, rejects, symmetric := true }

theorem namespace_eq : band.namespaceName = "Color.White" := rfl

end White

end Color
