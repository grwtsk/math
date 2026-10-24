# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.HigherPowerTsum.Variantb127493f64a09fb9d84feeff5bfbdc6a0a0c69bbb4361328f6c95747bf59e623

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6ce4e1e53c5e276f67e25fd398f9a10c4b5c15c5` · SHA-256 `91a46dc96e55270dc0e42da9d81b94754f57e81d1f6a719a5f28a12222874237`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.IsHigherPrimePower.Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.IsHigherPrimePower.Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"f1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/higher-prime-powers/HigherPowerTsum.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.ProperPrimePowers
import FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareSource
import FormalResearch.RiemannHypothesis.SourceComparison.PrimeSector
import Mathlib.Data.Nat.Prime.Int



namespace GRWTSK.Analysis.AsymptoticAnalysis.IsHigherPrimePower.Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537

set_option autoImplicit false
namespace HigherPowerSourceScratch
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization
open FormalResearch.RiemannHypothesis.SourceComparison
open ProperPrimePowers PrimeSquareSource
noncomputable section

/-- Prime powers of exponent at least three, with no zero-weight non-prime indices included. -/
def IsHigherPrimePower (n : ℕ) : Prop := ∃ p k : ℕ, p.Prime ∧ 3 ≤ k ∧ p ^ k = n

/-- The exact higher-power restriction of the source's original strict cutoff. -/
def higherPrimePowerIndices (A : ℝ) : Finset ℕ := by
  classical
  exact (Cutoff.primeIndices A).filter IsHigherPrimePower

/-- The original source weights and normalization restricted to the higher-power sector. -/
def higherPrimePowerContribution (A : ℝ) : ℝ :=
  ∑ n ∈ higherPrimePowerIndices A,
    ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
      sourceCorrelation explicitSecondDerivative A (Real.log n)

/-- Uniqueness of positive-exponent prime-power representations is proved arithmetically. -/
theorem prime_power_representation_unique (p q k l : ℕ)
    (hp : p.Prime) (hq : q.Prime) (hk : k ≠ 0) (hl : l ≠ 0)
    (h : p ^ k = q ^ l) : p = q ∧ k = l :=
  hp.pow_inj' hq hk hl h

/-- Prime squares and powers of exponent at least three are disjoint. -/
theorem primeSquare_not_higher (n : ℕ) (hs : IsPrimeSquare n) : ¬IsHigherPrimePower n := by
  rintro ⟨q, k, hq, hk, hqn⟩
  obtain ⟨p, hp, hpn⟩ := hs
  have h := prime_power_representation_unique p q 2 k hp hq (by norm_num) (by omega)
    (hpn.trans hqn.symm)
  omega

/-- A genuine prime square is composite. -/
theorem primeSquare_not_prime (n : ℕ) (hs : IsPrimeSquare n) : ¬n.Prime := by
  obtain ⟨p, _, rfl⟩ := hs
  exact Nat.Prime.not_prime_pow (by norm_num)

/-- Every higher prime power is composite. -/
theorem higher_not_prime (n : ℕ) (hh : IsHigherPrimePower n) : ¬n.Prime := by
  obtain ⟨p, k, _, hk, rfl⟩ := hh
  exact Nat.Prime.not_prime_pow (by omega)

/-- The non-prime support of Mangoldt splits into exactly the square and higher sectors. -/
theorem nonprime_primePower_iff (n : ℕ) :
    (¬n.Prime ∧ IsPrimePow n) ↔ IsPrimeSquare n ∨ IsHigherPrimePower n := by
  constructor
  · rintro ⟨hn, p, k, hp, hk, hpn⟩
    have hkp : k ≠ 1 := by
      intro he
      rw [he, pow_one] at hpn
      exact hn (hpn ▸ hp.nat_prime)
    by_cases hk2 : k = 2
    · exact Or.inl ⟨p, hp.nat_prime, by simpa [hk2] using hpn⟩
    · exact Or.inr ⟨p, k, hp.nat_prime, by omega, hpn⟩
  · rintro (hs | hh)
    · refine ⟨primeSquare_not_prime n hs, ?_⟩
      obtain ⟨p, hp, hpn⟩ := hs
      exact ⟨p, 2, hp.prime, by norm_num, hpn⟩
    · refine ⟨higher_not_prime n hh, ?_⟩
      obtain ⟨p, k, hp, hk, hpn⟩ := hh
      exact ⟨p, k, hp.prime, by omega, hpn⟩

/-- Composite indices outside the two proper-power sectors have exactly zero Mangoldt weight. -/
theorem nonprime_weight_zero_of_outside (n : ℕ) (hn : ¬n.Prime)
    (hs : ¬IsPrimeSquare n) (hh : ¬IsHigherPrimePower n) :
    ArithmeticFunction.vonMangoldt n = 0 := by
  apply ArithmeticFunction.vonMangoldt_eq_zero_iff.mpr
  intro hp
  exact (nonprime_primePower_iff n).mp ⟨hn, hp⟩ |>.elim hs hh

/-- The two exact source subindices are disjoint; no multiplicity is duplicated. -/
theorem primeSquare_higher_indices_disjoint (A : ℝ) :
    Disjoint (primeSquareIndices A) (higherPrimePowerIndices A) := by
  classical
  apply Finset.disjoint_left.mpr
  intro n hs hh
  exact primeSquare_not_higher n (Finset.mem_filter.mp hs).2 (Finset.mem_filter.mp hh).2

/-- Exact finite decomposition retains the original strict cutoff and every nonzero weight. -/
theorem properPrimePowerContribution_eq_square_add_higher (A : ℝ) :
    properPrimePowerContribution A = primeSquareContribution A + higherPrimePowerContribution A := by
  classical
  unfold properPrimePowerContribution primeSquareContribution higherPrimePowerContribution
  unfold primeSquareIndices higherPrimePowerIndices
  rw [Finset.sum_filter, Finset.sum_filter, Finset.sum_filter, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n _
  by_cases hs : IsPrimeSquare n
  · have hn := primeSquare_not_prime n hs
    have hh := primeSquare_not_higher n hs
    simp only [hs, hn, hh, not_false_eq_true, if_pos, if_false, add_zero]
  · by_cases hh : IsHigherPrimePower n
    · have hn := higher_not_prime n hh
      simp only [hs, hn, hh, not_false_eq_true, if_pos, if_false, zero_add]
    · by_cases hn : n.Prime
      · simp only [hs, hh, hn, not_true_eq_false, if_false, add_zero]
      · rw [nonprime_weight_zero_of_outside n hn hs hh]
        simp only [zero_div, zero_mul, ite_self, add_zero]

/-- The complete original prime-power term has exactly three arithmetic sectors. -/
theorem primePowerContribution_eq_prime_square_higher (A : ℝ) :
    primePowerContribution explicitSecondDerivative A =
      PrimeSector.primeContribution A + primeSquareContribution A + higherPrimePowerContribution A := by
  rw [PrimeSector.prime_power_contribution_eq,
    properPrimePowerContribution_eq_square_add_higher]
  ring

/-- Prime two's cube belongs to the higher sector, rather than the square sector. -/
theorem eight_higher_not_square : IsHigherPrimePower 8 ∧ ¬IsPrimeSquare 8 := by
  have hh : IsHigherPrimePower 8 := ⟨2, 3, Nat.prime_two, le_rfl, by norm_num⟩
  exact ⟨hh, fun hs ↦ primeSquare_not_higher 8 hs hh⟩

/-- The original strict boundary at the cube of prime two is preserved exactly. -/
theorem eight_mem_higherPrimePowerIndices_iff (A : ℝ) :
    8 ∈ higherPrimePowerIndices A ↔ (8 : ℝ) < Real.exp (2 * A) := by
  classical
  simp only [higherPrimePowerIndices, Finset.mem_filter, Cutoff.mem_primeIndices_iff,
    eight_higher_not_square.1, and_true]
  norm_num

end
end HigherPowerSourceScratch


set_option autoImplicit false
namespace HigherPowerWeightScratch
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization
noncomputable section

/-- The literal square root at a natural prime-power index matches the real-power coefficient. -/
theorem sqrt_nat_power (p k : ℕ) :
    Real.sqrt ((p ^ k : ℕ) : ℝ) = (p : ℝ) ^ ((k : ℝ) / 2) := by
  rw [Nat.cast_pow, Real.sqrt_eq_rpow, ← Real.rpow_natCast, ← Real.rpow_mul (Nat.cast_nonneg p)]
  congr 1
  ring

/-- The original Mangoldt weight at every exponent at least three has its exact prime-root value. -/
theorem higher_prime_power_weight (p k : ℕ) (hp : p.Prime) (hk : 3 ≤ k) :
    ArithmeticFunction.vonMangoldt (p ^ k) / Real.sqrt ((p ^ k : ℕ) : ℝ) =
      Real.log (p : ℝ) / (p : ℝ) ^ ((k : ℝ) / 2) := by
  rw [ArithmeticFunction.vonMangoldt_apply_pow (by omega : k ≠ 0),
    ArithmeticFunction.vonMangoldt_apply_prime hp, sqrt_nat_power]

/-- Exact source summand transport retains the normalized correlation and its logarithmic location. -/
theorem higher_prime_power_summand (A : ℝ) (p k : ℕ) (hp : p.Prime) (hk : 3 ≤ k) :
    ArithmeticFunction.vonMangoldt (p ^ k) / Real.sqrt ((p ^ k : ℕ) : ℝ) *
      sourceCorrelation explicitSecondDerivative A (Real.log ((p ^ k : ℕ) : ℝ)) =
    Real.log (p : ℝ) / (p : ℝ) ^ ((k : ℝ) / 2) *
      sourceCorrelation explicitSecondDerivative A ((k : ℝ) * Real.log (p : ℝ)) := by
  rw [higher_prime_power_weight p k hp hk, Nat.cast_pow, Real.log_pow]

end
end HigherPowerWeightScratch

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
