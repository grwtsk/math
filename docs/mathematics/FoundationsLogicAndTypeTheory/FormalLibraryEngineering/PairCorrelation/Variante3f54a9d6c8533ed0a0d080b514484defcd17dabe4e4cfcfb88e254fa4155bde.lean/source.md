# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PairCorrelation.Variante3f54a9d6c8533ed0a0d080b514484defcd17dabe4e4cfcfb88e254fa4155bde

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `74d7df49dbce7167b7b3c7a1335c98cc63786457` · SHA-256 `2f4a11a7a1c0af72dbdeba5ab45b2e584ee2c1557a36187735f50400e7b8301e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PairCorrelationPolicy.Variant0fb84bb63c029352680df8d35c707e7ea451da352d9b2a939b8fbf2ff35dfdb1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0fb84bb63c029352680df8d35c707e7ea451da352d9b2a939b8fbf2ff35dfdb1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PairCorrelationPolicy.Variant0fb84bb63c029352680df8d35c707e7ea451da352d9b2a939b8fbf2ff35dfdb1","mathematical_subject":"Foundations.Unclassified","original_sha256":"0fb84bb63c029352680df8d35c707e7ea451da352d9b2a939b8fbf2ff35dfdb1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/PairCorrelation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Heat


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PairCorrelationPolicy.Variant0fb84bb63c029352680df8d35c707e7ea451da352d9b2a939b8fbf2ff35dfdb1

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow

structure PairCorrelationPolicy where
  kernelName : String
  regularizerOnly : Bool
  exactSymmetrySource : String
  noTheoremAuthority : Prop
deriving Repr

def montgomeryGUEPolicy : PairCorrelationPolicy :=
  { kernelName := "montgomery_gue"
    regularizerOnly := true
    exactSymmetrySource := "group_orbits"
    noTheoremAuthority := True }

theorem montgomeryGUEPolicy_regularizerOnly :
    montgomeryGUEPolicy.regularizerOnly = true := by
  rfl

end Think.RadoProjectedModularHeatflow
```
