/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI GPT-5.6 Pro.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.ArithmeticFunctions.PrimeExponentScaleTopology
import Mathlib.Tactic

set_option autoImplicit false

open scoped BigOperators

/-!
# Controls for the PNT-free prime-exponent scale bridge

These controls retain the exact algebraic/topological boundary and the
three-plus-one dependent-witness distinction.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.ArithmeticFunctions.PrimeExponentScale.Checks

open GRWTSK.NumberTheory.ArithmeticFunctions.PrimeExponentScale

def primeFive : PrimeIndex :=
  ⟨5, by norm_num⟩

/-- Exponents of `12/5 = 2^2 * 3 * 5^-1`. -/
noncomputable def twelveFifthsExponent : PrimeExponent :=
  Finsupp.single primeTwo 2 +
    Finsupp.single primeThree 1 +
      Finsupp.single primeFive (-1)

theorem twelveFifthsExponent_two :
    twelveFifthsExponent primeTwo = 2 := by
  simp [twelveFifthsExponent, primeTwo, primeThree, primeFive]

theorem twelveFifthsExponent_three :
    twelveFifthsExponent primeThree = 1 := by
  simp [twelveFifthsExponent, primeTwo, primeThree, primeFive]

theorem twelveFifthsExponent_five :
    twelveFifthsExponent primeFive = -1 := by
  simp [twelveFifthsExponent, primeTwo, primeThree, primeFive]

theorem twelveFifths_rationalRealization :
    rationalRealization twelveFifthsExponent = (12 / 5 : ℚ) := by
  have hs (p : PrimeIndex) (n : ℤ) :
      rationalRealization (Finsupp.single p n) = (p.1 : ℚ) ^ n := by
    simp [rationalRealization]
  rw [twelveFifthsExponent, rationalRealization_add, rationalRealization_add, hs, hs, hs]
  norm_num [primeTwo, primeThree, primeFive]

theorem twelveFifths_projector_reconstruction :
    (∑ p ∈ twelveFifthsExponent.support,
      primeProjector p twelveFifthsExponent) =
        twelveFifthsExponent :=
  finite_prime_projector_reconstruction twelveFifthsExponent

/-- Distinct prime projectors do not leak coordinates. -/
theorem two_after_three_projector_zero :
    primeCoordinate primeTwo
      (primeProjector primeThree twelveFifthsExponent) = 0 := by
  apply primeCoordinate_projector_ne
  decide

/-- The near-one sequence has large negative valuation despite real logarithm
converging to zero. -/
theorem nearOne_two_coordinate_four :
    scalePrimeCoordinate primeTwo (nearOneLogScale primeTwo 4) = -5 := by
  norm_num [nearOneLogScale_coordinate]

/-- The algebraic coordinate cannot be a continuous Euclidean coordinate. -/
theorem two_coordinate_not_continuous :
    ¬ Continuous (scalePrimeCoordinate primeTwo) :=
  scalePrimeCoordinate_not_continuous primeTwo

/-- The real scalar-extension obstruction is nontrivial. -/
theorem scalar_extension_kernel_control :
    realScalarKernelVector ≠ 0 ∧
      realLogCombination realScalarKernelVector = 0 :=
  ⟨realScalarKernelVector_ne_zero, realLogCombination_kernelVector⟩

/-- A fixed fourth scalar cannot represent this channel: the witness fiber has
one element over `false` and two over `true`. -/
def varyingWitnessChannel :
    GRWTSK.Geometry.ThreePlusOne.DynamicWitnessChannel Bool where
  WitnessIndex
    | false => Fin 1
    | true => Fin 2
  finiteWitness
    | false => inferInstance
    | true => inferInstance

theorem varyingWitnessChannel_has_varying_size :
    GRWTSK.Geometry.ThreePlusOne.VaryingWitnessSize
      varyingWitnessChannel := by
  refine ⟨false, true, ?_⟩
  norm_num [varyingWitnessChannel,
    GRWTSK.Geometry.ThreePlusOne.VaryingWitnessSize]

/-- The triangular base has three phase positions, not four. -/
theorem triangle_phase_card :
    Nat.card GRWTSK.Geometry.ThreePlusOne.TrianglePhase = 3 := by
  norm_num [GRWTSK.Geometry.ThreePlusOne.TrianglePhase]

/-- The triangle phase type cannot be confused with a symmetric four-phase
index. -/
theorem triangle_phase_not_equiv_fin_four :
    ¬ Nonempty
      (GRWTSK.Geometry.ThreePlusOne.TrianglePhase ≃ Fin 4) := by
  intro h
  have hcard := Nat.card_congr h.some
  norm_num [GRWTSK.Geometry.ThreePlusOne.TrianglePhase] at hcard

end GRWTSK.NumberTheory.ArithmeticFunctions.PrimeExponentScale.Checks
