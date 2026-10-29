-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.PrimeOrPrimeSquare.Variant1f57b9252eac1d33e1c7371ce19274c17f45a16d158a9349e96336f2fa3acf92","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1f57b9252eac1d33e1c7371ce19274c17f45a16d158a9349e96336f2fa3acf92","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.PrimeOrPrimeSquare.Variant1f57b9252eac1d33e1c7371ce19274c17f45a16d158a9349e96336f2fa3acf92","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"1f57b9252eac1d33e1c7371ce19274c17f45a16d158a9349e96336f2fa3acf92","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/1f57b9252eac1d33e1c7371ce19274c17f45a16d158a9349e96336f2fa3acf92.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimePowerPhaseDefect
import Mathlib.Data.Nat.Prime.Int
import Mathlib.Analysis.PSeries
import Mathlib.Topology.Algebra.InfiniteSum.Real
import Mathlib.NumberTheory.SumPrimeReciprocals

/-!
# Removing the uniformly bounded higher prime powers

The source inventory is split into primes and prime squares, and its exact
complement. Non-prime powers in the complement have von Mangoldt weight zero.
Every nonzero complementary term is a prime power with exponent at least
three. Their absolute total is uniformly bounded, independently of radius.

The remaining prime-and-square tail estimate stays open. All source terms
are retained in the exact decomposition; the bounded complement is proved.
-/


namespace GRWTSK.Analysis.AsymptoticAnalysis.PrimeOrPrimeSquare.Variant1f57b9252eac1d33e1c7371ce19274c17f45a16d158a9349e96336f2fa3acf92

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateHigherPrimePowers

open FormalResearch.RiemannHypothesis.SourcePairing
open PrimePowerPhaseDefect EstimateTailReduction Realization
open scoped BigOperators

noncomputable section

/-- Exactly a prime or the square of a prime. -/
def PrimeOrPrimeSquare (n : ℕ) : Prop :=
  n.Prime ∨ ∃ p : ℕ, p.Prime ∧ p ^ 2 = n

/-- The exact source inventory restricted to prime and prime-square indices. -/
def lowerPowerInventory (A : ℝ) : Finset ℕ := by
  classical
  exact (primeIndices A).filter PrimeOrPrimeSquare

/-- The complementary source inventory; zero von Mangoldt terms are harmless
and remain present until their vanishing is proved. -/
def higherPowerInventory (A : ℝ) : Finset ℕ := by
  classical
  exact (primeIndices A).filter (fun n ↦ ¬PrimeOrPrimeSquare n)

/-- The complete von Mangoldt budget of primes and prime squares in the strict inventory. -/
def lowerPowerWeight (A : ℝ) : ℝ :=
  ∑ n ∈ lowerPowerInventory A, primeWeight n

/-- The complete complementary budget, bounded uniformly by the convergent higher-power series. -/
def higherPowerWeight (A : ℝ) : ℝ :=
  ∑ n ∈ higherPowerInventory A, primeWeight n

/-- The exact source prime-and-square contribution. -/
def lowerPowerContribution (A : ℝ) : ℝ :=
  ∑ n ∈ lowerPowerInventory A, primeWeight n *
    sourceCorrelation explicitSecondDerivative A (Real.log n)

/-- The complementary signed higher-power contribution. -/
def higherPowerContribution (A : ℝ) : ℝ :=
  ∑ n ∈ higherPowerInventory A, primeWeight n *
    sourceCorrelation explicitSecondDerivative A (Real.log n)

theorem totalWeight_eq_lower_add_higher (A : ℝ) :
    totalWeight A = lowerPowerWeight A + higherPowerWeight A := by
  classical
  exact (Finset.sum_filter_add_sum_filter_not (primeIndices A)
    PrimeOrPrimeSquare primeWeight).symm

