# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToDual.Variantee643d50e2b511c33fd23ce9d9bc5e0cd13369d264404e9c4188b7753b0a7663

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d96855e9b84e28d5fec65d0060b7273340c574eb` · SHA-256 `95f6c0ef8efe3af5c8c6fbba8168b497e77f4a0b7fb4e6eb1ed1d3cb45a62485`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.All.Variantc03a0f3d3cac3fcb81a766d80e476d565be679588a14eccbc618e67617d42471","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c03a0f3d3cac3fcb81a766d80e476d565be679588a14eccbc618e67617d42471","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.All.Variantc03a0f3d3cac3fcb81a766d80e476d565be679588a14eccbc618e67617d42471","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c03a0f3d3cac3fcb81a766d80e476d565be679588a14eccbc618e67617d42471","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/.lake/packages/mathlib/Mathlib/Tactic/ToDual.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Jovan Gerbscheid. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jovan Gerbscheid
-/
module

import all Init.Core -- TODO: for accessing proofs
public import Mathlib.Tactic.Translate.ToDual


/-!
## `@[to_dual]` attributes for basic types
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.All.Variantc03a0f3d3cac3fcb81a766d80e476d565be679588a14eccbc618e67617d42471

public meta section

attribute [to_dual self (reorder := 3 4)] LE.le LT.lt GE.ge GT.gt
attribute [to_dual self (reorder := 2 (1 2))] LE.mk LT.mk

to_dual_insert_cast_fun DecidableLE := fun inst a b ↦ inst b a, fun inst a b ↦ inst b a
to_dual_insert_cast_fun DecidableLT := fun inst a b ↦ inst b a, fun inst a b ↦ inst b a

attribute [to_dual_do_translate] Empty PEmpty Unit PUnit
attribute [to_dual_ignore_args 2] Subtype

set_option linter.existingAttributeWarning false in
attribute [to_dual self] ge_iff_le gt_iff_lt

attribute [to_dual le_of_eq_of_le''] le_of_eq_of_le
attribute [to_dual le_of_le_of_eq''] le_of_le_of_eq
attribute [to_dual lt_of_eq_of_lt''] lt_of_eq_of_lt
attribute [to_dual lt_of_lt_of_eq''] lt_of_lt_of_eq

attribute [to_dual] Max

attribute [to_dual existing] Std.LawfulOrderSup Std.LawfulOrderSup.mk Std.LawfulOrderSup.max_le_iff

-- We need to tag the lemmas used by `grind` in order to translate `grind` proofs.
namespace Lean.Grind.Order

attribute [to_dual existing le_of_eq_1] le_of_eq_2
attribute [to_dual self] le_of_not_le lt_of_not_le le_of_not_lt
attribute [to_dual self (reorder := 6 7)] eq_of_le_of_le
attribute [to_dual self (reorder := a c, h₁ h₂)] le_trans lt_trans
attribute [to_dual existing (reorder := a c, h₁ h₂) le_lt_trans] lt_le_trans
attribute [to_dual self] le_eq_true_of_lt le_eq_false_of_lt lt_eq_false_of_lt lt_eq_false_of_le

/- For now, we don't tag any `grind` lemmas involving offsets, but this may be done in the future.
These offset lemmas are:

le_of_eq_1_k, le_of_eq_2_k, le_of_not_lt_k, lt_of_not_le_k, le_trans_k, lt_trans_k, le_lt_trans_k,
lt_le_trans_k, le_unsat_k, lt_unsat_k, le_eq_true_of_le_k, le_eq_true_of_lt_k, lt_eq_true_of_lt_k,
lt_eq_true_of_le_k, le_eq_false_of_le_k, lt_eq_false_of_le_k, lt_eq_false_of_lt_k,
le_eq_false_of_lt_k -/

end Lean.Grind.Order
```
