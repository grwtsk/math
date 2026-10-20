/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.LocalNewtonWitness
import GRWTSK.NumberTheory.Chebyshev.CanonicalTentEvaluation

set_option autoImplicit false

/-!
# Canonical tent evaluation supplied by quantitative local Newton estimates

No local-zero-existence or source-equivalence hypothesis is supplied here. The
local actual analytic estimates imply those inputs through the preceding
Newton-disk theorem. The COMPLETE canonical upper count is still required.
This does not produce a numerical zeta estimate, divisor tail or prime margin.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.NewtonTentEvaluation

open scoped BigOperators
open GRWTSK.RiemannHypothesis
open CanonicalZeroDivisor EnclosedZeroInventory LocalNewtonWitness
open GRWTSK.Analysis.Complex
open GRWTSK.Analysis.ErrorBounds
open RationalComplexEnclosure
open RationalMellinFamily (Member)
open RationalTentEnclosure (CoordinateData)
open TentMellinKernel

/-- All previous geometric/evaluation tests, plus every quantitative local-root guard. -/
def checkWithin (family : List Member) (T x h : ℚ) (tr : RationalTentFamily.Trace)
    (d : CoordinateData) (data : RecordIndex family → RationalNewtonDisk.Data) (ε : ℚ) : Bool :=
  CanonicalTentEvaluation.checkWithin family T x h tr d ε && checkFamily family d data

/-- The local analytic inequalities and SAME complete upper count remain explicit. -/
theorem checkWithin_sound {family : List Member} {T x h ε : ℚ}
    {tr : RationalTentFamily.Trace} {d : CoordinateData}
    {data : RecordIndex family → RationalNewtonDisk.Data}
    (hc : checkWithin family T x h tr d data ε = true)
    (he : FamilyEstimates family d data)
    (hcount : heightCount (T : ℝ) ≤ recordMass family) :
    ‖(∑ z ∈ heightHead (T : ℝ), (multiplicity z : ℂ) * tentKernel (x : ℝ) (h : ℝ) z.1) -
      toComplex (RationalTentFamily.output family tr)‖ ≤ (ε : ℝ) := by
  have hs : CanonicalTentEvaluation.checkWithin family T x h tr d ε = true ∧
      checkFamily family d data = true := by
    simpa only [checkWithin, Bool.and_eq_true] using hc
  exact CanonicalTentEvaluation.checkWithin_sound hs.1 (localWitnesses_of_checks hs.2 he) hcount

end GRWTSK.NumberTheory.Chebyshev.NewtonTentEvaluation
