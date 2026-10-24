-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.CommutatorRing.Variant1467eea6524f2ea5759d64581a15216b424cdbe3039ba12509f20d52ca13d23c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1467eea6524f2ea5759d64581a15216b424cdbe3039ba12509f20d52ca13d23c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.CommutatorRing.Variant1467eea6524f2ea5759d64581a15216b424cdbe3039ba12509f20d52ca13d23c","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"1467eea6524f2ea5759d64581a15216b424cdbe3039ba12509f20d52ca13d23c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/Lie/NonUnitalNonAssocAlgebra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Oliver Nash. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Oliver Nash
-/
import Mathlib.Algebra.Hom.NonUnitalAlg
import Mathlib.Algebra.Lie.Basic


namespace GRWTSK.Algebra.UniversalAlgebra.CommutatorRing.Variant1467eea6524f2ea5759d64581a15216b424cdbe3039ba12509f20d52ca13d23c

#align_import algebra.lie.non_unital_non_assoc_algebra from "leanprover-community/mathlib"@"841ac1a3d9162bf51c6327812ecb6e5e71883ac4"

/-!
# Lie algebras as non-unital, non-associative algebras

The definition of Lie algebras uses the `Bracket` typeclass for multiplication whereas we have a
separate `Mul` typeclass used for general algebras.

It is useful to have a special typeclass for Lie algebras because:
 * it enables us to use the traditional notation `⁅x, y⁆` for the Lie multiplication,
 * associative algebras carry a natural Lie algebra structure via the ring commutator and so we need
   them to carry both `Mul` and `Bracket` simultaneously,
 * more generally, Poisson algebras (not yet defined) need both typeclasses.

However there are times when it is convenient to be able to regard a Lie algebra as a general
algebra and we provide some basic definitions for doing so here.

## Main definitions

  * `CommutatorRing` turns a Lie ring into a `NonUnitalNonAssocSemiring` by turning its
    `Bracket` (denoted `⁅, ⁆`) into a `Mul` (denoted `*`).
  * `LieHom.toNonUnitalAlgHom`

## Tags

lie algebra, non-unital, non-associative
-/


universe u v w

variable (R : Type u) (L : Type v) [CommRing R] [LieRing L] [LieAlgebra R L]

/-- Type synonym for turning a `LieRing` into a `NonUnitalNonAssocSemiring`.

A `LieRing` can be regarded as a `NonUnitalNonAssocSemiring` by turning its
`Bracket` (denoted `⁅, ⁆`) into a `Mul` (denoted `*`). -/
def CommutatorRing (L : Type v) : Type v := L
#align commutator_ring CommutatorRing

/-- A `LieRing` can be regarded as a `NonUnitalNonAssocSemiring` by turning its
`Bracket` (denoted `⁅, ⁆`) into a `Mul` (denoted `*`). -/
instance : NonUnitalNonAssocSemiring (CommutatorRing L) :=
  show NonUnitalNonAssocSemiring L from
    { (inferInstance : AddCommMonoid L) with
      mul := Bracket.bracket
      left_distrib := lie_add
      right_distrib := add_lie
      zero_mul := zero_lie
      mul_zero := lie_zero }

namespace LieAlgebra

instance (L : Type v) [Nonempty L] : Nonempty (CommutatorRing L) := ‹Nonempty L›

instance (L : Type v) [Inhabited L] : Inhabited (CommutatorRing L) := ‹Inhabited L›

instance : LieRing (CommutatorRing L) := show LieRing L by infer_instance

instance : LieAlgebra R (CommutatorRing L) := show LieAlgebra R L by infer_instance

/-- Regarding the `LieRing` of a `LieAlgebra` as a `NonUnitalNonAssocSemiring`, we can
reinterpret the `smul_lie` law as an `IsScalarTower`. -/
instance isScalarTower : IsScalarTower R (CommutatorRing L) (CommutatorRing L) := ⟨smul_lie⟩
#align lie_algebra.is_scalar_tower LieAlgebra.isScalarTower

/-- Regarding the `LieRing` of a `LieAlgebra` as a `NonUnitalNonAssocSemiring`, we can
reinterpret the `lie_smul` law as an `SMulCommClass`. -/
instance smulCommClass : SMulCommClass R (CommutatorRing L) (CommutatorRing L) :=
  ⟨fun t x y => (lie_smul t x y).symm⟩
#align lie_algebra.smul_comm_class LieAlgebra.smulCommClass

end LieAlgebra

namespace LieHom

variable {R L}
variable {L₂ : Type w} [LieRing L₂] [LieAlgebra R L₂]

/-- Regarding the `LieRing` of a `LieAlgebra` as a `NonUnitalNonAssocSemiring`, we can
regard a `LieHom` as a `NonUnitalAlgHom`. -/
@[simps]
def toNonUnitalAlgHom (f : L →ₗ⁅R⁆ L₂) : CommutatorRing L →ₙₐ[R] CommutatorRing L₂ :=
  { f with
    toFun := f
    map_zero' := f.map_zero
    map_mul' := f.map_lie }
#align lie_hom.to_non_unital_alg_hom LieHom.toNonUnitalAlgHom

theorem toNonUnitalAlgHom_injective :
    Function.Injective (toNonUnitalAlgHom : _ → CommutatorRing L →ₙₐ[R] CommutatorRing L₂) :=
  fun _ _ h => ext <| NonUnitalAlgHom.congr_fun h
#align lie_hom.to_non_unital_alg_hom_injective LieHom.toNonUnitalAlgHom_injective

end LieHom
