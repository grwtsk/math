/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedVonMangoldtModOneAnalyticInputs
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.PinnedVonMangoldtModOneAnalyticInputsControls

open GRWTSK.RiemannHypothesis

/-- Literal residue-class source at q=1, checked for the full actual
von Mangoldt function including zero and prime-power coefficients. -/
theorem actual_modOne_residueClass (n : ℕ) :
    ArithmeticFunction.vonMangoldt.residueClass (1 : ZMod 1) n =
      pinnedTauberianLambda n :=
  pinnedTauberianResidueClassOne_eq_lambda n

/-- This is equality of actual L-series sources, not merely an equality
of summability abscissae or an asymptotic relation. -/
theorem actual_modOne_LSeries (s : ℂ) :
    LSeries
      (fun n : ℕ =>
        (ArithmeticFunction.vonMangoldt.residueClass
          (1 : ZMod 1) n : ℂ)) s =
      LSeries pinnedTauberianLambdaComplex s :=
  pinnedTauberianResidueClassOne_LSeries_eq s

/-- Preserve the exact historical pole residue A=1 at q=1. -/
theorem actual_modOne_pole_subtracted_auxiliary
    {s : ℂ} (hs : 1 < s.re) :
    pinnedTauberianModOneAux s =
      LSeries pinnedTauberianLambdaComplex s - 1 / (s - 1) :=
  pinnedTauberianModOneAux_eq_lambdaLSeries hs

/-- The auxiliary is continuous on the CLOSED boundary Re(s)>=1,
not only the open convergence half-plane. -/
theorem actual_modOne_closed_continuity :
    ContinuousOn pinnedTauberianModOneAux
      {s : ℂ | 1 ≤ s.re} :=
  pinnedTauberianModOneAux_continuous

/-- The historical nterm and the actual pinned norm of the L-series
term match even at N=0 under the totalized source convention. -/
theorem actual_normTerm_match (σ : ℝ) (N : ℕ) :
    pinnedTauberianNormTerm σ N =
      ‖LSeries.term pinnedTauberianLambdaComplex
        (σ : ℂ) N‖ :=
  pinnedTauberianNormTerm_eq_norm_LSeries_term σ N

/-- No further summability premise is needed: it comes from pinned
ArithmeticFunction.LSeriesSummable_vonMangoldt at every sigma>1. -/
theorem actual_normTerm_summable (σ : ℝ) (hσ : 1 < σ) :
    Summable (pinnedTauberianNormTerm σ) :=
  pinnedTauberianNormTerm_summable σ hσ

/-- Replay the exact arithmetic growth bound from parent issue #909. -/
theorem actual_norm_cumsum_cheby :
    PinnedVonMangoldtCheby :=
  pinnedVonMangoldtCheby

/-- The five historically required hypotheses are all sourced without
the external PNT proof term; this is NOT a Tauberian conclusion. -/
theorem actual_pinned_wienerIkehara_inputs :
    PinnedTauberianModOneAnalyticInputs :=
  pinnedTauberianModOneAnalyticInputs

/-- The still-unported THEOREM is the Tauberian implication itself.
Its conclusion is the historic range-open WeakPNT, not RH. -/
def MissingPinnedWienerIkeharaForLambda : Prop :=
  PinnedTauberianModOneAnalyticInputs →
    Filter.Tendsto
      (fun N : ℕ =>
        pinnedVonMangoldtRangeSum N / (N : ℝ))
      Filter.atTop (nhds (1 : ℝ))

/-- Only if a theorem term for the above missing implication is
supplied can we construct the historical WeakPNT conclusion. -/
theorem weakPNT_of_admitted_wienerIkehara
    (hWI : MissingPinnedWienerIkeharaForLambda) :
    Filter.Tendsto
      (fun N : ℕ =>
        pinnedVonMangoldtRangeSum N / (N : ℝ))
      Filter.atTop (nhds (1 : ℝ)) :=
  hWI pinnedTauberianModOneAnalyticInputs

/-- The remaining gate is NOT an arithmetic hypothesis. It is an
analytic Tauberian theorem and its fully trusted proof transport. -/
def remainingTauberianObligations : List String :=
  ["port or prove the genuine WienerIkeharaTheorem' implication in pinned Mathlib",
   "transport the theorem with the literal LSeries-term and q=1 auxiliary normalization",
   "audit the pinned closed-line Dirichlet L-function nonvanishing dependency closure",
   "audit historical PNTAnd theorem dependencies rather than judging later sorry locations",
   "obtain Lean/Lake exact-head kernel replay and source-bound #100 axiom receipt",
   "keep WeakPNT, theta PNT, not-capacity and RH distinct from its arithmetic inputs"]

/-- Explicit hostile logical and provenance controls. -/
def prohibitedPromotions : List String :=
  ["five Wiener-Ikehara hypotheses -> PNT without an actual Tauberian theorem",
   "continuous auxiliary on Re(s)>=1 -> arbitrary source-independent limit",
   "modulus-one indicator identity -> missing nontrivial q>1 residue-class theorem",
   "constant 1/(s-1) obtained by dropping pole term or fitting A",
   "LSeries term normalization at zero -> ordinary nonzero division by zero",
   "open-half-plane equality -> closed-boundary equality without proof",
   "Dirichlet L-function nonvanishing source -> PNT-free closure without audit",
   "historic source label or metadata -> kernel-accepted theorem proof",
   "false fixed uniform psi capacity -> RH proof by conditional implication",
   "source-only Lean text -> verified elaboration without running Lean/Lake"]

end GRWTSK.RiemannHypothesis.Checks.PinnedVonMangoldtModOneAnalyticInputsControls
