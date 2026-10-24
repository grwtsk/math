# Complete source: GRWTSK.Algebra.LinearAlgebra.HermitianInertiaDraft.Variant54c48e28fe662c925652f7c79ab1bd56f0247aca1d77db7b3fb2c1a2962e4410

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6169035f6185d311fc0badea47cb29c249a0ef24` · SHA-256 `bed80c8e50a39a49ac34b0273e266286987ee2a30c456967b3f5ddd312896b3c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.SpectralCoordinates.Variantc7472418f5757bca0a71cc276036168fd22ddb2d73c0f1512317191e705f8c71","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c7472418f5757bca0a71cc276036168fd22ddb2d73c0f1512317191e705f8c71","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.SpectralCoordinates.Variantc7472418f5757bca0a71cc276036168fd22ddb2d73c0f1512317191e705f8c71","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"c7472418f5757bca0a71cc276036168fd22ddb2d73c0f1512317191e705f8c71","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass4/inertia_review/coordinator-hermitian-replay/HermitianInertiaDraft.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import RealificationDraft
import Mathlib.LinearAlgebra.Matrix.ToLinearEquiv

/-! Research scratch, actual full-index complex Hermitian inertia.
Direction and programme: grwtsk contributors. OpenAI Codex proof construction.
No determinant/rank shortcut is used for positive or negative counts. -/

namespace GRWTSK.Algebra.LinearAlgebra.SpectralCoordinates.Variantc7472418f5757bca0a71cc276036168fd22ddb2d73c0f1512317191e705f8c71

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.HermitianInertia
open Matrix QuadraticMap ContinuousResearch.HermitianRealification
variable {σ : Type*} [Fintype σ] [DecidableEq σ]

/-- Actual spectral coordinates Uᴴ z, restricted to real scalars. -/
def spectralCoordinates (M : Matrix σ σ ℂ) (hM : M.IsHermitian) :
    (σ → ℂ) ≃ₗ[ℝ] (σ → ℂ) :=
  (Matrix.toLin'OfInv (Unitary.coe_mul_star_self hM.eigenvectorUnitary)
    (Unitary.coe_star_mul_self hM.eigenvectorUnitary)).restrictScalars ℝ

theorem spectralCoordinates_apply (M : Matrix σ σ ℂ) (hM : M.IsHermitian) (z : σ → ℂ) :
    spectralCoordinates M hM z = (hM.eigenvectorUnitary : Matrix σ σ ℂ)ᴴ *ᵥ z := by
  rfl

/-- Real quadratic form constructed from the actual Hermitian spectral packet. -/
def realForm (M : Matrix σ σ ℂ) (hM : M.IsHermitian) : QuadraticForm ℝ (σ → ℂ) :=
  (diagonalRealForm hM.eigenvalues).comp (spectralCoordinates M hM).toLinearMap

def spectralRealEquiv (M : Matrix σ σ ℂ) (hM : M.IsHermitian) :
    (realForm M hM).IsometryEquiv (diagonalRealForm hM.eigenvalues) :=
  (isometryEquivOfCompLinearEquiv (diagonalRealForm hM.eigenvalues)
    (spectralCoordinates M hM)).symm

theorem realForm_energy (M : Matrix σ σ ℂ) (hM : M.IsHermitian) (z : σ → ℂ) :
    realForm M hM z = (star z ⬝ᵥ M.mulVec z).re := by
  rw [realForm, QuadraticMap.comp_apply]
  change diagonalRealForm hM.eigenvalues (spectralCoordinates M hM z) = _
  rw [spectralCoordinates_apply, ← diagonal_hermitian_energy]
  conv_rhs => rw [hM.spectral_theorem, Unitary.conjStarAlgAut_apply]
  simp only [Matrix.mulVec_mulVec, Matrix.star_mulVec,
    Matrix.conjTranspose_conjTranspose, Matrix.star_eq_conjTranspose,
    Matrix.dotProduct_mulVec, Matrix.vecMul_vecMul, mul_assoc]
  rfl

