/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

Localize the OLD integral Frey model at the actual rational prime ideal (p).
The coefficient field stays Q. Bind its base change to the SAME freyCurve,
then use the old residue c4/discriminant results and a universal minimality
criterion to construct Mathlib's IsMinimal / HasGoodReduction /
HasMultiplicativeReduction at every odd prime. No minimality at two,
conductor exponent, splitness, Tate curve, or ABC upper bound is asserted.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Scripts are unelaborated.
-/
import GRWTSK.AlgebraicGeometry.EllipticCurve.UnitInvariantMinimality
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyMarkedJInvariant
import Mathlib.RingTheory.DedekindDomain.Dvr
import Mathlib.RingTheory.Ideal.Maximal

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyOddReduction

open WeierstrassCurve IsDedekindDomain.HeightOneSpectrum
open GRWTSK.AlgebraicGeometry.EllipticCurve.UnitInvariantMinimality

/-- The genuine prime ideal (p) in Z, not a supplied bad-place label. -/
def primePlace (p : ℕ) [Fact p.Prime] : IsDedekindDomain.HeightOneSpectrum ℤ where
  asIdeal := Ideal.span {(p : ℤ)}
  isPrime := Ideal.isPrime_span_singleton_of_prime (Nat.prime_iff_prime_int.mp (Fact.out : p.Prime))
  ne_bot := by
    rw [ne_eq, Ideal.span_singleton_eq_bot]
    exact Nat.cast_ne_zero.mpr (Fact.out : p.Prime).ne_zero

/-- Z_(p) realized as the canonical valuation subring of Q.
This is a localization, NOT the completed ring Z_p. -/
abbrev LocalRing (p : ℕ) [Fact p.Prime] :=
  valuationSubringAtPrime ℚ (primePlace p)

/-- No DVR or local field is simply assumed for the selected prime. -/
instance localDiscreteValuationRing (p : ℕ) [Fact p.Prime] :
    IsDiscreteValuationRing (LocalRing p) :=
  IsLocalization.AtPrime.isDiscreteValuationRing_of_dedekind_domain
    ℤ (P := (primePlace p).asIdeal) (primePlace p).ne_bot (LocalRing p)

/-- Exact local-unit test inherited from the localization universal property. -/
theorem int_unit_iff (p : ℕ) [Fact p.Prime] (z : ℤ) :
    IsUnit (algebraMap ℤ (LocalRing p) z) ↔ ¬ (p : ℤ) ∣ z := by
  rw [IsLocalization.AtPrime.isUnit_to_map_iff (LocalRing p) (primePlace p).asIdeal z]
  change z ∉ (primePlace p).asIdeal ↔ _
  simp only [primePlace, Ideal.mem_span_singleton]

/-- The same explicit integral coefficient tuple, localized without a variable change. -/
def localizedModel (t : PrimitiveAdditiveTriple) (p : ℕ) [Fact p.Prime] :
    WeierstrassCurve (LocalRing p) :=
  t.freyIntegralModel.map (algebraMap ℤ (LocalRing p))

/-- Q remains the fraction field, and the curve is the OLD marked rational curve. -/
theorem localizedModel_baseChange (t : PrimitiveAdditiveTriple) (p : ℕ) [Fact p.Prime] :
    (localizedModel t p).baseChange ℚ = t.freyCurve := by
  calc
    _ = t.freyIntegralModel.baseChange ℚ := by
      ext <;> simp [localizedModel, WeierstrassCurve.baseChange,
        ← IsScalarTower.algebraMap_apply ℤ (LocalRing p) ℚ]
    _ = t.freyCurve := t.freyIntegralModel_baseChange_eq

/-- Integrality is attached to the same global Q-curve at the named localization. -/
theorem curve_integral (t : PrimitiveAdditiveTriple) (p : ℕ) [Fact p.Prime] :
    IsIntegral (LocalRing p) t.freyCurve := by
  rw [← localizedModel_baseChange t p]
  exact model_integral (LocalRing p) _

theorem localized_delta_unit_iff (t : PrimitiveAdditiveTriple) (p : ℕ) [Fact p.Prime] :
    IsUnit (localizedModel t p).Δ ↔ p ≠ 2 ∧ ¬ p ∣ t.a*t.b*t.c := by
  rw [localizedModel, WeierstrassCurve.map_Δ, int_unit_iff,
    t.freyIntegralModel_prime_dvd_delta_iff]
  exact not_or

