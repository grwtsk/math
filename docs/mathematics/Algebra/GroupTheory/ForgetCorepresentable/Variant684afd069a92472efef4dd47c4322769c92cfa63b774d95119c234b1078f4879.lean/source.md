# Complete source: GRWTSK.Algebra.GroupTheory.ForgetCorepresentable.Variant684afd069a92472efef4dd47c4322769c92cfa63b774d95119c234b1078f4879

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `19e98ef3fda6ba40ddf342bb8b58e2b0cfdd7f17` · SHA-256 `4956db1c6cc8ba53a2d1cf265959fa36d6bd4c5545bd583941f0a669bdc02025`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.UliftMultiplesHom.Variant7dded4025b3879fb08c3f894ca3ee238d0ebe49c28c28b516d9ca82d19944907","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7dded4025b3879fb08c3f894ca3ee238d0ebe49c28c28b516d9ca82d19944907","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.UliftMultiplesHom.Variant7dded4025b3879fb08c3f894ca3ee238d0ebe49c28c28b516d9ca82d19944907","mathematical_subject":"Algebra.Groups","original_sha256":"7dded4025b3879fb08c3f894ca3ee238d0ebe49c28c28b516d9ca82d19944907","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Category/MonCat/ForgetCorepresentable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Sophie Morel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sophie Morel
-/
import Mathlib.Algebra.Category.MonCat.Basic
import Mathlib.Algebra.Group.Equiv.Basic
import Mathlib.Algebra.Group.Nat.Hom
import Mathlib.CategoryTheory.Yoneda

/-!
# The forget functor is corepresentable

The forgetful functor `AddCommMonCat.{u} ⥤ Type u` is corepresentable
by `ULift ℕ`. Similar results are obtained for the variants `CommMonCat`, `AddMonCat`
and `MonCat`.

-/


namespace GRWTSK.Algebra.GroupTheory.UliftMultiplesHom.Variant7dded4025b3879fb08c3f894ca3ee238d0ebe49c28c28b516d9ca82d19944907

assert_not_exists MonoidWithZero

universe u

open CategoryTheory Opposite

/-!
### `(ULift ℕ →+ G) ≃ G`

These universe-monomorphic variants of `multiplesHom`/`powersHom` are put here since they
shouldn't be useful outside of category theory.
-/

/-- Monoid homomorphisms from `ULift ℕ` are defined by the image of `1`. -/
@[simps!]
def uliftMultiplesHom (M : Type u) [AddMonoid M] : M ≃ (ULift.{u} ℕ →+ M) :=
  (multiplesHom _).trans <| AddMonoidHom.precompEquiv .ulift _

/-- Monoid homomorphisms from `ULift (Multiplicative ℕ)` are defined by the image
of `Multiplicative.ofAdd 1`. -/
@[simps!]
def uliftPowersHom (M : Type u) [Monoid M] : M ≃ (ULift.{u} (Multiplicative ℕ) →* M) :=
  (powersHom _).trans <| MonoidHom.precompEquiv .ulift _

namespace MonoidHom

/-- The equivalence `(Multiplicative ℕ →* α) ≃ α` for any monoid `α`. -/
@[deprecated powersHom (since := "2025-05-11")]
def fromMultiplicativeNatEquiv (α : Type u) [Monoid α] : (Multiplicative ℕ →* α) ≃ α :=
  (powersHom _).symm

/-- The equivalence `(ULift (Multiplicative ℕ) →* α) ≃ α` for any monoid `α`. -/
@[deprecated uliftPowersHom (since := "2025-05-11")]
def fromULiftMultiplicativeNatEquiv (α : Type u) [Monoid α] :
    (ULift.{u} (Multiplicative ℕ) →* α) ≃ α :=
  (uliftPowersHom _).symm

end MonoidHom

namespace AddMonoidHom

/-- The equivalence `(ℤ →+ α) ≃ α` for any additive group `α`. -/
@[deprecated multiplesHom (since := "2025-05-11")]
def fromNatEquiv (α : Type u) [AddMonoid α] : (ℕ →+ α) ≃ α := (multiplesHom _).symm

/-- The equivalence `(ULift ℕ →+ α) ≃ α` for any additive monoid `α`. -/
@[deprecated uliftMultiplesHom (since := "2025-05-11")]
def fromULiftNatEquiv (α : Type u) [AddMonoid α] : (ULift.{u} ℕ →+ α) ≃ α :=
  (uliftMultiplesHom _).symm

end AddMonoidHom

/-- The forgetful functor `MonCat.{u} ⥤ Type u` is corepresentable. -/
def MonCat.coyonedaObjIsoForget :
    coyoneda.obj (op (of (ULift.{u} (Multiplicative ℕ)))) ≅ forget MonCat.{u} :=
  NatIso.ofComponents fun M ↦
    (ConcreteCategory.homEquiv.trans (uliftPowersHom M.carrier).symm).toIso


/-- The forgetful functor `CommMonCat.{u} ⥤ Type u` is corepresentable. -/
def CommMonCat.coyonedaObjIsoForget :
    coyoneda.obj (op (of (ULift.{u} (Multiplicative ℕ)))) ≅ forget CommMonCat.{u} :=
  NatIso.ofComponents fun M ↦
    (ConcreteCategory.homEquiv.trans (uliftPowersHom M.carrier).symm).toIso

/-- The forgetful functor `AddMonCat.{u} ⥤ Type u` is corepresentable. -/
def AddMonCat.coyonedaObjIsoForget :
    coyoneda.obj (op (of (ULift.{u} ℕ))) ≅ forget AddMonCat.{u} :=
  NatIso.ofComponents fun M ↦
    (ConcreteCategory.homEquiv.trans (uliftMultiplesHom M.carrier).symm).toIso

/-- The forgetful functor `AddCommMonCat.{u} ⥤ Type u` is corepresentable. -/
def AddCommMonCat.coyonedaObjIsoForget :
    coyoneda.obj (op (of (ULift.{u} ℕ))) ≅ forget AddCommMonCat.{u} :=
  NatIso.ofComponents fun M ↦
    (ConcreteCategory.homEquiv.trans (uliftMultiplesHom M.carrier).symm).toIso

instance MonCat.forget_isCorepresentable :
    (forget MonCat.{u}).IsCorepresentable :=
  Functor.IsCorepresentable.mk' MonCat.coyonedaObjIsoForget

instance CommMonCat.forget_isCorepresentable :
    (forget CommMonCat.{u}).IsCorepresentable :=
  Functor.IsCorepresentable.mk' CommMonCat.coyonedaObjIsoForget

instance AddMonCat.forget_isCorepresentable :
    (forget AddMonCat.{u}).IsCorepresentable :=
  Functor.IsCorepresentable.mk' AddMonCat.coyonedaObjIsoForget

instance AddCommMonCat.forget_isCorepresentable :
    (forget AddCommMonCat.{u}).IsCorepresentable :=
  Functor.IsCorepresentable.mk' AddCommMonCat.coyonedaObjIsoForget
```
