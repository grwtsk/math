# Complete source: GRWTSK.Algebra.LinearAlgebra.MonoidAlgebra.Variant34d881ec68bd9ff5b2c1fc4b6fa076c965300076744aabeebcc5a99ee24d3d4c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9601f75b8729dc368d084b486dd18ec296b856f8` · SHA-256 `f1b130755e4924b12f4500b824c01f813d3c5ac263c8ec00c2d014fe8286fef6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.CounitSingle.Variant10f983c0fc0aac89c8e669f2d4a9d06485aa726e4b96743cdd9f6ef75a1d0832","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"10f983c0fc0aac89c8e669f2d4a9d06485aa726e4b96743cdd9f6ef75a1d0832","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.CounitSingle.Variant10f983c0fc0aac89c8e669f2d4a9d06485aa726e4b96743cdd9f6ef75a1d0832","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"10f983c0fc0aac89c8e669f2d4a9d06485aa726e4b96743cdd9f6ef75a1d0832","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/Coalgebra/MonoidAlgebra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amelia Livingston. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Amelia Livingston
-/
module

public import Mathlib.Algebra.Polynomial.Laurent
public import Mathlib.RingTheory.Coalgebra.Basic

/-!
# The coalgebra structure on monoid algebras

Given a type `X`, a commutative semiring `R` and a semiring `A` which is also an `R`-coalgebra,
this file collects results about the `R`-coalgebra instance on `A[X]` inherited from the
corresponding structure on its coefficients, defined in `Mathlib/RingTheory/Coalgebra/Basic.lean`.

## Main definitions

* `(Add)MonoidAlgebra.instCoalgebra`: the `R`-coalgebra structure on `A[X]` when `A` is an
  `R`-coalgebra.
* `LaurentPolynomial.instCoalgebra`: the `R`-coalgebra structure on the Laurent polynomials
  `A[T;T⁻¹]` when `A` is an `R`-coalgebra.
-/


namespace GRWTSK.Algebra.LinearAlgebra.CounitSingle.Variant10f983c0fc0aac89c8e669f2d4a9d06485aa726e4b96743cdd9f6ef75a1d0832

public section

noncomputable section

open Coalgebra

namespace MonoidAlgebra

variable {R : Type*} [CommSemiring R] {A : Type*} [Semiring A]
  {X : Type*} [Module R A] [Coalgebra R A]

variable (R A X) in
@[to_additive]
instance instCoalgebra : Coalgebra R A[X] := (coeffLinearEquiv R).coalgebra _

@[to_additive]
instance instIsCocomm [IsCocomm R A] : IsCocomm R A[X] := (coeffLinearEquiv R).coalgebraIsCocomm _

@[to_additive (attr := simp)]
lemma counit_single (x : X) (a : A) :
    Coalgebra.counit (single x a) = Coalgebra.counit (R := R) a :=
  Finsupp.counit_single _ _ _ _ _

@[to_additive]
lemma comul_def :
    Coalgebra.comul (R := R) (A := A[X]) =
      TensorProduct.map (coeffLinearEquiv R).symm.toLinearMap (coeffLinearEquiv R).symm.toLinearMap
        ∘ₗ comul ∘ₗ (coeffLinearEquiv R).toLinearMap := rfl

@[to_additive (dont_translate := R) (attr := simp)]
lemma comul_single (x : X) (a : A) :
    Coalgebra.comul (R := R) (single x a) =
      TensorProduct.map (lsingle x) (lsingle x) (Coalgebra.comul a) := by
  simp [comul_def, TensorProduct.map_map]; rfl

end MonoidAlgebra

namespace LaurentPolynomial

open AddMonoidAlgebra

variable (R A : Type*) [CommSemiring R] [Semiring A] [Module R A] [Coalgebra R A]

instance instCoalgebra : Coalgebra R A[T;T⁻¹] := inferInstanceAs <| Coalgebra R A[ℤ]

instance instIsCocomm [IsCocomm R A] : IsCocomm R A[T;T⁻¹] := inferInstanceAs <| IsCocomm R A[ℤ]

variable {R A}

@[simp]
theorem comul_C (a : A) :
    Coalgebra.comul (R := R) (C a) =
      TensorProduct.map (lsingle 0) (lsingle 0) (Coalgebra.comul (R := R) a) :=
  comul_single _ _

@[simp]
theorem comul_C_mul_T (a : A) (n : ℤ) :
    Coalgebra.comul (R := R) (C a * T n) =
      TensorProduct.map (lsingle n) (lsingle n) (Coalgebra.comul (R := R) a) := by
  simp [← single_eq_C_mul_T]

theorem comul_C_mul_T_self (a : R) (n : ℤ) :
    Coalgebra.comul (C a * T n) = T n ⊗ₜ[R] (C a * T n) := by
  simp

@[simp]
theorem counit_C (a : A) :
    Coalgebra.counit (R := R) (C a) = Coalgebra.counit (R := R) a :=
  counit_single _ _

@[simp]
theorem counit_C_mul_T (a : A) (n : ℤ) :
    Coalgebra.counit (R := R) (C a * T n) = Coalgebra.counit (R := R) a := by
  simp [← single_eq_C_mul_T]

end LaurentPolynomial
```
