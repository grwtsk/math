# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.CompleteLattice.Variant4903520d7cd5bb958d10578c553fbbce89ce927f0f8332f8b7995b122da61e32

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a700e4ca054bc12db4000aaefb3cf307c860dd0a` · SHA-256 `c19c1d27b98522c977927f5995e766379b0db04c3623a0125bdb8ea9934d918c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.CiSupMul.Variant3dca2aa9dd3d9505c6ff81d9dad17ab00632308b375c9722d6c353d5a50834a3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3dca2aa9dd3d9505c6ff81d9dad17ab00632308b375c9722d6c353d5a50834a3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.CiSupMul.Variant3dca2aa9dd3d9505c6ff81d9dad17ab00632308b375c9722d6c353d5a50834a3","mathematical_subject":"Algebra.OrderTheory","original_sha256":"3dca2aa9dd3d9505c6ff81d9dad17ab00632308b375c9722d6c353d5a50834a3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Order/Group/CompleteLattice.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yury G. Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury G. Kudryashov
-/
module

public import Mathlib.Algebra.Order.Group.OrderIso
public import Mathlib.Order.ConditionallyCompleteLattice.Indexed

/-!
# Distributivity of group operations over supremum/infimum
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.CiSupMul.Variant3dca2aa9dd3d9505c6ff81d9dad17ab00632308b375c9722d6c353d5a50834a3

public section

open Set

variable {ι G : Type*} [Group G] [ConditionallyCompleteLattice G] [Nonempty ι] {f : ι → G}

section Right
variable [MulRightMono G]

@[to_additive]
lemma ciSup_mul (hf : BddAbove (range f)) (a : G) : (⨆ i, f i) * a = ⨆ i, f i * a :=
  (OrderIso.mulRight a).map_ciSup hf

@[to_additive]
lemma ciSup_div (hf : BddAbove (range f)) (a : G) : (⨆ i, f i) / a = ⨆ i, f i / a := by
  simp only [div_eq_mul_inv, ciSup_mul hf]

@[to_additive]
lemma ciInf_mul (hf : BddBelow (range f)) (a : G) : (⨅ i, f i) * a = ⨅ i, f i * a :=
  (OrderIso.mulRight a).map_ciInf hf

@[to_additive]
lemma ciInf_div (hf : BddBelow (range f)) (a : G) : (⨅ i, f i) / a = ⨅ i, f i / a := by
  simp only [div_eq_mul_inv, ciInf_mul hf]

end Right

section Left
variable [MulLeftMono G]

@[to_additive]
lemma mul_ciSup (hf : BddAbove (range f)) (a : G) : (a * ⨆ i, f i) = ⨆ i, a * f i :=
  (OrderIso.mulLeft a).map_ciSup hf

@[to_additive]
lemma mul_ciInf (hf : BddBelow (range f)) (a : G) : (a * ⨅ i, f i) = ⨅ i, a * f i :=
  (OrderIso.mulLeft a).map_ciInf hf

end Left
```
