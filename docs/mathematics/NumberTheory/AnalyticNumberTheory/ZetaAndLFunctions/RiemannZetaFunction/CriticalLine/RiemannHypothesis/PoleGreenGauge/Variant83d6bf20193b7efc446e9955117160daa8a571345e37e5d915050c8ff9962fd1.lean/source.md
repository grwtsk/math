# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PoleGreenGauge.Variant83d6bf20193b7efc446e9955117160daa8a571345e37e5d915050c8ff9962fd1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bd7633315a1a8419c1700f24edb1011b30b80e2f` · SHA-256 `0e4046e2a2490dd43fc370c325741274b05e05fca1ea9f88457cf508c5a3c2fe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.HomogeneousOperatorPairingIntegrable.Variantf5c2ad5af8da2f8b8093744e70862196ab15d89d6d0c787de9e1955339cd757e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f5c2ad5af8da2f8b8093744e70862196ab15d89d6d0c787de9e1955339cd757e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.HomogeneousOperatorPairingIntegrable.Variantf5c2ad5af8da2f8b8093744e70862196ab15d89d6d0c787de9e1955339cd757e","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"f5c2ad5af8da2f8b8093744e70862196ab15d89d6d0c787de9e1955339cd757e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/f5c2ad5af8da2f8b8093744e70862196ab15d89d6d0c787de9e1955339cd757e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.PoleGreenArithmetic

/-!
# Homogeneous freedom preserves the correctly differentiated Green pairing

Every compact C⁴ test kills every C⁴ homogeneous pole solution after moving the
operator by its exact Lagrange flux. This includes unbounded homogeneous modes:
their coefficients require no uniform bound. It does not make the unfiltered
positive pairing invariant.

AI attribution: Codex authored this module and its proofs.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.HomogeneousOperatorPairingIntegrable.Variantf5c2ad5af8da2f8b8093744e70862196ab15d89d6d0c787de9e1955339cd757e

namespace FormalResearch.RiemannHypothesis.PoleGreenGauge

open MeasureTheory Set
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization
open FormalResearch.RiemannHypothesis.SourcePairing
open PoleDifferentialCorrelation PoleArithmeticFunctional PoleGreenKernel
open PoleGreenWeakIdentity PoleGreenArithmetic

noncomputable section

/-- The homogeneous pairing is integrable because the differentiated test has compact support. -/
theorem homogeneous_operator_pairing_integrable (g f : ℝ → ℝ)
    (hg : ContDiff ℝ 4 g) (hf : ContDiff ℝ 4 f) (hcf : HasCompactSupport f) :
    Integrable (fun t ↦ g t * poleSquaredDifferentialOperator f t) :=
  (hg.continuous.mul (pole_squared_operator_continuous f hf)).integrable_of_hasCompactSupport
    (pole_squared_operator_has_compact_support f hcf).mul_left

/-- Every homogeneous pole solution is invisible to the correctly differentiated compact pairing. -/
theorem homogeneous_operator_pairing_zero (g f : ℝ → ℝ)
    (hg : ContDiff ℝ 4 g) (hf : ContDiff ℝ 4 f) (hcf : HasCompactSupport f)
    (hzero : ∀ t, poleSquaredDifferentialOperator g t = 0) :
    (∫ t, g t * poleSquaredDifferentialOperator f t) = 0 := by
  obtain ⟨B, hB, hbound⟩ := hcf.isCompact.isBounded.exists_pos_norm_lt
  have hz (k : ℕ) (t : ℝ) (ht : B ≤ |t|) : iteratedDeriv k f t = 0 := by
    apply iterated_deriv_eq_zero_of_not_mem_tsupport
    intro hm
    have hb := hbound t hm
    rw [Real.norm_eq_abs] at hb
    linarith
  have hleft : ∀ k : ℕ, k ≤ 3 → iteratedDeriv k f (-B) = 0 := by
    intro k _
    apply hz k (-B)
    rw [abs_neg, abs_of_pos hB]
  have hright : ∀ k : ℕ, k ≤ 3 → iteratedDeriv k f B = 0 := by
    intro k _
    apply hz k B
    rw [abs_of_pos hB]
  have hsupport (t : ℝ) (ht : t ∉ Icc (-B) B) :
      g t * poleSquaredDifferentialOperator f t = 0 := by
    have ha : B ≤ |t| := by
      by_contra h
      exact ht (abs_le.mp (le_of_lt (lt_of_not_ge h)))
    have hn : t ∉ tsupport f := by
      intro hm
      have hb := hbound t hm
      rw [Real.norm_eq_abs] at hb
      linarith
    rw [pole_squared_operator_eq_zero_of_not_mem_tsupport f t hn, mul_zero]
  calc
    _ = ∫ t, (Icc (-B) B).indicator
        (fun t ↦ g t * poleSquaredDifferentialOperator f t) t := by
      apply integral_congr_ae
      filter_upwards [] with t
      by_cases ht : t ∈ Icc (-B) B
      · rw [indicator_of_mem ht]
      · rw [indicator_of_notMem ht, hsupport t ht]
    _ = ∫ t in -B..B, g t * poleSquaredDifferentialOperator f t :=
      zeroExtension_integral _ (-B) B (by linarith)
    _ = 0 := by
      rw [homogeneous_branch_green_identity g f hg hf hzero,
        boundary_flux_eq_zero_of_jets g f B hright,
        boundary_flux_eq_zero_of_jets g f (-B) hleft, sub_self]

/-- Adding any C⁴ homogeneous solution to the actual inverse preserves its weak arithmetic value. -/
theorem green_discrepancy_pairing_add_homogeneous (A : ℝ) (hA : 1 ≤ A)
    (g f : ℝ → ℝ) (hg : ContDiff ℝ 4 g) (hf : ContDiff ℝ 4 f)
    (hcf : HasCompactSupport f) (hzero : ∀ t, poleSquaredDifferentialOperator g t = 0) :
    (∫ t, (primeSquareGreenResidual A t + g t) * poleSquaredDifferentialOperator f t) =
      lowerPowerDiscrepancy A ⟨f, hf.continuous⟩ := by
  simp_rw [add_mul]
  rw [integral_add (prime_square_green_operator_integrable A hA f hf hcf)
    (homogeneous_operator_pairing_integrable g f hg hf hcf),
    prime_square_green_weak_discrepancy A hA f hf hcf,
    homogeneous_operator_pairing_zero g f hg hf hcf hzero, add_zero]

/-- Every ordinary or generalized pole mode is an exact homogeneous gauge freedom. -/
theorem pole_mode_operator_pairing_zero (σ a b : ℝ) (hσ : σ ^ 2 = 1 / 4)
    (f : ℝ → ℝ) (hf : ContDiff ℝ 4 f) (hcf : HasCompactSupport f) :
    (∫ t, poleMode σ a b t * poleSquaredDifferentialOperator f t) = 0 := by
  apply homogeneous_operator_pairing_zero _ f (by unfold poleMode; fun_prop) hf hcf
  intro t
  exact pole_squared_operator_mode_zero σ a b t hσ

end
end FormalResearch.RiemannHypothesis.PoleGreenGauge
```
