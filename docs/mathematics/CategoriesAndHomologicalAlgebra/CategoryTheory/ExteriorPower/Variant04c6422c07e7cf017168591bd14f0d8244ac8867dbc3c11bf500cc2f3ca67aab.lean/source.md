# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ExteriorPower.Variant04c6422c07e7cf017168591bd14f0d8244ac8867dbc3c11bf500cc2f3ca67aab

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `825aec1e2bfef0b3ecaf83c630ac3c6779d7b0e5` · SHA-256 `6931da1f8a9e60957d1e8ba050a168ea485850bf1774e7a67c6c977c0bbf0669`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ExteriorPower.Variant1d0e2eefb463e499a2b8b04b78b98931e4c426550491442b2acc277cebc128f1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1d0e2eefb463e499a2b8b04b78b98931e4c426550491442b2acc277cebc128f1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ExteriorPower.Variant1d0e2eefb463e499a2b8b04b78b98931e4c426550491442b2acc277cebc128f1","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"1d0e2eefb463e499a2b8b04b78b98931e4c426550491442b2acc277cebc128f1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Category/ModuleCat/ExteriorPower.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.LinearAlgebra.ExteriorPower.Basic
import Mathlib.Algebra.Category.ModuleCat.Basic

/-!
# The exterior powers as functors on the category of modules

In this file, given `M : ModuleCat R` and `n : ℕ`, we define `M.exteriorPower n : ModuleCat R`,
and this extends to a functor `ModuleCat.exteriorPower.functor : ModuleCat R ⥤ ModuleCat R`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ExteriorPower.Variant1d0e2eefb463e499a2b8b04b78b98931e4c426550491442b2acc277cebc128f1

universe v u

open CategoryTheory

namespace ModuleCat

variable {R : Type u} [CommRing R]

/-- The exterior power of an object in `ModuleCat R`. -/
def exteriorPower (M : ModuleCat.{v} R) (n : ℕ) : ModuleCat.{max u v} R :=
  ModuleCat.of R (⋀[R]^n M)

-- this could be an abbrev, but using a def eases automation
/-- The type of `n`-alternating maps on `M : ModuleCat R` to `N : ModuleCat R`. -/
def AlternatingMap (M : ModuleCat.{v} R) (N : ModuleCat.{max u v} R) (n : ℕ) :=
  _root_.AlternatingMap R M N (Fin n)

instance (M : ModuleCat.{v} R) (N : ModuleCat.{max u v} R) (n : ℕ) :
    FunLike (M.AlternatingMap N n) (Fin n → M) N :=
  inferInstanceAs (FunLike (M [⋀^(Fin n)]→ₗ[R] N) (Fin n → M) N)

namespace AlternatingMap

variable {M : ModuleCat.{v} R} {N : ModuleCat.{max u v} R} {n : ℕ}

@[ext]
lemma ext {φ φ' : M.AlternatingMap N n} (h : ∀ (x : Fin n → M), φ x = φ' x ) :
    φ = φ' :=
  _root_.AlternatingMap.ext h

variable (φ : M.AlternatingMap N n) {N' : ModuleCat.{max u v} R} (g : N ⟶ N')

/-- The postcomposition of an alternating map by a linear map. -/
def postcomp : M.AlternatingMap N' n :=
  g.hom.compAlternatingMap φ

@[simp]
lemma postcomp_apply (x : Fin n → M) :
    φ.postcomp g x = g (φ x) := rfl

end AlternatingMap

namespace exteriorPower

/-- Constructor for elements in `M.exteriorPower n` when `M` is an object of `ModuleCat R`
and `n : ℕ`. -/
def mk {M : ModuleCat.{v} R} {n : ℕ} :
    M.AlternatingMap (M.exteriorPower n) n :=
  exteriorPower.ιMulti _ _

@[ext]
lemma hom_ext {M : ModuleCat.{v} R} {N : ModuleCat.{max u v} R} {n : ℕ}
    {f g : M.exteriorPower n ⟶ N}
    (h : mk.postcomp f = mk.postcomp g) : f = g := by
  ext : 1
  exact exteriorPower.linearMap_ext h

