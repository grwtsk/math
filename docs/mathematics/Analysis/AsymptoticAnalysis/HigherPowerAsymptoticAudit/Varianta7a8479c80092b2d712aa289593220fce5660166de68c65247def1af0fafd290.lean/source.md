# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.HigherPowerAsymptoticAudit.Varianta7a8479c80092b2d712aa289593220fce5660166de68c65247def1af0fafd290

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a594595c6d8fdd526ee54819a8b9f80ab7ef24e` · SHA-256 `a7a8479c80092b2d712aa289593220fce5660166de68c65247def1af0fafd290`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareCorrelation
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation
import Mathlib.Analysis.PSeries
import Mathlib.Analysis.SpecificLimits.Normed
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt
import FormalResearch.RiemannHypothesis.SourceComparison.ProperPrimePowers
import FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareSource
import FormalResearch.RiemannHypothesis.SourceComparison.PrimeSector
import Mathlib.Data.Nat.Prime.Int


/-!
# Quadratic deviation of the actual normalized correlation

The derivative vanishes at the origin and has the checked linear bound.
Genuine finite integration then gives the quadratic deviation at every real
argument. Evenness treats negative arguments without modifying the source.
The final transport retains the original Mangoldt and square-root weights.
-/

namespace CorrelationDeviationScratch
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity
open FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareCorrelation

noncomputable section

theorem sourceCorrelation_derivative_intervalIntegrable (A a b : ℝ) (hA : 1 ≤ A) :
    IntervalIntegrable (deriv (sourceCorrelation explicitSecondDerivative A)) volume a b :=
  (sourceCorrelation_contDiff A (by linarith)).continuous_deriv_one.intervalIntegrable a b

theorem sourceCorrelation_deviation_integral (A t : ℝ) (hA : 1 ≤ A) :
    sourceCorrelation explicitSecondDerivative A t - 1 =
      ∫ u in 0..t, deriv (sourceCorrelation explicitSecondDerivative A) u := by
  rw [intervalIntegral.integral_deriv_eq_sub
    (fun u _ => ((sourceCorrelation_contDiff A (by linarith)).differentiable (by norm_num)) u)
    (sourceCorrelation_derivative_intervalIntegrable A 0 t hA),
    EstimateCorrelation.actual_correlation_at_zero A hA]

private theorem sourceCorrelation_deviation_bound_nonneg (A t : ℝ) (hA : 1 ≤ A)
    (ht : 0 ≤ t) :
    |sourceCorrelation explicitSecondDerivative A t - 1| ≤ 65 * t ^ 2 / (6 * A ^ 2) := by
  rw [sourceCorrelation_deviation_integral A t hA]
  have hd := sourceCorrelation_derivative_intervalIntegrable A 0 t hA
  calc
    _ ≤ ∫ u in 0..t, |deriv (sourceCorrelation explicitSecondDerivative A) u| := by
      simpa only [Real.norm_eq_abs] using
        intervalIntegral.norm_integral_le_integral_norm (f := deriv
          (sourceCorrelation explicitSecondDerivative A)) ht
    _ ≤ ∫ u in 0..t, (65 / (3 * A ^ 2)) * u := by
      apply intervalIntegral.integral_mono_on ht
        (by simpa only [Real.norm_eq_abs] using hd.norm)
        ((continuous_const.mul continuous_id).intervalIntegrable 0 t)
      intro u hu
      have h := sourceCorrelation_derivative_linear_bound A u hA
      rwa [abs_of_nonneg hu.1] at h
    _ = _ := by
      rw [intervalIntegral.integral_const_mul, integral_id]
      ring

theorem sourceCorrelation_deviation_bound (A t : ℝ) (hA : 1 ≤ A) :
    |sourceCorrelation explicitSecondDerivative A t - 1| ≤ 65 * t ^ 2 / (6 * A ^ 2) := by
  by_cases ht : 0 ≤ t
  · exact sourceCorrelation_deviation_bound_nonneg A t hA ht
  · have h := sourceCorrelation_deviation_bound_nonneg A (-t) hA (by linarith)
    simpa only [sourceCorrelation_even A t, neg_sq] using h

theorem sourcePrimeWeight_deviation_bound (A : ℝ) (n : ℕ) (hA : 1 ≤ A) :
    |ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
      (sourceCorrelation explicitSecondDerivative A (Real.log n) - 1)| ≤
        (65 / (6 * A ^ 2)) *
          (ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) * (Real.log n) ^ 2) := by
  have hw : 0 ≤ ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) :=
    div_nonneg ArithmeticFunction.vonMangoldt_nonneg (Real.sqrt_nonneg _)
  rw [abs_mul, abs_of_nonneg hw]
  calc
    _ ≤ (ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ)) *
        (65 * (Real.log n) ^ 2 / (6 * A ^ 2)) :=
      mul_le_mul_of_nonneg_left (sourceCorrelation_deviation_bound A (Real.log n) hA) hw
    _ = _ := by ring

end
end CorrelationDeviationScratch

set_option autoImplicit false
namespace HigherPowerMomentScratch
open Real
noncomputable section

/-- A summable integer majorant for the second logarithmic prime-power moment. -/
def integerMoment (n : ℕ) : ℝ := Real.log (n : ℝ) ^ 3 * (n : ℝ) ^ (-(3 / 2 : ℝ))

/-- The original positive prime-power weight times its squared logarithmic location. -/
def higherMoment (p k : ℕ) : ℝ :=
  Real.log (p : ℝ) / (p : ℝ) ^ ((k : ℝ) / 2) * ((k : ℝ) * Real.log (p : ℝ)) ^ 2

/-- One uniform geometric ratio applies to all integer bases at least two. -/
def geometricRatio : ℝ := (2 : ℝ) ^ (-(1 / 2 : ℝ))

/-- The exponent moment retains the exponent itself and only shifts its geometric decay. -/
def exponentMoment (k : ℕ) : ℝ := (k : ℝ) ^ 2 * geometricRatio ^ (k - 3)

theorem integerMoment_nonneg (n : ℕ) : 0 ≤ integerMoment n := by
  unfold integerMoment
  positivity

theorem higherMoment_nonneg (p k : ℕ) : 0 ≤ higherMoment p k := by
  unfold higherMoment
  positivity

theorem geometricRatio_pos : 0 < geometricRatio := Real.rpow_pos_of_pos (by norm_num) _

theorem geometricRatio_lt_one : geometricRatio < 1 := by
  exact Real.rpow_lt_one_of_one_lt_of_neg (by norm_num) (by norm_num)

theorem exponentMoment_nonneg (k : ℕ) : 0 ≤ exponentMoment k := by
  exact mul_nonneg (sq_nonneg _) (pow_nonneg geometricRatio_pos.le _)

theorem integerMoment_le (n : ℕ) :
    integerMoment n ≤ 1728 * (n : ℝ) ^ (-(5 / 4 : ℝ)) := by
  by_cases hn : n = 0
  · subst n
    norm_num [integerMoment]
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast Nat.pos_of_ne_zero hn
  have hlog := Real.log_natCast_le_rpow_div n (by norm_num : (0 : ℝ) < 1 / 12)
  have hcub : Real.log (n : ℝ) ^ 3 ≤ ((n : ℝ) ^ (1 / 12 : ℝ) / (1 / 12 : ℝ)) ^ 3 :=
    pow_le_pow_left₀ (Real.log_natCast_nonneg n) hlog 3
  unfold integerMoment
  calc
    _ ≤ ((n : ℝ) ^ (1 / 12 : ℝ) / (1 / 12 : ℝ)) ^ 3 *
        (n : ℝ) ^ (-(3 / 2 : ℝ)) :=
      mul_le_mul_of_nonneg_right hcub (Real.rpow_nonneg hn0.le _)
    _ = 1728 * ((n : ℝ) ^ (1 / 12 : ℝ)) ^ 3 * (n : ℝ) ^ (-(3 / 2 : ℝ)) := by ring
    _ = _ := by
      rw [← Real.rpow_natCast, ← Real.rpow_mul hn0.le, mul_assoc, ← Real.rpow_add hn0]
      norm_num

theorem integerMoment_summable : Summable integerMoment := by
  apply Summable.of_nonneg_of_le integerMoment_nonneg integerMoment_le
  exact ((summable_nat_rpow.mpr (by norm_num : (-(5 / 4 : ℝ)) < -1)).mul_left 1728)

theorem exponentMoment_summable : Summable exponentMoment := by
  have hr : ‖geometricRatio‖ < 1 := by
    rw [Real.norm_eq_abs, abs_of_pos geometricRatio_pos]
    exact geometricRatio_lt_one
  have h2 := summable_pow_mul_geometric_of_norm_lt_one 2 hr
  have h1 := (summable_pow_mul_geometric_of_norm_lt_one 1 hr).mul_left 6
  have h0 := (summable_geometric_of_norm_lt_one hr).mul_left 9
  apply (summable_nat_add_iff 3).mp
  apply ((h2.add h1).add h0).congr
  intro k
  simp only [exponentMoment, Nat.add_sub_cancel, Nat.cast_add, Nat.cast_ofNat, pow_one]
  ring

private theorem halfPower_pow (p k : ℕ) :
    ((p : ℝ) ^ (-(1 / 2 : ℝ))) ^ k = (p : ℝ) ^ (-((k : ℝ) / 2)) := by
  rw [← Real.rpow_natCast, ← Real.rpow_mul (Nat.cast_nonneg p)]
  congr 1
  ring

/-- Exact exponent-three extraction precedes the uniform geometric majorant. -/
theorem higherMoment_factorization (p k : ℕ) (hk : 3 ≤ k) :
    higherMoment p k = integerMoment p *
      ((k : ℝ) ^ 2 * ((p : ℝ) ^ (-(1 / 2 : ℝ))) ^ (k - 3)) := by
  have hp3 : ((p : ℝ) ^ (-(1 / 2 : ℝ))) ^ 3 = (p : ℝ) ^ (-(3 / 2 : ℝ)) := by
    simpa using halfPower_pow p 3
  have hsplit : ((p : ℝ) ^ (-(1 / 2 : ℝ))) ^ k =
      ((p : ℝ) ^ (-(1 / 2 : ℝ))) ^ 3 *
      ((p : ℝ) ^ (-(1 / 2 : ℝ))) ^ (k - 3) := by
    rw [← pow_add, Nat.add_sub_of_le hk]
  unfold higherMoment integerMoment
  rw [div_eq_mul_inv, ← Real.rpow_neg (Nat.cast_nonneg p),
    ← halfPower_pow p k, hsplit, hp3]
  ring

/-- Uniform bound over all bases at least two and all actual exponents at least three. -/
theorem higherMoment_le_product (p k : ℕ) (hp : 2 ≤ p) (hk : 3 ≤ k) :
    higherMoment p k ≤ integerMoment p * exponentMoment k := by
  rw [higherMoment_factorization p k hk]
  have hratio : (p : ℝ) ^ (-(1 / 2 : ℝ)) ≤ geometricRatio := by
    apply Real.rpow_le_rpow_of_nonpos (by norm_num : (0 : ℝ) < 2)
      (by exact_mod_cast hp) (by norm_num)
  apply mul_le_mul_of_nonneg_left _ (integerMoment_nonneg p)
  exact mul_le_mul_of_nonneg_left
    (pow_le_pow_left₀ (Real.rpow_nonneg (Nat.cast_nonneg p) _) hratio _) (sq_nonneg _)

/-- Genuine product summability retains every integer base and exponent in the specified ranges. -/
theorem higherMoment_summable :
    Summable (fun q : {p : ℕ // 2 ≤ p} × {k : ℕ // 3 ≤ k} =>
      higherMoment q.1.val q.2.val) := by
  have hp := integerMoment_summable.subtype (fun p : ℕ => 2 ≤ p)
  have hk := exponentMoment_summable.subtype (fun k : ℕ => 3 ≤ k)
  have h := hp.mul_of_nonneg hk (fun p => integerMoment_nonneg p.val)
    (fun k => exponentMoment_nonneg k.val)
  exact Summable.of_nonneg_of_le (fun q => higherMoment_nonneg q.1.val q.2.val)
    (fun q => higherMoment_le_product q.1.val q.2.val q.1.property q.2.property) h

/-- The original prime/exponent occurrence product has a genuinely summable second log moment. -/
theorem primeHigherMoment_summable :
    Summable (fun q : {p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k} =>
      Real.log (q.1.val : ℝ) / (q.1.val : ℝ) ^ ((q.2.val : ℝ) / 2) *
        ((q.2.val : ℝ) * Real.log (q.1.val : ℝ)) ^ 2) := by
  have hp := integerMoment_summable.subtype (fun p : ℕ => p.Prime)
  have hk := exponentMoment_summable.subtype (fun k : ℕ => 3 ≤ k)
  have h := hp.mul_of_nonneg hk (fun p => integerMoment_nonneg p.val)
    (fun k => exponentMoment_nonneg k.val)
  exact Summable.of_nonneg_of_le
    (fun q => higherMoment_nonneg q.1.val q.2.val)
    (fun q => higherMoment_le_product q.1.val q.2.val q.1.property.two_le q.2.property) h

/-- The squared logarithmic location is at least one on the actual higher-power index set. -/
theorem logLocation_sq_ge_one (p k : ℕ) (hp : 2 ≤ p) (hk : 3 ≤ k) :
    1 ≤ ((k : ℝ) * Real.log (p : ℝ)) ^ 2 := by
  have hlog2 := Real.one_sub_inv_le_log_of_pos (by norm_num : (0 : ℝ) < 2)
  have hlogp := Real.log_le_log (by norm_num : (0 : ℝ) < 2)
    (by exact_mod_cast hp : (2 : ℝ) ≤ p)
  have hlog : (1 / 2 : ℝ) ≤ Real.log (p : ℝ) := by norm_num at hlog2; linarith
  have hm := mul_le_mul (by exact_mod_cast hk : (3 : ℝ) ≤ k) hlog
    (by norm_num : (0 : ℝ) ≤ 1 / 2) (Nat.cast_nonneg k)
  nlinarith

/-- The unweighted higher-power coefficient is bounded by its second logarithmic moment. -/
theorem higherWeight_le_moment (p k : ℕ) (hp : 2 ≤ p) (hk : 3 ≤ k) :
    Real.log (p : ℝ) / (p : ℝ) ^ ((k : ℝ) / 2) ≤ higherMoment p k := by
  exact le_mul_of_one_le_right (by positivity) (logLocation_sq_ge_one p k hp hk)

/-- The prime-power constant itself is a genuine absolutely convergent sum. -/
theorem primeHigherWeight_summable :
    Summable (fun q : {p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k} =>
      Real.log (q.1.val : ℝ) / (q.1.val : ℝ) ^ ((q.2.val : ℝ) / 2)) := by
  apply Summable.of_nonneg_of_le (fun q => by positivity) _ primeHigherMoment_summable
  intro q
  exact higherWeight_le_moment q.1.val q.2.val q.1.property.two_le q.2.property

end
end HigherPowerMomentScratch


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
/-!
# Summable higher-prime-power deviation from the arithmetic constant

The original prime/exponent index retains every prime and every exponent at
least three. Genuine weight and logarithmic-moment summability precede the
sum subtraction and the absolute error estimate. This sector estimate does
not control the remaining first-prime contribution.
-/
namespace HigherPowerAsymptoticScratch
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity
open HigherPowerMomentScratch CorrelationDeviationScratch
noncomputable section

/-- The genuine unmodified higher-prime-power arithmetic constant. -/
def higherPowerConstant : ℝ :=
  ∑' q : {p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k},
    Real.log (q.1.val : ℝ) / (q.1.val : ℝ) ^ ((q.2.val : ℝ) / 2)

/-- The genuine higher-prime-power correlation series. -/
def higherPowerSum (A : ℝ) : ℝ :=
  ∑' q : {p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k},
    Real.log (q.1.val : ℝ) / (q.1.val : ℝ) ^ ((q.2.val : ℝ) / 2) *
      sourceCorrelation explicitSecondDerivative A ((q.2.val : ℝ) * Real.log (q.1.val : ℝ))

/-- An explicit finite second-moment budget, independent of A. -/
def higherPowerBudget : ℝ :=
  (65 / 6) * ∑' q : {p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k},
    Real.log (q.1.val : ℝ) / (q.1.val : ℝ) ^ ((q.2.val : ℝ) / 2) *
      ((q.2.val : ℝ) * Real.log (q.1.val : ℝ)) ^ 2

theorem higherPowerBudget_nonneg : 0 ≤ higherPowerBudget := by
  unfold higherPowerBudget
  exact mul_nonneg (by norm_num) (tsum_nonneg (fun q => by positivity))

theorem higherPower_correlation_summable (A : ℝ) (hA : 1 ≤ A) :
    Summable (fun q : {p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k} =>
      Real.log (q.1.val : ℝ) / (q.1.val : ℝ) ^ ((q.2.val : ℝ) / 2) *
        sourceCorrelation explicitSecondDerivative A ((q.2.val : ℝ) * Real.log (q.1.val : ℝ))) := by
  apply primeHigherWeight_summable.of_norm_bounded
  intro q
  rw [Real.norm_eq_abs, abs_mul, abs_of_nonneg (by positivity : 0 ≤
    Real.log (q.1.val : ℝ) / (q.1.val : ℝ) ^ ((q.2.val : ℝ) / 2))]
  exact mul_le_of_le_one_right (by positivity)
    (EstimateCorrelation.actual_correlation_abs_le_one A _ hA)

theorem higherPowerSum_le_constant (A : ℝ) (hA : 1 ≤ A) :
    higherPowerSum A ≤ higherPowerConstant := by
  unfold higherPowerSum higherPowerConstant
  apply Summable.tsum_le_tsum _ (higherPower_correlation_summable A hA)
    primeHigherWeight_summable
  intro q
  exact mul_le_of_le_one_right (by positivity)
    (le_trans (le_abs_self _) (EstimateCorrelation.actual_correlation_abs_le_one A _ hA))

theorem higherPower_deviation_term_bound (A : ℝ) (p k : ℕ) (hA : 1 ≤ A) :
    |Real.log (p : ℝ) / (p : ℝ) ^ ((k : ℝ) / 2) *
      (sourceCorrelation explicitSecondDerivative A ((k : ℝ) * Real.log (p : ℝ)) - 1)| ≤
        (65 / (6 * A ^ 2)) * higherMoment p k := by
  have hw : 0 ≤ Real.log (p : ℝ) / (p : ℝ) ^ ((k : ℝ) / 2) := by positivity
  rw [abs_mul, abs_of_nonneg hw]
  calc
    _ ≤ (Real.log (p : ℝ) / (p : ℝ) ^ ((k : ℝ) / 2)) *
        (65 * ((k : ℝ) * Real.log (p : ℝ)) ^ 2 / (6 * A ^ 2)) :=
      mul_le_mul_of_nonneg_left (sourceCorrelation_deviation_bound A _ hA) hw
    _ = _ := by unfold higherMoment; ring

theorem higherPower_deviation_norm_summable (A : ℝ) (hA : 1 ≤ A) :
    Summable (fun q : {p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k} =>
      ‖Real.log (q.1.val : ℝ) / (q.1.val : ℝ) ^ ((q.2.val : ℝ) / 2) *
        (sourceCorrelation explicitSecondDerivative A
          ((q.2.val : ℝ) * Real.log (q.1.val : ℝ)) - 1)‖) := by
  apply Summable.of_nonneg_of_le (fun _ => norm_nonneg _) _
    (primeHigherMoment_summable.mul_left (65 / (6 * A ^ 2)))
  intro q
  simpa only [Real.norm_eq_abs, higherMoment] using
    higherPower_deviation_term_bound A q.1.val q.2.val hA

theorem higherPower_deviation_summable (A : ℝ) (hA : 1 ≤ A) :
    Summable (fun q : {p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k} =>
      Real.log (q.1.val : ℝ) / (q.1.val : ℝ) ^ ((q.2.val : ℝ) / 2) *
        (sourceCorrelation explicitSecondDerivative A
          ((q.2.val : ℝ) * Real.log (q.1.val : ℝ)) - 1)) :=
  (higherPower_deviation_norm_summable A hA).of_norm

theorem higherPowerSum_sub_constant (A : ℝ) (hA : 1 ≤ A) :
    higherPowerSum A - higherPowerConstant =
      ∑' q : {p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k},
        Real.log (q.1.val : ℝ) / (q.1.val : ℝ) ^ ((q.2.val : ℝ) / 2) *
          (sourceCorrelation explicitSecondDerivative A
            ((q.2.val : ℝ) * Real.log (q.1.val : ℝ)) - 1) := by
  rw [higherPowerSum, higherPowerConstant, ← Summable.tsum_sub (higherPower_correlation_summable A hA)
    primeHigherWeight_summable]
  apply tsum_congr
  intro q
  ring

theorem higherPowerSum_deviation_bound (A : ℝ) (hA : 1 ≤ A) :
    |higherPowerSum A - higherPowerConstant| ≤ higherPowerBudget / A ^ 2 := by
  rw [higherPowerSum_sub_constant A hA]
  calc
    _ ≤ ∑' q : {p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k},
        ‖Real.log (q.1.val : ℝ) / (q.1.val : ℝ) ^ ((q.2.val : ℝ) / 2) *
          (sourceCorrelation explicitSecondDerivative A
            ((q.2.val : ℝ) * Real.log (q.1.val : ℝ)) - 1)‖ := by
      simpa only [Real.norm_eq_abs] using
        norm_tsum_le_tsum_norm (higherPower_deviation_norm_summable A hA)
    _ ≤ ∑' q : {p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k},
        (65 / (6 * A ^ 2)) * higherMoment q.1.val q.2.val := by
      apply Summable.tsum_le_tsum _ (higherPower_deviation_norm_summable A hA)
        (primeHigherMoment_summable.mul_left (65 / (6 * A ^ 2)))
      intro q
      simpa only [Real.norm_eq_abs, higherMoment] using higherPower_deviation_term_bound A q.1.val q.2.val hA
    _ = higherPowerBudget / A ^ 2 := by
      rw [tsum_mul_left]
      unfold higherPowerBudget higherMoment
      ring

open HigherPowerSourceScratch HigherPowerTsumScratch
open FormalResearch.RiemannHypothesis.SourceComparison
open scoped Classical

theorem actualHigherPower_deviation_bound (A : ℝ) (hA : 1 ≤ A) :
    |higherPrimePowerContribution A - higherPowerConstant| ≤ higherPowerBudget / A ^ 2 := by
  rw [higherPrimePowerContribution_eq_tsum A hA]
  exact higherPowerSum_deviation_bound A hA

theorem actualHigherPower_le_constant (A : ℝ) (hA : 1 ≤ A) :
    higherPrimePowerContribution A ≤ higherPowerConstant := by
  rw [higherPrimePowerContribution_eq_tsum A hA]
  exact higherPowerSum_le_constant A hA

theorem actual_higherPower_signed_asymptotic : ∃ C : ℝ, 0 ≤ C ∧
    ∀ A : ℝ, 1 ≤ A →
      |-2 * (∑ n ∈ (Cutoff.primeIndices A).filter IsHigherPrimePower,
          ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
            sourceCorrelation explicitSecondDerivative A (Real.log n)) + 2 * higherPowerConstant| ≤
        C / A ^ 2 := by
  refine ⟨2 * higherPowerBudget, mul_nonneg (by norm_num) higherPowerBudget_nonneg, ?_⟩
  intro A hA
  change |-2 * higherPrimePowerContribution A + 2 * higherPowerConstant| ≤ _
  have he : -2 * higherPrimePowerContribution A + 2 * higherPowerConstant =
      -2 * (higherPrimePowerContribution A - higherPowerConstant) := by ring
  rw [he, abs_mul, show |(-2 : ℝ)| = 2 by norm_num]
  calc
    _ ≤ 2 * (higherPowerBudget / A ^ 2) :=
      mul_le_mul_of_nonneg_left (actualHigherPower_deviation_bound A hA) (by norm_num)
    _ = _ := by ring

end
end HigherPowerAsymptoticScratch

#print HigherPowerAsymptoticScratch.higherPowerConstant
#print axioms HigherPowerAsymptoticScratch.higherPowerConstant
#print HigherPowerAsymptoticScratch.higherPowerSum
#print axioms HigherPowerAsymptoticScratch.higherPowerSum
#print HigherPowerAsymptoticScratch.higherPowerBudget
#print axioms HigherPowerAsymptoticScratch.higherPowerBudget
#print HigherPowerAsymptoticScratch.higherPowerBudget_nonneg
#print axioms HigherPowerAsymptoticScratch.higherPowerBudget_nonneg
#print HigherPowerAsymptoticScratch.higherPower_correlation_summable
#print axioms HigherPowerAsymptoticScratch.higherPower_correlation_summable
#print HigherPowerAsymptoticScratch.higherPowerSum_le_constant
#print axioms HigherPowerAsymptoticScratch.higherPowerSum_le_constant
#print HigherPowerAsymptoticScratch.higherPower_deviation_term_bound
#print axioms HigherPowerAsymptoticScratch.higherPower_deviation_term_bound
#print HigherPowerAsymptoticScratch.higherPower_deviation_norm_summable
#print axioms HigherPowerAsymptoticScratch.higherPower_deviation_norm_summable
#print HigherPowerAsymptoticScratch.higherPower_deviation_summable
#print axioms HigherPowerAsymptoticScratch.higherPower_deviation_summable
#print HigherPowerAsymptoticScratch.higherPowerSum_sub_constant
#print axioms HigherPowerAsymptoticScratch.higherPowerSum_sub_constant
#print HigherPowerAsymptoticScratch.higherPowerSum_deviation_bound
#print axioms HigherPowerAsymptoticScratch.higherPowerSum_deviation_bound
#print HigherPowerAsymptoticScratch.actualHigherPower_deviation_bound
#print axioms HigherPowerAsymptoticScratch.actualHigherPower_deviation_bound
#print HigherPowerAsymptoticScratch.actualHigherPower_le_constant
#print axioms HigherPowerAsymptoticScratch.actualHigherPower_le_constant
#print HigherPowerAsymptoticScratch.actual_higherPower_signed_asymptotic
#print axioms HigherPowerAsymptoticScratch.actual_higherPower_signed_asymptotic
```
