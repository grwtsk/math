# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Linarith.Variantb74e47dbb64086de0add462a7f0cc86e6ff6cdfefd7fe49b86be67928e5bd4d6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0420508b1b6d8bc2f2b5fdf5294db7233894192c` · SHA-256 `db3fe26f23beea0b7275ba792acf60045d23cb3bf13c0d8cf02b2b1235091154`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Frontend.Variant1080aa2ac21e7cee050f2c4cb14dc5ad82c4bfb5f1dc5a99336005c222fca025","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1080aa2ac21e7cee050f2c4cb14dc5ad82c4bfb5f1dc5a99336005c222fca025","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Frontend.Variant1080aa2ac21e7cee050f2c4cb14dc5ad82c4bfb5f1dc5a99336005c222fca025","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1080aa2ac21e7cee050f2c4cb14dc5ad82c4bfb5f1dc5a99336005c222fca025","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Linarith.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Robert Y. Lewis. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Robert Y. Lewis
-/
import Mathlib.Tactic.Linarith.Frontend
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Hint

/-!
We register `linarith` with the `hint` tactic.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Frontend.Variant1080aa2ac21e7cee050f2c4cb14dc5ad82c4bfb5f1dc5a99336005c222fca025

register_hint linarith
```
