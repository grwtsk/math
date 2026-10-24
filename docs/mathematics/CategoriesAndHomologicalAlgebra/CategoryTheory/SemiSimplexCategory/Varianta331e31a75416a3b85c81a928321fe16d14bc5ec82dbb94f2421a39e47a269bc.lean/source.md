# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SemiSimplexCategory.Varianta331e31a75416a3b85c81a928321fe16d14bc5ec82dbb94f2421a39e47a269bc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8fd663bce21d251278e42855e902b4f079771767` · SHA-256 `ffcd66735d8e9cdf436843c07cbe8b1d66c0ea4fafcca350ae8c7f5a7cd568f4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SemiSimplexCategory.Variantd83431814b02e0b164dd838f511b68249aaa9f2752b9261f4488bdfa46f2ae4a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d83431814b02e0b164dd838f511b68249aaa9f2752b9261f4488bdfa46f2ae4a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.SemiSimplexCategory.Variantd83431814b02e0b164dd838f511b68249aaa9f2752b9261f4488bdfa46f2ae4a","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"d83431814b02e0b164dd838f511b68249aaa9f2752b9261f4488bdfa46f2ae4a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/AlgebraicTopology/SimplexCategory/SemiSimplexCategory.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.AlgebraicTopology.SimplexCategory.Basic

/-!
# The semi-simplex category

We define a category `SemiSimplexCategory` so that semi-simplicial objects
can be defined (TODO) as functors from `SemiSimplexCategoryᵒᵖ` similarly
as simplicial objects are functors from `SimplexCategory`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SemiSimplexCategory.Variantd83431814b02e0b164dd838f511b68249aaa9f2752b9261f4488bdfa46f2ae4a

@[expose] public section

open CategoryTheory

open scoped Simplicial

/-- The category whose objects are denoted `⦋n⦌ₛ` for `n : ℕ` and
morphisms `⦋n⦌ₛ ⟶ ⦋m⦌ₛ` are order embeddings `Fin (n.len + 1) ↪o Fin (m.len + 1)`.
(This identifies to a wide subcategory of the category `SemiSimplex`, which
has the "same" objects, and morphisms `Fin (n.len + 1) →o Fin (m.len + 1)`,
see the faithful functor `SemiSimplexCategory.toSimplexCategory`.) -/
@[ext]
structure SemiSimplexCategory : Type where
  /-- Constructor `ℕ → SemiSimplexCategory`. -/
  mk ::
  /-- The length of an object in `SemiSimplexCategory` -/
  len : ℕ

namespace SemiSimplexCategory

/-- The object of `SemiSimplexCategory` corresponding to `n : ℕ` is denoted `⦋n⦌ₛ`. -/
scoped[Simplicial] notation "⦋" n "⦌ₛ" => SemiSimplexCategory.mk n

/-- The type of morphisms in the semi-simplex category are order embeddings.
This type is made irreducible: use `SemiSimplexCategory.homEquiv` to make
the conversion. -/
def Hom (n m : SemiSimplexCategory) := Fin (n.len + 1) ↪o Fin (m.len + 1)

instance smallCategory : SmallCategory.{0} SemiSimplexCategory where
  Hom := Hom
  id _ := .refl _
  comp f g := f.trans g

/-- Morphisms `n ⟶ m` in `SemiSimplexCategory` identify to order embeddings
`Fin (n.len + 1) ↪o Fin (m.len + 1)`. -/
def homEquiv {n m : SemiSimplexCategory} :
    (n ⟶ m) ≃ (Fin (n.len + 1) ↪o Fin (m.len + 1)) :=
  .refl _

@[simp]
lemma homEquiv_id (a : SemiSimplexCategory) :
    homEquiv (𝟙 a) = .refl _ := rfl

@[simp]
lemma homEquiv_comp {a b c : SemiSimplexCategory} (f : a ⟶ b) (g : b ⟶ c) :
    homEquiv (f ≫ g) = (homEquiv f).trans (homEquiv g) := rfl

attribute [irreducible] Hom

@[ext]
theorem hom_ext {a b : SemiSimplexCategory} {f g : a ⟶ b}
    (h : homEquiv f = homEquiv g) : f = g :=
  homEquiv.injective h

/-- The inclusion functor `SemiSimplexCategory ⥤ SimplexCategory`. -/
def toSimplexCategory : SemiSimplexCategory ⥤ SimplexCategory where
  obj n := ⦋n.len⦌
  map f := SimplexCategory.Hom.mk (homEquiv f).toOrderHom

@[simp]
lemma toSimplexCategory_obj (n : ℕ) :
    toSimplexCategory.obj ⦋n⦌ₛ = ⦋n⦌ := rfl

instance : toSimplexCategory.Faithful where
  map_injective h := by
    ext : 2
    apply ConcreteCategory.congr_hom h

instance {n m : SemiSimplexCategory} (f : n ⟶ m) : Mono (toSimplexCategory.map f) := by
  rw [SimplexCategory.mono_iff_injective]
  exact (homEquiv f).injective

instance {n m : SemiSimplexCategory} (f : n ⟶ m) : Mono f where
  right_cancellation g₁ g₂ h := by
    apply toSimplexCategory.map_injective
    simp only [← cancel_mono (toSimplexCategory.map f), ← Functor.map_comp, h]

/-- Constructor for morphisms in `SemiSimplexCategory` which takes as an input
a monomorphism in `SimplexCategory`. -/
def homOfMono {n m : SemiSimplexCategory}
    (f : toSimplexCategory.obj n ⟶ toSimplexCategory.obj m) [Mono f] : n ⟶ m :=
  homEquiv.symm (OrderEmbedding.ofStrictMono f.toOrderHom
    ((SimplexCategory.Hom.toOrderHom f).monotone.strictMono_of_injective
      (by rwa [← SimplexCategory.mono_iff_injective])))

@[simp]
lemma toSimplexCategory_map_homOfMono {n m : SemiSimplexCategory}
    (f : toSimplexCategory.obj n ⟶ toSimplexCategory.obj m) [Mono f] :
    toSimplexCategory.map (homOfMono f) = f := by
  aesop

end SemiSimplexCategory
```
