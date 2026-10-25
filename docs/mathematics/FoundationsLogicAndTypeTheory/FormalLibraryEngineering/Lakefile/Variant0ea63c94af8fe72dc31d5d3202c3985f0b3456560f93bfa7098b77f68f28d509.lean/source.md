# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile.Variant0ea63c94af8fe72dc31d5d3202c3985f0b3456560f93bfa7098b77f68f28d509

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bf35b505b33802d72e1665524e3605f00d097dff` · SHA-256 `e21ea0176be9cf79eb207d297535525a13bb091f11d985d66a76f83bcaf2db4f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variant33232f4106d4b7bbe6e3cdb253212cc6510d2a17ad3fdd98938610b348204a9d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"33232f4106d4b7bbe6e3cdb253212cc6510d2a17ad3fdd98938610b348204a9d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Lake.Variant33232f4106d4b7bbe6e3cdb253212cc6510d2a17ad3fdd98938610b348204a9d","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"33232f4106d4b7bbe6e3cdb253212cc6510d2a17ad3fdd98938610b348204a9d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-of-RH/lakefile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lake

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variant33232f4106d4b7bbe6e3cdb253212cc6510d2a17ad3fdd98938610b348204a9d

open Lake DSL

package SpectralProof where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/8fbe0686bc98ab91c7ae86530f61889ff5f50e2b7874e0c598648e10d01df317/src/lean"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.3.0"

@[default_target]
lean_lib SpectralProof where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/8fbe0686bc98ab91c7ae86530f61889ff5f50e2b7874e0c598648e10d01df317/src/lean"

lean_exe spectralProof where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/8fbe0686bc98ab91c7ae86530f61889ff5f50e2b7874e0c598648e10d01df317/src/lean"
  root := `SpectralProof.Main
```
