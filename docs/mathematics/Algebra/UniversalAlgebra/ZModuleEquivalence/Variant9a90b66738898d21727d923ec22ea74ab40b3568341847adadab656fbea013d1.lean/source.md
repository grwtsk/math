# Complete source: GRWTSK.Algebra.UniversalAlgebra.ZModuleEquivalence.Variant9a90b66738898d21727d923ec22ea74ab40b3568341847adadab656fbea013d1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8a1649db4c9fea87bc3492a3925de3a60ad877b4` · SHA-256 `06dd8af44cb57115f524cedce317c84b923b41a69537741fe05597bb3ec2f9f0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.ModuleCat.Varianta015c74c24a3ba79deca529ced72d872e57103144b4ce064bb6614a8af96de9e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a015c74c24a3ba79deca529ced72d872e57103144b4ce064bb6614a8af96de9e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.ModuleCat.Varianta015c74c24a3ba79deca529ced72d872e57103144b4ce064bb6614a8af96de9e","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"a015c74c24a3ba79deca529ced72d872e57103144b4ce064bb6614a8af96de9e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Category/Grp/ZModuleEquivalence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Mathlib.Algebra.Category.ModuleCat.Basic

/-!
# ℤ-modules are equivalent to additive commutative groups

The forgetful functor from ℤ-modules to additive commutative groups is
an equivalence of categories.

## TODO

Either use this equivalence to transport the monoidal structure from `Module ℤ` to `Ab`,
or, having constructed that monoidal structure directly, show this functor is monoidal.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.ModuleCat.Varianta015c74c24a3ba79deca529ced72d872e57103144b4ce064bb6614a8af96de9e

public section

open CategoryTheory

universe u

namespace ModuleCat

/-- The forgetful functor from `ℤ` modules to `AddCommGrpCat` is full. -/
instance forget₂_addCommGroup_full : (forget₂ (ModuleCat ℤ) AddCommGrpCat.{u}).Full where
  map_surjective {A B}
    -- `AddMonoidHom.toIntLinearMap` doesn't work here because `A` and `B` are not
    -- definitionally equal to the canonical `AddCommGroup.toIntModule` module
    -- instances it expects.
    f := ⟨@ModuleCat.ofHom _ _ _ _ _ A.isModule _ B.isModule <|
            @LinearMap.mk _ _ _ _ _ _ _ _ _ A.isModule B.isModule
            { toFun := f,
              map_add' := map_add f.hom }
            (fun n x => by
              convert! AddMonoidHom.map_zsmul f.hom n x <;>
                ext <;> apply int_smul_eq_zsmul), rfl⟩

/-- The forgetful functor from `ℤ` modules to `AddCommGrpCat` is essentially surjective. -/
instance forget₂_addCommGrp_essSurj : (forget₂ (ModuleCat ℤ) AddCommGrpCat.{u}).EssSurj where
  mem_essImage A :=
    ⟨↧A,
      ⟨{  hom := 𝟙 A
          inv := 𝟙 A }⟩⟩

noncomputable instance forget₂AddCommGroupIsEquivalence :
    (forget₂ (ModuleCat ℤ) AddCommGrpCat.{u}).IsEquivalence where

end ModuleCat
```
