# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ExtremalEpi.Variant4874ea69038ed537ceec2b735ad71c9d8f580019b6e026b7de7b58bd01d7b6ff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `47daae089a744d3817c8961ba025e34b5ab95393` · SHA-256 `9fcff48ae040989b124050fd0944136bf23a9f0f824282156bc579688394c701`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ExtremalEpi.Variant4984ba58d228291997d6f636fafce982bff9859c6286a1bc0c2475939dd49707","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4984ba58d228291997d6f636fafce982bff9859c6286a1bc0c2475939dd49707","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ExtremalEpi.Variant4984ba58d228291997d6f636fafce982bff9859c6286a1bc0c2475939dd49707","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"4984ba58d228291997d6f636fafce982bff9859c6286a1bc0c2475939dd49707","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/ExtremalEpi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Subobject.Lattice
public import Mathlib.CategoryTheory.Limits.Shapes.StrongEpi

/-!
# Extremal epimorphisms

An extremal epimorphism `p : X ⟶ Y` is an epimorphism which does not factor
through any proper subobject of `Y`. In case the category has equalizers,
we show that a morphism `p : X ⟶ Y` which does not factor through
any proper subobject of `Y` is automatically an epimorphism, and also
an extremal epimorphism. We also show that a strong epimorphism
is an extremal epimorphism, and that both notions coincide when
the category has pullbacks.

## References

* https://ncatlab.org/nlab/show/extremal+epimorphism

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ExtremalEpi.Variant4984ba58d228291997d6f636fafce982bff9859c6286a1bc0c2475939dd49707

public section

universe v u

namespace CategoryTheory

open Limits

variable {C : Type u} [Category.{v} C] {X Y : C}

/-- An extremal epimorphism `f : X ⟶ Y` is an epimorphism which does not
factor through any proper subobject of `Y`. -/
class ExtremalEpi (f : X ⟶ Y) : Prop extends Epi f where
  isIso (f) {Z : C} (p : X ⟶ Z) (i : Z ⟶ Y) (fac : p ≫ i = f) [Mono i] : IsIso i

variable (f : X ⟶ Y)

lemma ExtremalEpi.subobject_eq_top [ExtremalEpi f]
    {A : Subobject Y} (hA : Subobject.Factors A f) : A = ⊤ := by
  rw [← Subobject.isIso_arrow_iff_eq_top]
  exact isIso f (Subobject.factorThru A f hA) _ (by simp)

lemma ExtremalEpi.mk_of_hasEqualizers [HasEqualizers C]
    (hf : ∀ ⦃Z : C⦄ (p : X ⟶ Z) (i : Z ⟶ Y) (_ : p ≫ i = f) [Mono i], IsIso i) :
    ExtremalEpi f where
  left_cancellation {Z} p q h := by
    have := hf (equalizer.lift f h) (equalizer.ι p q) (by simp)
    rw [← cancel_epi (equalizer.ι p q), equalizer.condition]
  isIso := by tauto

instance [StrongEpi f] : ExtremalEpi f where
  isIso {Z} p i fac _ := by
    have sq : CommSq p f i (𝟙 Y) := { }
    exact ⟨sq.lift, by simp [← cancel_mono i], by simp⟩

set_option backward.isDefEq.respectTransparency false in
lemma extremalEpi_iff_strongEpi_of_hasPullbacks [HasPullbacks C] :
    ExtremalEpi f ↔ StrongEpi f := by
  refine ⟨fun _ ↦ ⟨inferInstance, fun A B i _ ↦ ⟨fun {t b} sq ↦ ⟨⟨?_⟩⟩⟩⟩,
    fun _ ↦ inferInstance⟩
  have := ExtremalEpi.isIso f (pullback.lift _ _ sq.w)
    (pullback.snd _ _) (by simp)
  exact
    { l := inv (pullback.snd i b) ≫ pullback.fst _ _
      fac_left := by
        rw [← cancel_mono i, sq.w, Category.assoc, Category.assoc]
        congr 1
        rw [← cancel_epi (pullback.snd i b), IsIso.hom_inv_id_assoc,
          pullback.condition]
      fac_right := by simp [pullback.condition] }

end CategoryTheory
```
