-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceUnit.Variant11f61c2bcf2f9a9ad9631c787a1d6e9f5fa3681cd88944baae3df688b7eb65c4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"11f61c2bcf2f9a9ad9631c787a1d6e9f5fa3681cd88944baae3df688b7eb65c4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.SourceUnit.Variant11f61c2bcf2f9a9ad9631c787a1d6e9f5fa3681cd88944baae3df688b7eb65c4","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"11f61c2bcf2f9a9ad9631c787a1d6e9f5fa3681cd88944baae3df688b7eb65c4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/OfNat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Init

/-! # The `ofNat()` macro -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceUnit.Variant11f61c2bcf2f9a9ad9631c787a1d6e9f5fa3681cd88944baae3df688b7eb65c4

/--
This macro is a shorthand for `OfNat.ofNat` combined with `no_index`.

When writing lemmas about `OfNat.ofNat`, the term needs to be wrapped
in `no_index` so as not to confuse `simp`, as `no_index (OfNat.ofNat n)`.

Some discussion is [on Zulip here](https://leanprover.zulipchat.com/#narrow/stream/287929-mathlib4/topic/.E2.9C.94.20Polynomial.2Ecoeff.20example/near/395438147).
-/
macro "ofNat(" n:term ")" : term => `(no_index (OfNat.ofNat $n))
