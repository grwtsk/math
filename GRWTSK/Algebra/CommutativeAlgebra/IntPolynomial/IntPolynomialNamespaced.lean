-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.PolynomialInt.Variant3ecd972e46a75f1708b077b1b71fc0df8036025c828f7a38085017a9a498deb0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3ecd972e46a75f1708b077b1b71fc0df8036025c828f7a38085017a9a498deb0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.PolynomialInt.Variant3ecd972e46a75f1708b077b1b71fc0df8036025c828f7a38085017a9a498deb0","mathematical_subject":"Algebra.Polynomials","original_sha256":"3ecd972e46a75f1708b077b1b71fc0df8036025c828f7a38085017a9a498deb0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Ring/Subring/IntPolynomial.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 María Inés de Frutos-Fernández, Filippo A. E. Nuccio. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: María Inés de Frutos-Fernández, Filippo A. E. Nuccio
-/
import Mathlib.Algebra.Polynomial.AlgebraMap

/-!
# Polynomials over subrings.

Given a field `K` with a subring `R`, in this file we construct a map from polynomials in `K[X]`
with coefficients in `R` to `R[X]`. We provide several lemmas to deal with
coefficients, degree, and evaluation of `Polynomial.int`.
This is useful when dealing with integral elements in an extension of fields.

# Main Definitions
* `Polynomial.int` : given a polynomial `P` in `K[X]` whose coefficients all belong to a subring `R`
  of the field `K`, `P.int R` is the corresponding polynomial in `R[X]`.
-/


namespace GRWTSK.Algebra.CommutativeAlgebra.PolynomialInt.Variant3ecd972e46a75f1708b077b1b71fc0df8036025c828f7a38085017a9a498deb0

variable {K : Type*} [Field K] (R : Subring K)

open scoped Polynomial

/-- Given a polynomial in `K[X]` such that all coefficients belong to the subring `R`,
  `Polynomial.int` is the corresponding polynomial in `R[X]`. -/
def Polynomial.int (P : K[X]) (hP : ∀ n : ℕ, P.coeff n ∈ R) : R[X] where
  toFinsupp :=
  { support := P.support
    toFun := fun n => ⟨P.coeff n, hP n⟩
    mem_support_toFun := fun n => by
      rw [ne_eq, ← Subring.coe_eq_zero_iff, mem_support_iff] }

namespace Polynomial

variable (P : K[X]) (hP : ∀ n : ℕ, P.coeff n ∈ R)

@[simp]
theorem int_coeff_eq (n : ℕ) : ↑((P.int R hP).coeff n) = P.coeff n := rfl

@[simp]
theorem int_leadingCoeff_eq : ↑(P.int R hP).leadingCoeff = P.leadingCoeff := rfl

@[simp]
theorem int_monic_iff : (P.int R hP).Monic ↔ P.Monic := by
  rw [Monic, Monic, ← int_leadingCoeff_eq, OneMemClass.coe_eq_one]

@[simp]
theorem int_natDegree : (P.int R hP).natDegree = P.natDegree := rfl

variable {L : Type*} [Field L] [Algebra K L]

@[simp]
theorem int_eval₂_eq (x : L) :
    eval₂ (algebraMap R L) x (P.int R hP) = aeval x P := by
  rw [aeval_eq_sum_range, eval₂_eq_sum_range]
  exact Finset.sum_congr rfl (fun n _ => by rw [Algebra.smul_def]; rfl)

end Polynomial
