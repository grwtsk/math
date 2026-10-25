# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile.Variantc10a51a25c29fb2c26313184ddc75bb94a25ed290a0e8057068692486a62b81a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `86372093708b9468eaddcfdc11a441306fdeddaf` · SHA-256 `e20985b3023454166096e5c3557215ff0f0de8e17a7c3d0f7cd4633c36d5daac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variant32f843fd21fc57a64ebad657f8c3b04129ae109e5b2d724ae2271a8ecc25a0fd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"32f843fd21fc57a64ebad657f8c3b04129ae109e5b2d724ae2271a8ecc25a0fd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Lake.Variant32f843fd21fc57a64ebad657f8c3b04129ae109e5b2d724ae2271a8ecc25a0fd","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"32f843fd21fc57a64ebad657f8c3b04129ae109e5b2d724ae2271a8ecc25a0fd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/lakefile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lake


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variant32f843fd21fc57a64ebad657f8c3b04129ae109e5b2d724ae2271a8ecc25a0fd

open Lake DSL

package std where
  moreLeanArgs := moreServerArgs.push "-DwarningAsError=true"
  moreServerArgs := moreServerArgs
where
  moreServerArgs := Id.run do
    let mut moreServerArgs := #["-Dlinter.missingDocs=true"]
    if get_config? disable_new_compiler |>.isSome then
      moreServerArgs := moreServerArgs.push "-Dcompiler.enableNew=false"
    moreServerArgs

@[default_target]
lean_lib Std

@[default_target]
lean_exe runLinter where
  srcDir := "scripts"
  supportInterpreter := true

meta if get_config? doc = some "on" then
require «doc-gen4» from git "https://github.com/leanprover/doc-gen4" @ "main"
```
