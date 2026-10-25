# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile.Variant72623ebad16fa4359e34756deef581dfa506d3ba8e56ab09f8784269cebfe89b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5a9e124fda48521549341a87d3c63c3ac5917ba0` · SHA-256 `04fbb3e069baa489a988d52040384fc3484e16d82762c4251fbcf1a671c354ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variant6dff17bff0ca986c62eb8fe43bb03e8bb487dd9c22dc433d453a6cc7e0f15ebd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6dff17bff0ca986c62eb8fe43bb03e8bb487dd9c22dc433d453a6cc7e0f15ebd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Lake.Variant6dff17bff0ca986c62eb8fe43bb03e8bb487dd9c22dc433d453a6cc7e0f15ebd","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"6dff17bff0ca986c62eb8fe43bb03e8bb487dd9c22dc433d453a6cc7e0f15ebd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/lakefile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lake

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variant6dff17bff0ca986c62eb8fe43bb03e8bb487dd9c22dc433d453a6cc7e0f15ebd

open Lake DSL

package SpectralProof where
  srcDir := "."

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "fead16e91f8b84c43b5c78e60d90fffc4e93cc5d"

@[default_target]
lean_lib SpectralProof

lean_exe spectralProof where
  root := `SpectralProof.Main
```
