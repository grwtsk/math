# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ModularityBridge.Variant874fb4d6065054dda2895f900443c11b8e889e18e0101e52528931676411f489

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7a3a1e266d5bdeb89db7d0d14cbcee070a490066` · SHA-256 `e98e1bd6cfc4de9af12fabf118da18a04fb57ddc2804e1004807db69514309ab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HasseWeilAnalyticFromModularity.Variant0372660477347662e1329f2f0e37f22bb61742d4a911306ee15c63255f0338d9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0372660477347662e1329f2f0e37f22bb61742d4a911306ee15c63255f0338d9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.HasseWeilAnalyticFromModularity.Variant0372660477347662e1329f2f0e37f22bb61742d4a911306ee15c63255f0338d9","mathematical_subject":"Foundations.Unclassified","original_sha256":"0372660477347662e1329f2f0e37f22bb61742d4a911306ee15c63255f0338d9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Research/ModularityBridge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Research.ModularityBridge

/-!
# Folder.Theorem.Research.ModularityBridge

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports modularity-to-Hasse-Weil contract exposures.
Ontology: proof.research.modularity_bridge
Pivot role: arithmetic
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: research
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HasseWeilAnalyticFromModularity.Variant0372660477347662e1329f2f0e37f22bb61742d4a911306ee15c63255f0338d9

namespace Folder
namespace Theorem
namespace Research
namespace ModularityBridge

theorem hasse_weil_analytic_from_modularity
    (B : Folder.Research.ModularityBridge.ModularityToHasseWeilBridge)
    (h : B.modularity.associated) :
    B.hasseWeil.hasAnalyticContinuation :=
  Folder.Research.ModularityBridge.hasse_weil_analytic_from_modularity B h

theorem hasse_weil_functional_from_modularity
    (B : Folder.Research.ModularityBridge.ModularityToHasseWeilBridge)
    (h : B.modularity.associated) :
    B.hasseWeil.hasFunctionalEquation :=
  Folder.Research.ModularityBridge.hasse_weil_functional_from_modularity B h

end ModularityBridge
end Research
end Theorem
end Folder
```
