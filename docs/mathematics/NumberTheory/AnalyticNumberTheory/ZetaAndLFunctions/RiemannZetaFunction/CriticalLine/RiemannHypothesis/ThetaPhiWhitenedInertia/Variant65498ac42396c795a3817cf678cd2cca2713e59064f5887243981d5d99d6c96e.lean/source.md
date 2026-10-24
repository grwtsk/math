# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPhiWhitenedInertia.Variant65498ac42396c795a3817cf678cd2cca2713e59064f5887243981d5d99d6c96e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `68a79d610ba96b9b9c90842c507f9cdb3b67eeba` · SHA-256 `1b5209b4e04cd294e7b0a75689e4af8a3d9c184a5decb24a5137a9fb94320584`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FintypeProdPosOfEvenNegativeCount.Variant60893b11cb3cbd037f866c229b3bd738d8de7b855f0f255a798436aed76efce2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"60893b11cb3cbd037f866c229b3bd738d8de7b855f0f255a798436aed76efce2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.FintypeProdPosOfEvenNegativeCount.Variant60893b11cb3cbd037f866c229b3bd738d8de7b855f0f255a798436aed76efce2","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"60893b11cb3cbd037f866c229b3bd738d8de7b855f0f255a798436aed76efce2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass20/congruence_guard/primary-review/ThetaPhiWhitenedInertia.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaPhiWhitenedSpectrum
import Mathlib.Analysis.Convex.SpecificFunctions.Deriv

/-!
# Inertia parity and the finite theta determinant sign

The canonical whitened phase compression has real spectrum in `[-1,1]`,
and the normalized finite theta determinant is the product of that spectrum.

This module supplies the finite sign bridge:

* for a nonzero finite real family, even negative count gives positive product;
* if a compressed-phase eigenvalue is zero, the determinant is already zero;
* therefore the open negative-inertia parity criterion implies
  nonnegativity of every finite normalized theta compression;
* the existing positive-Gram normalization then transfers that sign to the
  finite signed Christoffel-Hankel determinant.

No proof of the negative-inertia parity criterion itself is asserted here.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FintypeProdPosOfEvenNegativeCount.Variant60893b11cb3cbd037f866c229b3bd738d8de7b855f0f255a798436aed76efce2

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

noncomputable section

/-- A finite nonzero real family with an even number of negative entries has
strictly positive product. -/
theorem fintypeProd_pos_of_even_negative_count
    {ι : Type*} [Fintype ι] (f : ι → ℝ)
    (hnz : ∀ i, f i ≠ 0)
    (heven : Even (Fintype.card {i // f i < 0})) :
    0 < ∏ i, f i := by
  classical
  have hnegEven :
      Even ((Finset.univ.filter fun i => f i < 0).card) := by
    simpa only [Fintype.card_subtype] using heven
  have hfilters :
      (Finset.univ.filter fun i => f i ≤ 0) =
        Finset.univ.filter fun i => f i < 0 := by
    ext i
    simp only [Finset.mem_filter, Finset.mem_univ, true_and]
    constructor
    · intro hi
      exact lt_of_le_of_ne hi (hnz i)
    · exact le_of_lt
  have hnonposEven :
      Even ((Finset.univ.filter fun i => f i ≤ 0).card) := by
    rw [hfilters]
    exact hnegEven
  have hnonneg : 0 ≤ ∏ i, f i := by
    simpa using
      (Finset.prod_nonneg_of_card_nonpos_even
        (f := f) (s := Finset.univ) hnonposEven)
  have hprodne : (∏ i, f i) ≠ 0 := by
    exact Finset.prod_ne_zero_iff.mpr fun i _ => hnz i
  exact lt_of_le_of_ne hnonneg (Ne.symm hprodne)

/-- With no zero compressed-phase eigenvalue, even negative inertia makes the
normalized finite theta determinant strictly positive. -/
theorem thetaPhiNormalizedParityCompression_pos_of_even_negativeInertia
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ)
    (hnz :
      ∀ i : Fin k,
        (thetaPhiWhitenedParityCompression_isHermitian
          k L N t).eigenvalues i ≠ 0)
    (heven :
      Even
        (thetaPhiWhitenedNegativeEigenvalueCount
          k L N t)) :
    0 < thetaPhiNormalizedParityCompression k L N t := by
  rw [thetaPhiNormalizedParityCompression_eq_prod_eigenvalues
    hk hN t]
  apply fintypeProd_pos_of_even_negative_count
  · exact hnz
  · simpa [thetaPhiWhitenedNegativeEigenvalueCount] using heven

/-- The open negative-inertia parity criterion is sufficient for
nonnegativity of every nondegenerate finite normalized theta compression.
Zero spectral values require no parity argument because the product is then
zero. -/
theorem thetaPhiNormalizedParityCompression_nonnegative_of_negativeInertiaParity
    (hparity : ThetaPhiWhitenedNegativeInertiaParity)
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    0 ≤ thetaPhiNormalizedParityCompression k L N t := by
  by_cases hz :
      ∃ i : Fin k,
        (thetaPhiWhitenedParityCompression_isHermitian
          k L N t).eigenvalues i = 0
  · rw [thetaPhiNormalizedParityCompression_eq_prod_eigenvalues
      hk hN t]
    obtain ⟨i, hi⟩ := hz
    rw [Finset.prod_eq_zero (Finset.mem_univ i) hi]
  · have hnz :
        ∀ i : Fin k,
          (thetaPhiWhitenedParityCompression_isHermitian
            k L N t).eigenvalues i ≠ 0 := by
      intro i hi
      exact hz ⟨i, hi⟩
    have heven :
        Even
          (thetaPhiWhitenedNegativeEigenvalueCount
            k L N t) :=
      hparity k L N t hk hN hnz
    exact
      (thetaPhiNormalizedParityCompression_pos_of_even_negativeInertia
        hk hN t hnz heven).le

/-- The same inertia-parity criterion transfers through the positive Gram
normalization to the original finite signed Christoffel-Hankel determinant. -/
theorem thetaPhiChristoffelHankel_nonnegative_of_negativeInertiaParity
    (hparity : ThetaPhiWhitenedNegativeInertiaParity)
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
      (thetaPhiNormalizedParityCompression_nonnegative_of_negativeInertiaParity
        hparity hk hN t)

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
