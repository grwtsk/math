# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Subobject.Variant7cf9fc38674d0d76106badca4715a4282d9a5cde00f6cb0be84b1f38b618d5ac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7491cdac2d17968527cf9bcc4d37ffdc24101350` · SHA-256 `fa729a4a678d403eaafbc5d88ac140e64b91a8e534c14d5bc61f2d012bb9f2ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EquivalenceMonoOver.Variantd0bfd550a4afce64be614869cbc757d707b609fa65ed56be938098f289e9e3c3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d0bfd550a4afce64be614869cbc757d707b609fa65ed56be938098f289e9e3c3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.EquivalenceMonoOver.Variantd0bfd550a4afce64be614869cbc757d707b609fa65ed56be938098f289e9e3c3","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"d0bfd550a4afce64be614869cbc757d707b609fa65ed56be938098f289e9e3c3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Subpresheaf/Subobject.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Subpresheaf.Image
import Mathlib.CategoryTheory.Subobject.Basic

/-!
# Comparison between `Subpresheaf`, `MonoOver` and `Subobject`

Given a presheaf of types `F : Cᵒᵖ ⥤ Type w`, we define an equivalence
of categories `Subpresheaf.equivalenceMonoOver F : Subpresheaf F ≌ MonoOver F`
and an order isomorphism `Subpresheaf.orderIsoSubject F : Subpresheaf F ≃o Subobject F`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EquivalenceMonoOver.Variantd0bfd550a4afce64be614869cbc757d707b609fa65ed56be938098f289e9e3c3

universe w v u

namespace CategoryTheory

variable {C : Type u} [Category.{v} C] (F : Cᵒᵖ ⥤ Type w)

namespace Subpresheaf

/-- The equivalence of categories `Subpresheaf F ≌ MonoOver F`. -/
@[simps]
noncomputable def equivalenceMonoOver : Subpresheaf F ≌ MonoOver F where
  functor :=
    { obj A := MonoOver.mk' A.ι
      map {A B} f := MonoOver.homMk (Subpresheaf.homOfLe (leOfHom f)) }
  inverse :=
    { obj X := Subpresheaf.range X.arrow
      map {X Y} f := homOfLE (by
        dsimp
        rw [← MonoOver.w f]
        apply range_comp_le ) }
  unitIso := NatIso.ofComponents (fun A ↦ eqToIso (by simp))
  counitIso := NatIso.ofComponents
    (fun X ↦ MonoOver.isoMk ((asIso (toRange X.arrow)).symm))

variable {F} in
@[simp]
lemma range_subobjectMk_ι (A : Subpresheaf F) :
    range (Subobject.mk A.ι).arrow = A :=
  (((equivalenceMonoOver F).trans
    (ThinSkeleton.equivalence _).symm).unitIso.app A).to_eq.symm

variable {F} in
@[simp]
lemma subobjectMk_range_arrow (X : Subobject F) :
    Subobject.mk (range X.arrow).ι = X :=
  (((equivalenceMonoOver F).trans
    (ThinSkeleton.equivalence _).symm).counitIso.app X).to_eq

/-- The order isomorphism `Subpresheaf F ≃o MonoOver F`. -/
@[simps]
noncomputable def orderIsoSubobject : Subpresheaf F ≃o Subobject F where
  toFun A := Subobject.mk A.ι
  invFun X := Subpresheaf.range X.arrow
  left_inv A := by simp
  right_inv X := by simp
  map_rel_iff' {A B} := by
    constructor
    · intro h
      have : range (Subobject.mk A.ι).arrow ≤ range (Subobject.mk B.ι).arrow :=
        leOfHom (((equivalenceMonoOver F).trans
          (ThinSkeleton.equivalence _).symm).inverse.map (homOfLE h))
      simpa using this
    · intro h
      exact leOfHom (((equivalenceMonoOver F).trans
        (ThinSkeleton.equivalence _).symm).functor.map (homOfLE h))

end Subpresheaf

end CategoryTheory
```
