# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Instances.Variantbd743f75f050b5e62087b2cf7285ca52d13de3caa2a1b2210a114f3a0cff1a7a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f254d20f10cac42a5591bcbf8627d9616a5f237d` · SHA-256 `5e8d14dfd26544722a786c6b1356fb253ba86d9e3264aa288db85ccbe60b6ffa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.EquivFunctor.Variant2d57dedceafdaa92b40e4a38481cf42d1e1ee72447ecb781fe93f8b2537aefd9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2d57dedceafdaa92b40e4a38481cf42d1e1ee72447ecb781fe93f8b2537aefd9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.EquivFunctor.Variant2d57dedceafdaa92b40e4a38481cf42d1e1ee72447ecb781fe93f8b2537aefd9","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"2d57dedceafdaa92b40e4a38481cf42d1e1ee72447ecb781fe93f8b2537aefd9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Control/EquivFunctor/Instances.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Control.EquivFunctor
import Mathlib.Data.Fintype.OfMap

/-!
# `EquivFunctor` instances

We derive some `EquivFunctor` instances, to enable `equiv_rw` to rewrite under these functions.
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EquivFunctor.Variant2d57dedceafdaa92b40e4a38481cf42d1e1ee72447ecb781fe93f8b2537aefd9

open Equiv

instance EquivFunctorUnique : EquivFunctor Unique where
  map e := Equiv.uniqueCongr e
  map_refl' α := by simp [eq_iff_true_of_subsingleton]
  map_trans' := by simp [eq_iff_true_of_subsingleton]

instance EquivFunctorPerm : EquivFunctor Perm where
  map e p := (e.symm.trans p).trans e
  map_refl' α := by ext; simp
  map_trans' _ _ := by ext; simp

-- There is a classical instance of `LawfulFunctor Finset` available,
-- but we provide this computable alternative separately.
instance EquivFunctorFinset : EquivFunctor Finset where
  map e s := s.map e.toEmbedding
  map_refl' α := by ext; simp
  map_trans' k h := by
    ext _ a; simp; constructor <;> intro h'
    · let ⟨a, ha₁, ha₂⟩ := h'
      rw [← ha₂]; simpa
    · exists (Equiv.symm k) ((Equiv.symm h) a)
      simp [h']

instance EquivFunctorFintype : EquivFunctor Fintype where
  map e _ := Fintype.ofBijective e e.bijective
  map_refl' α := by ext; simp [eq_iff_true_of_subsingleton]
  map_trans' := by simp [eq_iff_true_of_subsingleton]
```