/-- The morphism `M.exteriorPower n ⟶ N` induced by an alternating map. -/
noncomputable def desc {M : ModuleCat.{v} R} {n : ℕ} {N : ModuleCat.{max u v} R}
    (φ : M.AlternatingMap N n) : M.exteriorPower n ⟶ N :=
  ofHom (exteriorPower.alternatingMapLinearEquiv φ)

@[simp]
lemma desc_mk {M : ModuleCat.{v} R} {n : ℕ} {N : ModuleCat.{max u v} R}
    (φ : M.AlternatingMap N n) (x : Fin n → M) :
    desc φ (mk x) = φ x := by
  apply exteriorPower.alternatingMapLinearEquiv_apply_ιMulti

/-- The morphism `M.exteriorPower n ⟶ N.exteriorPower n` induced by a morphism `M ⟶ N`
in `ModuleCat R`. -/
noncomputable def map {M N : ModuleCat.{v} R} (f : M ⟶ N) (n : ℕ) :
    M.exteriorPower n ⟶ N.exteriorPower n :=
  ofHom (_root_.exteriorPower.map n f.hom)

@[simp]
lemma map_mk {M N : ModuleCat.{v} R} (f : M ⟶ N) {n : ℕ} (x : Fin n → M) :
    map f n (mk x) = mk (f ∘ x) := by
  apply exteriorPower.map_apply_ιMulti

variable (R) in
/-- The functor `ModuleCat R ⥤ ModuleCat R` which sends a module to its
`n`th exterior power. -/
@[simps]
noncomputable def functor (n : ℕ) : ModuleCat.{v} R ⥤ ModuleCat.{max u v} R where
  obj M := M.exteriorPower n
  map f := map f n

/-- The isomorphism `M.exteriorPower 0 ≅ ModuleCat.of R R`. -/
noncomputable def iso₀ (M : ModuleCat.{u} R) : M.exteriorPower 0 ≅ ModuleCat.of R R :=
  (exteriorPower.zeroEquiv R M).toModuleIso

@[simp]
lemma iso₀_hom_apply {M : ModuleCat.{u} R} (f : Fin 0 → M) :
    (iso₀ M).hom (mk f) = 1 :=
  exteriorPower.zeroEquiv_ιMulti _

@[reassoc (attr := simp)]
lemma iso₀_hom_naturality {M N : ModuleCat.{u} R} (f : M ⟶ N) :
    map f 0 ≫ (iso₀ N).hom = (iso₀ M).hom :=
  ModuleCat.hom_ext (exteriorPower.zeroEquiv_naturality f.hom)

/-- The isomorphism `M.exteriorPower 0 ≅ M`. -/
noncomputable def iso₁ (M : ModuleCat.{u} R) : M.exteriorPower 1 ≅ M :=
  (exteriorPower.oneEquiv R M).toModuleIso

@[simp]
lemma iso₁_hom_apply {M : ModuleCat.{u} R} (f : Fin 1 → M) :
    (iso₁ M).hom (mk f) = f 0 :=
  exteriorPower.oneEquiv_ιMulti _

@[reassoc (attr := simp)]
lemma iso₁_hom_naturality {M N : ModuleCat.{u} R} (f : M ⟶ N) :
    map f 1 ≫ (iso₁ N).hom = (iso₁ M).hom ≫ f :=
  ModuleCat.hom_ext (exteriorPower.oneEquiv_naturality f.hom)

variable (R)

/-- The natural isomorphism `M.exteriorPower 0 ≅ ModuleCat.of R R`. -/
noncomputable def natIso₀ : functor.{u} R 0 ≅ (Functor.const _).obj (ModuleCat.of R R) :=
  NatIso.ofComponents iso₀

/-- The natural isomorphism `M.exteriorPower 1 ≅ M`. -/
noncomputable def natIso₁ : functor.{u} R 1 ≅ 𝟭 _ :=
  NatIso.ofComponents iso₁

end exteriorPower

end ModuleCat
```
