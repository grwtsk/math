# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Images.Variant7192cf2637d6df2baaf378627c797d757ef37fcf63705225f7b25065fd10f900

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2c36ecc00f46d0402bbb875858127eb7dd50bd5` · SHA-256 `ab091e36a02a634719711af91d887fb1376a066c9a98d8d62f11f82323c5483c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Image.Variant56b13d253e5d84fa779859860a4a232ad533509f541d8b6c488d015fe399b9da","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"56b13d253e5d84fa779859860a4a232ad533509f541d8b6c488d015fe399b9da","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Image.Variant56b13d253e5d84fa779859860a4a232ad533509f541d8b6c488d015fe399b9da","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"56b13d253e5d84fa779859860a4a232ad533509f541d8b6c488d015fe399b9da","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Limits/Types/Images.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Reid Barton
-/
module

public import Mathlib.CategoryTheory.Limits.Types.Limits
public import Mathlib.CategoryTheory.Limits.Shapes.Images

/-!
# Images in the category of types

In this file, it is shown that the category of types has categorical images,
and that these agree with the range of a function.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Image.Variant56b13d253e5d84fa779859860a4a232ad533509f541d8b6c488d015fe399b9da

@[expose] public section

universe v u

namespace CategoryTheory.Limits.Types

variable {α β : Type u} (f : α ⟶ β)

section

-- implementation of `HasImage`
/-- the image of a morphism in Type is just `Set.range f` -/
def Image : Type u :=
  Set.range f

instance [Inhabited α] : Inhabited (Image f) where default := ⟨f default, ⟨_, rfl⟩⟩

/-- the inclusion of `Image f` into the target -/
def Image.ι : Image f ⟶ β :=
  ↾(Subtype.val)

instance : Mono (Image.ι f) :=
  (mono_iff_injective _).2 Subtype.val_injective

variable {f}

/-- the universal property for the image factorisation -/
noncomputable def Image.lift (F' : MonoFactorisation f) : Image f ⟶ F'.I :=
  ↾fun x => F'.e (Classical.indefiniteDescription _ x.2).1

theorem Image.lift_fac (F' : MonoFactorisation f) : Image.lift F' ≫ F'.m = Image.ι f := by
  ext x
  change (F'.e ≫ F'.m) _ = _
  rw [F'.fac, (Classical.indefiniteDescription _ x.2).2]
  rfl

end

/-- the factorisation of any morphism in Type through a mono. -/
def monoFactorisation : MonoFactorisation f where
  I := Image f
  m := Image.ι f
  e := ↾(Set.rangeFactorization f)

/-- the factorisation through a mono has the universal property of the image. -/
noncomputable def isImage : IsImage (monoFactorisation f) where
  lift := Image.lift
  lift_fac := Image.lift_fac

instance : HasImage f :=
  HasImage.mk ⟨_, isImage f⟩

instance : HasImages (Type u) where
  has_image := by infer_instance

instance : HasImageMaps (Type u) where
  has_image_map {f g} st :=
    HasImageMap.transport st (monoFactorisation f.hom) (isImage g.hom)
      (↾fun x => ⟨st.right x.val, ⟨st.left (Classical.choose x.2), by
        rw [elementwise_of% st.w]
        rw [Classical.choose_spec x.property]⟩⟩) rfl

variable {F : ℕᵒᵖ ⥤ Type u} {c : Cone F}
  (hF : ∀ n, Function.Surjective (F.map (homOfLE (Nat.le_succ n)).op))

private noncomputable def limitOfSurjectionsSurjective.preimage
    (a : F.obj ⟨0⟩) : (n : ℕ) → F.obj ⟨n⟩
    | 0 => a
    | n + 1 => (hF n (preimage a n)).choose

include hF in
open limitOfSurjectionsSurjective in
/-- Auxiliary lemma. Use `limit_of_surjections_surjective` instead. -/
lemma surjective_π_app_zero_of_surjective_map_aux :
    Function.Surjective ((limitCone F).π.app ⟨0⟩) := by
  intro a
  refine ⟨⟨fun ⟨n⟩ ↦ preimage hF a n, ?_⟩, rfl⟩
  intro ⟨n⟩ ⟨m⟩ ⟨⟨⟨(h : m ≤ n)⟩⟩⟩
  induction h with
  | refl =>
    erw [CategoryTheory.Functor.map_id, id_apply]
  | @step p h ih =>
    rw [← ih]
    have h' : m ≤ p := h
    erw [CategoryTheory.Functor.map_comp (f := (homOfLE (Nat.le_succ p)).op) (g := (homOfLE h').op),
      comp_apply, (hF p _).choose_spec]
    rfl

/--
Given surjections `⋯ ⟶ Xₙ₊₁ ⟶ Xₙ ⟶ ⋯ ⟶ X₀`, the projection map `lim Xₙ ⟶ X₀` is surjective.
-/
lemma surjective_π_app_zero_of_surjective_map
    (hc : IsLimit c)
    (hF : ∀ n, Function.Surjective (F.map (homOfLE (Nat.le_succ n)).op)) :
    Function.Surjective (c.π.app ⟨0⟩) := by
  let i := hc.conePointUniqueUpToIso (limitConeIsLimit F)
  have : c.π.app ⟨0⟩ = i.hom ≫ (limitCone F).π.app ⟨0⟩ := by simp [i]; rfl
  rw [this, types_comp]
  apply Function.Surjective.comp
  · exact surjective_π_app_zero_of_surjective_map_aux hF
  · rw [← epi_iff_surjective]
    infer_instance

end CategoryTheory.Limits.Types
```
