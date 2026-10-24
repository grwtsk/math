# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Finite.Variantb41e88871cc3b5d259f2097dd541ab7d6055b950240b72785d223d545b8e29b0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c510e8d93f588ef5baad0dec9ba5579672095dc` · SHA-256 `e1fc8ce21460943820fc7ff3838029a47773f3c8c73a6b01e2caaebba79acf44`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TypeTags.Variantdc2fddb4cb99f92dc5c3b39610975ae384377a3692e4f6fd32d272ad8d3ac7dd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dc2fddb4cb99f92dc5c3b39610975ae384377a3692e4f6fd32d272ad8d3ac7dd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.TypeTags.Variantdc2fddb4cb99f92dc5c3b39610975ae384377a3692e4f6fd32d272ad8d3ac7dd","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"dc2fddb4cb99f92dc5c3b39610975ae384377a3692e4f6fd32d272ad8d3ac7dd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Group/TypeTags/Finite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Algebra.Group.TypeTags.Basic
import Mathlib.Data.Finite.Defs
import Mathlib.Data.Fintype.Card

/-!
# `Finite`, `Infinite` and `Fintype` are preserved by `Additive` and `Multiplicative`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TypeTags.Variantdc2fddb4cb99f92dc5c3b39610975ae384377a3692e4f6fd32d272ad8d3ac7dd

assert_not_exists MonoidWithZero MulAction

universe u

variable {α : Type u}

instance [Finite α] : Finite (Additive α) :=
  Finite.of_equiv α (by rfl)

instance [Finite α] : Finite (Multiplicative α) :=
  Finite.of_equiv α (by rfl)

instance [h : Infinite α] : Infinite (Additive α) := h

instance [h : Infinite α] : Infinite (Multiplicative α) := h

instance Additive.fintype : ∀ [Fintype α], Fintype (Additive α) :=
  Fintype.ofEquiv α Additive.ofMul

instance Multiplicative.fintype : ∀ [Fintype α], Fintype (Multiplicative α) :=
  Fintype.ofEquiv α Multiplicative.ofAdd

@[simp] lemma Fintype.card_multiplicative (α : Type*) [Fintype α] :
    card (Multiplicative α) = card α := Finset.card_map _

@[simp] lemma Fintype.card_additive (α : Type*) [Fintype α] : card (Additive α) = card α :=
  Finset.card_map _
```
