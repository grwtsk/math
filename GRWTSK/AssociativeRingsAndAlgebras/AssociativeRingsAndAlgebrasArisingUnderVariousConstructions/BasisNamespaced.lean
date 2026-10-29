-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.BasisMonomials.Variantdb4a024287041652cb2576cc4ccf7d80397964b26b6ae6ed66e81ca6be76373b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"db4a024287041652cb2576cc4ccf7d80397964b26b6ae6ed66e81ca6be76373b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.BasisMonomials.Variantdb4a024287041652cb2576cc4ccf7d80397964b26b6ae6ed66e81ca6be76373b","mathematical_subject":"Algebra.Polynomials","original_sha256":"db4a024287041652cb2576cc4ccf7d80397964b26b6ae6ed66e81ca6be76373b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Polynomial/Basis.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jz Pan. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jz Pan
-/
import Mathlib.Algebra.Polynomial.Basic
import Mathlib.LinearAlgebra.Basis.Defs

/-!

# Basis of a polynomial ring

-/


namespace GRWTSK.Algebra.CommutativeAlgebra.BasisMonomials.Variantdb4a024287041652cb2576cc4ccf7d80397964b26b6ae6ed66e81ca6be76373b

universe u

variable (R : Type u) [Semiring R]

namespace Polynomial

/-- The monomials form a basis on `R[X]`. To get the rank of a polynomial ring,
use this and `Basis.mk_eq_rank`. -/
def basisMonomials : Basis ℕ R R[X] :=
  Basis.ofRepr (toFinsuppIsoLinear R)

@[simp]
theorem coe_basisMonomials : (basisMonomials R : ℕ → R[X]) = fun s => monomial s 1 :=
  funext fun _ => ofFinsupp_single _ _

end Polynomial
