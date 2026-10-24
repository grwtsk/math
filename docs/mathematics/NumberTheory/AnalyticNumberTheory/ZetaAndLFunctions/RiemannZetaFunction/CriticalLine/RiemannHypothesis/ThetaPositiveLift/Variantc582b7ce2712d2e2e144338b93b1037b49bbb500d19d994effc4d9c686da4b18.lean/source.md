# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variantc582b7ce2712d2e2e144338b93b1037b49bbb500d19d994effc4d9c686da4b18

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4dd9e1292fd52b38cc1e3fe23c45fe1592d933ee` · SHA-256 `608cc7ae4443718f0213b0e51d1d1f9ab1dfd5eb525735ebbd77dd2374c13fef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPhiWhitenedParityCompressionIsHermitian.Variant85f36533f70ea9a61e68a4199e87e368a55e09efe88213d67d22cdea6654cc16","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"85f36533f70ea9a61e68a4199e87e368a55e09efe88213d67d22cdea6654cc16","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ThetaPhiWhitenedParityCompressionIsHermitian.Variant85f36533f70ea9a61e68a4199e87e368a55e09efe88213d67d22cdea6654cc16","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"85f36533f70ea9a61e68a4199e87e368a55e09efe88213d67d22cdea6654cc16","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/85f36533f70ea9a61e68a4199e87e368a55e09efe88213d67d22cdea6654cc16.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaPhiWhitenedProjection
import Mathlib.Analysis.Matrix.Spectrum

/-!
# Spectrum of the canonically whitened theta phase compression

For every nondegenerate finite theta cutoff, the canonical compressed phase

`C = B J Bᵀ`

is real symmetric and satisfies `C^2 <= I`.  This module converts that
matrix-order contraction into the corresponding spectral statement:

`-1 <= lambda_i(C) <= 1`.

It also records the exact determinant product over those real eigenvalues and
defines the negative-eigenvalue count that remains to be controlled for the
theta determinant sign.

No parity statement for the negative spectrum is proved here.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPhiWhitenedParityCompressionIsHermitian.Variant85f36533f70ea9a61e68a4199e87e368a55e09efe88213d67d22cdea6654cc16

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

noncomputable section

/-- The canonical whitened phase compression is Hermitian (symmetric over the
reals). -/
theorem thetaPhiWhitenedParityCompression_isHermitian
    (k L N : ℕ) (t : ℝ) :
    (thetaPhiWhitenedParityCompression k L N t).IsHermitian := by
  change
    (thetaPhiWhitenedParityCompression k L N t).conjTranspose =
      thetaPhiWhitenedParityCompression k L N t
  rw [Matrix.conjTranspose_eq_transpose_of_trivial,
    thetaPhiWhitenedParityCompression_transpose]

/-- Every eigenvalue of the canonical whitened phase compression has square
at most one. -/
theorem thetaPhiWhitenedParityCompression_eigenvalue_sq_le_one
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ)
    (i : Fin k) :
    ((thetaPhiWhitenedParityCompression_isHermitian
      k L N t).eigenvalues i) ^ 2 ≤ 1 := by
  let C := thetaPhiWhitenedParityCompression k L N t
  have hC : C.IsHermitian := by
    dsimp [C]
    exact thetaPhiWhitenedParityCompression_isHermitian k L N t
  let lambda : ℝ := hC.eigenvalues i
  let v : Fin k → ℝ :=
    fun j => hC.eigenvectorBasis i j
  have hCv :
      C.mulVec v = lambda • v := by
    dsimp [lambda, v]
    exact hC.mulVec_eigenvectorBasis i
  let D : Matrix (Fin k) (Fin k) ℝ :=
    (1 : Matrix (Fin k) (Fin k) ℝ) - C * C
  have hD : D.PosSemidef := by
    dsimp [D, C]
    exact
      thetaPhiWhitenedParityCompression_phaseDefect_posSemidef
        hk hN t
  have hDv :
      D.mulVec v = (1 - lambda ^ 2) • v := by
    dsimp [D]
    rw [Matrix.sub_mulVec, Matrix.one_mulVec,
      ← Matrix.mulVec_mulVec, hCv, Matrix.mulVec_smul, hCv]
    ext j
    simp [Pi.smul_apply]
    ring
  have hvinner :
      @inner ℝ (EuclideanSpace ℝ (Fin k)) _
          (hC.eigenvectorBasis i)
          (hC.eigenvectorBasis i) = 1 := by
    rw [inner_self_eq_norm_sq_to_K,
      hC.eigenvectorBasis.orthonormal.1 i]
    norm_num
  have hvdot : v ⬝ᵥ v = 1 := by
    rw [EuclideanSpace.inner_eq_star_dotProduct] at hvinner
    simpa [v, star_trivial, dotProduct_comm] using hvinner
  have hquad := hD.dotProduct_mulVec_nonneg v
  rw [hDv] at hquad
  simp only [star_trivial, dotProduct_smul,
    smul_eq_mul, hvdot, mul_one] at hquad
  have hlam : lambda ^ 2 ≤ 1 :=
    sub_nonneg.mp hquad
  change lambda ^ 2 ≤ 1
  exact hlam

/-- Every eigenvalue of the canonical compressed phase lies in the closed
interval [-1,1]. -/
theorem thetaPhiWhitenedParityCompression_eigenvalue_mem_Icc
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ)
    (i : Fin k) :
    (thetaPhiWhitenedParityCompression_isHermitian
      k L N t).eigenvalues i ∈ Set.Icc (-1 : ℝ) 1 := by
  have hsq :=
    thetaPhiWhitenedParityCompression_eigenvalue_sq_le_one
      hk hN t i
  constructor <;> nlinarith

/-- The finite theta normalized determinant is the product of the real
eigenvalues of the canonical whitened phase compression. -/
theorem thetaPhiNormalizedParityCompression_eq_prod_eigenvalues
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    thetaPhiNormalizedParityCompression k L N t =
      ∏ i : Fin k,
        (thetaPhiWhitenedParityCompression_isHermitian
          k L N t).eigenvalues i := by
  rw [thetaPhiNormalizedParityCompression_eq_whitened_det
    hk hN t]
  simpa using
    (thetaPhiWhitenedParityCompression_isHermitian
      k L N t).det_eq_prod_eigenvalues

/-- Number of strictly negative eigenvalues of the canonical finite theta
phase compression, counted with the fixed spectral-theorem indexing. -/
def thetaPhiWhitenedNegativeEigenvalueCount
    (k L N : ℕ) (t : ℝ) : ℕ :=
  Fintype.card
    {i : Fin k //
      (thetaPhiWhitenedParityCompression_isHermitian
        k L N t).eigenvalues i < 0}

/-- Explicit remaining finite inertia-parity target.  Zero eigenvalues are
allowed; when none occur, even negative inertia is the expected determinant
nonnegativity criterion to prove next. -/
def ThetaPhiWhitenedNegativeInertiaParity : Prop :=
  ∀ k L N : ℕ, ∀ t : ℝ,
    k ≤ L → 0 < N →
      (∀ i : Fin k,
        (thetaPhiWhitenedParityCompression_isHermitian
          k L N t).eigenvalues i ≠ 0) →
      Even
        (thetaPhiWhitenedNegativeEigenvalueCount
          k L N t)

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
