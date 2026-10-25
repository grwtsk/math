# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile.Variant0e4bb06a040bcd9d8affd4fadf0511c2a835ce6e8ad4964ed715366bd27cab8a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2250324a07b5df6944a76436dd930e1489d5fff3` · SHA-256 `bd329a0253aee5707389d4946a0446f252f10bafc660f79d61d70ebc833766d8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variante6c2569529370f80d19846f52b29c0398b2bac475468f5e8f1f4f573c03964fd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e6c2569529370f80d19846f52b29c0398b2bac475468f5e8f1f4f573c03964fd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Lake.Variante6c2569529370f80d19846f52b29c0398b2bac475468f5e8f1f4f573c03964fd","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"e6c2569529370f80d19846f52b29c0398b2bac475468f5e8f1f4f573c03964fd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/lakefile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lake

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variante6c2569529370f80d19846f52b29c0398b2bac475468f5e8f1f4f573c03964fd

open Lake DSL

/-
  lakefile.lean  – Spectral-RH
  ----------------------------
  * Uses the Lean tool-chain named in `.lean-toolchain`
  * Depends on mathlib4 `master`
  * Source directory is  `Spectral/`
-/

package Spectral where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/7e1cb02402a6515141bc7410eaaf60f5bff480146158b6e3db72b6b16e6ad7c7/src"
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
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/7e1cb02402a6515141bc7410eaaf60f5bff480146158b6e3db72b6b16e6ad7c7/src"
  -- all `.lean` files are under this folder:
```
