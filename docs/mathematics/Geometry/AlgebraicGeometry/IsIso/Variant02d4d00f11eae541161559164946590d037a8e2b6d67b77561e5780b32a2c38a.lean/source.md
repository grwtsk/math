# Complete source: GRWTSK.Geometry.AlgebraicGeometry.IsIso.Variant02d4d00f11eae541161559164946590d037a8e2b6d67b77561e5780b32a2c38a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ba67a9dcac9481a6df635dbce557b0a6586f4517` · SHA-256 `9f64f39f247b13ca315cc168e03bf32542f6a06096e7049c0f2f14bfb1f037d8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.AlgebraicGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.AlgebraicGeometry.IsomorphismsEqIsOpenImmersionInfSurjective.Variant6e7faf7fb84945ebc97fd7f5d7f11dbb20277ed4494159a96d6b69eb8d7b55ec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6e7faf7fb84945ebc97fd7f5d7f11dbb20277ed4494159a96d6b69eb8d7b55ec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.AlgebraicGeometry.SourceCorpus.IsomorphismsEqIsOpenImmersionInfSurjective.Variant6e7faf7fb84945ebc97fd7f5d7f11dbb20277ed4494159a96d6b69eb8d7b55ec","mathematical_subject":"Geometry.AlgebraicGeometry","original_sha256":"6e7faf7fb84945ebc97fd7f5d7f11dbb20277ed4494159a96d6b69eb8d7b55ec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/AlgebraicGeometry/Morphisms/IsIso.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.AlgebraicGeometry.Morphisms.OpenImmersion

/-!

# Being an isomorphism is local at the target

-/


namespace GRWTSK.Geometry.AlgebraicGeometry.IsomorphismsEqIsOpenImmersionInfSurjective.Variant6e7faf7fb84945ebc97fd7f5d7f11dbb20277ed4494159a96d6b69eb8d7b55ec

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
