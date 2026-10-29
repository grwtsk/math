-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Closed.Variant95985d309bef4cb5a0d21bc47995b55a4d883eec78df4a69ff1ac45cc16f00d2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"95985d309bef4cb5a0d21bc47995b55a4d883eec78df4a69ff1ac45cc16f00d2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Closed.Variant95985d309bef4cb5a0d21bc47995b55a4d883eec78df4a69ff1ac45cc16f00d2","mathematical_subject":"Topology.GeneralTopology","original_sha256":"95985d309bef4cb5a0d21bc47995b55a4d883eec78df4a69ff1ac45cc16f00d2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/.quarentine/61026/docs/ontology/Color/Aperture.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Color.Centroid


namespace GRWTSK.Topology.GeneralTopology.Closed.Variant95985d309bef4cb5a0d21bc47995b55a4d883eec78df4a69ff1ac45cc16f00d2

namespace Color

namespace Aperture

def closed : Byte := 0

def fullyOpen : Byte := 255

def isClosed (value : Byte) : Prop := value = closed

def isOpen (value : Byte) : Prop := value = fullyOpen

theorem closed_eq_zero : closed = 0 := rfl

theorem fullyOpen_eq_255 : fullyOpen = 255 := rfl

end Aperture

end Color
