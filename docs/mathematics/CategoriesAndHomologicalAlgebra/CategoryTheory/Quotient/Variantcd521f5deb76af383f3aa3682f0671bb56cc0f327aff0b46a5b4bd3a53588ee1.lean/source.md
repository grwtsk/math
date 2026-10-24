# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Quotient.Variantcd521f5deb76af383f3aa3682f0671bb56cc0f327aff0b46a5b4bd3a53588ee1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6414438fe1612b032c525eb2a3b1e5bc9373bc9d` · SHA-256 `0bdc6419e83f35bc5f9adc476fee5c2ea9ddac727be047af5b96c2342d597029`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasQuotient.Variant297eec10b8da17cc6ae4b479bd98ce5a16c4ef7b4cc768d22558d43232d2d8ac","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"297eec10b8da17cc6ae4b479bd98ce5a16c4ef7b4cc768d22558d43232d2d8ac","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.HasQuotient.Variant297eec10b8da17cc6ae4b479bd98ce5a16c4ef7b4cc768d22558d43232d2d8ac","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"297eec10b8da17cc6ae4b479bd98ce5a16c4ef7b4cc768d22558d43232d2d8ac","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/MorphismProperty/Quotient.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.MorphismProperty.Basic
public import Mathlib.CategoryTheory.Quotient

/-!
# Classes of morphisms induced on quotient categories

Let `W : MorphismProperty C` and `homRel : HomRel C`. We assume that
`homRel` is stable under pre- and postcomposition. We introduce a property
`W.HasQuotient homRel` expressing that `W` induces a property of
morphisms on the quotient category, i.e. `W f ↔ W g` when `homRel f g` holds.
We denote `W.quotient homRel : MorphismProperty (Quotient homRel)` the
induced property of morphisms: a morphism in `C` satisfies `W` iff
`(Quotient.functor homRel).map f` does.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasQuotient.Variant297eec10b8da17cc6ae4b479bd98ce5a16c4ef7b4cc768d22558d43232d2d8ac

@[expose] public section

namespace CategoryTheory

namespace MorphismProperty

variable {C : Type*} [Category* C]

/-- Let `W : MorphismProperty C` and `homRel : HomRel C`. We say that `W` induces
a class of morphisms on the quotient category by `homRel` if `homRel` is stable under
pre- and postcomposition and if `W f ↔ W g` whenever `homRel f g` hold. -/
class HasQuotient (W : MorphismProperty C) (homRel : HomRel C)
    [HomRel.IsStableUnderPrecomp homRel]
    [HomRel.IsStableUnderPostcomp homRel] : Prop where
  iff (W) : ∀ ⦃X Y : C⦄ ⦃f g : X ⟶ Y⦄, homRel f g → (W f ↔ W g)

variable (W : MorphismProperty C) {homRel : HomRel C}
  [HomRel.IsStableUnderPrecomp homRel]
  [HomRel.IsStableUnderPostcomp homRel]

lemma HasQuotient.iff_of_eqvGen [W.HasQuotient homRel] {X Y : C} {f g : X ⟶ Y}
    (h : Relation.EqvGen (@homRel _ _) f g) : W f ↔ W g := by
  induction h with
  | rel _ _ h => exact iff W h
  | refl => rfl
  | symm _ _ _ h => exact h.symm
  | trans _ _ _ _ _ h₁ h₂ => exact h₁.trans h₂

variable (homRel)

/-- The property of morphisms that is induced by `W : MorphismProperty C`
on the quotient category by `homRel : HomRel C` when `W.HasQuotient homRel` holds. -/
@[nolint unusedArguments]
def quotient [W.HasQuotient homRel] : MorphismProperty (Quotient homRel) :=
  fun ⟨X⟩ ⟨Y⟩ f ↦ ∃ (f' : X ⟶ Y) (_ : W f'), f = (Quotient.functor _).map f'

variable [W.HasQuotient homRel]

lemma quotient_iff {X Y : C} (f : X ⟶ Y) :
    W.quotient homRel ((Quotient.functor homRel).map f) ↔ W f := by
  refine ⟨fun ⟨f', hf', h⟩ ↦ ?_, fun hf ↦ ⟨f, hf, rfl⟩⟩
  rw [← Functor.homRel_iff, Quotient.functor_homRel_eq_compClosure_eqvGen,
    HomRel.compClosure_eq_self homRel] at h
  rwa [HasQuotient.iff_of_eqvGen W h]

lemma eq_inverseImage_quotientFunctor :
    W = (W.quotient homRel).inverseImage (Quotient.functor _) := by
  ext
  exact (quotient_iff _ _ _).symm

end MorphismProperty

end CategoryTheory
```
