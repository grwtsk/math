# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LocallyDirected.Variant17400fece99bd2be098350ff327dbfe91c81b30ba2cf57fd8e685feeca8a4820

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f55df320dddb9dd623bcaab06348f294280a6536` · SHA-256 `9f65bb337ed9443887b7317defa56e57076abd15cd47f10ef2531611dc516185`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorIsLocallyDirected.Variant495d046f292da0be91973ed5700746313942a797bf32e0a19711e2209c251ede","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"495d046f292da0be91973ed5700746313942a797bf32e0a19711e2209c251ede","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.FunctorIsLocallyDirected.Variant495d046f292da0be91973ed5700746313942a797bf32e0a19711e2209c251ede","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"495d046f292da0be91973ed5700746313942a797bf32e0a19711e2209c251ede","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/LocallyDirected.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
module

public import Mathlib.CategoryTheory.Limits.Shapes.WidePullbacks

/-!
# Locally directed gluing

We say that a diagram of sets is "locally directed" if for any `V, W ⊆ U` in the diagram,
`V ∩ W` is a union of elements in the diagram. Equivalently, for every `x ∈ U` in the diagram,
the set of elements containing `x` is directed (and hence the name).

This is the condition needed to show that a colimit (in `TopCat`) of open embeddings is the
gluing of the open sets. See `Mathlib/AlgebraicGeometry/Gluing.lean` for an actual application.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorIsLocallyDirected.Variant495d046f292da0be91973ed5700746313942a797bf32e0a19711e2209c251ede

public section

namespace CategoryTheory

open Limits

variable {J : Type*} [Category* J]

/--
We say that a functor `F` to `Type*` is locally directed if for every `x ∈ F.obj k`, the
set of `F.obj` containing `x` is (co)directed.
That is, for each diagram
```
      x ∈ Fₖ
    ↗       ↖
xᵢ ∈ Fᵢ    xⱼ ∈ Fⱼ
```
there exists
```
xᵢ ∈ Fᵢ    xⱼ ∈ Fⱼ
    ↖       ↗
      xₗ ∈ Fₗ
```
that commutes with it.
-/
class Functor.IsLocallyDirected (F : J ⥤ Type*) : Prop where
  cond (F) : ∀ {i j k} (fi : i ⟶ k) (fj : j ⟶ k) (xi : F.obj i) (xj : F.obj j),
    F.map fi xi = F.map fj xj → ∃ (l : J) (fli : l ⟶ i) (flj : l ⟶ j) (x : _),
      F.map fli x = xi ∧ F.map flj x = xj

alias Functor.exists_map_eq_of_isLocallyDirected := Functor.IsLocallyDirected.cond

instance (F : Discrete J ⥤ Type*) : F.IsLocallyDirected := by
  constructor
  rintro ⟨i⟩ ⟨j⟩ ⟨k⟩ ⟨⟨⟨⟩⟩⟩ ⟨⟨⟨⟩⟩⟩
  simpa using fun x ↦ ⟨i, 𝟙 _, 𝟙 _, x, by simp⟩

instance (F : WidePushoutShape J ⥤ Type*) [∀ i, Mono (F.map (.init i))] :
    F.IsLocallyDirected := by
  constructor
  rintro i j k (_ | i) (_ | j)
  · simpa using fun x ↦ ⟨_, 𝟙 _, 𝟙 _, x, by simp⟩
  · simp only [WidePushoutShape.hom_id, Functor.map_id, id_apply, forall_comm, forall_eq]
    exact fun x ↦ ⟨_, .init _, 𝟙 _, x, by simp⟩
  · simp only [WidePushoutShape.hom_id, Functor.map_id, id_apply, forall_eq']
    exact fun x ↦ ⟨_, 𝟙 _, .init _, x, by simp⟩
  · simp only [((CategoryTheory.mono_iff_injective (F.map (.init i))).mp inferInstance).eq_iff,
      forall_eq']
    exact fun x ↦ ⟨_, 𝟙 _, 𝟙 _, x, by simp⟩

end CategoryTheory
````
