/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerMobiusLogCongruenceReduction
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerMobiusLogCongruenceReductionControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["Lambda is expanded exactly as the Möbius-log Dirichlet convolution",
   "the centering minus one is retained as a distinguished anchor index",
   "the augmented finite sum equals the centered von Mangoldt atom",
   "weighted augmented atoms equal the existing Fejer-weighted centered von Mangoldt atoms",
   "genuine divisor witnesses at n and n+h force gcd(d,e) to divide h",
   "anchor channels remain in the same finite pair sum and are not estimated separately",
   "the compatibility-filtered pair set equals the actual augmented product index",
   "the compatible pair block equals the product of centered von Mangoldt atoms",
   "the Möbius-log congruence shift aggregate equals the previous von Mangoldt aggregate",
   "the two supplier propositions are exactly equivalent",
   "naive channelwise pair counting has exponent two, above the three-halves target",
   "the centered Möbius-log congruence estimate remains open",
   "no threshold descent or Riemann Hypothesis result is supplied"]

theorem exactSupplierEquivalence :
    SevenEighthsBoundaryMinimalMobiusLogCongruenceBound ↔
      SevenEighthsBoundaryMinimalVonMangoldtShiftCorrelationBound :=
  mobiusLogCongruenceBound_iff_vonMangoldtShiftCorrelationBound

theorem genuineDivisorCompatibility
    {n h : ℕ}
    {p q : ℕ × ℕ}
    (hp : p ∈ n.divisorsAntidiagonal)
    (hq : q ∈ (n + h).divisorsAntidiagonal) :
    Nat.gcd p.1 q.1 ∣ h :=
  gcd_dvd_shift_of_shiftDivisorCongruence
    ⟨fst_dvd_of_mem_divisorsAntidiagonal hp,
      fst_dvd_of_mem_divisorsAntidiagonal hq⟩

def remainingArithmeticFrontier : Prop :=
  SevenEighthsBoundaryMinimalMobiusLogCongruenceBound

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerMobiusLogCongruenceReductionControls
