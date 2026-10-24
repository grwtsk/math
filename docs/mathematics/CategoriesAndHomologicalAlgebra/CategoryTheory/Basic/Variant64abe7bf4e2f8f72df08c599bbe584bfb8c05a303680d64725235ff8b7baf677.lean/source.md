# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant64abe7bf4e2f8f72df08c599bbe584bfb8c05a303680d64725235ff8b7baf677

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `43000f8972d6701de387186a74332bb94ff2a737` · SHA-256 `f4803753efee9d711d40deb5fc0e7c9d5c7a2c977971bc18ff585be796d0dd75`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Condensed.Variantceb4ccb751ef13dd24cf8de90bb583f17eabc99e6faf382795dc53d49fcae3ae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ceb4ccb751ef13dd24cf8de90bb583f17eabc99e6faf382795dc53d49fcae3ae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Condensed.Variantceb4ccb751ef13dd24cf8de90bb583f17eabc99e6faf382795dc53d49fcae3ae","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"ceb4ccb751ef13dd24cf8de90bb583f17eabc99e6faf382795dc53d49fcae3ae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Condensed/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Adam Topaz. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Adam Topaz
-/

import Mathlib.CategoryTheory.Sites.Sheaf
import Mathlib.Topology.Category.CompHaus.EffectiveEpi

/-!

# Condensed Objects

This file defines the category of condensed objects in a category `C`, following the work
of Clausen-Scholze and Barwick-Haine.

## Implementation Details

We use the coherent Grothendieck topology on `CompHaus`, and define condensed objects in `C` to
be `C`-valued sheaves, with respect to this Grothendieck topology.

Note: Our definition more closely resembles "Pyknotic objects" in the sense of Barwick-Haine,
as we do not impose cardinality bounds, and manage universes carefully instead.

## References

- [barwickhaine2019]: *Pyknotic objects, I. Basic notions*, 2019.
- [scholze2019condensed]: *Lectures on Condensed Mathematics*, 2019.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Condensed.Variantceb4ccb751ef13dd24cf8de90bb583f17eabc99e6faf382795dc53d49fcae3ae

open CategoryTheory Limits

open CategoryTheory

universe u v w

/--
`Condensed.{u} C` is the category of condensed objects in a category `C`, which are
defined as sheaves on `CompHaus.{u}` with respect to the coherent Grothendieck topology.
-/
def Condensed (C : Type w) [Category.{v} C] :=
  Sheaf (coherentTopology CompHaus.{u}) C

instance {C : Type w} [Category.{v} C] : Category (Condensed.{u} C) :=
  show Category (Sheaf _ _) from inferInstance

/--
Condensed sets (types) with the appropriate universe levels, i.e. `Type (u+1)`-valued
sheaves on `CompHaus.{u}`.
-/
abbrev CondensedSet := Condensed.{u} (Type (u+1))

namespace Condensed

variable {C : Type w} [Category.{v} C]

@[simp]
lemma id_val (X : Condensed.{u} C) : (𝟙 X : X ⟶ X).val = 𝟙 _ := rfl

@[simp]
lemma comp_val {X Y Z : Condensed.{u} C} (f : X ⟶ Y) (g : Y ⟶ Z) : (f ≫ g).val = f.val ≫ g.val :=
  rfl

@[ext]
lemma hom_ext {X Y : Condensed.{u} C} (f g : X ⟶ Y) (h : ∀ S, f.val.app S = g.val.app S) :
    f = g := by
  apply Sheaf.hom_ext
  ext
  exact h _

end Condensed

namespace CondensedSet

attribute [local instance] Types.instFunLike Types.instConcreteCategory in
-- Note: `simp` can prove this when stated for `Condensed C` for a concrete category `C`.
-- However, it doesn't seem to see through the abbreviation `CondensedSet`
@[simp]
lemma hom_naturality_apply {X Y : CondensedSet.{u}} (f : X ⟶ Y) {S T : CompHausᵒᵖ} (g : S ⟶ T)
    (x : X.val.obj S) : f.val.app T (X.val.map g x) = Y.val.map g (f.val.app S x) :=
  NatTrans.naturality_apply f.val g x

end CondensedSet
```
