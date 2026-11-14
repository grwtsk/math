/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaShiftCoupling
import Mathlib.Analysis.Complex.ExponentialBounds
import Mathlib.Tactic

/-!
# Exact full signed primitive arithmetic source and q3 inventory

For the original real source g=liftReal f, let E=energy g, C(r)=correlation g r,
A(r)=energy(t↦g(t+r)-g t) and w(n)=pairedPrimeWeight chi n. The literal source
is Q=(gammaConstant-2∑w)E+∫gammaCorrectionDensity+∑w*A(log n), where every sum
runs over activePrimePowers T. The native signed weights at T=1 modulo 3
include the prime power n=4 with vonMangoldt(4)=log 2, not log 4.
This is an identity, NOT stage-zero positivity. The completed pole-inclusive
Weil source and negative-test return are unresolved; RH/GRH are unproved.
Formal elaboration/kernel/axioms and independent review are NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeFullSignedShift

open SourcePrimeCorrelation LowSchur OddRootProjection
open FrobeniusPhaseSurplus DirichletStageChain
open GammaThreeBandFloor GammaShiftCoupling

/-- The literal paired response preserves complex source phases before
the real-test bridge and retains all strict-cutoff prime powers. -/
theorem pairedPrimeResponse_eq_full_signedShift
    {N : ℕ} [NeZero N] (chi : DirichletCharacter ℂ N)
    (T : ℝ) {g : ℝ → ℂ} (hg : MemLp g 2 volume) :
    pairedPrimeResponse chi T
        (fun n => correlation g (Real.log (n : ℝ))) =
      (2 * ∑ n ∈ activePrimePowers T, pairedPrimeWeight chi n) * energy g -
        ∑ n ∈ activePrimePowers T,
          pairedPrimeWeight chi n *
            energy (fun t => g (t + Real.log (n : ℝ)) - g t) := by
  rw [pairedPrimeResponse_native]
  calc
    2 * ∑ n ∈ activePrimePowers T,
        pairedPrimeWeight chi n *
          (correlation g (Real.log (n : ℝ))).re =
        ∑ n ∈ activePrimePowers T,
          2 * (pairedPrimeWeight chi n *
            (correlation g (Real.log (n : ℝ))).re) := by
          rw [Finset.mul_sum]
    _ = ∑ n ∈ activePrimePowers T,
          (2 * pairedPrimeWeight chi n * energy g -
            pairedPrimeWeight chi n *
              energy (fun t => g (t + Real.log (n : ℝ)) - g t)) := by
          apply Finset.sum_congr rfl
          intro n hn
          rw [shiftEnergy_eq_two_energy_sub_two_re_correlation
            hg (Real.log (n : ℝ))]
          ring
    _ = (2 * ∑ n ∈ activePrimePowers T,
          pairedPrimeWeight chi n) * energy g -
          ∑ n ∈ activePrimePowers T,
            pairedPrimeWeight chi n *
              energy (fun t => g (t + Real.log (n : ℝ)) - g t) := by
          rw [Finset.sum_sub_distrib]
          rw [Finset.sum_mul, ← Finset.mul_sum]
          ring

