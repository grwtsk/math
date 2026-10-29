-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPhiWhitenedNegativeParityEigenvalue.Variantd8491ad9e45d094491a48c96dc1ffcae7fe8bba4265db2d6616422b7507018be","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d8491ad9e45d094491a48c96dc1ffcae7fe8bba4265db2d6616422b7507018be","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ThetaPhiWhitenedNegativeParityEigenvalue.Variantd8491ad9e45d094491a48c96dc1ffcae7fe8bba4265db2d6616422b7507018be","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"d8491ad9e45d094491a48c96dc1ffcae7fe8bba4265db2d6616422b7507018be","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/d8491ad9e45d094491a48c96dc1ffcae7fe8bba4265db2d6616422b7507018be.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaPhiWhitenedParityProjector
import Mathlib.Analysis.Matrix.HermitianFunctionalCalculus

/-!
# Half-threshold spectral sign bridge

The verified odd-support decomposition gives

`C = I - 2 K_-`

with `K_-` positive semidefinite.  Rather than compare the canonical sorted
eigenvalue functions of `C` and `K_-`, diagonalize `K_-` directly.

The Hermitian functional calculus for the affine function

`x ↦ 1 - 2*x`

is exactly `C`.  Hence

`det C = ∏ i, (1 - 2*mu_i)`,

where `mu_i` are the eigenvalues of `K_-`.  Therefore the determinant sign
is controlled directly by the number of `mu_i > 1/2`.  Eigenvalues exactly
at `1/2` contribute a zero factor, so no separate nondegeneracy assumption
is needed for nonnegativity.

No proof of the half-threshold parity criterion itself is asserted here.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPhiWhitenedNegativeParityEigenvalue.Variantd8491ad9e45d094491a48c96dc1ffcae7fe8bba4265db2d6616422b7507018be

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

noncomputable section

/-- Canonical eigenvalue function of the positive odd-support compression. -/
def thetaPhiWhitenedNegativeParityEigenvalue
    (k L N : ℕ) (t : ℝ) (i : Fin k) : ℝ :=
  (thetaPhiWhitenedNegativeParityGram_posSemidef
    k L N t).isHermitian.eigenvalues i

/-- The canonical compressed phase is the Hermitian functional-calculus image
of the positive odd-support compression under `x ↦ 1 - 2*x`. -/
theorem thetaPhiWhitenedParityCompression_eq_cfc_halfShift
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    thetaPhiWhitenedParityCompression k L N t =
      cfc (fun x : ℝ => 1 - 2 * x)
        (thetaPhiWhitenedNegativeParityGram k L N t) := by
  rw [thetaPhiWhitenedParityCompression_eq_one_sub_two_negativeGram
    hk hN t]
  let K := thetaPhiWhitenedNegativeParityGram k L N t
  have hK :
      IsSelfAdjoint K :=
    (thetaPhiWhitenedNegativeParityGram_posSemidef
      k L N t).isHermitian.isSelfAdjoint
  change
    (1 : Matrix (Fin k) (Fin k) ℝ) - (2 : ℝ) • K =
      cfc (fun x : ℝ => 1 - 2 * x) K
  symm
  rw [cfc_sub (fun _ : ℝ => 1) (fun x : ℝ => 2 * x) K,
    cfc_const_one ℝ K hK,
    cfc_const_mul_id (2 : ℝ) K hK]

/-- Determinant of the compressed phase in the eigenbasis of the positive
odd-support Gram operator. -/
theorem thetaPhiWhitenedParityCompression_det_eq_halfShiftProduct
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    Matrix.det
        (thetaPhiWhitenedParityCompression k L N t) =
      ∏ i : Fin k,
        (1 - 2 *
          thetaPhiWhitenedNegativeParityEigenvalue
            k L N t i) := by
  rw [thetaPhiWhitenedParityCompression_eq_cfc_halfShift
    hk hN t]
  let K := thetaPhiWhitenedNegativeParityGram k L N t
  have hK :
      K.IsHermitian :=
    (thetaPhiWhitenedNegativeParityGram_posSemidef
      k L N t).isHermitian
  change
    Matrix.det (cfc (fun x : ℝ => 1 - 2 * x) K) =
      ∏ i : Fin k,
        (1 - 2 *
          thetaPhiWhitenedNegativeParityEigenvalue
            k L N t i)
  rw [hK.cfc_eq]
  simp only [Matrix.IsHermitian.cfc, Matrix.det_map,
    Matrix.det_diagonal, Function.comp_apply]
  rfl