/-- The old mod-p c4 computation now supplies a UNIT in the actual localization. -/
theorem localized_c4_unit (t : PrimitiveAdditiveTriple) (p : ℕ) [Fact p.Prime]
    (hp2 : p ≠ 2) (hbad : p ∣ t.a*t.b*t.c) :
    IsUnit (localizedModel t p).c₄ := by
  rw [localizedModel, WeierstrassCurve.map_c₄, int_unit_iff]
  exact t.freyIntegralModel_prime_not_dvd_c4 p hp2 hbad

/-- Actual good reduction, including minimality, not only an elliptic special fiber. -/
theorem good_at_odd_prime (t : PrimitiveAdditiveTriple) (p : ℕ) [Fact p.Prime]
    (hp2 : p ≠ 2) (hgood : ¬ p ∣ t.a*t.b*t.c) :
    HasGoodReduction (LocalRing p) t.freyCurve := by
  have h := good_of_unit_delta (LocalRing p) (K := ℚ) (localizedModel t p)
    ((localized_delta_unit_iff t p).mpr ⟨hp2,hgood⟩)
  simpa only [localizedModel_baseChange] using h

/-- Actual multiplicative reduction with the SAME model proved minimal first. -/
theorem multiplicative_at_odd_prime (t : PrimitiveAdditiveTriple) (p : ℕ) [Fact p.Prime]
    (hp2 : p ≠ 2) (hbad : p ∣ t.a*t.b*t.c) :
    HasMultiplicativeReduction (LocalRing p) t.freyCurve := by
  have hnot : ¬ IsUnit (localizedModel t p).Δ := by
    rw [localized_delta_unit_iff]
    exact fun h => h.2 hbad
  have h := multiplicative_of_unit_c4 (LocalRing p) (K := ℚ) (localizedModel t p)
    (localized_c4_unit t p hp2 hbad) hnot
  simpa only [localizedModel_baseChange] using h

/-- Every odd prime is covered: the OLD rational model itself is minimal there. -/
theorem minimal_at_odd_prime (t : PrimitiveAdditiveTriple) (p : ℕ) [Fact p.Prime]
    (hp2 : p ≠ 2) : IsMinimal (LocalRing p) t.freyCurve := by
  by_cases hbad : p ∣ t.a*t.b*t.c
  · exact (multiplicative_at_odd_prime t p hp2 hbad).toIsMinimal
  · exact (good_at_odd_prime t p hp2 hbad).toIsMinimal

theorem good_iff_at_odd_prime (t : PrimitiveAdditiveTriple) (p : ℕ) [Fact p.Prime]
    (hp2 : p ≠ 2) :
    HasGoodReduction (LocalRing p) t.freyCurve ↔ ¬ p ∣ t.a*t.b*t.c := by
  constructor
  · intro hg hd
    exact hg.not_hasMultiplicativeReduction (multiplicative_at_odd_prime t p hp2 hd)
  · exact good_at_odd_prime t p hp2

theorem multiplicative_iff_at_odd_prime (t : PrimitiveAdditiveTriple) (p : ℕ) [Fact p.Prime]
    (hp2 : p ≠ 2) :
    HasMultiplicativeReduction (LocalRing p) t.freyCurve ↔ p ∣ t.a*t.b*t.c := by
  constructor
  · intro hm
    by_contra hd
    exact hm.not_hasGoodReduction (good_at_odd_prime t p hp2 hd)
  · exact multiplicative_at_odd_prime t p hp2

theorem not_additive_at_odd_prime (t : PrimitiveAdditiveTriple) (p : ℕ) [Fact p.Prime]
    (hp2 : p ≠ 2) : ¬ HasAdditiveReduction (LocalRing p) t.freyCurve := by
  by_cases hd : p ∣ t.a*t.b*t.c
  · exact (multiplicative_at_odd_prime t p hp2 hd).not_hasAdditiveReduction
  · exact (good_at_odd_prime t p hp2 hd).not_hasAdditiveReduction

