# Complete source: GRWTSK.Algebra.MonoidAlgebra.Variantea672d688b38d8d4de26242f1609e74c90b3ca07726aac5ec3cb2bb8a996cc0f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `52f27d202183ee36333aa6fa5cc043f4431115ef` · SHA-256 `56870cbcb5574408244478d550189e5171a01059e17c148b8eb63abdf643b77a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.AntipodeSingle.Variant273b8405fae7dc82b099520b9fa639ac981de0833fb36b35c0473d20f721e7d3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"273b8405fae7dc82b099520b9fa639ac981de0833fb36b35c0473d20f721e7d3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.AntipodeSingle.Variant273b8405fae7dc82b099520b9fa639ac981de0833fb36b35c0473d20f721e7d3","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"273b8405fae7dc82b099520b9fa639ac981de0833fb36b35c0473d20f721e7d3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/HopfAlgebra/MonoidAlgebra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amelia Livingston. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Amelia Livingston
-/
module

public import Mathlib.RingTheory.Bialgebra.MonoidAlgebra
public import Mathlib.RingTheory.HopfAlgebra.Basic

/-!
# The Hopf algebra structure on group algebras

Given a group `G`, a commutative semiring `R` and an `R`-Hopf algebra `A`, this file collects
results about the `R`-Hopf algebra instance on `A[G]`, building upon results in
`Mathlib/RingTheory/Bialgebra/MonoidAlgebra.lean` about the bialgebra structure.

## Main definitions

* `(Add)MonoidAlgebra.instHopfAlgebra`: the `R`-Hopf algebra structure on `A[G]` when `G` is an
  (add) group and `A` is an `R`-Hopf algebra.
* `LaurentPolynomial.instHopfAlgebra`: the `R`-Hopf algebra structure on the Laurent polynomials
  `A[T;T⁻¹]` when `A` is an `R`-Hopf algebra. When `A = R` this corresponds to the fact that `𝔾ₘ/R`
  is a group scheme.
-/


namespace GRWTSK.Algebra.AntipodeSingle.Variant273b8405fae7dc82b099520b9fa639ac981de0833fb36b35c0473d20f721e7d3

public section

noncomputable section

open HopfAlgebra

namespace MonoidAlgebra

variable {R A : Type*} [CommSemiring R] [Semiring A] [HopfAlgebra R A]
variable {G : Type*} [Group G]

variable (R A G) in
@[to_additive (dont_translate := R)]
instance instHopfAlgebraStruct : HopfAlgebraStruct R A[G] where
  antipode := Finsupp.lsum R (fun g ↦ lsingle g⁻¹ ∘ₗ antipode R) ∘ₗ (coeffLinearEquiv _).toLinearMap

@[to_additive (attr := simp)]
lemma antipode_single (g : G) (a : A) : antipode R (single g a) = single g⁻¹ (antipode R a) := by
  simp [antipode]

open Coalgebra in
@[to_additive (dont_translate := R A)]
instance instHopfAlgebra : HopfAlgebra R A[G] where
  mul_antipode_rTensor_comul := by
    ext a b : 2
    simpa [← (ℛ R b).eq] using congr(lsingle (R := R) (1 : G)
      $(sum_antipode_mul_eq_algebraMap_counit (ℛ R b)))
  mul_antipode_lTensor_comul := by
    ext a b : 2
    simpa [← (ℛ R b).eq] using congr(lsingle (R := R) (1 : G)
      $(sum_mul_antipode_eq_algebraMap_counit (ℛ R b)))

end MonoidAlgebra

namespace LaurentPolynomial

variable (R A : Type*) [CommSemiring R] [Semiring A] [HopfAlgebra R A]

instance instHopfAlgebra : HopfAlgebra R A[T;T⁻¹] :=
  inferInstanceAs (HopfAlgebra R <| AddMonoidAlgebra A ℤ)

variable {R A}

@[simp]
theorem antipode_C (a : A) :
    HopfAlgebra.antipode R (C a) = C (HopfAlgebra.antipode R a) := by
  rw [← single_eq_C, AddMonoidAlgebra.antipode_single]
  simp

@[simp]
theorem antipode_T (n : ℤ) :
    HopfAlgebra.antipode R (T n : A[T;T⁻¹]) = T (-n) := by
  unfold T
  rw [AddMonoidAlgebra.antipode_single]
  simp only [HopfAlgebra.antipode_one, single_eq_C_mul_T, map_one, one_mul]

@[simp]
theorem antipode_C_mul_T (a : A) (n : ℤ) :
    HopfAlgebra.antipode R (C a * T n) = C (HopfAlgebra.antipode R a) * T (-n) := by
  simp [← single_eq_C_mul_T]

end LaurentPolynomial
```