/-- The half-threshold count is exactly the number of negative factors in the
affine determinant product. -/
theorem thetaPhiWhitenedHalfThresholdCount_eq_negativeFactorCount
    (k L N : ℕ) (t : ℝ) :
    thetaPhiWhitenedHalfThresholdCount k L N t =
      Fintype.card
        {i : Fin k //
          1 - 2 *
              thetaPhiWhitenedNegativeParityEigenvalue
                k L N t i <
            0} := by
  unfold thetaPhiWhitenedHalfThresholdCount
    thetaPhiWhitenedNegativeParityEigenvalue
  apply Fintype.card_congr
  exact
    Equiv.subtypeEquivRight fun i => by
      constructor <;> intro hi <;> nlinarith

/-- Even half-threshold count implies nonnegative determinant of the canonical
compressed phase.  A threshold eigenvalue exactly at `1/2` makes the
determinant zero; otherwise the product is strictly positive. -/
theorem thetaPhiWhitenedParityCompression_det_nonnegative_of_halfThresholdParity
    (hparity : ThetaPhiWhitenedHalfThresholdParity)
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    0 ≤
      Matrix.det
        (thetaPhiWhitenedParityCompression k L N t) := by
  rw [thetaPhiWhitenedParityCompression_det_eq_halfShiftProduct
    hk hN t]
  let f : Fin k → ℝ :=
    fun i =>
      1 - 2 *
        thetaPhiWhitenedNegativeParityEigenvalue
          k L N t i
  change 0 ≤ ∏ i : Fin k, f i
  by_cases hz : ∃ i : Fin k, f i = 0
  · obtain ⟨i, hi⟩ := hz
    rw [Finset.prod_eq_zero (Finset.mem_univ i) hi]
  · have hnz : ∀ i : Fin k, f i ≠ 0 := by
      intro i hi
      exact hz ⟨i, hi⟩
    have hevenThreshold :
        Even
          (thetaPhiWhitenedHalfThresholdCount
            k L N t) :=
      hparity k L N t hk hN
    have hevenNegative :
        Even (Fintype.card {i : Fin k // f i < 0}) := by
      rw [←
        thetaPhiWhitenedHalfThresholdCount_eq_negativeFactorCount
          k L N t]
      exact hevenThreshold
    exact
      (fintypeProd_pos_of_even_negative_count
        f hnz hevenNegative).le

/-- The half-threshold parity criterion implies nonnegativity of the
basis-invariant normalized finite theta compression. -/
theorem thetaPhiNormalizedParityCompression_nonnegative_of_halfThresholdParity
    (hparity : ThetaPhiWhitenedHalfThresholdParity)
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    0 ≤ thetaPhiNormalizedParityCompression k L N t := by
  rw [thetaPhiNormalizedParityCompression_eq_whitened_det
    hk hN t]
  exact
    thetaPhiWhitenedParityCompression_det_nonnegative_of_halfThresholdParity
      hparity hk hN t

/-- The same half-threshold parity criterion transfers through the positive
Gram normalization to the original finite signed Christoffel-Hankel
determinant. -/
theorem thetaPhiChristoffelHankel_nonnegative_of_halfThresholdParity
    (hparity : ThetaPhiWhitenedHalfThresholdParity)
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    0 ≤
      Matrix.det
        (thetaPhiChristoffelHankel k
          (fun n =>
            thetaPhiBaseSignedMomentTruncation
              L N n t)) := by
  exact
    (thetaPhiNormalizedParityCompression_nonnegative_iff
      hk hN t).mp
      (thetaPhiNormalizedParityCompression_nonnegative_of_halfThresholdParity
        hparity hk hN t)

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
