-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.HasEigenvectorToLinDiagonal.Variant86e68fde0331b663f564e53b85a4e4e7dcefdc859732dd193f905d3b20cabd97","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"86e68fde0331b663f564e53b85a4e4e7dcefdc859732dd193f905d3b20cabd97","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.HasEigenvectorToLinDiagonal.Variant86e68fde0331b663f564e53b85a4e4e7dcefdc859732dd193f905d3b20cabd97","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"86e68fde0331b663f564e53b85a4e4e7dcefdc859732dd193f905d3b20cabd97","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/Eigenspace/Matrix.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jon Bannon. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jon Bannon, Jireh Loreaux
-/

import Mathlib.LinearAlgebra.Eigenspace.Basic

/-!

# Eigenvalues, Eigenvectors and Spectrum for Matrices

This file collects results about eigenvectors, eigenvalues and spectrum specific to matrices
over a nontrivial commutative ring, nontrivial commutative ring without zero divisors, or field.

## Tags
eigenspace, eigenvector, eigenvalue, spectrum, matrix

-/


namespace GRWTSK.Algebra.LinearAlgebra.HasEigenvectorToLinDiagonal.Variant86e68fde0331b663f564e53b85a4e4e7dcefdc859732dd193f905d3b20cabd97

section SpectrumDiagonal

variable {R n M : Type*} [DecidableEq n] [Fintype n]

open Matrix Module.End

section NontrivialCommRing

variable [CommRing R] [Nontrivial R] [AddCommGroup M] [Module R M]

/-- Basis vectors are eigenvectors of associated diagonal linear operator. -/
lemma hasEigenvector_toLin_diagonal (d : n → R) (i : n) (b : Basis n R M) :
    HasEigenvector (toLin b b (diagonal d)) (d i) (b i) :=
  ⟨mem_eigenspace_iff.mpr <| by simp [diagonal], Basis.ne_zero b i⟩

/-- Standard basis vectors are eigenvectors of any associated diagonal linear operator. -/
lemma hasEigenvector_toLin'_diagonal (d : n → R) (i : n) :
    HasEigenvector (toLin' (diagonal d)) (d i) (Pi.basisFun R n i)  :=
  hasEigenvector_toLin_diagonal _ _ (Pi.basisFun R n)

/-- Eigenvalues of a diagonal linear operator are the diagonal entries. -/
lemma hasEigenvalue_toLin_diagonal_iff (d : n → R) {μ : R} [NoZeroSMulDivisors R M]
    (b : Basis n R M) : HasEigenvalue (toLin b b (diagonal d)) μ ↔ ∃ i, d i = μ := by
  have (i : n) : HasEigenvalue (toLin b b (diagonal d)) (d i) :=
    hasEigenvalue_of_hasEigenvector <| hasEigenvector_toLin_diagonal d i b
  constructor
  · contrapose!
    intro hμ h_eig
    have h_iSup : ⨆ μ ∈ Set.range d, eigenspace (toLin b b (diagonal d)) μ = ⊤ := by
      rw [eq_top_iff, ← b.span_eq, Submodule.span_le]
      rintro - ⟨i, rfl⟩
      simp only [SetLike.mem_coe]
      apply Submodule.mem_iSup_of_mem (d i)
      apply Submodule.mem_iSup_of_mem ⟨i, rfl⟩
      rw [mem_eigenspace_iff]
      exact (hasEigenvector_toLin_diagonal d i b).apply_eq_smul
    have hμ_notMem : μ ∉ Set.range d := by simpa using fun i ↦ (hμ i)
    have := eigenspaces_iSupIndep (toLin b b (diagonal d)) |>.disjoint_biSup hμ_notMem
    rw [h_iSup, disjoint_top] at this
    exact h_eig this
  · rintro ⟨i, rfl⟩
    exact this i

/-- Eigenvalues of a diagonal linear operator with respect to standard basis
    are the diagonal entries. -/
lemma hasEigenvalue_toLin'_diagonal_iff [NoZeroDivisors R] (d : n → R) {μ : R} :
    HasEigenvalue (toLin' (diagonal d)) μ ↔ (∃ i, d i = μ) :=
  hasEigenvalue_toLin_diagonal_iff _ <| Pi.basisFun R n

end NontrivialCommRing

/-- The spectrum of the diagonal operator is the range of the diagonal viewed as a function. -/
lemma spectrum_diagonal [Field R] (d : n → R) :
    spectrum R (diagonal d) = Set.range d := by
  ext μ
  rw [← AlgEquiv.spectrum_eq (toLinAlgEquiv <| Pi.basisFun R n), ← hasEigenvalue_iff_mem_spectrum]
  exact hasEigenvalue_toLin'_diagonal_iff d

end SpectrumDiagonal
