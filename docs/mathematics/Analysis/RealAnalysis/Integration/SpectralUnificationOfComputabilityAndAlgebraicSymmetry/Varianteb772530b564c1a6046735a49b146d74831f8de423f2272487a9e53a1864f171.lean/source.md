# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Varianteb772530b564c1a6046735a49b146d74831f8de423f2272487a9e53a1864f171

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d58fdbf444615471baf0cb8d65729b1faecac0e0` · SHA-256 `fa5c41fd7c5aa205f2ba0ea0dd655831472e97defac6e4076d6255eea6e87b0e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.LowerPowerPhaseDefect.Variant00e6c500fb584efbae2bf31a269359fd9ebc102ea4ee5f04091a2fe8753edb44","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"00e6c500fb584efbae2bf31a269359fd9ebc102ea4ee5f04091a2fe8753edb44","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.LowerPowerPhaseDefect.Variant00e6c500fb584efbae2bf31a269359fd9ebc102ea4ee5f04091a2fe8753edb44","mathematical_subject":"Analysis.Integration","original_sha256":"00e6c500fb584efbae2bf31a269359fd9ebc102ea4ee5f04091a2fe8753edb44","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/00e6c500fb584efbae2bf31a269359fd9ebc102ea4ee5f04091a2fe8753edb44.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateHigherPrimePowers
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.HeliconeEstimate

/-!
# The remaining prime and prime-square phase compensation

The exact higher-prime-power remainder has a proved uniform absolute bound.
Consequently the open compensation estimate can be restricted to primes and
prime squares in the original strict inventory. Every omitted higher power is
retained in the exact decomposition and controlled by that bound.

This removes a summable arithmetic sector; it supplies no proof of the remaining
prime and square cancellation. In particular prime squares are not discarded.
The density, normalization, Gamma term and all-scale estimate remain unchanged.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.LowerPowerPhaseDefect.Variant00e6c500fb584efbae2bf31a269359fd9ebc102ea4ee5f04091a2fe8753edb44

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace PrimeSquareEstimate

open MeasureTheory
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.MultiplicativePhase
open EstimateHigherPrimePowers PrimePowerPhaseDefect CorrelationSpectralLens Realization

noncomputable section

/-- The phase defect over exactly the prime and prime-square source inventory. -/
def lowerPowerPhaseDefect (A ξ : ℝ) : ℝ :=
  ∑ n ∈ lowerPowerInventory A, primeWeight n * Complex.normSq (1 - chi ξ n)

/-- The restricted defect against the actual source spectral density. -/
def lowerPowerPhaseMass (A : ℝ) : ℝ :=
  ∫ ξ, lowerPowerPhaseDefect A ξ * spectralDensity A ξ

theorem lowerPowerPhaseDefect_nonneg (A ξ : ℝ) : 0 ≤ lowerPowerPhaseDefect A ξ :=
  Finset.sum_nonneg (fun n _ ↦
    mul_nonneg (primeWeight_nonneg n) (Complex.normSq_nonneg _))

theorem lowerPowerPhaseMass_nonneg (A : ℝ) : 0 ≤ lowerPowerPhaseMass A :=
  integral_nonneg (fun ξ ↦
    mul_nonneg (lowerPowerPhaseDefect_nonneg A ξ) (spectralDensity_nonneg A ξ))

theorem lowerPowerPhaseTerm_integrable (A : ℝ) (hA : 1 ≤ A) (n : ℕ) :
    Integrable (fun ξ ↦ primeWeight n * Complex.normSq (1 - chi ξ n) *
      spectralDensity A ξ) := by
  have hρ := spectralDensity_integrable A hA
  have hc := spectralDensity_cos_integrable A (Real.log n) hA
  have hi := ((hρ.const_mul 2).sub (hc.const_mul 2)).const_mul (primeWeight n)
  apply hi.congr
  filter_upwards [] with ξ
  simp only [Pi.sub_apply, normSq_one_sub_chi]
  ring

theorem lowerPowerPhaseMass_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun ξ ↦ lowerPowerPhaseDefect A ξ * spectralDensity A ξ) := by
  have hi := integrable_finsetSum (lowerPowerInventory A)
    (fun n _ ↦ lowerPowerPhaseTerm_integrable A hA n)
  apply hi.congr
  filter_upwards [] with ξ
  simp only [lowerPowerPhaseDefect, Finset.sum_mul]