theorem primePowerContribution_eq_lower_add_higher (A : ℝ) :
    primePowerContribution explicitSecondDerivative A =
      lowerPowerContribution A + higherPowerContribution A := by
  classical
  exact (Finset.sum_filter_add_sum_filter_not (primeIndices A)
    PrimeOrPrimeSquare (fun n ↦ primeWeight n *
      sourceCorrelation explicitSecondDerivative A (Real.log n))).symm

theorem higherPowerContribution_abs_le_weight (A : ℝ) (hA : 1 ≤ A) :
    |higherPowerContribution A| ≤ higherPowerWeight A := by
  unfold higherPowerContribution higherPowerWeight
  apply (Finset.abs_sum_le_sum_abs _ _).trans
  apply Finset.sum_le_sum
  intro n _
  rw [abs_mul, abs_of_nonneg (primeWeight_nonneg n)]
  simpa only [mul_one] using mul_le_mul_of_nonneg_left
    (EstimateCorrelation.actual_correlation_abs_le_one A (Real.log n) hA)
    (primeWeight_nonneg n)

/-- Every nonzero complementary coefficient has an exponent at least three. -/
theorem exists_higher_prime_power {n : ℕ} (hn : IsPrimePow n)
    (hlow : ¬PrimeOrPrimeSquare n) :
    ∃ p : Nat.Primes, ∃ k : ℕ, (p : ℕ) ^ (k + 3) = n := by
  obtain ⟨p, k, hp, hk, hpk⟩ := (isPrimePow_nat_iff n).mp hn
  have hk3 : 3 ≤ k := by
    by_contra hk3
    have hk12 : k = 1 ∨ k = 2 := by omega
    rcases hk12 with rfl | rfl
    · apply hlow
      left
      rw [← hpk, pow_one]
      exact hp
    · exact hlow (Or.inr ⟨p, hp, hpk⟩)
  exact ⟨⟨p, hp⟩, k - 3, by simpa only [Nat.sub_add_cancel hk3] using hpk⟩

/-- The source coefficient of exponent `k + 3`. -/
def higherPowerCoefficient (pk : Nat.Primes × ℕ) : ℝ :=
  Real.log (pk.1 : ℝ) / (Real.sqrt (pk.1 : ℝ)) ^ (pk.2 + 3)

theorem higherPowerCoefficient_nonneg (pk : Nat.Primes × ℕ) :
    0 ≤ higherPowerCoefficient pk := by
  unfold higherPowerCoefficient
  exact div_nonneg (Real.log_nonneg (by exact_mod_cast pk.1.prop.one_le))
    (pow_nonneg (Real.sqrt_nonneg _) _)

private theorem sqrt_nat_pow (p : ℝ) (hp : 0 ≤ p) (k : ℕ) :
    Real.sqrt (p ^ k) = Real.sqrt p ^ k := by
  induction k with
  | zero => simp
  | succ k ih => rw [pow_succ, Real.sqrt_mul (pow_nonneg hp k), ih, pow_succ]

theorem primeWeight_pow_eq_higherPowerCoefficient (p : Nat.Primes) (k : ℕ) :
    primeWeight ((p : ℕ) ^ (k + 3)) = higherPowerCoefficient (p, k) := by
  unfold primeWeight higherPowerCoefficient
  rw [ArithmeticFunction.vonMangoldt_apply_pow (by omega),
    ArithmeticFunction.vonMangoldt_apply_prime p.prop, Nat.cast_pow,
    sqrt_nat_pow _ (Nat.cast_nonneg _)]

