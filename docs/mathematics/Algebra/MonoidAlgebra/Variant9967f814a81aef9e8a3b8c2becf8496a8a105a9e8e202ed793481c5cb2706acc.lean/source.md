# Complete source: GRWTSK.Algebra.MonoidAlgebra.Variant9967f814a81aef9e8a3b8c2becf8496a8a105a9e8e202ed793481c5cb2706acc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da4adca51d44f7eb2f91a9aa9c9c10a14b5b068e` · SHA-256 `87b089bca5aea47eee57a20f64eda7ba9671a30174b93707fb3de9155b0d5fe6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.AntipodeSingle.Variant8b47d2038c9db892006ee9e95ca403e0045c4b4cf47eac978d40f3dedbfd79f5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8b47d2038c9db892006ee9e95ca403e0045c4b4cf47eac978d40f3dedbfd79f5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.AntipodeSingle.Variant8b47d2038c9db892006ee9e95ca403e0045c4b4cf47eac978d40f3dedbfd79f5","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"8b47d2038c9db892006ee9e95ca403e0045c4b4cf47eac978d40f3dedbfd79f5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/HopfAlgebra/MonoidAlgebra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amelia Livingston. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Amelia Livingston
-/
import Mathlib.RingTheory.Bialgebra.MonoidAlgebra
import Mathlib.RingTheory.HopfAlgebra.Basic

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


namespace GRWTSK.Algebra.AntipodeSingle.Variant8b47d2038c9db892006ee9e95ca403e0045c4b4cf47eac978d40f3dedbfd79f5

suppress_compilation

open HopfAlgebra

namespace MonoidAlgebra

variable {R A : Type*} [CommSemiring R] [Semiring A] [HopfAlgebra R A]
variable {G : Type*} [Group G]

variable (R A G) in
instance instHopfAlgebraStruct : HopfAlgebraStruct R (MonoidAlgebra A G) where
  antipode := Finsupp.lsum R fun g => Finsupp.lsingle g⁻¹ ∘ₗ antipode

@[simp]
lemma antipode_single (g : G) (a : A) :
    antipode (R := R) (single g a) = single g⁻¹ (antipode (R := R) a) := by
  simp [MonoidAlgebra, antipode]

open Coalgebra in
instance instHopfAlgebra : HopfAlgebra R (MonoidAlgebra A G) where
  mul_antipode_rTensor_comul := by
    ext a b : 2
    simpa [← (ℛ R b).eq, -sum_antipode_mul_eq] using congr(lsingle (R := R) (1 : G)
      $(sum_antipode_mul_eq (Coalgebra.Repr.arbitrary R b)))
  mul_antipode_lTensor_comul := by
    ext a b : 2
    simpa [← (ℛ R b).eq, -sum_mul_antipode_eq] using congr(lsingle (R := R) (1 : G)
      $(sum_mul_antipode_eq (Coalgebra.Repr.arbitrary R b)))

end MonoidAlgebra

namespace AddMonoidAlgebra

variable {R A : Type*} [CommSemiring R] [Semiring A] [HopfAlgebra R A]
variable {G : Type*} [AddGroup G]

variable (R A G) in
instance instHopfAlgebraStruct : HopfAlgebraStruct R A[G] where
  antipode := Finsupp.lsum R fun g => Finsupp.lsingle (-g) ∘ₗ antipode

@[simp]
lemma antipode_single (g : G) (a : A) :
    antipode (R := R) (single g a) = single (-g) (antipode (R := R) a) := by
  simp [AddMonoidAlgebra, antipode]

open Coalgebra in
instance instHopfAlgebra : HopfAlgebra R A[G] where
  mul_antipode_rTensor_comul := by
    ext a b : 2
    simpa [← (ℛ R b).eq, single_mul_single, -sum_antipode_mul_eq] using
      congr(lsingle (R := R) (0 : G) $(sum_antipode_mul_eq (Coalgebra.Repr.arbitrary R b)))
  mul_antipode_lTensor_comul := by
    ext a b : 2
    simpa [← (ℛ R b).eq, single_mul_single, -sum_mul_antipode_eq] using
      congr(lsingle (R := R) (0 : G) $(sum_mul_antipode_eq (Coalgebra.Repr.arbitrary R b)))

end AddMonoidAlgebra

namespace LaurentPolynomial

open Finsupp

variable (R A : Type*) [CommSemiring R] [Semiring A] [HopfAlgebra R A]

instance instHopfAlgebra : HopfAlgebra R A[T;T⁻¹] :=
  inferInstanceAs (HopfAlgebra R <| AddMonoidAlgebra A ℤ)

variable {R A}

@[simp]
theorem antipode_C (a : A) :
    HopfAlgebra.antipode (R := R) (C a) = C (HopfAlgebra.antipode (R := R) a) := by
  rw [← single_eq_C, AddMonoidAlgebra.antipode_single]
  simp

@[simp]
theorem antipode_T (n : ℤ) :
    HopfAlgebra.antipode (R := R) (T n : A[T;T⁻¹]) = T (-n) := by
  unfold T
  rw [AddMonoidAlgebra.antipode_single]
  simp only [HopfAlgebra.antipode_one, single_eq_C_mul_T, map_one, one_mul]

@[simp]
theorem antipode_C_mul_T (a : A) (n : ℤ) :
    HopfAlgebra.antipode (R := R) (C a * T n) = C (HopfAlgebra.antipode (R := R) a) * T (-n) := by
  simp [← single_eq_C_mul_T]

end LaurentPolynomial
```
