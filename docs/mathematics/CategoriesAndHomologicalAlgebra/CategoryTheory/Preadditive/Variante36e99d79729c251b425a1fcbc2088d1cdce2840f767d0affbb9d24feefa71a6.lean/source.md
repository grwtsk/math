# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Preadditive.Variante36e99d79729c251b425a1fcbc2088d1cdce2840f767d0affbb9d24feefa71a6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b6f527bf20934361c116e003ea8a80afe833daf` · SHA-256 `0789b5ad812b4107581891735e70082979239d706156885d1d06681895af33a1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomAddApply.Variantc065c57ced0223c2361271c4219fb77b11a97a3008ac082d8d00e67754c0f696","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c065c57ced0223c2361271c4219fb77b11a97a3008ac082d8d00e67754c0f696","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.HomAddApply.Variantc065c57ced0223c2361271c4219fb77b11a97a3008ac082d8d00e67754c0f696","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"c065c57ced0223c2361271c4219fb77b11a97a3008ac082d8d00e67754c0f696","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Category/Grp/Preadditive.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.Algebra.Category.Grp.Basic
import Mathlib.CategoryTheory.Preadditive.Basic

/-!
# The category of additive commutative groups is preadditive.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomAddApply.Variantc065c57ced0223c2361271c4219fb77b11a97a3008ac082d8d00e67754c0f696

assert_not_exists Subgroup

open CategoryTheory

universe u

namespace AddCommGrp

variable {M N : AddCommGrp.{u}}

instance : Add (M ⟶ N) where
  add f g := ofHom (f.hom + g.hom)

@[simp] lemma hom_add (f g : M ⟶ N) : (f + g).hom = f.hom + g.hom := rfl

lemma hom_add_apply {P Q : AddCommGrp} (f g : P ⟶ Q) (x : P) : (f + g) x = f x + g x := rfl

instance : Zero (M ⟶ N) where
  zero := ofHom 0

@[simp] lemma hom_zero : (0 : M ⟶ N).hom = 0 := rfl

instance : SMul ℕ (M ⟶ N) where
  smul n f := ofHom (n • f.hom)

@[simp] lemma hom_nsmul (n : ℕ) (f : M ⟶ N) : (n • f).hom = n • f.hom := rfl

instance : Neg (M ⟶ N) where
  neg f := ofHom (-f.hom)

@[simp] lemma hom_neg (f : M ⟶ N) : (-f).hom = -f.hom := rfl

instance : Sub (M ⟶ N) where
  sub f g := ofHom (f.hom - g.hom)

@[simp] lemma hom_sub (f g : M ⟶ N) : (f - g).hom = f.hom - g.hom := rfl

instance : SMul ℤ (M ⟶ N) where
  smul n f := ofHom (n • f.hom)

@[simp] lemma hom_zsmul (n : ℕ) (f : M ⟶ N) : (n • f).hom = n • f.hom := rfl

instance (P Q : AddCommGrp) : AddCommGroup (P ⟶ Q) :=
  Function.Injective.addCommGroup (Hom.hom) ConcreteCategory.hom_injective
    rfl (fun _ _ => rfl) (fun _ => rfl) (fun _ _ => rfl) (fun _ _ => rfl) (fun _ _ => rfl)

instance : Preadditive AddCommGrp where

/-- `AddCommGrp.Hom.hom` bundled as an additive equivalence. -/
@[simps!]
def homAddEquiv : (M ⟶ N) ≃+ (M →+ N) :=
  { ConcreteCategory.homEquiv (C := AddCommGrp) with
    map_add' _ _ := rfl }

end AddCommGrp
```
