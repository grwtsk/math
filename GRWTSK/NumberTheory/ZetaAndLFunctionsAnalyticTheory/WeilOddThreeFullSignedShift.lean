/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
Independent analytical review: NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddShiftEnergySine
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddThreeNativeLedger
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
The native weight declarations are in WeilOddThreeNativeLedger.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeFullSignedShift

open SourcePrimeCorrelation LowSchur OddRootProjection CharacterWindow
open FrobeniusPhaseSurplus DirichletStageChain
open OddShiftEnergySine

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
          rw [physical_shiftEnergy_eq_two_energy_sub_two_re_correlation
            hg (Real.log (n : ℝ))]
          ring
    _ = (2 * ∑ n ∈ activePrimePowers T,
          pairedPrimeWeight chi n) * energy g -
          ∑ n ∈ activePrimePowers T,
            pairedPrimeWeight chi n *
              energy (fun t => g (t + Real.log (n : ℝ)) - g t) := by
          have hsum : (∑ n ∈ activePrimePowers T, 2 * pairedPrimeWeight chi n * energy g) =
              (2 * ∑ n ∈ activePrimePowers T, pairedPrimeWeight chi n) * energy g := by
            simp only [Finset.mul_sum, Finset.sum_mul]
          rw [Finset.sum_sub_distrib, hsum]

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

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeFullSignedShift
