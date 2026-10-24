# Complete source: GRWTSK.Algebra.UniversalAlgebra.NonUnitalNonAssocAlgebra.Variantc75caecef8c87810e17584f461936068c989c140dd83016954ba9439c04b0b4d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0873bb1eadc4317010e779e7055876b36c866c2b` · SHA-256 `4f49444fcdf154fedd7de171ae92366ea92ad253d4b4a8f14480e44e4db4d1b3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.CommutatorRing.Variant25311e8f7b0abaee8cb19d169e4f148ef93fec9ac6c7dd3326245d5c211d0705","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"25311e8f7b0abaee8cb19d169e4f148ef93fec9ac6c7dd3326245d5c211d0705","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.CommutatorRing.Variant25311e8f7b0abaee8cb19d169e4f148ef93fec9ac6c7dd3326245d5c211d0705","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"25311e8f7b0abaee8cb19d169e4f148ef93fec9ac6c7dd3326245d5c211d0705","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Lie/NonUnitalNonAssocAlgebra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Oliver Nash. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Oliver Nash
-/
import Mathlib.Algebra.Algebra.NonUnitalHom
import Mathlib.Algebra.Lie.Basic

/-!
# Lie algebras as non-unital, non-associative algebras

The definition of Lie algebras uses the `Bracket` typeclass for multiplication whereas we have a
separate `Mul` typeclass used for general algebras.

It is useful to have a special typeclass for Lie algebras because:
* it enables us to use the traditional notation `⁅x, y⁆` for the Lie multiplication,
* associative algebras carry a natural Lie algebra structure via the ring commutator and so we
  need them to carry both `Mul` and `Bracket` simultaneously,
* more generally, Poisson algebras (not yet defined) need both typeclasses.

However there are times when it is convenient to be able to regard a Lie algebra as a general
algebra and we provide some basic definitions for doing so here.

## Main definitions

  * `CommutatorRing` turns a Lie ring into a `NonUnitalNonAssocRing` by turning its
    `Bracket` (denoted `⁅ , ⁆`) into a `Mul` (denoted `*`).
  * `LieHom.toNonUnitalAlgHom`

## Tags

lie algebra, non-unital, non-associative
-/



namespace GRWTSK.Algebra.UniversalAlgebra.CommutatorRing.Variant25311e8f7b0abaee8cb19d169e4f148ef93fec9ac6c7dd3326245d5c211d0705

universe u v w

variable (R : Type u) (L : Type v) [CommRing R] [LieRing L] [LieAlgebra R L]

/-- Type synonym for turning a `LieRing` into a `NonUnitalNonAssocRing`.

A `LieRing` can be regarded as a `NonUnitalNonAssocRing` by turning its
`Bracket` (denoted `⁅, ⁆`) into a `Mul` (denoted `*`). -/
def CommutatorRing (L : Type v) : Type v := L

instance : NonUnitalNonAssocRing (CommutatorRing L) := LieRing.toNonUnitalNonAssocRing L

namespace LieAlgebra

instance (L : Type v) [Nonempty L] : Nonempty (CommutatorRing L) := ‹Nonempty L›

instance (L : Type v) [Inhabited L] : Inhabited (CommutatorRing L) := ‹Inhabited L›

instance : LieRing (CommutatorRing L) := show LieRing L by infer_instance

instance : LieAlgebra R (CommutatorRing L) := show LieAlgebra R L by infer_instance

/-- Regarding the `LieRing` of a `LieAlgebra` as a `NonUnitalNonAssocRing`, we can
reinterpret the `smul_lie` law as an `IsScalarTower`. -/
instance isScalarTower : IsScalarTower R (CommutatorRing L) (CommutatorRing L) := ⟨smul_lie⟩

/-- Regarding the `LieRing` of a `LieAlgebra` as a `NonUnitalNonAssocRing`, we can
reinterpret the `lie_smul` law as an `SMulCommClass`. -/
instance smulCommClass : SMulCommClass R (CommutatorRing L) (CommutatorRing L) :=
  ⟨fun t x y => (lie_smul t x y).symm⟩

end LieAlgebra

namespace LieHom

variable {R L}
variable {L₂ : Type w} [LieRing L₂] [LieAlgebra R L₂]

/-- Regarding the `LieRing` of a `LieAlgebra` as a `NonUnitalNonAssocRing`, we can
regard a `LieHom` as a `NonUnitalAlgHom`. -/
@[simps]
def toNonUnitalAlgHom (f : L →ₗ⁅R⁆ L₂) : CommutatorRing L →ₙₐ[R] CommutatorRing L₂ :=
  { f with
    toFun := f
    map_zero' := f.map_zero
    map_mul' := f.map_lie }

theorem toNonUnitalAlgHom_injective :
    Function.Injective (toNonUnitalAlgHom : _ → CommutatorRing L →ₙₐ[R] CommutatorRing L₂) :=
  fun _ _ h => ext <| NonUnitalAlgHom.congr_fun h

end LieHom
```
