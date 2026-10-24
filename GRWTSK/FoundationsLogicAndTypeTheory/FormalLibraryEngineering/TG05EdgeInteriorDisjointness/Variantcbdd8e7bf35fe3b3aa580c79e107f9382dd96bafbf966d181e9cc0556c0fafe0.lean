-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tg05EdgeInteriorDisjointness.Variantd1398646ce5a9a90ca6890032ff7b051e2ccdea515a3f49845f78bc8ca91fe92","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d1398646ce5a9a90ca6890032ff7b051e2ccdea515a3f49845f78bc8ca91fe92","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Tg05EdgeInteriorDisjointness.Variantd1398646ce5a9a90ca6890032ff7b051e2ccdea515a3f49845f78bc8ca91fe92","mathematical_subject":"Foundations.Unclassified","original_sha256":"d1398646ce5a9a90ca6890032ff7b051e2ccdea515a3f49845f78bc8ca91fe92","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledSpherical/TopologicalTheorems/TG05_EdgeInteriorDisjointness.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledSpherical.TopologicalClaims


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tg05EdgeInteriorDisjointness.Variantd1398646ce5a9a90ca6890032ff7b051e2ccdea515a3f49845f78bc8ca91fe92

universe uVertex uEdge uInterval

namespace FCRS.ControlledSpherical.TopologicalTheorems

open FCRS.ControlledPlane
open FCRS.ControlledSpherical
open FCRS.Topology

theorem tg05_edgeInteriorDisjointness
    {Vertex : Type uVertex} {Edge : Type uEdge}
    (G : DirectedGraph Vertex Edge)
    (I : ClosedInterval.{uInterval}) : TG05Claim G I where
  distinctInteriors := by
    intro e f hef x he hf
    exact distinct_edgeInteriors_disjoint hef he hf
  interiorsAvoidVertices := by
    intro e x he v hv
    exact edgeInterior_avoids_vertices he hv

end FCRS.ControlledSpherical.TopologicalTheorems
