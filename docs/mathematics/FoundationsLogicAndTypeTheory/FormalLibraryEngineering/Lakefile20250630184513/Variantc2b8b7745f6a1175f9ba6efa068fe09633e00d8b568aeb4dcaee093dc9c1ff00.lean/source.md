# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile20250630184513.Variantc2b8b7745f6a1175f9ba6efa068fe09633e00d8b568aeb4dcaee093dc9c1ff00

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2527dc64314a3eb76ef5599706372c82ba663b6e` · SHA-256 `333581ad53f132706eecf807f80db10ea4b64df840c10b7b02fd0d5ea2751c4a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variant92d4672e41290eb32c4f49be4d2be124d6c61574426fc26a6e35d55178a023b5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"92d4672e41290eb32c4f49be4d2be124d6c61574426fc26a6e35d55178a023b5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Lake.Variant92d4672e41290eb32c4f49be4d2be124d6c61574426fc26a6e35d55178a023b5","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"92d4672e41290eb32c4f49be4d2be124d6c61574426fc26a6e35d55178a023b5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.history/lakefile_20250630184513.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lake

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variant92d4672e41290eb32c4f49be4d2be124d6c61574426fc26a6e35d55178a023b5

open Lake DSL

/-
  lakefile.lean  – Spectral-RH
  ----------------------------
  * Uses the Lean tool-chain named in `.lean-toolchain`
  * Depends on mathlib4 `master`
  * Source directory is  `Spectral/`
-/

package Spectral where
  -- extra compiler flag (optional hygiene)
  moreLeanArgs := #[
    "-DautoImplicit=false"
  ]
  -- oleanCache   := false

/-- Use the head of mathlib4’s master branch. -/
require mathlib from
  git "https://github.com/leanprover-community/mathlib4" @ "nightly"

@[default_target]
lean_lib Spectral where
  -- all `.lean` files are under this folder:
  srcDir := "."
```
