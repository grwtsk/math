/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

Complete the low-depth prime-two range for the OLD raw Frey equation.
Construct the local normalized prime value from the actual maximal ideal;
then derive all natural-integer exponents, rather than assuming a valuation
comparison. When 16 does not divide abc, raw discriminant exponent is 6,8,10.
The weight-twelve window supplies actual minimality, hence additive reduction.
No conductor exponent, Kodaira symbol, or high-depth complement classification.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Proof scripts are unelaborated.
-/
import GRWTSK.Geometry.AlgebraicGeometry.EllipticCurve.DiscriminantWindowMinimality
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTwoEvenSummandChamber
import Mathlib.Data.Nat.Factorization.Basic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTwoLowDepth

open WeierstrassCurve WithZero Multiplicative
open IsDedekindDomain.HeightOneSpectrum
open GRWTSK.Geometry.AlgebraicGeometry.EllipticCurve.UnitInvariantMinimality
open GRWTSK.Geometry.AlgebraicGeometry.EllipticCurve.DiscriminantWindowMinimality
open FreyOddReduction

/-- The generator of the actual local maximal ideal, not a supplied normalization. -/
theorem local_maximalIdeal_eq_span (p : ℕ) [Fact p.Prime] :
    (IsDiscreteValuationRing.maximalIdeal (LocalRing p)).asIdeal =
      Ideal.span {(p : LocalRing p)} := by
  change IsLocalRing.maximalIdeal (LocalRing p) = _
  have hm := IsLocalization.map_under (primePlace p).asIdeal.primeCompl
    (LocalRing p) (IsLocalRing.maximalIdeal (LocalRing p))
  rw [IsLocalization.AtPrime.under_maximalIdeal (LocalRing p) (primePlace p).asIdeal] at hm
  simpa only [primePlace, Ideal.map_span, Set.image_singleton,
    map_natCast, Int.cast_natCast] using hm.symm

/-- Canonical localVal(p)=exp(-1). This is not an arbitrary equivalent valuation. -/
theorem localVal_prime (p : ℕ) [Fact p.Prime] :
    localVal (LocalRing p) (p : ℚ) = WithZero.exp (-1 : ℤ) := by
  have hp : (p : LocalRing p) ≠ 0 := by
    intro hz
    have hq := congrArg (algebraMap (LocalRing p) ℚ) hz
    have hpq : (p : ℚ) ≠ 0 := Nat.cast_ne_zero.mpr (Fact.out : p.Prime).ne_zero
    exact hpq (by simpa using hq)
  have hv := (IsDiscreteValuationRing.maximalIdeal (LocalRing p)).intValuation_singleton
    hp (local_maximalIdeal_eq_span p)
  calc
    localVal (LocalRing p) (p : ℚ) =
        localVal (LocalRing p) (algebraMap (LocalRing p) ℚ (p : LocalRing p)) := by simp
    _ = (IsDiscreteValuationRing.maximalIdeal (LocalRing p)).intValuation
        (p : LocalRing p) := valuation_of_algebraMap _ _
    _ = WithZero.exp (-1 : ℤ) := hv

/-- The previous localization unit test, now expressed in the SAME normalized value group. -/
theorem localVal_int_unit (p : ℕ) [Fact p.Prime] (z : ℤ) (hz : ¬ (p : ℤ) ∣ z) :
    localVal (LocalRing p) (z : ℚ) = 1 := by
  have hu := (int_unit_iff p z).mpr hz
  have hv := (val_map_eq_one_iff (LocalRing p) (K := ℚ)
    (algebraMap ℤ (LocalRing p) z)).mpr hu
  simpa only [← IsScalarTower.algebraMap_apply ℤ (LocalRing p) ℚ] using hv

