# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Minpoly.Variant00f931098d67df6c8b16bb5cec4e632e7bb6ec1c0d73bb982f2c4fca5d744248

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a38cb0a66f95e3397f0c38ba85a32590f8e2c684` · SHA-256 `37b2c6090d813b5097ed50e6a2b3b2d560cf5a5c152abeca23b40751df974909`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.EigenspaceAevalPolynomialDegree.Variant71d894146a390c2c9dad561fe45a3bcbab0f895e6402e7e515ac8feec253cf4e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"71d894146a390c2c9dad561fe45a3bcbab0f895e6402e7e515ac8feec253cf4e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.EigenspaceAevalPolynomialDegree.Variant71d894146a390c2c9dad561fe45a3bcbab0f895e6402e7e515ac8feec253cf4e","mathematical_subject":"Algebra.Polynomials","original_sha256":"71d894146a390c2c9dad561fe45a3bcbab0f895e6402e7e515ac8feec253cf4e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/Eigenspace/Minpoly.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Alexander Bentkamp. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Alexander Bentkamp
-/
import Mathlib.LinearAlgebra.Eigenspace.Basic
import Mathlib.FieldTheory.Minpoly.Field

/-!
# Eigenvalues are the roots of the minimal polynomial.

## Tags

eigenvalue, minimal polynomial
-/



namespace GRWTSK.Algebra.CommutativeAlgebra.EigenspaceAevalPolynomialDegree.Variant71d894146a390c2c9dad561fe45a3bcbab0f895e6402e7e515ac8feec253cf4e

universe u v w

namespace Module

namespace End

open Polynomial Module

open scoped Polynomial

variable {K : Type v} {V : Type w} [Field K] [AddCommGroup V] [Module K V]

theorem eigenspace_aeval_polynomial_degree_1 (f : End K V) (q : K[X]) (hq : degree q = 1) :
    eigenspace f (-q.coeff 0 / q.leadingCoeff) = LinearMap.ker (aeval f q) :=
  calc
    eigenspace f (-q.coeff 0 / q.leadingCoeff)
    _ = LinearMap.ker (q.leadingCoeff • f - algebraMap K (End K V) (-q.coeff 0)) := by
          rw [eigenspace_div]
          intro h
          rw [leadingCoeff_eq_zero_iff_deg_eq_bot.1 h] at hq
          cases hq
    _ = LinearMap.ker (aeval f (C q.leadingCoeff * X + C (q.coeff 0))) := by
          rw [C_mul', aeval_def]; simp [algebraMap, Algebra.algebraMap]
    _ = LinearMap.ker (aeval f q) := by rwa [← eq_X_add_C_of_degree_eq_one]

theorem ker_aeval_ring_hom'_unit_polynomial (f : End K V) (c : K[X]ˣ) :
    LinearMap.ker (aeval f (c : K[X])) = ⊥ := by
  rw [Polynomial.eq_C_of_degree_eq_zero (degree_coe_units c)]
  simp only [aeval_def, eval₂_C]
  apply ker_algebraMap_end
  apply coeff_coe_units_zero_ne_zero c

theorem aeval_apply_of_hasEigenvector {f : End K V} {p : K[X]} {μ : K} {x : V}
    (h : f.HasEigenvector μ x) : aeval f p x = p.eval μ • x := by
  refine p.induction_on ?_ ?_ ?_
  · intro a; simp [Module.algebraMap_end_apply]
  · intro p q hp hq; simp [hp, hq, add_smul]
  · intro n a hna
    rw [mul_comm, pow_succ', mul_assoc, map_mul, Module.End.mul_apply, mul_comm, hna]
    simp only [mem_eigenspace_iff.1 h.1, smul_smul, aeval_X, eval_mul, eval_C, eval_pow, eval_X,
      LinearMap.map_smulₛₗ, RingHom.id_apply, mul_comm]

theorem isRoot_of_hasEigenvalue {f : End K V} {μ : K} (h : f.HasEigenvalue μ) :
    (minpoly K f).IsRoot μ := by
  rcases (Submodule.ne_bot_iff _).1 h with ⟨w, ⟨H, ne0⟩⟩
  refine Or.resolve_right (smul_eq_zero.1 ?_) ne0
  simp [← aeval_apply_of_hasEigenvector ⟨H, ne0⟩, minpoly.aeval K f]

variable [FiniteDimensional K V] (f : End K V)
variable {f} {μ : K}

theorem hasEigenvalue_of_isRoot (h : (minpoly K f).IsRoot μ) : f.HasEigenvalue μ := by
  obtain ⟨p, hp⟩ := dvd_iff_isRoot.2 h
  rw [hasEigenvalue_iff, eigenspace_def]
  intro con
  obtain ⟨u, hu⟩ := (LinearMap.isUnit_iff_ker_eq_bot _).2 con
  have p_ne_0 : p ≠ 0 := by
    intro con
    apply minpoly.ne_zero (Algebra.IsIntegral.isIntegral (R := K) f)
    rw [hp, con, mul_zero]
  have : (aeval f) p = 0 := by
    have h_aeval := minpoly.aeval K f
    revert h_aeval
    simp [hp, ← hu, Algebra.algebraMap_eq_smul_one]
  have h_deg := minpoly.degree_le_of_ne_zero K f p_ne_0 this
  rw [hp, degree_mul, degree_X_sub_C, Polynomial.degree_eq_natDegree p_ne_0] at h_deg
  norm_cast at h_deg
  omega

theorem hasEigenvalue_iff_isRoot : f.HasEigenvalue μ ↔ (minpoly K f).IsRoot μ :=
  ⟨isRoot_of_hasEigenvalue, hasEigenvalue_of_isRoot⟩

variable (f)

lemma finite_hasEigenvalue : Set.Finite f.HasEigenvalue := by
  have h : minpoly K f ≠ 0 := minpoly.ne_zero (Algebra.IsIntegral.isIntegral (R := K) f)
  convert (minpoly K f).rootSet_finite K
  ext μ
  change f.HasEigenvalue μ ↔ _
  rw [hasEigenvalue_iff_isRoot, mem_rootSet_of_ne h, IsRoot, coe_aeval_eq_eval]

/-- An endomorphism of a finite-dimensional vector space has finitely many eigenvalues. -/
noncomputable instance : Fintype f.Eigenvalues :=
  Set.Finite.fintype f.finite_hasEigenvalue

end End

end Module

section FiniteSpectrum

/-- An endomorphism of a finite-dimensional vector space has a finite spectrum. -/
theorem Module.End.finite_spectrum {K : Type v} {V : Type w} [Field K] [AddCommGroup V]
    [Module K V] [FiniteDimensional K V] (f : Module.End K V) :
    Set.Finite (spectrum K f) := by
  convert f.finite_hasEigenvalue
  ext f x
  exact Module.End.hasEigenvalue_iff_mem_spectrum.symm

variable {n R : Type*} [Field R] [Fintype n] [DecidableEq n]

/-- An n x n matrix over a field has a finite spectrum. -/
theorem Matrix.finite_spectrum (A : Matrix n n R) : Set.Finite (spectrum R A) := by
  rw [← AlgEquiv.spectrum_eq (Matrix.toLinAlgEquiv <| Pi.basisFun R n) A]
  exact Module.End.finite_spectrum _

instance Matrix.instFiniteSpectrum (A : Matrix n n R) : Finite (spectrum R A) :=
  Set.finite_coe_iff.mpr (Matrix.finite_spectrum A)

end FiniteSpectrum
```
