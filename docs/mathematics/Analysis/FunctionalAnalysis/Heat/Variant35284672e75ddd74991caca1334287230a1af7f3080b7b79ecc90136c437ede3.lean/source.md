# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Heat.Variant35284672e75ddd74991caca1334287230a1af7f3080b7b79ecc90136c437ede3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ad47f8adb9470e97a09c407b40cef48b40df183` · SHA-256 `5cb2bc2c5a9183b5025e0271aa47828d4f56f3900904933bcdbebab589e8161f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.GraphHeat.Variantfdc670710987f48daf0d70624d9548a6c522805752ebd890e83913519d3f4730","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fdc670710987f48daf0d70624d9548a6c522805752ebd890e83913519d3f4730","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.GraphHeat.Variantfdc670710987f48daf0d70624d9548a6c522805752ebd890e83913519d3f4730","mathematical_subject":"Foundations.Unclassified","original_sha256":"fdc670710987f48daf0d70624d9548a6c522805752ebd890e83913519d3f4730","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Heat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Spectral.Tensor

/-!
# Folder.Spectral.Heat

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: spectral.heat
Pivot role: spectral
Zero typology: spectral
Contract boundary: contract
Composite stack role: field
-/



namespace GRWTSK.Analysis.FunctionalAnalysis.GraphHeat.Variantfdc670710987f48daf0d70624d9548a6c522805752ebd890e83913519d3f4730

namespace Folder
namespace Spectral

open Carrier

structure GraphHeat (s : GridShape) (k : Nat) where
  heat : NNReal → SpectralTensor s k → SpectralTensor s k
  heat_zero : ∀ X, heat 0 X = X
  heat_add : ∀ t u X, heat (t + u) X = heat t (heat u X)
  preserves_constant :
    ∀ t a, heat t (SpectralTensor.constant s a) =
      SpectralTensor.constant s a

end Spectral
end Folder
```