/-- Exact prime factorization comparison for nonzero natural integers in the old local ring. -/
theorem localVal_nat (p : ℕ) [Fact p.Prime] (n : ℕ) (hn : n ≠ 0) :
    localVal (LocalRing p) (n : ℚ) = WithZero.exp (-(n.factorization p : ℤ)) := by
  have hp : p.Prime := Fact.out
  let m := ordCompl[p] n
  have hm : ¬ p ∣ m := Nat.not_dvd_ordCompl hp hn
  have hfac : p ^ n.factorization p * m = n := Nat.ordProj_mul_ordCompl_eq_self n p
  have hmz : ¬ (p : ℤ) ∣ (m : ℤ) := by exact_mod_cast hm
  have hunit : localVal (LocalRing p) (m : ℚ) = 1 := by
    simpa only [Int.cast_natCast] using localVal_int_unit p (m : ℤ) hmz
  have he : (n : ℚ) = (p : ℚ) ^ n.factorization p * (m : ℚ) := by
    exact_mod_cast hfac.symm
  rw [he, map_mul, map_pow, localVal_prime, hunit, mul_one, ← WithZero.exp_nsmul]
  congr 1
  simp only [nsmul_eq_mul, mul_neg, mul_one]

local instance : Fact (Nat.Prime 2) := ⟨Nat.prime_two⟩

/-- Every positive primitive additive source has even abc. -/
theorem source_product_even (t : PrimitiveAdditiveTriple) : 2 ∣ t.a*t.b*t.c := by
  by_cases ha : 2 ∣ t.a
  · exact dvd_mul_of_dvd_left (dvd_mul_of_dvd_left ha _) _
  by_cases hb : 2 ∣ t.b
  · exact dvd_mul_of_dvd_left (dvd_mul_of_dvd_right hb _) _
  have hc : 2 ∣ t.c := by
    have hs := t.sum_eq
    omega
  exact dvd_mul_of_dvd_right hc _

theorem source_depth_pos (t : PrimitiveAdditiveTriple) :
    1 ≤ (t.a*t.b*t.c).factorization 2 :=
  (Nat.prime_two.dvd_iff_one_le_factorization (Nat.ne_of_gt t.product_pos)).mp
    (source_product_even t)

/-- The exact domain is 16 not dividing the FULL abc product, not just c. -/
theorem low_depth_iff (t : PrimitiveAdditiveTriple) :
    (t.a*t.b*t.c).factorization 2 < 4 ↔ ¬ 16 ∣ t.a*t.b*t.c := by
  rw [show (16 : ℕ) = 2^4 by norm_num,
    Nat.prime_two.pow_dvd_iff_le_factorization (Nat.ne_of_gt t.product_pos)]
  omega

/-- Exact value of the unchanged discriminant in the actual normalized local valuation. -/
theorem raw_delta_value (t : PrimitiveAdditiveTriple) :
    localVal (LocalRing 2) t.freyCurve.Δ =
      WithZero.exp (-(4 + 2*((t.a*t.b*t.c).factorization 2 : ℤ))) := by
  have hn : 16*(t.a*t.b*t.c)^2 ≠ 0 := by positivity
  have hd : t.freyCurve.Δ = ((16*(t.a*t.b*t.c)^2 : ℕ) : ℚ) := by
    rw [t.freyCurve_Δ]
    push_cast
    ring
  have h16 : (16 : ℕ).factorization 2 = 4 := by
    rw [show (16 : ℕ) = 2^4 by norm_num]
    exact Nat.factorization_pow_self Nat.prime_two
  rw [hd, localVal_nat 2 _ hn,
    Nat.factorization_mul (by norm_num) (pow_ne_zero 2 (Nat.ne_of_gt t.product_pos))]
  simp only [Finsupp.add_apply, h16, Nat.factorization_pow,
    Finsupp.smul_apply, smul_eq_mul, Nat.cast_add, Nat.cast_mul, Nat.cast_ofNat]

theorem raw_delta_exponent (t : PrimitiveAdditiveTriple) :
    discriminantExponent (LocalRing 2) t.freyCurve =
      4 + 2*((t.a*t.b*t.c).factorization 2 : ℤ) := by
  rw [discriminantExponent, raw_delta_value, WithZero.log_exp, neg_neg]

