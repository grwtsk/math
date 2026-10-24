# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.HigherPowerTsumCore.Variant234de866aab092c32b71a8d0564f5df75b1d6792aec250cc85a1ced7f53f1471

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `156e08e0593496c0f67d017cf4a3ca42ea97eff2` · SHA-256 `dc6e4b7b8ac3bcd99934f35650c57c52c332f41e290f6e9c9aba73f8684dcdcd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.HigherPowerIndex.Variantc9b0a88ecf9c4c6db11fb1d6502b107653270e4ab4cb2e0f10304c1dfa2d6fbb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c9b0a88ecf9c4c6db11fb1d6502b107653270e4ab4cb2e0f10304c1dfa2d6fbb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.HigherPowerIndex.Variantc9b0a88ecf9c4c6db11fb1d6502b107653270e4ab4cb2e0f10304c1dfa2d6fbb","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"c9b0a88ecf9c4c6db11fb1d6502b107653270e4ab4cb2e0f10304c1dfa2d6fbb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/higher-prime-powers/HigherPowerTsumCore.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.Analysis.AsymptoticAnalysis.HigherPowerIndex.Variantc9b0a88ecf9c4c6db11fb1d6502b107653270e4ab4cb2e0f10304c1dfa2d6fbb

set_option autoImplicit false
namespace HigherPowerTsumScratch
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity
open FormalResearch.RiemannHypothesis.SourceComparison
open HigherPowerSourceScratch HigherPowerWeightScratch
noncomputable section

/-- Every prime and every exponent at least three remain in the original product index. -/
abbrev HigherPowerIndex := {p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k}

/-- The arithmetic value associated to a unique prime/exponent pair. -/
def powerIndex (q : HigherPowerIndex) : ℕ := q.1.val ^ q.2.val

/-- Distinct product indices cannot refer to the same positive-exponent prime power. -/
theorem powerIndex_injective : Function.Injective powerIndex := by
  intro q r h
  have he := prime_power_representation_unique q.1.val r.1.val q.2.val r.2.val
    q.1.property r.1.property (by have := q.2.property; omega)
    (by have := r.2.property; omega) h
  apply Prod.ext
  · exact Subtype.ext he.1
  · exact Subtype.ext he.2

/-- The finite cutoff preimage is finite by proved injectivity, without a sampled enumeration. -/
def higherPairIndices (A : ℝ) : Finset HigherPowerIndex :=
  (higherPrimePowerIndices A).preimage powerIndex powerIndex_injective.injOn

/-- The exact original normalized correlation term in product coordinates. -/
def higherSourceTerm (A : ℝ) (q : HigherPowerIndex) : ℝ :=
  Real.log (q.1.val : ℝ) / (q.1.val : ℝ) ^ ((q.2.val : ℝ) / 2) *
    sourceCorrelation explicitSecondDerivative A ((q.2.val : ℝ) * Real.log (q.1.val : ℝ))

/-- Every product coordinate is a genuine higher prime power. -/
theorem powerIndex_isHigher (q : HigherPowerIndex) : IsHigherPrimePower (powerIndex q) :=
  ⟨q.1.val, q.2.val, q.1.property, q.2.property, rfl⟩

/-- Every product coordinate meets the original lower cutoff at two. -/
theorem powerIndex_two_le (q : HigherPowerIndex) : 2 ≤ powerIndex q :=
  q.1.property.two_le.trans (Nat.le_self_pow (by have := q.2.property; omega) q.1.val)

/-- Membership preserves the literal original strict cutoff, including its boundary. -/
theorem mem_higherPairIndices_iff (A : ℝ) (q : HigherPowerIndex) :
    q ∈ higherPairIndices A ↔ (powerIndex q : ℝ) < Real.exp (2 * A) := by
  classical
  simp only [higherPairIndices, Finset.mem_preimage, higherPrimePowerIndices, Finset.mem_filter,
    Cutoff.mem_primeIndices_iff, powerIndex_two_le q, true_and, powerIndex_isHigher q, and_true]

/-- The finite preimage covers every original higher-power index exactly once. -/
theorem higherPairIndices_image (A : ℝ) :
    (higherPairIndices A).image powerIndex = higherPrimePowerIndices A := by
  classical
  ext n
  constructor
  · rintro hn
    obtain ⟨q, hq, rfl⟩ := Finset.mem_image.mp hn
    exact Finset.mem_preimage.mp hq
  · intro hn
    obtain ⟨p, k, hp, hk, hpn⟩ := (Finset.mem_filter.mp hn).2
    let q : HigherPowerIndex := (⟨p, hp⟩, ⟨k, hk⟩)
    have hq : powerIndex q = n := hpn
    exact Finset.mem_image.mpr ⟨q, Finset.mem_preimage.mpr (hq ▸ hn), hq⟩

/-- Genuine finite reindexing retains each original Mangoldt/square-root/correlation term. -/
theorem higherPrimePowerContribution_eq_finite_sum (A : ℝ) :
    higherPrimePowerContribution A = ∑ q ∈ higherPairIndices A, higherSourceTerm A q := by
  classical
  unfold higherPrimePowerContribution
  rw [← higherPairIndices_image A, Finset.sum_image powerIndex_injective.injOn]
  apply Finset.sum_congr rfl
  intro q _
  exact higher_prime_power_summand A q.1.val q.2.val q.1.property q.2.property

/-- The actual compact support kills the equality boundary and every excluded higher power. -/
theorem higherSourceTerm_zero_outside (A : ℝ) (hA : 1 ≤ A) (q : HigherPowerIndex)
    (hq : q ∉ higherPairIndices A) : higherSourceTerm A q = 0 := by
  have hpow : Real.exp (2 * A) ≤ (powerIndex q : ℝ) :=
    le_of_not_gt (fun h ↦ hq ((mem_higherPairIndices_iff A q).mpr h))
  have hlog := Real.log_le_log (Real.exp_pos (2 * A)) hpow
  rw [Real.log_exp] at hlog
  have hloc : Real.log (powerIndex q : ℝ) =
      (q.2.val : ℝ) * Real.log (q.1.val : ℝ) := by
    simp only [powerIndex, Nat.cast_pow, Real.log_pow]
  rw [hloc] at hlog
  unfold higherSourceTerm
  rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A _ (by linarith)
    (hlog.trans (le_abs_self _)), mul_zero]

/-- Finite support is proved for the complete original product-indexed correlation term. -/
theorem higherSourceTerm_finite_support (A : ℝ) (hA : 1 ≤ A) :
    (Function.support (higherSourceTerm A)).Finite := by
  apply (higherPairIndices A).finite_toSet.subset
  exact Function.support_subset_iff'.mpr (higherSourceTerm_zero_outside A hA)

/-- The infinite sum has genuine summability before it is identified with the finite source. -/
theorem higherSourceTerm_summable (A : ℝ) (hA : 1 ≤ A) :
    Summable (higherSourceTerm A) :=
  summable_of_ne_finset_zero (higherSourceTerm_zero_outside A hA)

/-- Norm summability is independently witnessed by the same exact finite support. -/
theorem higherSourceTerm_norm_summable (A : ℝ) (hA : 1 ≤ A) :
    Summable (fun q : HigherPowerIndex ↦ ‖higherSourceTerm A q‖) := by
  apply summable_of_ne_finset_zero (s := higherPairIndices A)
  intro q hq
  rw [higherSourceTerm_zero_outside A hA q hq, norm_zero]

/-- The original higher-power source is exactly the full prime/exponent sum. -/
theorem higherPrimePowerContribution_eq_tsum (A : ℝ) (hA : 1 ≤ A) :
    higherPrimePowerContribution A =
      ∑' q : {p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k},
        Real.log (q.1.val : ℝ) / (q.1.val : ℝ) ^ ((q.2.val : ℝ) / 2) *
          sourceCorrelation explicitSecondDerivative A ((q.2.val : ℝ) * Real.log (q.1.val : ℝ)) := by
  change higherPrimePowerContribution A = ∑' q : HigherPowerIndex, higherSourceTerm A q
  rw [tsum_eq_sum (higherSourceTerm_zero_outside A hA), higherPrimePowerContribution_eq_finite_sum]

end
end HigherPowerTsumScratch
```
