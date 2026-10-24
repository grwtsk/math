# Complete source: GRWTSK.Algebra.GroupTheory.Submonoid.Variant85a7e856004e97ea2ecc77d463a33f102aa356f94600f15f70a1ab32083309ad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fd535c7d960343de60a463d8e4272092fcd8afff` · SHA-256 `380d66e90399d8bbfd23b17854c8337bb5255de68367baf6c0fc02b376b5c3a0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.Submonoid.Variantba5b310f916f7068a463f4b88d7bc35a0458626b87f2b99c5822b607fd6aad8e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ba5b310f916f7068a463f4b88d7bc35a0458626b87f2b99c5822b607fd6aad8e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.Submonoid.Variantba5b310f916f7068a463f4b88d7bc35a0458626b87f2b99c5822b607fd6aad8e","mathematical_subject":"Algebra.Groups","original_sha256":"ba5b310f916f7068a463f4b88d7bc35a0458626b87f2b99c5822b607fd6aad8e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Archimedean/Submonoid.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yakov Pechersky. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yakov Pechersky
-/
import Mathlib.Algebra.Group.Submonoid.Defs
import Mathlib.Algebra.Order.Archimedean.Basic

/-!
# Submonoids of archimedean monoids

This file defines the instances that show that the (mul)archimedean property is retained in a
submonoid of the ambient group.

## Main statements

* `SubmonoidClass.instMulArchimedean`: the submonoid (and similar subobjects) of a mul-archimedean
  group retains the mul-archimedean property when restricted to the submonoid.
* `AddSubmonoidClass.instArchimedean`: the additive submonoid (and similar subobjects) of an
  archimedean additive group retains the archimedean property when restricted to the additive
  submonoid.
-/


namespace GRWTSK.Algebra.GroupTheory.Submonoid.Variantba5b310f916f7068a463f4b88d7bc35a0458626b87f2b99c5822b607fd6aad8e

assert_not_exists Finset

@[to_additive]
instance SubmonoidClass.instMulArchimedean {M S : Type*} [SetLike S M]
    [CommMonoid M] [PartialOrder M]
    [SubmonoidClass S M] [MulArchimedean M] (H : S) : MulArchimedean H := by
  constructor
  rintro x _
  simp only [← Subtype.coe_lt_coe, OneMemClass.coe_one, SubmonoidClass.mk_pow, Subtype.mk_le_mk]
  exact MulArchimedean.arch x.val
```
