# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.HomologicalComplexBiprod.Variantaf7ac02da12f15c7b22eab8624e964b542dfe9491705eb9aa3dab121a5b83652

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `edbe44580e65b9ece80de9251fd6f3fa5c522201` · SHA-256 `9fbb77220c1d6e0a1c6552ccf7dbeddfe5729faea213dda2d6b3a8a2e1e039cd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.HomologicalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.BiprodXIso.Variant8e6956113f2d4cf4fe526bbd6abb68a132d9ba22bfeb57fc8de935b3c6b64297","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8e6956113f2d4cf4fe526bbd6abb68a132d9ba22bfeb57fc8de935b3c6b64297","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.HomologicalAlgebra.SourceCorpus.BiprodXIso.Variant8e6956113f2d4cf4fe526bbd6abb68a132d9ba22bfeb57fc8de935b3c6b64297","mathematical_subject":"Algebra.HomologicalAlgebra","original_sha256":"8e6956113f2d4cf4fe526bbd6abb68a132d9ba22bfeb57fc8de935b3c6b64297","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Homology/HomologicalComplexBiprod.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Algebra.Homology.HomologicalComplexLimits
import Mathlib.Algebra.Homology.Additive

/-! Binary biproducts of homological complexes

In this file, it is shown that if two homological complex `K` and `L` in
a preadditive category are such that for all `i : ι`, the binary biproduct
`K.X i ⊞ L.X i` exists, then `K ⊞ L` exists, and there is an isomorphism
`biprodXIso K L i : (K ⊞ L).X i ≅ (K.X i) ⊞ (L.X i)`.

-/

namespace GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.BiprodXIso.Variant8e6956113f2d4cf4fe526bbd6abb68a132d9ba22bfeb57fc8de935b3c6b64297

open CategoryTheory Limits

namespace HomologicalComplex

variable {C ι : Type*} [Category C] [Preadditive C] {c : ComplexShape ι}
  (K L : HomologicalComplex C c) [∀ i, HasBinaryBiproduct (K.X i) (L.X i)]

instance (i : ι) : HasBinaryBiproduct ((eval C c i).obj K) ((eval C c i).obj L) := by
  dsimp [eval]
  infer_instance

instance (i : ι) : HasLimit ((pair K L) ⋙ (eval C c i)) := by
  have e : _ ≅ pair (K.X i) (L.X i) := diagramIsoPair (pair K L ⋙ eval C c i)
  exact hasLimit_of_iso e.symm

instance (i : ι) : HasColimit ((pair K L) ⋙ (eval C c i)) := by
  have e : _ ≅ pair (K.X i) (L.X i) := diagramIsoPair (pair K L ⋙ eval C c i)
  exact hasColimit_of_iso e

instance : HasBinaryBiproduct K L := HasBinaryBiproduct.of_hasBinaryProduct _ _

instance (i : ι) : PreservesBinaryBiproduct K L (eval C c i) :=
  preservesBinaryBiproduct_of_preservesBinaryProduct _

/-- The canonical isomorphism `(K ⊞ L).X i ≅ (K.X i) ⊞ (L.X i)`. -/
noncomputable def biprodXIso (i : ι) : (K ⊞ L).X i ≅ (K.X i) ⊞ (L.X i) :=
  (eval C c i).mapBiprod K L

@[reassoc (attr := simp)]
lemma inl_biprodXIso_inv (i : ι) :
    biprod.inl ≫ (biprodXIso K L i).inv = (biprod.inl : K ⟶ K ⊞ L).f i := by
  simp [biprodXIso]

@[reassoc (attr := simp)]
lemma inr_biprodXIso_inv (i : ι) :
    biprod.inr ≫ (biprodXIso K L i).inv = (biprod.inr : L ⟶ K ⊞ L).f i := by
  simp [biprodXIso]

@[reassoc (attr := simp)]
lemma biprodXIso_hom_fst (i : ι) :
    (biprodXIso K L i).hom ≫ biprod.fst = (biprod.fst : K ⊞ L ⟶ K).f i := by
  simp [biprodXIso]

@[reassoc (attr := simp)]
lemma biprodXIso_hom_snd (i : ι) :
    (biprodXIso K L i).hom ≫ biprod.snd = (biprod.snd : K ⊞ L ⟶ L).f i := by
  simp [biprodXIso]

@[reassoc (attr := simp)]
lemma biprod_inl_fst_f (i : ι) :
    (biprod.inl : K ⟶ K ⊞ L).f i ≫ (biprod.fst : K ⊞ L ⟶ K).f i = 𝟙 _ := by
  rw [← comp_f, biprod.inl_fst, id_f]

@[reassoc (attr := simp)]
lemma biprod_inl_snd_f (i : ι) :
    (biprod.inl : K ⟶ K ⊞ L).f i ≫ (biprod.snd : K ⊞ L ⟶ L).f i = 0 := by
  rw [← comp_f, biprod.inl_snd, zero_f]

@[reassoc (attr := simp)]
lemma biprod_inr_fst_f (i : ι) :
    (biprod.inr : L ⟶ K ⊞ L).f i ≫ (biprod.fst : K ⊞ L ⟶ K).f i = 0 := by
  rw [← comp_f, biprod.inr_fst, zero_f]

@[reassoc (attr := simp)]
lemma biprod_inr_snd_f (i : ι) :
    (biprod.inr : L ⟶ K ⊞ L).f i ≫ (biprod.snd : K ⊞ L ⟶ L).f i = 𝟙 _ := by
  rw [← comp_f, biprod.inr_snd, id_f]

variable {K L}
variable {M : HomologicalComplex C c}

@[reassoc (attr := simp)]
lemma biprod_inl_desc_f (α : K ⟶ M) (β : L ⟶ M) (i : ι) :
    (biprod.inl : K ⟶ K ⊞ L).f i ≫ (biprod.desc α β).f i = α.f i := by
  rw [← comp_f, biprod.inl_desc]

@[reassoc (attr := simp)]
lemma biprod_inr_desc_f (α : K ⟶ M) (β : L ⟶ M) (i : ι) :
    (biprod.inr : L ⟶ K ⊞ L).f i ≫ (biprod.desc α β).f i = β.f i := by
  rw [← comp_f, biprod.inr_desc]

@[reassoc (attr := simp)]
lemma biprod_lift_fst_f (α : M ⟶ K) (β : M ⟶ L) (i : ι) :
    (biprod.lift α β).f i ≫ (biprod.fst : K ⊞ L ⟶ K).f i = α.f i := by
  rw [← comp_f, biprod.lift_fst]

@[reassoc (attr := simp)]
lemma biprod_lift_snd_f (α : M ⟶ K) (β : M ⟶ L) (i : ι) :
    (biprod.lift α β).f i ≫ (biprod.snd : K ⊞ L ⟶ L).f i = β.f i := by
  rw [← comp_f, biprod.lift_snd]

end HomologicalComplex
```