/-- Actual IsMinimal of the OLD RAW equation, not a newly chosen model. -/
theorem minimal_at_two (t : PrimitiveAdditiveTriple) (h : ¬ 16 ∣ t.a*t.b*t.c) :
    IsMinimal (LocalRing 2) t.freyCurve := by
  letI := curve_integral t 2
  apply minimal_of_exponent_lt_twelve (LocalRing 2) t.freyCurve t.freyCurve_Δ_ne_zero
  rw [raw_delta_exponent]
  have he := (low_depth_iff t).mpr h
  omega

/-- c4 and Delta are both nonunits; only after minimality may additive reduction be assigned. -/
theorem additive_at_two (t : PrimitiveAdditiveTriple) (h : ¬ 16 ∣ t.a*t.b*t.c) :
    HasAdditiveReduction (LocalRing 2) t.freyCurve := by
  refine ⟨minimal_at_two t h, ?_, ?_⟩
  · have hv := (val_map_lt_one_iff (LocalRing 2) (K := ℚ)
      (localizedModel t 2).Δ).mpr (localized_delta_nonunit_at_two t)
    have hv' : localVal (LocalRing 2) ((localizedModel t 2).baseChange ℚ).Δ < 1 := by
      simpa only [WeierstrassCurve.baseChange, WeierstrassCurve.map_Δ] using hv
    simpa only [localizedModel_baseChange] using hv'
  · have hv := (val_map_lt_one_iff (LocalRing 2) (K := ℚ)
      (localizedModel t 2).c₄).mpr (localized_c4_nonunit_at_two t)
    have hv' : localVal (LocalRing 2) ((localizedModel t 2).baseChange ℚ).c₄ < 1 := by
      simpa only [WeierstrassCurve.baseChange, WeierstrassCurve.map_c₄] using hv
    simpa only [localizedModel_baseChange] using hv'

theorem not_good_at_two (t : PrimitiveAdditiveTriple) (h : ¬ 16 ∣ t.a*t.b*t.c) :
    ¬ HasGoodReduction (LocalRing 2) t.freyCurve :=
  (additive_at_two t h).not_hasGoodReduction

theorem not_multiplicative_at_two (t : PrimitiveAdditiveTriple)
    (h : ¬ 16 ∣ t.a*t.b*t.c) :
    ¬ HasMultiplicativeReduction (LocalRing 2) t.freyCurve :=
  (additive_at_two t h).not_hasMultiplicativeReduction

/-- The displayed minimal exponent is 6,8 or10. No Kodaira or conductor value is inferred. -/
theorem minimal_exponent_cases (t : PrimitiveAdditiveTriple) (h : ¬ 16 ∣ t.a*t.b*t.c) :
    discriminantExponent (LocalRing 2) t.freyCurve = 6 ∨
      discriminantExponent (LocalRing 2) t.freyCurve = 8 ∨
      discriminantExponent (LocalRing 2) t.freyCurve = 10 := by
  simp only [raw_delta_exponent]
  have hlo := source_depth_pos t
  have hhi := (low_depth_iff t).mpr h
  omega

/-- A source family that is genuinely infinite, not a list of small checked triples. -/
def lowSource (n : ℕ) : PrimitiveAdditiveTriple :=
  FreyMarkedObservationHeight.unitSource (16*n+2) (by omega)

theorem lowSource_guard (n : ℕ) :
    ¬ 16 ∣ (lowSource n).a*(lowSource n).b*(lowSource n).c := by
  change ¬ 16 ∣ 1*(16*n+1)*(16*n+2)
  intro hd
  have hmod := Nat.mod_eq_zero_of_dvd hd
  norm_num [Nat.add_mod, Nat.mul_mod] at hmod

theorem lowSource_additive (n : ℕ) :
    HasAdditiveReduction (LocalRing 2) (lowSource n).freyCurve :=
  additive_at_two _ (lowSource_guard n)

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTwoLowDepth
