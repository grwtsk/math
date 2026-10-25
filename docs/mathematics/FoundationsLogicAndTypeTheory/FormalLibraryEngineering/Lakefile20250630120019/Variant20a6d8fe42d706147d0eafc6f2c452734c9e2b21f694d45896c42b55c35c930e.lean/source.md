# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile20250630120019.Variant20a6d8fe42d706147d0eafc6f2c452734c9e2b21f694d45896c42b55c35c930e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `364a8fb5854d609ae6941eade7e65b9bf92b9c7a` · SHA-256 `298e5e4ed35e36e9ff79b5ce0ce3ca62bb909099a132c049349ecb1ff818767d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variant57185f12e486273ce291412de28762a6a8dc55afe77d1f84a7b7271267d408f5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"57185f12e486273ce291412de28762a6a8dc55afe77d1f84a7b7271267d408f5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Lake.Variant57185f12e486273ce291412de28762a6a8dc55afe77d1f84a7b7271267d408f5","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"57185f12e486273ce291412de28762a6a8dc55afe77d1f84a7b7271267d408f5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.history/lakefile_20250630120019.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lake

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variant57185f12e486273ce291412de28762a6a8dc55afe77d1f84a7b7271267d408f5

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
  git "https://github.com/leanprover-community/mathlib4" @ "master"

@[default_target]
lean_lib Spectral where
  -- all `.lean` files are under this folder:
  srcDir := "."
```