/-- Exact spectral transport of every prime and square; no cosine sign is assumed. -/
theorem lowerPowerContribution_eq_weight_sub_half_phaseMass (A : ℝ) (hA : 1 ≤ A) :
    lowerPowerContribution A = lowerPowerWeight A - lowerPowerPhaseMass A / 2 := by
  have hterm (n : ℕ) :
      (∫ ξ, primeWeight n * Complex.normSq (1 - chi ξ n) * spectralDensity A ξ) =
        2 * primeWeight n -
          2 * (primeWeight n * sourceCorrelation explicitSecondDerivative A (Real.log n)) := by
    calc
      _ = ∫ ξ, primeWeight n *
          (2 * spectralDensity A ξ - 2 *
            (Real.cos (ξ * Real.log n) * spectralDensity A ξ)) := by
        apply integral_congr_ae
        filter_upwards [] with ξ
        rw [normSq_one_sub_chi]
        ring
      _ = _ := by
        rw [integral_const_mul,
          integral_sub ((spectralDensity_integrable A hA).const_mul 2)
            ((spectralDensity_cos_integrable A (Real.log n) hA).const_mul 2),
          integral_const_mul, integral_const_mul, spectralDensity_integral A hA,
          ← sourceCorrelation_eq_integral_cos A (Real.log n) hA]
        ring
  have hm : lowerPowerPhaseMass A =
      2 * lowerPowerWeight A - 2 * lowerPowerContribution A := by
    unfold lowerPowerPhaseMass lowerPowerPhaseDefect
    simp_rw [Finset.sum_mul]
    rw [integral_finsetSum (lowerPowerInventory A)
      (fun n _ ↦ lowerPowerPhaseTerm_integrable A hA n)]
    simp_rw [hterm]
    simp only [Finset.sum_sub_distrib, ← Finset.mul_sum]
    rfl
  linarith

/-- OPEN: only primes and prime squares require uniform phase compensation.
The complete higher-power sector already has a proved absolute bound. -/
def PrimeSquareCompensationTail : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧ ∃ R : ℝ, 1 ≤ R ∧
    ∀ A : ℝ, R ≤ A → 2 * lowerPowerWeight A ≤ lowerPowerPhaseMass A + C

/-- Restoring the bounded higher-power contribution gives the full exact
prime-power compensation, with a constant independent of the radius. -/
theorem prime_phase_compensation_of_prime_square_compensation
    (h : PrimeSquareCompensationTail) : HeliconeEstimate.PrimePhaseCompensationTail := by
  obtain ⟨C, hC, R, hR, htail⟩ := h
  obtain ⟨K, hK, hhigh⟩ := higherPowerContribution_uniform_abs_bound
  apply HeliconeEstimate.prime_phase_compensation_tail_iff_prime_contribution_tail.mpr
  refine ⟨C + 2 * K, by positivity, R, hR, ?_⟩
  intro A hRA
  have hA : 1 ≤ A := hR.trans hRA
  have hl := htail A hRA
  have hh := (abs_le.mp (hhigh A hA)).2
  rw [primePowerContribution_eq_lower_add_higher A,
    lowerPowerContribution_eq_weight_sub_half_phaseMass A hA]
  linarith

/-- The converse also holds: the removed sector is bounded on both sides,
so the reduced-support estimate introduces no stronger arithmetic premise. -/
theorem prime_square_compensation_of_prime_phase_compensation
    (h : HeliconeEstimate.PrimePhaseCompensationTail) : PrimeSquareCompensationTail := by
  obtain ⟨C, hC, R, hR, htail⟩ :=
    HeliconeEstimate.prime_phase_compensation_tail_iff_prime_contribution_tail.mp h
  obtain ⟨K, hK, hhigh⟩ := higherPowerContribution_uniform_abs_bound
  refine ⟨C + 2 * K, by positivity, R, hR, ?_⟩
  intro A hRA
  have hA : 1 ≤ A := hR.trans hRA
  have hp := htail A hRA
  have hh := (abs_le.mp (hhigh A hA)).1
  rw [primePowerContribution_eq_lower_add_higher A,
    lowerPowerContribution_eq_weight_sub_half_phaseMass A hA] at hp
  linarith

theorem prime_square_compensation_iff_prime_phase_compensation :
    PrimeSquareCompensationTail ↔ HeliconeEstimate.PrimePhaseCompensationTail :=
  ⟨prime_phase_compensation_of_prime_square_compensation,
    prime_square_compensation_of_prime_phase_compensation⟩

/-- The remaining smaller-support proposition implies the unchanged all-radii
estimate, through the existing bounded-prefix and Gamma estimates. -/
theorem estimate_of_prime_square_compensation (h : PrimeSquareCompensationTail) :
    CorrelationAssembly.EstimateObligation :=
  HeliconeEstimate.estimate_of_prime_phase_compensation
    (prime_phase_compensation_of_prime_square_compensation h)

/-- The exact existing analytic bridge is used only conditionally. -/
theorem riemann_hypothesis_of_prime_square_compensation (h : PrimeSquareCompensationTail) :
    _root_.RiemannHypothesis :=
  HeliconeEstimate.riemann_hypothesis_of_prime_phase_compensation
    (prime_phase_compensation_of_prime_square_compensation h)

end
end PrimeSquareEstimate
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
