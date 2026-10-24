# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Extend.Variant35f2f32618864f6e3009d394f3e26a65c7043f393bd72547c08662be67c8730b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f979d5479560b22f48027cb170ba60e2fe1f4df7` · SHA-256 `cba3269ba9a7280a4a141514a0113e892cfe93bbb5d256f4e1817668ed975174`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.HomologicalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.CochainComplex.Variant28065bcbe96182220a451635509820191a1706b12cc44b67d10d857ceba9591e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"28065bcbe96182220a451635509820191a1706b12cc44b67d10d857ceba9591e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.HomologicalAlgebra.SourceCorpus.CochainComplex.Variant28065bcbe96182220a451635509820191a1706b12cc44b67d10d857ceba9591e","mathematical_subject":"Algebra.HomologicalAlgebra","original_sha256":"28065bcbe96182220a451635509820191a1706b12cc44b67d10d857ceba9591e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Abelian/Projective/Extend.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.Algebra.Homology.Embedding.CochainComplex
public import Mathlib.CategoryTheory.Preadditive.Projective.Resolution

/-!
# Projective resolutions as cochain complexes indexed by the integers

Given a projective resolution `R` of an object `X` in an abelian category `C`,
we define `R.cochainComplex : CochainComplex C ℤ`, which is the extension
of `R.complex : ChainComplex C ℕ`, and the quasi-isomorphism
`R.π' : R.cochainComplex ⟶ (CochainComplex.singleFunctor C 0).obj X`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.CochainComplex.Variant28065bcbe96182220a451635509820191a1706b12cc44b67d10d857ceba9591e

@[expose] public section

universe v u

namespace CategoryTheory

open Limits

variable {C : Type u} [Category.{v} C]

namespace ProjectiveResolution

section

variable [HasZeroObject C] [Preadditive C] {X : C}
  (R : ProjectiveResolution X)

/-- If `R : ProjectiveResolution X`, this is the cochain complex indexed by `ℤ`
obtained by extending by zero the chain complex `R.complex` indexed by `ℕ`. -/
noncomputable def cochainComplex : CochainComplex C ℤ :=
  R.complex.extend ComplexShape.embeddingDownNat

/-- If `R : ProjectiveResolution X`, then `R.cochainComplex.X n` (with `n : ℕ`)
is isomorphic to `R.complex.X k` (with `k : ℕ`) when `k = n`. -/
noncomputable def cochainComplexXIso (n : ℤ) (k : ℕ) (h : -k = n := by lia) :
    R.cochainComplex.X n ≅ R.complex.X k :=
  HomologicalComplex.extendXIso _ _ h

@[reassoc]
lemma cochainComplex_d (n₁ n₂ : ℤ) (k₁ k₂ : ℕ) (h₁ : -k₁ = n₁ := by lia) (h₂ : -k₂ = n₂ := by lia) :
    R.cochainComplex.d n₁ n₂ = (cochainComplexXIso _ _ _).hom ≫
      R.complex.d k₁ k₂ ≫ (cochainComplexXIso _ _ _).inv :=
  HomologicalComplex.extend_d_eq _ _ h₁ h₂

instance : R.cochainComplex.IsStrictlyLE 0 := by
  dsimp [cochainComplex]
  infer_instance

instance (n : ℤ) : Projective (R.cochainComplex.X n) := by
  by_cases hn : n ≤ 0
  · obtain ⟨k, rfl⟩ := Int.exists_eq_neg_ofNat hn
    exact Projective.of_iso (R.cochainComplexXIso (-k) k).symm inferInstance
  · exact IsZero.projective (CochainComplex.isZero_of_isStrictlyLE _ 0 _)

/-- The quasi-isomorphism `R.cochainComplex ⟶ (CochainComplex.singleFunctor C 0).obj X`
in `CochainComplex C ℤ` when `R` is a projective resolution of `X`. -/
noncomputable def π' : R.cochainComplex ⟶ (CochainComplex.singleFunctor C 0).obj X :=
    (ComplexShape.embeddingDownNat.extendFunctor C).map R.π ≫
      (HomologicalComplex.extendSingleIso _ _ _ _ (by simp)).hom

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
@[reassoc]
lemma π'_f_zero :
    R.π'.f 0 = (R.cochainComplexXIso _ _).hom ≫ R.π.f 0 ≫
      (HomologicalComplex.singleObjXSelf (.up ℤ) 0 X).inv := by
  dsimp [π']
  rw [HomologicalComplex.extendMap_f _ _ (i := 0) (by simp),
    HomologicalComplex.extendSingleIso_hom_f]
  cat_disch

end

variable [Abelian C] {X : C} (R : ProjectiveResolution X)

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
instance : QuasiIso R.π' := by dsimp [π']; infer_instance

instance : R.cochainComplex.IsGE 0 := by
  simp only [HomologicalComplex.isSupported_iff_of_quasiIso R.π']
  infer_instance

namespace Hom

variable {R} {X' : C} {R' : ProjectiveResolution X'} {f : X ⟶ X'}
  (φ : Hom R R' f)

/-- The morphism on cochain complexes indexed by `ℤ` that is induced by
a (heterogeneous) morphism of projective resolutions. -/
noncomputable def hom' : R.cochainComplex ⟶ R'.cochainComplex :=
  HomologicalComplex.extendMap φ.hom _

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
@[reassoc]
lemma hom'_f (n : ℤ) (m : ℕ) (h : -m = n) :
    φ.hom'.f n =
    (R.cochainComplexXIso n m h).hom ≫ φ.hom.f m ≫ (R'.cochainComplexXIso n m h).inv := by
  simp [hom', HomologicalComplex.extendMap_f _
    ComplexShape.embeddingDownNat (i := m) (i' := n) (by dsimp; lia),
    cochainComplexXIso]

set_option backward.isDefEq.respectTransparency false in
@[reassoc (attr := simp)]
lemma hom'_comp_π' :
    φ.hom' ≫ R'.π' = R.π' ≫ (CochainComplex.singleFunctor C 0).map f :=
  HomologicalComplex.to_single_hom_ext (by
    simp [hom'_f _ 0 0 rfl, π'_f_zero, CochainComplex.singleFunctor,
      HomologicalComplex.single, HomologicalComplex.singleObjXSelf,
      HomologicalComplex.singleObjXIsoOfEq])

end Hom

end ProjectiveResolution

end CategoryTheory
```