/-- Original primitiveArithmeticValue, not a surrogate spectral form.
The physical real-correlation bridge is required and explicitly used. -/
theorem primitiveArithmeticValue_eq_full_signedShift_on_real
    {N : ℕ} [NeZero N] (chi : DirichletCharacter ℂ N)
    (hprimitive : chi.IsPrimitive) (hnonprincipal : chi ≠ 1)
    (T : ℝ) (f : ℝ → ℝ)
    (hf : MemLp (liftReal f) 2 volume) :
    primitiveArithmeticValue chi hprimitive hnonprincipal T (liftReal f) =
      (gammaConstant N (gammaParity chi) -
        2 * ∑ n ∈ activePrimePowers T, pairedPrimeWeight chi n) *
        energy (liftReal f) +
      (∫ r in Ioi (0 : ℝ),
        gammaCorrectionDensity (gammaParity chi) (liftReal f) r) +
      ∑ n ∈ activePrimePowers T,
        pairedPrimeWeight chi n *
          energy (fun t => liftReal f (t + Real.log (n : ℝ)) - liftReal f t) := by
  let C : ℕ → ℂ := fun n => correlation (liftReal f) (Real.log (n : ℝ))
  have hreal : ∀ n ∈ activePrimePowers T, (C n).im = 0 := by
    intro n hn
    exact liftReal_correlation_im_zero f (Real.log (n : ℝ)) hf
  have hpaired : twistedPrime T chi C = pairedPrimeResponse chi T C :=
    twistedPrime_eq_paired_of_realCorrelation chi T C hreal
  have hresponse := pairedPrimeResponse_eq_full_signedShift chi T hf
  calc
    primitiveArithmeticValue chi hprimitive hnonprincipal T (liftReal f) =
        gammaConstant N (gammaParity chi) * energy (liftReal f) +
          (∫ r in Ioi (0 : ℝ),
            gammaCorrectionDensity (gammaParity chi) (liftReal f) r) -
          pairedPrimeResponse chi T C := by
            unfold primitiveArithmeticValue
            change gammaConstant N (gammaParity chi) * energy (liftReal f) +
              (∫ r in Ioi (0 : ℝ),
                gammaCorrectionDensity (gammaParity chi) (liftReal f) r) -
              twistedPrime T chi C = _
            rw [hpaired]
    _ = _ := by
      rw [show pairedPrimeResponse chi T C =
        (2 * ∑ n ∈ activePrimePowers T, pairedPrimeWeight chi n) *
          energy (liftReal f) -
            ∑ n ∈ activePrimePowers T,
              pairedPrimeWeight chi n *
                energy (fun t => liftReal f (t + Real.log (n : ℝ)) - liftReal f t)
          from hresponse]
      ring

/-- The native stage-zero exponential cutoff satisfies 7 < exp 2 < 8.
The strict inequalities keep all original integer endpoints. -/
theorem seven_lt_exp_two_lt_eight :
    (7 : ℝ) < Real.exp 2 ∧ Real.exp 2 < (8 : ℝ) := by
  have hlo : (27 / 10 : ℝ) < Real.exp 1 := by
    have h := Real.exp_one_gt_d9
    linarith
  have hhi : Real.exp 1 < (11 / 4 : ℝ) := by
    have h := Real.exp_one_lt_d9
    linarith
  have hsq : Real.exp (2 : ℝ) = (Real.exp 1) ^ 2 := by
    rw [show (2 : ℝ) = 1 + 1 by norm_num, Real.exp_add]
    ring
  constructor
  · rw [hsq]
    have hpos : 0 < (Real.exp 1 - 27 / 10) *
        (Real.exp 1 + 27 / 10) :=
      mul_pos (sub_pos.mpr hlo) (by positivity)
    nlinarith
  · rw [hsq]
    have hpos : 0 < (11 / 4 - Real.exp 1) *
        (11 / 4 + Real.exp 1) :=
      mul_pos (sub_pos.mpr hhi) (by positivity)
    nlinarith

/-- Exact original strict cutoff, not a prime-only replacement. -/
theorem activePrimePowers_one_eq_Icc :
    activePrimePowers (1 : ℝ) = Finset.Icc 2 7 := by
  obtain ⟨hlo, hhi⟩ := seven_lt_exp_two_lt_eight
  ext n
  simp only [activePrimePowers, Finset.mem_filter, Finset.mem_range,
    Nat.lt_ceil, Finset.mem_Icc, mul_one]
  constructor
  · rintro ⟨hne, htwo, hreal⟩
    have hnr : (n : ℝ) < 8 := hreal.trans hhi
    have hn : n < 8 := by exact_mod_cast hnr
    exact ⟨htwo, by omega⟩
  · rintro ⟨htwo, hseven⟩
    have hnr : (n : ℝ) ≤ 7 := by exact_mod_cast hseven
    have hlt : (n : ℝ) < Real.exp 2 := hnr.trans_lt hlo
    exact ⟨hlt, htwo, hlt⟩

/-- Original full q3 stage-zero source, including both ramified/zero entries
and all signed nonzero prime powers. No sign bound is asserted. -/
theorem primitiveOddThree_full_signed_shift_identity
    (chi : DirichletCharacter ℂ 3)
    (hprimitive : chi.IsPrimitive) (hnonprincipal : chi ≠ 1)
    (hodd : gammaParity chi = 1)
    (f : ℝ → ℝ) (hf : Admissible chi 1 f) :
    primitiveArithmeticValue chi hprimitive hnonprincipal 1 (liftReal f) =
      (gammaConstant 3 1 -
        2 * ∑ n ∈ Finset.Icc 2 7, pairedPrimeWeight chi n) *
        energy (liftReal f) +
      (∫ r in Ioi (0 : ℝ), gammaCorrectionDensity 1 (liftReal f) r) +
      ∑ n ∈ Finset.Icc 2 7,
        pairedPrimeWeight chi n *
          energy (fun t => liftReal f (t + Real.log (n : ℝ)) - liftReal f t) := by
  rcases hf with ⟨hT, hdiff, hcompact, htestOdd, hLp, hsupport, harch⟩
  simpa only [hodd, activePrimePowers_one_eq_Icc] using
    (primitiveArithmeticValue_eq_full_signedShift_on_real
      chi hprimitive hnonprincipal 1 f hLp)

