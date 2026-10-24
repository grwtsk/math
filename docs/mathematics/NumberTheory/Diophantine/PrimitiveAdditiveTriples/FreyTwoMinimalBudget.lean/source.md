# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTwoMinimalBudget

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe008b7ca6130fa6daa585401d047bdabcc69831` · SHA-256 `239d9ea4532ff1d2c63047686128e231111dda0e9bedab525a0cd27473fd201d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

A source-uniform bound for prime-two MODEL DESCENT, including the high-depth
sources not yet covered by explicit congruence chambers. v2(c4_raw)=4 forces
at most one scale step. Any actual minimal representative removes either
zero or twelve from the raw discriminant exponent. This does NOT choose the
remaining branch algorithmically, bound the remaining depth, or compute a
conductor. The minimum uses Mathlib's existing existential choice, and its
exponent is shown independent of that choice. No new global minimal equation.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Proof scripts unelaborated.
-/
import GRWTSK.AlgebraicGeometry.EllipticCurve.C4MinimalScale
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTwoLowDepth
import Mathlib.Analysis.SpecialFunctions.Log.Basic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTwoMinimalBudget

open WeierstrassCurve WithZero Multiplicative
open GRWTSK.AlgebraicGeometry.EllipticCurve.UnitInvariantMinimality
open GRWTSK.AlgebraicGeometry.EllipticCurve.DiscriminantWindowMinimality
open GRWTSK.AlgebraicGeometry.EllipticCurve.C4MinimalScale
open FreyOddReduction FreyTwoLowDepth FreyMarkedJInvariant

local instance : Fact (Nat.Prime 2) := ⟨Nat.prime_two⟩

/-- The existing primitive-source coprimality makes the old c4 shape odd. -/
theorem shape_odd (t : PrimitiveAdditiveTriple) : ¬ 2 ∣ shape t := by
  intro hs
  have hd := Nat.dvd_gcd hs (source_product_even t)
  have hg : Nat.gcd (shape t) (sourceProduct t) = 1 := shape_coprime_product t
  change 2 ∣ Nat.gcd (shape t) (sourceProduct t) at hd
  rw [hg] at hd
  norm_num at hd

theorem shape_pos (t : PrimitiveAdditiveTriple) : 0 < shape t := by
  have ha := t.a_pos
  unfold shape
  positivity

theorem raw_c4_ne_zero (t : PrimitiveAdditiveTriple) : t.freyCurve.c₄ ≠ 0 := by
  rw [curve_c4]
  exact mul_ne_zero (by norm_num) (Nat.cast_ne_zero.mpr (Nat.ne_of_gt (shape_pos t)))

/-- Natural factorization is linked to the SAME normalized localVal by the old theorem. -/
theorem raw_c4_value (t : PrimitiveAdditiveTriple) :
    localVal (LocalRing 2) t.freyCurve.c₄ = WithZero.exp (-4 : ℤ) := by
  have hs : shape t ≠ 0 := Nat.ne_of_gt (shape_pos t)
  have hs0 : (shape t).factorization 2 = 0 := by
    by_contra hn
    exact shape_odd t (Nat.dvd_of_factorization_pos hn)
  have h16 : (16 : ℕ).factorization 2 = 4 := by
    rw [show (16 : ℕ) = 2^4 by norm_num]
    exact Nat.factorization_pow_self Nat.prime_two
  have hc : t.freyCurve.c₄ = ((16*shape t : ℕ) : ℚ) := by
    simpa only [Nat.cast_mul, Nat.cast_ofNat] using curve_c4 t
  rw [hc, localVal_nat 2 _ (Nat.mul_ne_zero (by norm_num) hs),
    Nat.factorization_mul (by norm_num) hs]
  simp only [Finsupp.add_apply, h16, hs0, add_zero, Nat.cast_ofNat]

theorem raw_c4_exponent (t : PrimitiveAdditiveTriple) :
    c4Exponent (LocalRing 2) t.freyCurve = 4 := by
  rw [c4Exponent, raw_c4_value, WithZero.log_exp]
  norm_num

/-- No integral output can use a scale of 2-adic exponent two or more.
A negative scale exponent remains possible for nonminimal output. -/
theorem integral_scale_at_most_one (t : PrimitiveAdditiveTriple)
    (C : VariableChange ℚ) (hC : IsIntegral (LocalRing 2) (C • t.freyCurve)) :
    scaleExponent (LocalRing 2) C ≤ 1 := by
  have h := integral_scale_bound (LocalRing 2) t.freyCurve (raw_c4_ne_zero t) C hC
  rw [raw_c4_exponent] at h
  omega

