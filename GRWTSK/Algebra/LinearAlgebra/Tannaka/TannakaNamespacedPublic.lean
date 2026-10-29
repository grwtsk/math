-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.RingEquivEndForget.Variantfc6fdfed20dbf742db8f5fa6bab3f33d734c0a1e67eddb159306ca93f6abdb4c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fc6fdfed20dbf742db8f5fa6bab3f33d734c0a1e67eddb159306ca93f6abdb4c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.RingEquivEndForget.Variantfc6fdfed20dbf742db8f5fa6bab3f33d734c0a1e67eddb159306ca93f6abdb4c","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"fc6fdfed20dbf742db8f5fa6bab3f33d734c0a1e67eddb159306ca93f6abdb4c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Category/ModuleCat/Tannaka.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Mathlib.Algebra.Category.ModuleCat.Basic
public import Mathlib.LinearAlgebra.Span.Basic

/-!
# Tannaka duality for rings

A ring `R` is equivalent to
the endomorphisms of the additive forgetful functor `Module R ⥤ AddCommGroup`.

-/


namespace GRWTSK.Algebra.LinearAlgebra.RingEquivEndForget.Variantfc6fdfed20dbf742db8f5fa6bab3f33d734c0a1e67eddb159306ca93f6abdb4c

@[expose] public section

universe u

open CategoryTheory

set_option backward.isDefEq.respectTransparency false in
attribute [local simp] add_smul mul_smul in
attribute [local ext] End.ext in
/-- An ingredient of Tannaka duality for rings:
A ring `R` is equivalent to
the endomorphisms of the additive forgetful functor `Module R ⥤ AddCommGroup`.
-/
def ringEquivEndForget₂ (R : Type u) [Ring R] :
    R ≃+* End (AdditiveFunctor.of (forget₂ (ModuleCat.{u} R) AddCommGrpCat.{u})) where
  toFun r :=
    ObjectProperty.homMk
      { app M := @AddCommGrpCat.ofHom M.carrier M.carrier _ _
          (DistribSMul.toAddMonoidHom M r) }
  invFun φ := φ.hom.app ↧R (1 : R)
  left_inv _ := by simp
  right_inv φ := by
    ext M (x : M)
    have w := CategoryTheory.congr_fun
      (φ.hom.naturality (ModuleCat.ofHom (LinearMap.toSpanSingleton R M x))) (1 : R)
    exact w.symm.trans (congr_arg (φ.hom.app M) (one_smul R x))
  map_add' := by cat_disch
  map_mul' := by cat_disch