/-- Native residues in the original nonprincipal parity-one q3 sector. -/
theorem odd_three_native_character_values
    (chi : DirichletCharacter ℂ 3)
    (hodd : gammaParity chi = 1) :
    chi (2 : ZMod 3) = -1 ∧ chi (3 : ZMod 3) = 0 ∧
    chi (4 : ZMod 3) = 1 ∧ chi (5 : ZMod 3) = -1 ∧
    chi (6 : ZMod 3) = 0 ∧ chi (7 : ZMod 3) = 1 := by
  have htwo := GammaShiftCoupling.odd_character_three_at_two chi hodd
  refine ⟨htwo, ?_, ?_, ?_, ?_, ?_⟩
  · rw [show (3 : ZMod 3) = 0 by decide]
    exact chi.map_zero' (by decide)
  · rw [show (4 : ZMod 3) = 1 by decide]
    exact map_one chi
  · simpa only [show (5 : ZMod 3) = (2 : ZMod 3) by decide] using htwo
  · rw [show (6 : ZMod 3) = 0 by decide]
    exact chi.map_zero' (by decide)
  · rw [show (7 : ZMod 3) = 1 by decide]
    exact map_one chi

/-- Critical factor at the squared prime: Λ(2²)=log 2, not log 4. -/
theorem vonMangoldt_four_eq_log_two :
    ArithmeticFunction.vonMangoldt 4 = Real.log 2 := by
  have hpow := ArithmeticFunction.vonMangoldt_apply_pow
    (n := 2) (k := 2) (by decide)
  have hprime := ArithmeticFunction.vonMangoldt_apply_prime Nat.prime_two
  have h4 : ArithmeticFunction.vonMangoldt 4 =
      ArithmeticFunction.vonMangoldt 2 := by
    simpa only [show (2 ^ 2 : ℕ) = 4 by norm_num] using hpow
  exact h4.trans hprime

/-- Literal signed q3 weights for n = 2,...,7, including 4, 3 and 6. -/
theorem odd_three_native_signed_weights
    (chi : DirichletCharacter ℂ 3) (hodd : gammaParity chi = 1) :
    pairedPrimeWeight chi 2 = -(Real.log 2 / Real.sqrt 2) ∧
    pairedPrimeWeight chi 3 = 0 ∧
    pairedPrimeWeight chi 4 = Real.log 2 / 2 ∧
    pairedPrimeWeight chi 5 = -(Real.log 5 / Real.sqrt 5) ∧
    pairedPrimeWeight chi 6 = 0 ∧
    pairedPrimeWeight chi 7 = Real.log 7 / Real.sqrt 7 := by
  obtain ⟨h2, h3, h4, h5, h6, h7⟩ := odd_three_native_character_values chi hodd
  refine ⟨GammaShiftCoupling.odd_character_three_primeTwo_weight chi hodd,
    ?_, ?_, ?_, ?_, ?_⟩
  · unfold pairedPrimeWeight
    rw [h3]
    simp
  · have hΛ := vonMangoldt_four_eq_log_two
    unfold pairedPrimeWeight primeWeight
    rw [h4, hΛ]
    norm_num
  · have hΛ : ArithmeticFunction.vonMangoldt 5 = Real.log 5 :=
      ArithmeticFunction.vonMangoldt_apply_prime (by decide)
    unfold pairedPrimeWeight primeWeight
    rw [h5, hΛ]
    norm_num
  · unfold pairedPrimeWeight
    rw [h6]
    simp
  · have hΛ : ArithmeticFunction.vonMangoldt 7 = Real.log 7 :=
      ArithmeticFunction.vonMangoldt_apply_prime (by decide)
    unfold pairedPrimeWeight primeWeight
    rw [h7, hΛ]
    norm_num

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeFullSignedShift
