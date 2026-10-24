# Complete source: GRWTSK.Geometry.AlgebraicGeometry.IsIso.Variant6e7faf7fb84945ebc97fd7f5d7f11dbb20277ed4494159a96d6b69eb8d7b55ec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `85cbeba7116078d4311bf5449c841f179664b029` · SHA-256 `6e7faf7fb84945ebc97fd7f5d7f11dbb20277ed4494159a96d6b69eb8d7b55ec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.AlgebraicGeometry.Morphisms.OpenImmersion

/-!

# Being an isomorphism is local at the target

-/

open CategoryTheory MorphismProperty

namespace AlgebraicGeometry

lemma isomorphisms_eq_isOpenImmersion_inf_surjective :
    isomorphisms Scheme = (@IsOpenImmersion ⊓ @Surjective : MorphismProperty Scheme) := by
  ext
  exact (isIso_iff_isOpenImmersion _).trans
    (and_congr Iff.rfl ((TopCat.epi_iff_surjective _).trans (surjective_iff _).symm))

lemma isomorphisms_eq_stalkwise :
    isomorphisms Scheme = (isomorphisms TopCat).inverseImage Scheme.forgetToTop ⊓
      stalkwise (fun f ↦ Function.Bijective f) := by
  rw [isomorphisms_eq_isOpenImmersion_inf_surjective, isOpenImmersion_eq_inf,
    surjective_eq_topologically, inf_right_comm]
  congr 1
  ext X Y f
  exact ⟨fun H ↦ inferInstanceAs (IsIso (TopCat.isoOfHomeo
    (H.1.1.toHomeomorphOfSurjective H.2)).hom), fun (_ : IsIso f.base) ↦
    let e := (TopCat.homeoOfIso <| asIso f.base); ⟨e.isOpenEmbedding, e.surjective⟩⟩

instance : IsLocalAtTarget (isomorphisms Scheme) :=
  isomorphisms_eq_isOpenImmersion_inf_surjective ▸ inferInstance

instance : HasAffineProperty (isomorphisms Scheme) fun X _ f _ ↦ IsAffine X ∧ IsIso (f.appTop) := by
  convert HasAffineProperty.of_isLocalAtTarget (isomorphisms Scheme) with X Y f hY
  exact ⟨fun ⟨_, _⟩ ↦ (arrow_mk_iso_iff (isomorphisms _) (arrowIsoSpecΓOfIsAffine f)).mpr
    (inferInstanceAs (IsIso (Spec.map (f.appTop)))),
    fun (_ : IsIso f) ↦ ⟨.of_isIso f, inferInstance⟩⟩

instance : IsLocalAtTarget (monomorphisms Scheme) :=
  diagonal_isomorphisms (C := Scheme).symm ▸ inferInstance

end AlgebraicGeometry
```