theorem sigPos_realForm (M : Matrix σ σ ℂ) (hM : M.IsHermitian) :
    sigPos (realForm M hM) = 2 * Fintype.card {i // 0 < hM.eigenvalues i} := by
  rw [(show Equivalent (realForm M hM) (diagonalRealForm hM.eigenvalues)
    from ⟨spectralRealEquiv M hM⟩).sigPos_eq]
  exact sigPos_diagonalRealForm hM.eigenvalues

theorem sigNeg_realForm (M : Matrix σ σ ℂ) (hM : M.IsHermitian) :
    sigNeg (realForm M hM) = 2 * Fintype.card {i // hM.eigenvalues i < 0} := by
  rw [(show Equivalent (realForm M hM) (diagonalRealForm hM.eigenvalues)
    from ⟨spectralRealEquiv M hM⟩).sigNeg_eq]
  exact sigNeg_diagonalRealForm hM.eigenvalues

/-- The real congruence map is the actual matrix action Pz. -/
def congruenceCoordinates (P : Matrix σ σ ℂ) (hP : P.det ≠ 0) :
    (σ → ℂ) ≃ₗ[ℝ] (σ → ℂ) :=
  (Matrix.toLin'OfInv (Matrix.nonsing_inv_mul P (isUnit_iff_ne_zero.mpr hP))
    (Matrix.mul_nonsing_inv P (isUnit_iff_ne_zero.mpr hP))).restrictScalars ℝ

theorem congruenceCoordinates_apply (P : Matrix σ σ ℂ) (hP : P.det ≠ 0) (z : σ → ℂ) :
    congruenceCoordinates P hP z = P *ᵥ z := by
  rfl

theorem realForm_congruence (M P : Matrix σ σ ℂ) (hM : M.IsHermitian)
    (hP : P.det ≠ 0) (hN : (Pᴴ * M * P).IsHermitian) :
    realForm (Pᴴ * M * P) hN = (realForm M hM).comp
      (congruenceCoordinates P hP).toLinearMap := by
  ext z
  rw [QuadraticMap.comp_apply]
  change realForm (Pᴴ * M * P) hN z = realForm M hM (congruenceCoordinates P hP z)
  rw [congruenceCoordinates_apply, realForm_energy, realForm_energy]
  simp only [Matrix.star_mulVec, Matrix.dotProduct_mulVec, Matrix.vecMul_vecMul]

theorem positive_count_congruence (M P : Matrix σ σ ℂ) (hM : M.IsHermitian)
    (hP : P.det ≠ 0) (hN : (Pᴴ * M * P).IsHermitian) :
    Fintype.card {i // 0 < hN.eigenvalues i} =
      Fintype.card {i // 0 < hM.eigenvalues i} := by
  have he : Equivalent (realForm (Pᴴ*M*P) hN) (realForm M hM) := by
    rw [realForm_congruence M P hM hP hN]
    exact ⟨(isometryEquivOfCompLinearEquiv (realForm M hM)
      (congruenceCoordinates P hP)).symm⟩
  have h := he.sigPos_eq
  rw [sigPos_realForm, sigPos_realForm] at h
  omega

theorem negative_count_congruence (M P : Matrix σ σ ℂ) (hM : M.IsHermitian)
    (hP : P.det ≠ 0) (hN : (Pᴴ * M * P).IsHermitian) :
    Fintype.card {i // hN.eigenvalues i < 0} =
      Fintype.card {i // hM.eigenvalues i < 0} := by
  have he : Equivalent (realForm (Pᴴ*M*P) hN) (realForm M hM) := by
    rw [realForm_congruence M P hM hP hN]
    exact ⟨(isometryEquivOfCompLinearEquiv (realForm M hM)
      (congruenceCoordinates P hP)).symm⟩
  have h := he.sigNeg_eq
  rw [sigNeg_realForm, sigNeg_realForm] at h
  omega

#print axioms spectralCoordinates
#print axioms spectralCoordinates_apply
#print axioms realForm
#print axioms spectralRealEquiv
#print axioms realForm_energy
#print axioms sigPos_realForm
#print axioms sigNeg_realForm
#print axioms congruenceCoordinates
#print axioms congruenceCoordinates_apply
#print axioms realForm_congruence
#print axioms positive_count_congruence
#print axioms negative_count_congruence
end ContinuousResearch.HermitianInertia
```