/-- This lower bound requires a MINIMAL target, not mere local integrality. -/
theorem minimal_scale_binary (t : PrimitiveAdditiveTriple)
    (C : VariableChange ℚ) (hC : IsMinimal (LocalRing 2) (C • t.freyCurve)) :
    scaleExponent (LocalRing 2) C = 0 ∨ scaleExponent (LocalRing 2) C = 1 := by
  letI := curve_integral t 2
  letI : IsMinimal (LocalRing 2) (C • t.freyCurve) := hC
  exact minimal_scale_binary_of_c4_four (LocalRing 2) t.freyCurve
    t.freyCurve_Δ_ne_zero (raw_c4_ne_zero t) (raw_c4_exponent t) C

/-- Use Mathlib's actual minimal equation in the old prime localization.
This is noncomputable existence, not a supplied or algorithmically fitted depth. -/
def minimumExponent (t : PrimitiveAdditiveTriple) (p : ℕ) [Fact p.Prime] : ℤ :=
  discriminantExponent (LocalRing p) (t.freyCurve.minimal (LocalRing p))

/-- Any actual minimal admissible image computes the same selected exponent. -/
theorem minimumExponent_eq (t : PrimitiveAdditiveTriple) (p : ℕ) [Fact p.Prime]
    (C : VariableChange ℚ) (hC : IsMinimal (LocalRing p) (C • t.freyCurve)) :
    minimumExponent t p = discriminantExponent (LocalRing p) (C • t.freyCurve) := by
  let D := (t.freyCurve.exists_isMinimal (LocalRing p)).choose
  have hD : IsMinimal (LocalRing p) (D • t.freyCurve) :=
    (t.freyCurve.exists_isMinimal (LocalRing p)).choose_spec
  letI : IsMinimal (LocalRing p) (D • t.freyCurve) := hD
  letI : IsMinimal (LocalRing p) (C • t.freyCurve) := hC
  change discriminantExponent (LocalRing p) (D • t.freyCurve) = _
  exact minimal_exponents_eq (LocalRing p) t.freyCurve t.freyCurve_Δ_ne_zero D C

theorem minimumExponent_nonneg (t : PrimitiveAdditiveTriple) (p : ℕ) [Fact p.Prime] :
    0 ≤ minimumExponent t p := by
  obtain ⟨C,hC⟩ := t.freyCurve.exists_isMinimal (LocalRing p)
  letI : IsMinimal (LocalRing p) (C • t.freyCurve) := hC
  rw [minimumExponent_eq t p C hC]
  exact exponent_nonneg (LocalRing p) _
    (changed_delta_ne_zero (LocalRing p) t.freyCurve t.freyCurve_Δ_ne_zero C)

/-- The same old curve's raw-to-minimal exponent difference. It is not residual depth. -/
def dyadicCorrection (t : PrimitiveAdditiveTriple) : ℤ :=
  discriminantExponent (LocalRing 2) t.freyCurve - minimumExponent t 2

/-- Exact correction from ANY actual minimal admissible change. -/
theorem correction_eq_scale (t : PrimitiveAdditiveTriple) (C : VariableChange ℚ)
    (hC : IsMinimal (LocalRing 2) (C • t.freyCurve)) :
    dyadicCorrection t = 12*scaleExponent (LocalRing 2) C := by
  rw [dyadicCorrection, minimumExponent_eq t 2 C hC]
  have h := discriminant_scale_balance (LocalRing 2) t.freyCurve t.freyCurve_Δ_ne_zero C
  omega

/-- Unconditional in the primitive source, even outside all explicit chambers.
The branch is not decided by this theorem. -/
theorem dyadicCorrection_cases (t : PrimitiveAdditiveTriple) :
    dyadicCorrection t = 0 ∨ dyadicCorrection t = 12 := by
  obtain ⟨C,hC⟩ := t.freyCurve.exists_isMinimal (LocalRing 2)
  rw [correction_eq_scale t C hC]
  rcases minimal_scale_binary t C hC with h | h <;> simp [h]

theorem dyadicCorrection_bounds (t : PrimitiveAdditiveTriple) :
    0 ≤ dyadicCorrection t ∧ dyadicCorrection t ≤ 12 := by
  rcases dyadicCorrection_cases t with h | h <;> omega

theorem minimum_two_balance (t : PrimitiveAdditiveTriple) :
    minimumExponent t 2 + dyadicCorrection t =
      4 + 2*((t.a*t.b*t.c).factorization 2 : ℤ) := by
  rw [dyadicCorrection, raw_delta_exponent]
  omega

