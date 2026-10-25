# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Init.Variantad5178e6f4cd55c188a3ed518fc4a6f8cde3710ff3f112ed15f1123251cc2d8a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a451585987be0a79b8546a329b76eaf48c89a18d` · SHA-256 `2652bb13e603794c22793cbcb9fa553b6d549290cb23ad9b365ad7b63ab90e20`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant53ad701d5ff74e96f44f3a7bea1ab24eb99c550ef566c03aac2206487941c9d7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"53ad701d5ff74e96f44f3a7bea1ab24eb99c550ef566c03aac2206487941c9d7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Aesop.Variant53ad701d5ff74e96f44f3a7bea1ab24eb99c550ef566c03aac2206487941c9d7","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"53ad701d5ff74e96f44f3a7bea1ab24eb99c550ef566c03aac2206487941c9d7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Matroid/Init.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Peter Nelson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Peter Nelson
-/
import Mathlib.Init
import Aesop

/-!
# Matroid Rule Set

This module defines the `Matroid` Aesop rule set which is used by the
`aesop_mat` tactic. Aesop rule sets only become visible once the file in which
they're declared is imported, so we must put this declaration into its own file.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant53ad701d5ff74e96f44f3a7bea1ab24eb99c550ef566c03aac2206487941c9d7

declare_aesop_rule_sets [Matroid]
```
