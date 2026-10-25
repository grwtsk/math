# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TG05EdgeInteriorDisjointness.Variantcbdd8e7bf35fe3b3aa580c79e107f9382dd96bafbf966d181e9cc0556c0fafe0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f3404ee2725e0556184d0aab132a9a4792c7d53` · SHA-256 `0636353fabf0312a84d0c02cd5751cacdc9d0fcc08eeadc9a9625728ecd524c5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