/-- The observed rational support is now tied to ACTUAL odd-prime reduction,
not merely to residue formulas or an independently supplied set of primes. -/
theorem multiplicative_iff_markedSupport (t : PrimitiveAdditiveTriple)
    (p : ℕ) [Fact p.Prime] (hp2 : p ≠ 2) :
    HasMultiplicativeReduction (LocalRing p) t.freyCurve ↔
      p ∈ FreyMarkedSUnit.markedSupport t := by
  rw [multiplicative_iff_at_odd_prime t p hp2, FreyMarkedSUnit.markedSupport_eq,
    GRWTSK.NumberTheory.Factorization.NaturalRadicalExcess.mem_occupied_iff
      (t.a*t.b*t.c) p (Nat.ne_of_gt t.product_pos)]
  simp only [Fact.out, true_and]

/-- Choosing another existing mirrored ratio chart leaves the same odd-prime locus. -/
theorem multiplicative_iff_chartSupport (t : PrimitiveAdditiveTriple)
    (p : ℕ) [Fact p.Prime] (hp2 : p ≠ 2) (j : Fin 3) (reflected : Bool) :
    HasMultiplicativeReduction (LocalRing p) t.freyCurve ↔
      p ∈ FreyMarkedBoundaryCycle.chartSupport t j reflected := by
  rw [FreyMarkedBoundaryCycle.chart_source_support,
    ← FreyMarkedSUnit.markedSupport_eq]
  exact multiplicative_iff_markedSupport t p hp2

/-- The discriminant has not been silently replaced by a new minimal-model number. -/
theorem raw_discriminant_natAbs (t : PrimitiveAdditiveTriple) :
    t.freyIntegralModel.Δ.natAbs = 16*(t.a*t.b*t.c)^2 := by
  rw [t.freyIntegralModel_delta_as_square]
  simp only [Int.natAbs_mul, Int.natAbs_pow, Int.natAbs_natCast]
  norm_num

/-- Exact ordinary prime depth of that SAME discriminant at odd primes.
Together with minimal_at_odd_prime this is the displayed minimal model's
prime exponent. No identification with a conductor exponent is made. -/
theorem odd_discriminant_depth (t : PrimitiveAdditiveTriple) (p : ℕ) [Fact p.Prime]
    (hp2 : p ≠ 2) :
    t.freyIntegralModel.Δ.natAbs.factorization p =
      2*(t.a*t.b*t.c).factorization p := by
  have hn : t.a*t.b*t.c ≠ 0 := Nat.ne_of_gt t.product_pos
  have h16 : (16 : ℕ).factorization p = 0 := by
    rw [show (16 : ℕ) = 2^4 by norm_num]
    simp [Nat.factorization_pow, Nat.prime_two.factorization, hp2, Ne.symm hp2]
  rw [raw_discriminant_natAbs, Nat.factorization_mul (by norm_num) (pow_ne_zero 2 hn)]
  simp only [Finsupp.add_apply, h16, zero_add, Nat.factorization_pow,
    Finsupp.smul_apply, smul_eq_mul]

/-- The abstract localization unit tests also explain why the odd-prime proof stops at two. -/
theorem localized_delta_nonunit_at_two (t : PrimitiveAdditiveTriple) :
    letI : Fact (Nat.Prime 2) := ⟨Nat.prime_two⟩
    ¬ IsUnit (localizedModel t 2).Δ := by
  letI : Fact (Nat.Prime 2) := ⟨Nat.prime_two⟩
  rw [localized_delta_unit_iff]
  simp

/-- c4 is also nonunit at two in the unchanged raw model. This does not
classify its minimal reduction at two or rule out a different integral model. -/
theorem localized_c4_nonunit_at_two (t : PrimitiveAdditiveTriple) :
    letI : Fact (Nat.Prime 2) := ⟨Nat.prime_two⟩
    ¬ IsUnit (localizedModel t 2).c₄ := by
  letI : Fact (Nat.Prime 2) := ⟨Nat.prime_two⟩
  rw [localizedModel, WeierstrassCurve.map_c₄, int_unit_iff]
  intro h
  apply h
  rw [t.freyIntegralModel_c4]
  exact dvd_mul_of_dvd_left (by norm_num : (2 : ℤ) ∣ 16) _

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyOddReduction
