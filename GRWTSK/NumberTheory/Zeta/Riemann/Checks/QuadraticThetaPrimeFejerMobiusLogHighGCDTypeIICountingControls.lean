/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIICounting
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIICountingControls

open GRWTSK.RiemannHypothesis
open GRWTSK.NumberTheory.FiniteDivisorCounting

/-- Auditable checklist for the finite high-g Type II closure. -/
def exactFrontier : List String :=
  ["the divisor summatory count is proved for every integer B >= 1",
   "integer quotients are retained before the real harmonic majorization",
   "the exact period-4X Fejer prefix weights are nonnegative and at most one",
   "the shifted Fejer weight product is at most one on the exact support",
   "high-g classes contain genuine/genuine divisor pairs only",
   "every exact term maps to a unique reduced tuple (g,a,d',b,e')",
   "the reduced tuple map is injective, so no multiplicity is omitted",
   "squarefree, coprime, shift, ordering, and octave restrictions are dropped only after absolute values",
   "the relaxed g-fiber cardinality is the square of a divisor-summatory count",
   "the finite reciprocal-square tail gives the high-g half-power saving",
   "the exact absolute high-g Type II supplier is closed with constant 7200",
   "the genuinely signed low-g Type I supplier remains open",
   "no threshold descent or Riemann Hypothesis result is supplied"]

/-- Reusable finite divisor-summatory estimate. -/
theorem finiteDivisorSummatoryClosed
    {B : ℕ} (hB : 1 ≤ B) :
    positiveDivisorIncidenceMass B ≤
      (B : ℝ) * (1 + Real.log (B : ℝ)) :=
  positiveDivisorIncidenceMass_le hB

/-- Exact unit bound for the real Fejer shift weight. -/
theorem exactFejerShiftWeightUnitBoundClosed
    {X N m h n : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X)
    (hn : n ∈ Finset.Ioc (2 * X) (4 * X - h)) :
    nonAliasingFejerShiftWeight X N m h n ≤ 1 :=
  nonAliasingFejerShiftWeight_le_one hreg hm0 hm1 hn

/-- The exact absolute high-g Type II supplier is source-proved. -/
theorem absoluteHighGCDTypeIIClosed :
    SevenEighthsBoundaryMinimalAbsoluteHighGCDTypeIIBound :=
  sevenEighthsBoundaryMinimalAbsoluteHighGCDTypeIIBound

/-- Only the centered signed low-g estimate remains. -/
def remainingArithmeticFrontier : Prop :=
  SevenEighthsBoundaryMinimalSignedLowGCDTypeIBound

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIICountingControls
