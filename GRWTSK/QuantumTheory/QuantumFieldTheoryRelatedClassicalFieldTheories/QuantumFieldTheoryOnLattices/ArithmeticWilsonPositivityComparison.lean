/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported mathematical sources retain upstream attribution and licenses. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.DyadicMarkedSignGauge
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceInvariantOperatorPositive

/-!
# A compatibility obstruction between signed arithmetic and actual Wilson forms

A two-coordinate specialization of the maintained signed arithmetic operator
has a negative quadratic direction whenever both coefficients are nonzero.
The actual invariant Wilson operator has a nonnegative quadratic form.
Consequently there is no map preserving these quadratic forms on every vector.
The real marked RH-source specialization retains both nonzero-response premises;
no assertion that those premises hold at every time is made.
This rules out a direct quadratic-form identification, not every possible bridge.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay, axiom and interface NOT_RUN.
No RH implication, continuum theory or physical Yang--Mills gap is asserted.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.Geometry.GaugeTheory.ArithmeticWilsonPositivityComparison
open GRWTSK.NumberTheory.Moebius.DyadicMarkedSignGauge
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceInvariantOperatorPositive

def arithmeticQuadratic (a x : Fin 2 → ℝ) : ℝ :=
  ∑ i : Fin 2, x i * signedOperator a x i

def negativeTrial (a : Fin 2 → ℝ) : Fin 2 → ℝ := ![a 1, -a 0]

theorem negativeTrial_quadratic (a : Fin 2 → ℝ) :
    arithmeticQuadratic a (negativeTrial a) = -2 * (a 0 * a 1)^2 := by
  norm_num [arithmeticQuadratic, negativeTrial, signedOperator,
    signedOffDiagonal, Fin.sum_univ_two] <;> ring

theorem arithmetic_negative_direction (a : Fin 2 → ℝ)
    (h0 : a 0 ≠ 0) (h1 : a 1 ≠ 0) :
    arithmeticQuadratic a (negativeTrial a) < 0 := by
  rw [negativeTrial_quadratic]
  have hp := sq_pos_of_ne_zero (mul_ne_zero h0 h1)
  linarith

/-- Even a nonlinear map cannot preserve all these quadratic values. -/
theorem no_wilson_quadratic_transport (L : ℕ) [NeZero L] (β : ℝ) (hβ : 0 ≤ β)
    (a : Fin 2 → ℝ) (h0 : a 0 ≠ 0) (h1 : a 1 ≠ 0) :
    ¬ ∃ F : (Fin 2 → ℝ) → gaugeInvariantSpace L,
      ∀ x, inner ℝ (F x) (invariantOperator L β hβ (F x)) = arithmeticQuadratic a x := by
  rintro ⟨F, hF⟩
  have hp := invariantOperator_inner_nonnegative L β hβ (F (negativeTrial a))
  rw [hF] at hp
  exact (not_lt_of_ge hp) (arithmetic_negative_direction a h0 h1)

/-- The maintained real RH response, not an assumed map from 2-adic scalars to reals. -/
def markedPair (u : ℝ) (i : Fin 2) : ℝ := originalRealMark 1 u i

theorem no_markedPair_wilson_transport (L : ℕ) [NeZero L] (β : ℝ) (hβ : 0 ≤ β)
    (u : ℝ) (h0 : markedPair u 0 ≠ 0) (h1 : markedPair u 1 ≠ 0) :
    ¬ ∃ F : (Fin 2 → ℝ) → gaugeInvariantSpace L,
      ∀ x, inner ℝ (F x) (invariantOperator L β hβ (F x)) =
        arithmeticQuadratic (markedPair u) x :=
  no_wilson_quadratic_transport L β hβ (markedPair u) h0 h1

end GRWTSK.Geometry.GaugeTheory.ArithmeticWilsonPositivityComparison