private theorem log_div_sqrt_cube_le (p : Nat.Primes) :
    Real.log (p : ℝ) / Real.sqrt (p : ℝ) ^ 3 ≤
      4 * (p : ℝ) ^ (-5 / 4 : ℝ) := by
  have hp : 0 < (p : ℝ) := by exact_mod_cast p.prop.pos
  have hlog := Real.log_le_rpow_div hp.le (by norm_num : 0 < (1 / 4 : ℝ))
  have hcube : Real.sqrt (p : ℝ) ^ 3 = (p : ℝ) ^ (3 / 2 : ℝ) := by
    rw [Real.sqrt_eq_rpow, ← Real.rpow_natCast, ← Real.rpow_mul hp.le]
    norm_num
  calc
    Real.log (p : ℝ) / Real.sqrt (p : ℝ) ^ 3 ≤
        ((p : ℝ) ^ (1 / 4 : ℝ) / (1 / 4 : ℝ)) /
          Real.sqrt (p : ℝ) ^ 3 := div_le_div_of_nonneg_right hlog (by positivity)
    _ = 4 * (p : ℝ) ^ (-5 / 4 : ℝ) := by
      rw [hcube]
      calc
        _ = 4 * ((p : ℝ) ^ (1 / 4 : ℝ) / (p : ℝ) ^ (3 / 2 : ℝ)) := by ring
        _ = _ := by rw [← Real.rpow_sub hp]; norm_num

private theorem prime_inv_sqrt_le_three_quarters (p : Nat.Primes) :
    (Real.sqrt (p : ℝ))⁻¹ ≤ (3 / 4 : ℝ) := by
  have hp : (2 : ℝ) ≤ p := by exact_mod_cast p.prop.two_le
  have hs := Real.sqrt_nonneg (p : ℝ)
  have hss := Real.sq_sqrt (by positivity : 0 ≤ (p : ℝ))
  have hpos : 0 < Real.sqrt (p : ℝ) := by positivity
  apply (inv_le_iff_one_le_mul₀ hpos).mpr
  nlinarith

private theorem higher_prime_weight_le (p : Nat.Primes) (k : ℕ) :
    Real.log (p : ℝ) / Real.sqrt (p : ℝ) ^ (k + 3) ≤
      4 * (p : ℝ) ^ (-5 / 4 : ℝ) * (3 / 4 : ℝ) ^ k := by
  have hp : (1 : ℝ) ≤ p := by exact_mod_cast p.prop.one_le
  have hs : 0 < Real.sqrt (p : ℝ) := by positivity
  calc
    _ = (Real.log (p : ℝ) / Real.sqrt (p : ℝ) ^ 3) *
        (Real.sqrt (p : ℝ))⁻¹ ^ k := by
      rw [pow_add, inv_pow]
      ring
    _ ≤ (4 * (p : ℝ) ^ (-5 / 4 : ℝ)) * (3 / 4 : ℝ) ^ k := by
      apply mul_le_mul
      · exact log_div_sqrt_cube_le p
      · exact pow_le_pow_left₀ (by positivity) (prime_inv_sqrt_le_three_quarters p) k
      · positivity
      · positivity

/-- A geometric majorant and the convergent `5/4` prime p-series bound all
exponents at least three, without any cancellation hypothesis. -/
theorem higherPowerCoefficient_summable : Summable higherPowerCoefficient := by
  have hgeom : Summable (fun k : ℕ ↦ (3 / 4 : ℝ) ^ k) :=
    summable_geometric_of_lt_one (by norm_num) (by norm_num)
  have hpseries : Summable (fun p : Nat.Primes ↦ (p : ℝ) ^ (-5 / 4 : ℝ)) :=
    Nat.Primes.summable_rpow.mpr (by norm_num : (-5 / 4 : ℝ) < -1)
  have hmajorant : Summable (fun pk : Nat.Primes × ℕ ↦
      4 * (pk.1 : ℝ) ^ (-5 / 4 : ℝ) * (3 / 4 : ℝ) ^ pk.2) := by
    apply (summable_prod_of_nonneg (show 0 ≤ (fun pk : Nat.Primes × ℕ ↦
      4 * (pk.1 : ℝ) ^ (-5 / 4 : ℝ) * (3 / 4 : ℝ) ^ pk.2) from
        fun _ ↦ by positivity)).mpr
    refine ⟨fun p ↦ ?_, ?_⟩
    · dsimp only
      exact hgeom.mul_left (4 * (p : ℝ) ^ (-5 / 4 : ℝ))
    · dsimp only
      simp_rw [tsum_mul_left, tsum_geometric_of_lt_one (by norm_num : 0 ≤ (3 / 4 : ℝ))
        (by norm_num : (3 / 4 : ℝ) < 1)]
      exact (hpseries.mul_left 16).congr (fun p ↦ by ring)
  apply hmajorant.of_nonneg_of_le
  · exact higherPowerCoefficient_nonneg
  · intro pk
    exact higher_prime_weight_le pk.1 pk.2

