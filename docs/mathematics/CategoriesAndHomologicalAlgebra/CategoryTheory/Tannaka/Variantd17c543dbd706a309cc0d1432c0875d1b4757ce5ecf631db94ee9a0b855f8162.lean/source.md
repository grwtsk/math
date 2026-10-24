# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Tannaka.Variantd17c543dbd706a309cc0d1432c0875d1b4757ce5ecf631db94ee9a0b855f8162

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1b4b2df43897bc15b32a2128186846d5d8bf8cd4` · SHA-256 `8654e753bd2c335d2155f2ca1577b7ed8ad1a17adb9f7c8353ebd0f51259b9db`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RingEquivEndForget.Variantfaea5b5644a0a1dc9a2a84fa76949a6673c7ff5fe9f7727603bf34817b42f621","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"faea5b5644a0a1dc9a2a84fa76949a6673c7ff5fe9f7727603bf34817b42f621","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.RingEquivEndForget.Variantfaea5b5644a0a1dc9a2a84fa76949a6673c7ff5fe9f7727603bf34817b42f621","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"faea5b5644a0a1dc9a2a84fa76949a6673c7ff5fe9f7727603bf34817b42f621","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Category/ModuleCat/Tannaka.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Algebra.Category.ModuleCat.Basic
import Mathlib.LinearAlgebra.Span.Basic

/-!
# Tannaka duality for rings

A ring `R` is equivalent to
the endomorphisms of the additive forgetful functor `Module R ⥤ AddCommGroup`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RingEquivEndForget.Variantfaea5b5644a0a1dc9a2a84fa76949a6673c7ff5fe9f7727603bf34817b42f621

universe u

open CategoryTheory

/-- An ingredient of Tannaka duality for rings:
A ring `R` is equivalent to
the endomorphisms of the additive forgetful functor `Module R ⥤ AddCommGroup`.
-/
def ringEquivEndForget₂ (R : Type u) [Ring R] :
    R ≃+* End (AdditiveFunctor.of (forget₂ (ModuleCat.{u} R) AddCommGrp.{u})) where
  toFun r :=
    { app := fun M =>
        @AddCommGrp.ofHom M.carrier M.carrier _ _ (DistribMulAction.toAddMonoidHom M r) }
  invFun φ := φ.app (ModuleCat.of R R) (1 : R)
  left_inv := by
    intro r
    simp
  right_inv := by
    intro φ
    apply NatTrans.ext
    ext M (x : M)
    have w := CategoryTheory.congr_fun
      (φ.naturality (ModuleCat.ofHom (LinearMap.toSpanSingleton R M x))) (1 : R)
    exact w.symm.trans (congr_arg (φ.app M) (one_smul R x))
  map_add' := by
    intros
    apply NatTrans.ext
    ext
    simp only [AdditiveFunctor.of_fst, ModuleCat.forget₂_obj, AddCommGrp.ofHom_apply,
      DistribMulAction.toAddMonoidHom_apply, add_smul, AddCommGrp.hom_ofHom]
    rfl
  map_mul' := by
    intros
    apply NatTrans.ext
    ext
    simp only [AdditiveFunctor.of_fst, ModuleCat.forget₂_obj, AddCommGrp.ofHom_apply,
      DistribMulAction.toAddMonoidHom_apply, mul_smul, AddCommGrp.hom_ofHom]
    rfl
```
