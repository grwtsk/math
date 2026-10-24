# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Restriction.Variant2e43e6f5b4fea6e0359e0f773ee3553ca0c3e48c1b2db49fa90b1364e6e783e8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5f7a1998507e0958a870eb62fbb03fa0a4fe72c9` · SHA-256 `9a27c393e6a46a69bfa6b9c70b3ebf77864d5b6955f96f3c7f64aad31acd2856`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.HomologicalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Restriction.Variantd0bcc21b41d73485a6abe65fc50efa62725c2a220f34f7b88c205c7ef5b437d5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d0bcc21b41d73485a6abe65fc50efa62725c2a220f34f7b88c205c7ef5b437d5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.HomologicalAlgebra.SourceCorpus.Restriction.Variantd0bcc21b41d73485a6abe65fc50efa62725c2a220f34f7b88c205c7ef5b437d5","mathematical_subject":"Algebra.HomologicalAlgebra","original_sha256":"d0bcc21b41d73485a6abe65fc50efa62725c2a220f34f7b88c205c7ef5b437d5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Homology/Embedding/Restriction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Algebra.Homology.Embedding.Basic
import Mathlib.Algebra.Homology.Additive

/-!
# The restriction functor of an embedding of complex shapes

Given `c` and `c'` complex shapes on two types, and `e : c.Embedding c'`
(satisfying `[e.IsRelIff]`), we define the restriction functor
`e.restrictionFunctor C : HomologicalComplex C c' ⥤ HomologicalComplex C c`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Restriction.Variantd0bcc21b41d73485a6abe65fc50efa62725c2a220f34f7b88c205c7ef5b437d5

open CategoryTheory Category Limits ZeroObject

variable {ι ι' : Type*} {c : ComplexShape ι} {c' : ComplexShape ι'}

namespace HomologicalComplex

variable {C : Type*} [Category C] [HasZeroMorphisms C]
  (K L M : HomologicalComplex C c') (φ : K ⟶ L) (φ' : L ⟶ M)
  (e : c.Embedding c') [e.IsRelIff]

/-- Given `K : HomologicalComplex C c'` and `e : c.Embedding c'` (satisfying `[e.IsRelIff]`),
this is the homological complex in `HomologicalComplex C c` obtained by restriction. -/
@[simps]
def restriction : HomologicalComplex C c where
  X i := K.X (e.f i)
  d _ _ := K.d _ _
  shape i j hij := K.shape _ _ (by simpa only [← e.rel_iff] using hij)

/-- The isomorphism `(K.restriction e).X i ≅ K.X i'` when `e.f i = i'`. -/
def restrictionXIso {i : ι} {i' : ι'} (h : e.f i = i') :
    (K.restriction e).X i ≅ K.X i' :=
  eqToIso (h ▸ rfl)

@[reassoc]
lemma restriction_d_eq {i j : ι} {i' j' : ι'} (hi : e.f i = i') (hj : e.f j = j') :
    (K.restriction e).d i j = (K.restrictionXIso e hi).hom ≫ K.d i' j' ≫
      (K.restrictionXIso e hj).inv := by
  subst hi hj
  simp [restrictionXIso]

variable {K L}

/-- The morphism `K.restriction e ⟶ L.restriction e` induced by a morphism `φ : K ⟶ L`. -/
@[simps]
def restrictionMap : K.restriction e ⟶ L.restriction e where
  f i := φ.f (e.f i)

@[reassoc]
lemma restrictionMap_f' {i : ι} {i' : ι'} (hi : e.f i = i') :
    (restrictionMap φ e).f i = (K.restrictionXIso e hi).hom ≫
      φ.f i' ≫ (L.restrictionXIso e hi).inv := by
  subst hi
  simp [restrictionXIso]

variable (K)

@[simp]
lemma restrictionMap_id : restrictionMap (𝟙 K) e = 𝟙 _ := rfl

@[simp, reassoc]
lemma restrictionMap_comp :
    restrictionMap (φ ≫ φ') e = restrictionMap φ e ≫ restrictionMap φ' e := rfl

end HomologicalComplex

namespace ComplexShape.Embedding

variable (e : Embedding c c') (C : Type*) [Category C] [HasZeroObject C] [e.IsRelIff]

/-- Given `e : ComplexShape.Embedding c c'`, this is the restriction
functor `HomologicalComplex C c' ⥤ HomologicalComplex C c`. -/
@[simps]
noncomputable def restrictionFunctor [HasZeroMorphisms C] :
    HomologicalComplex C c' ⥤ HomologicalComplex C c where
  obj K := K.restriction e
  map φ := HomologicalComplex.restrictionMap φ e

instance [HasZeroMorphisms C] : (e.restrictionFunctor C).PreservesZeroMorphisms where

instance [Preadditive C] : (e.restrictionFunctor C).Additive where

end ComplexShape.Embedding
```
