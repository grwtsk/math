# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attr.Variantf3b897cd553f08906b4dc4abe4ea0aa2e4b9ee6dc535b5e3b768194e1c556d56

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9baa3cceced4b2f60d23fde29b571a2fff96eefa` · SHA-256 `27a79a07dc3a33c5a5f320fefb86f145698bd55ba914db760337c17acc8fb1d3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variantcc59f5c95ce3b9cb263af7a057b6fc02001e85b7e72c6063496c61004e8b22a5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cc59f5c95ce3b9cb263af7a057b6fc02001e85b7e72c6063496c61004e8b22a5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Aesop.Variantcc59f5c95ce3b9cb263af7a057b6fc02001e85b7e72c6063496c61004e8b22a5","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"cc59f5c95ce3b9cb263af7a057b6fc02001e85b7e72c6063496c61004e8b22a5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Finset/Attr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Init
import Aesop
import Qq

/-!
# Aesop rule set for finsets

This file defines `finsetNonempty`, an aesop rule set to prove that a given finset is nonempty.
-/

-- `finsetNonempty` rules try to prove that a given finset is nonempty,
-- for use in positivity extensions.

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variantcc59f5c95ce3b9cb263af7a057b6fc02001e85b7e72c6063496c61004e8b22a5

declare_aesop_rule_sets [finsetNonempty] (default := true)

open Qq Lean Meta
```