/-- Signed balance avoids hiding the low-depth guard in natural subtraction. -/
theorem minimum_two_dichotomy (t : PrimitiveAdditiveTriple) :
    minimumExponent t 2 = 4 + 2*((t.a*t.b*t.c).factorization 2 : ℤ) ∨
      minimumExponent t 2 + 8 = 2*((t.a*t.b*t.c).factorization 2 : ℤ) := by
  have hb := minimum_two_balance t
  rcases dyadicCorrection_cases t with h | h <;> omega

/-- A uniform MODEL correction leaves the residual discriminant depth unbounded. -/
theorem minimum_two_lower_bound (t : PrimitiveAdditiveTriple) :
    2*((t.a*t.b*t.c).factorization 2 : ℤ) - 8 ≤ minimumExponent t 2 := by
  have hb := minimum_two_balance t
  have hu := (dyadicCorrection_bounds t).2
  omega

/-- The earlier odd-prime theorem removes all model correction away from two. -/
theorem minimum_odd_eq_raw (t : PrimitiveAdditiveTriple) (p : ℕ) [Fact p.Prime]
    (hp2 : p ≠ 2) :
    minimumExponent t p = discriminantExponent (LocalRing p) t.freyCurve := by
  have hM : IsMinimal (LocalRing p) ((1 : VariableChange ℚ) • t.freyCurve) := by
    simpa only [one_smul] using FreyOddReduction.minimal_at_odd_prime t p hp2
  simpa only [one_smul] using minimumExponent_eq t p 1 hM

/-- Bind the new budget to the previous complete low-depth classification. -/
theorem correction_zero_of_low_depth (t : PrimitiveAdditiveTriple)
    (h : ¬ 16 ∣ t.a*t.b*t.c) : dyadicCorrection t = 0 := by
  have hM : IsMinimal (LocalRing 2) ((1 : VariableChange ℚ) • t.freyCurve) := by
    simpa only [one_smul] using FreyTwoLowDepth.minimal_at_two t h
  have he := minimumExponent_eq t 2 1 hM
  simp only [one_smul] at he
  simp only [dyadicCorrection, he, sub_self]

/-- An explicit scale-two minimal witness attains the bound, independently of its r,s,t. -/
theorem correction_twelve_of_scale_two (t : PrimitiveAdditiveTriple)
    (C : VariableChange ℚ) (hC : IsMinimal (LocalRing 2) (C • t.freyCurve))
    (hu : (↑C.u : ℚ) = 2) : dyadicCorrection t = 12 := by
  rw [correction_eq_scale t C hC, scaleExponent, hu, localVal_prime, WithZero.log_exp]
  norm_num

theorem correction_twelve_in_first_chamber {t : PrimitiveAdditiveTriple}
    (h : FreyTwoSemistableChamber.Chamber t) : dyadicCorrection t = 12 := by
  exact correction_twelve_of_scale_two t
    (GRWTSK.AlgebraicGeometry.EllipticCurve.IntegralHalfScale.halfChange (t.a : ℚ))
    (FreyTwoSemistableChamber.minimal_at_two h) rfl

theorem correction_twelve_in_even_chamber {t : PrimitiveAdditiveTriple}
    (h : FreyTwoEvenSummandChamber.Chamber t) : dyadicCorrection t = 12 := by
  exact correction_twelve_of_scale_two t
    GRWTSK.AlgebraicGeometry.EllipticCurve.IntegralZeroHalfScale.zeroChange
    (FreyTwoEvenSummandChamber.minimal_at_two h) rfl

/-- This cost is only the removed model-discriminant contribution at the fixed prime two. -/
def modelCorrectionCost (t : PrimitiveAdditiveTriple) : ℝ :=
  (dyadicCorrection t : ℝ)*Real.log 2

theorem modelCorrectionCost_bounds (t : PrimitiveAdditiveTriple) :
    0 ≤ modelCorrectionCost t ∧ modelCorrectionCost t ≤ 12*Real.log 2 := by
  have hl : (0 : ℝ) ≤ Real.log 2 := (Real.log_pos (by norm_num)).le
  have hlo : (0 : ℝ) ≤ (dyadicCorrection t : ℝ) := by
    exact_mod_cast (dyadicCorrection_bounds t).1
  have hhi : (dyadicCorrection t : ℝ) ≤ 12 := by
    exact_mod_cast (dyadicCorrection_bounds t).2
  exact ⟨mul_nonneg hlo hl, mul_le_mul_of_nonneg_right hhi hl⟩

/-- The universal bound twelve is attained by the old native chamber, not merely sampled. -/
theorem correction_attained :
    dyadicCorrection (FreyMarkedObservationHeight.unitSource 16 (by decide)) = 12 := by
  exact correction_twelve_in_first_chamber (FreyTwoSemistableChamber.unitChamber 1 (by decide))

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTwoMinimalBudget
```
