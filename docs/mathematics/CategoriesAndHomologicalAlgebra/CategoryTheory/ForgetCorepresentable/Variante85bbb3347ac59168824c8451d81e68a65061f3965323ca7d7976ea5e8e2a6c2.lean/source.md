# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ForgetCorepresentable.Variante85bbb3347ac59168824c8451d81e68a65061f3965323ca7d7976ea5e8e2a6c2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f1a3c3aaf8e50273fd48b14690ee22bb5a238d67` · SHA-256 `2e58fd06c84e6d4441a4f305cb9e18d9907160e3d88740f0a4714486502ceda5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.UliftZMultiplesHom.Variant2e54928d454a9c624d5181608a806047c7db25f28509d19d78825385302d7bd4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2e54928d454a9c624d5181608a806047c7db25f28509d19d78825385302d7bd4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.UliftZMultiplesHom.Variant2e54928d454a9c624d5181608a806047c7db25f28509d19d78825385302d7bd4","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"2e54928d454a9c624d5181608a806047c7db25f28509d19d78825385302d7bd4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Category/Grp/ForgetCorepresentable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Algebra.Category.Grp.Basic
import Mathlib.CategoryTheory.Yoneda

/-!
# The forget functor is corepresentable

It is shown that the forget functor `AddCommGrp.{u} ⥤ Type u` is corepresentable
by `ULift ℤ`. Similar results are obtained for the variants `CommGrp`, `AddGrp`
and `Grp`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.UliftZMultiplesHom.Variant2e54928d454a9c624d5181608a806047c7db25f28509d19d78825385302d7bd4

universe u

open CategoryTheory Opposite

/-!
### `(ULift ℤ →+ G) ≃ G`

These universe-monomorphic variants of `zmultiplesHom`/`zpowersHom` are put here since they
shouldn't be useful outside of category theory.
-/

/-- The equivalence `(ULift ℤ →+ G) ≃ G` for any additive group `G`. -/
@[simps!]
def uliftZMultiplesHom (G : Type u) [AddGroup G] : G ≃ (ULift.{u} ℤ →+ G) :=
  (zmultiplesHom _).trans <| AddMonoidHom.precompEquiv .ulift _

/-- The equivalence `(ULift (Multiplicative ℤ) →* G) ≃ G` for any group `G`. -/
@[simps!]
def uliftZPowersHom (G : Type u) [Group G] : G ≃ (ULift.{u} (Multiplicative ℤ) →* G) :=
  (zpowersHom _).trans <| MonoidHom.precompEquiv .ulift _

namespace MonoidHom

/-- The equivalence `(Multiplicative ℤ →* α) ≃ α` for any group `α`. -/
@[deprecated zpowersHom (since := "2025-05-11")]
def fromMultiplicativeIntEquiv (α : Type u) [Group α] : (Multiplicative ℤ →* α) ≃ α :=
  (zpowersHom _).symm

/-- The equivalence `(ULift (Multiplicative ℤ) →* α) ≃ α` for any group `α`. -/
@[deprecated uliftZPowersHom (since := "2025-05-11")]
def fromULiftMultiplicativeIntEquiv (α : Type u) [Group α] :
    (ULift.{u} (Multiplicative ℤ) →* α) ≃ α :=
  (uliftZPowersHom _).symm

end MonoidHom

namespace AddMonoidHom

/-- The equivalence `(ℤ →+ α) ≃ α` for any additive group `α`. -/
@[deprecated zmultiplesHom (since := "2025-05-11")]
def fromIntEquiv (α : Type u) [AddGroup α] : (ℤ →+ α) ≃ α := (zmultiplesHom _).symm

/-- The equivalence `(ULift ℤ →+ α) ≃ α` for any additive group `α`. -/
@[deprecated uliftZMultiplesHom (since := "2025-05-11")]
def fromULiftIntEquiv (α : Type u) [AddGroup α] : (ULift.{u} ℤ →+ α) ≃ α :=
  (uliftZMultiplesHom _).symm

end AddMonoidHom

/-- The forget functor `Grp.{u} ⥤ Type u` is corepresentable. -/
def Grp.coyonedaObjIsoForget :
    coyoneda.obj (op (of (ULift.{u} (Multiplicative ℤ)))) ≅ forget Grp.{u} :=
  NatIso.ofComponents fun M ↦
    (ConcreteCategory.homEquiv.trans (uliftZPowersHom M.carrier).symm).toIso

/-- The forget functor `CommGrp.{u} ⥤ Type u` is corepresentable. -/
def CommGrp.coyonedaObjIsoForget :
    coyoneda.obj (op (of (ULift.{u} (Multiplicative ℤ)))) ≅ forget CommGrp.{u} :=
  NatIso.ofComponents fun M ↦
    (ConcreteCategory.homEquiv.trans (uliftZPowersHom M.carrier).symm).toIso

/-- The forget functor `AddGrp.{u} ⥤ Type u` is corepresentable. -/
def AddGrp.coyonedaObjIsoForget :
    coyoneda.obj (op (of (ULift.{u} ℤ))) ≅ forget AddGrp.{u} :=
  NatIso.ofComponents fun M ↦
    (ConcreteCategory.homEquiv.trans (uliftZMultiplesHom M.carrier).symm).toIso

/-- The forget functor `AddCommGrp.{u} ⥤ Type u` is corepresentable. -/
def AddCommGrp.coyonedaObjIsoForget :
    coyoneda.obj (op (of (ULift.{u} ℤ))) ≅ forget AddCommGrp.{u} :=
  NatIso.ofComponents fun M ↦
    (ConcreteCategory.homEquiv.trans (uliftZMultiplesHom M.carrier).symm).toIso

instance Grp.forget_isCorepresentable :
    (forget Grp.{u}).IsCorepresentable :=
  Functor.IsCorepresentable.mk' Grp.coyonedaObjIsoForget

instance CommGrp.forget_isCorepresentable :
    (forget CommGrp.{u}).IsCorepresentable :=
  Functor.IsCorepresentable.mk' CommGrp.coyonedaObjIsoForget

instance AddGrp.forget_isCorepresentable :
    (forget AddGrp.{u}).IsCorepresentable :=
  Functor.IsCorepresentable.mk' AddGrp.coyonedaObjIsoForget

instance AddCommGrp.forget_isCorepresentable :
    (forget AddCommGrp.{u}).IsCorepresentable :=
  Functor.IsCorepresentable.mk' AddCommGrp.coyonedaObjIsoForget
```
