# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Shrink.Variant1c85e0ff93285c5c2dfd440b76168a8c7fa84f6fc9b552a4439c61e106a221eb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7707625ec1116be8cfe44b15157fd2420500c24b` · SHA-256 `6b579bdafc8566c468e9acd5b2c870fb6154c2cb5e244eca6268a1c52e48a3be`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Small.Variantc14bbff871238592db1898eb85ceecb255e17c4b012324e697a70a4c5fe21d0d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c14bbff871238592db1898eb85ceecb255e17c4b012324e697a70a4c5fe21d0d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Small.Variantc14bbff871238592db1898eb85ceecb255e17c4b012324e697a70a4c5fe21d0d","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"c14bbff871238592db1898eb85ceecb255e17c4b012324e697a70a4c5fe21d0d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Fintype/Shrink.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Data.Countable.Small
import Mathlib.Data.Fintype.EquivFin

/-!
# Fintype instance for `Shrink`
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Small.Variantc14bbff871238592db1898eb85ceecb255e17c4b012324e697a70a4c5fe21d0d

universe u v
variable {α : Type u} [Fintype α]

noncomputable instance Shrink.instFintype : Fintype (Shrink.{v} α) := .ofEquiv _ (equivShrink _)

instance Shrink.instFinite {α : Type u} [Finite α] : Finite (Shrink.{v} α) :=
  .of_equiv _ (equivShrink _)

@[simp] lemma Fintype.card_shrink [Fintype (Shrink.{v} α)] : card (Shrink.{v} α) = card α :=
  card_congr (equivShrink _).symm
```
