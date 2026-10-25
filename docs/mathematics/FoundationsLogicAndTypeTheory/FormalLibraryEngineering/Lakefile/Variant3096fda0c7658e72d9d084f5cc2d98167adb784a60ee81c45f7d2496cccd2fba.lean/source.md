# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile.Variant3096fda0c7658e72d9d084f5cc2d98167adb784a60ee81c45f7d2496cccd2fba

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ba8901649492ad3c0b143d81e0ccbe51643bce0d` · SHA-256 `fa8f20457d95b3a272c11da84128f3c08f8fa17098e93e57bb9a70510de0d26b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variant4e110bbf183154d6e7b9900488c99557942c71974d30851f581881962fe9e51d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4e110bbf183154d6e7b9900488c99557942c71974d30851f581881962fe9e51d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Lake.Variant4e110bbf183154d6e7b9900488c99557942c71974d30851f581881962fe9e51d","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"4e110bbf183154d6e7b9900488c99557942c71974d30851f581881962fe9e51d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/lakefile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lake

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variant4e110bbf183154d6e7b9900488c99557942c71974d30851f581881962fe9e51d

open Lake DSL

package SpectralProof where
  srcDir := "."

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.3.0"

@[default_target]
lean_lib SpectralProof

lean_exe spectralProof where
  root := `SpectralProof.Main
```
