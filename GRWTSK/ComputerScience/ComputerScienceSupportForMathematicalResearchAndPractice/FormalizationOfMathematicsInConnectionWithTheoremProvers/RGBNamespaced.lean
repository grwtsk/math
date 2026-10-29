-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RGB.Variant9d09caebca4710a070202e0dab6ac19929ad71659c15a70b8fdac414c1bbd7fd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9d09caebca4710a070202e0dab6ac19929ad71659c15a70b8fdac414c1bbd7fd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.RGB.Variant9d09caebca4710a070202e0dab6ac19929ad71659c15a70b8fdac414c1bbd7fd","mathematical_subject":"Foundations.Unclassified","original_sha256":"9d09caebca4710a070202e0dab6ac19929ad71659c15a70b8fdac414c1bbd7fd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/.quarentine/61026/docs/ontology/Color/RGB.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RGB.Variant9d09caebca4710a070202e0dab6ac19929ad71659c15a70b8fdac414c1bbd7fd

namespace Color

abbrev Byte := Nat

structure RGB where
  red : Byte
  green : Byte
  blue : Byte
deriving Repr, DecidableEq

def RGB.black : RGB := { red := 0, green := 0, blue := 0 }

def RGB.white : RGB := { red := 255, green := 255, blue := 255 }

def RGB.redPrimary : RGB := { red := 255, green := 0, blue := 0 }

def RGB.greenPrimary : RGB := { red := 0, green := 255, blue := 0 }

def RGB.bluePrimary : RGB := { red := 0, green := 0, blue := 255 }

theorem RGB.white_red_eq : RGB.white.red = 255 := rfl

end Color