/-- A finite source inventory is bounded by the entire higher-power series.
The summability premise is proved independently above, rather than an
arithmetic cancellation or RH assumption. -/
theorem higherPowerWeight_le_tsum_of_summable
    (hsummable : Summable higherPowerCoefficient) (A : ℝ) :
    higherPowerWeight A ≤ ∑' pk : Nat.Primes × ℕ, higherPowerCoefficient pk := by
  classical
  let s := (higherPowerInventory A).filter IsPrimePow
  have hre (n : {n // n ∈ s}) :
      ∃ pk : Nat.Primes × ℕ, (pk.1 : ℕ) ^ (pk.2 + 3) = n.val := by
    have hs := Finset.mem_filter.mp n.prop
    have hnlow : ¬PrimeOrPrimeSquare n.val :=
      (show n.val ∈ primeIndices A ∧ ¬PrimeOrPrimeSquare n.val from
        by simpa only [higherPowerInventory, Finset.mem_filter] using hs.1).2
    obtain ⟨p, k, h⟩ := exists_higher_prime_power hs.2 hnlow
    exact ⟨(p, k), h⟩
  choose repr repr_spec using hre
  have hinj : Function.Injective repr := by
    intro n m hnm
    apply Subtype.ext
    rw [← repr_spec n, ← repr_spec m, hnm]
  calc
    higherPowerWeight A = ∑ n ∈ s, primeWeight n := by
      unfold higherPowerWeight
      rw [Finset.sum_filter]
      apply Finset.sum_congr rfl
      intro n _
      by_cases hn : IsPrimePow n
      · simp [hn]
      · simp [hn, primeWeight_eq_zero_of_not_prime_power hn]
    _ = ∑ pk ∈ s.attach.image repr, higherPowerCoefficient pk := by
      rw [Finset.sum_image (fun n _ m _ h ↦ hinj h), ← Finset.sum_attach]
      apply Finset.sum_congr rfl
      intro n _
      rw [← repr_spec n, primeWeight_pow_eq_higherPowerCoefficient]
    _ ≤ _ := hsummable.sum_le_tsum _ (fun pk _ ↦ higherPowerCoefficient_nonneg pk)

/-- A fixed, finite bound containing every prime power of exponent at least
three. It depends on no source radius. -/
def higherPowerBound : ℝ := ∑' pk : Nat.Primes × ℕ, higherPowerCoefficient pk

theorem higherPowerBound_nonneg : 0 ≤ higherPowerBound :=
  tsum_nonneg higherPowerCoefficient_nonneg

theorem higherPowerWeight_le_bound (A : ℝ) :
    higherPowerWeight A ≤ higherPowerBound :=
  higherPowerWeight_le_tsum_of_summable higherPowerCoefficient_summable A

/-- Unconditional uniform absolute control of the removed arithmetic sector. -/
theorem higherPowerContribution_abs_le_bound (A : ℝ) (hA : 1 ≤ A) :
    |higherPowerContribution A| ≤ higherPowerBound :=
  (higherPowerContribution_abs_le_weight A hA).trans (higherPowerWeight_le_bound A)

theorem higherPowerContribution_uniform_abs_bound :
    ∃ K : ℝ, 0 ≤ K ∧ ∀ A : ℝ, 1 ≤ A → |higherPowerContribution A| ≤ K :=
  ⟨higherPowerBound, higherPowerBound_nonneg, higherPowerContribution_abs_le_bound⟩

end
end EstimateHigherPrimePowers
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
