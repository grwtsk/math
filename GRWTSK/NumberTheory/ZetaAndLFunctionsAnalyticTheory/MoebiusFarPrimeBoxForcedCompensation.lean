/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_DEFERRED_PER_USER /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusFarPrimeBoxWeightedAsymptotic
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusFarCompleteUpperTransfer
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Filter Topology

/-!
# Forced genuine signed compensation outside the original FAR prime boxes

An unconditional ordinary mathematical conclusion using ONLY:
  classical weighted PNT for genuine source prime boxes;
  classical quantitative Mertens log-power (or stronger
    classical Vinogradov-Korobov) for the original source;
  already documented elementary original proper-packet prices.

The exact selected original signed prime box tends to POSITIVE
I*N/(log N)^2. The COMPLETE original far signed source is
o(N/(log N)^2) from quantitative classical Mertens, so the
unchanged complementary ORIGINAL far source necessarily tends
to NEGATIVE -I*N/(log N)^2. I=0.010007718064...>0.

No statement here supplies an all-positive-exponential-rate
bound for the full original FAR source. The new fact is REAL
Möbius cancellation at one fixed leading scale (N/log^2 N),
far weaker than the RH equivalent e^(epsilon*T) for every epsilon.
No random independent signs, positive-only Gram, changed birth
or new arithmetic coefficient is introduced.

Lean source contains finite exact sums, an elementary limit
transfer proof body, and only explicitly named UNPROVED locally
classical Mertens/weighted-PNT/real-calculus supplier Props.
Compilation remains DEFERRED by the user.
-/

namespace GRWTSK.NumberTheory.Moebius.FarPrimeBoxForcedCompensation

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.TerminalHighSmoothCollar
open GRWTSK.NumberTheory.Moebius.CollarResidualShortRatio
open GRWTSK.NumberTheory.Moebius.CollarResidualGcdReducedGap
open GRWTSK.NumberTheory.Moebius.FarReducedStructuralFrontier
open GRWTSK.NumberTheory.Moebius.FarPrimeBoxWeightedAsymptotic
open GRWTSK.NumberTheory.Moebius.FarPrimeBoxPNTMass
open GRWTSK.NumberTheory.Moebius.FarCompleteUpperTransfer
open GRWTSK.NumberTheory.Moebius.CausalMertensSquareBridge

/-- The fixed truly signed FAR source at the original dyadic scale. -/
def normalizedCompleteFar (J : ℕ) : ℝ :=
  primeScale J * farReducedOrLongCross emptyPrimeBand ∅ J

/-- The exact signed REST OF FAR, after removing only the genuine
prime-box subset once. Not a positive surrogate or a new index set. -/
def normalizedRemainingAfterPrimeBoxFar (J : ℕ) : ℝ :=
  primeScale J * remainingAfterPrimeBoxFar J

/-- Ordinary quantitative classical Mertens with any log-power,
original wholePickup/energy identity and the THREE elementary
proper-packet absolute bounds establish this weaker-than-RH
convergence (T_J^2/N_J)*full FAR signed -> 0.
The analytic and finite count ports are NOT YET in pinned Lean. -/
def ClassicalCompleteFarPrimeScaleVanishTarget : Prop :=
  Tendsto normalizedCompleteFar atTop (nhds 0)

/-- A noncircular supplier obligation: the EXACT existing
OriginalBalancedPNTLogPowerTarget and independently elementary
collar/short/reduced-close absolute prices suffice for this
prime-scale convergence. This is standard ordinary mathematics
but NOT a compiled Lean theorem. No far signed all-rate input. -/
def ClassicalMertensToFarPrimeScaleTarget : Prop :=
  OriginalBalancedPNTLogPowerTarget →
  UniformCollarAllRateTarget →
  ShortRatioUniformAllRateTarget →
  ReducedCloseUniformAllRateTarget →
  ClassicalCompleteFarPrimeScaleVanishTarget

/-- The WHOLE ORIGINAL FAR source splits as prime-box plus
remaining, with the same dyadic T_J and all original Möbius
signs. Consequently a zero leading whole FAR scale and a
positive leading prime-box scale FORCE the remaining source
to carry an equal NEGATIVE asymptotic. -/
theorem normalized_remaining_tendsto_negative_of_independent_gates
    (hFar : ClassicalCompleteFarPrimeScaleVanishTarget)
    (hBoxSource : OriginalPrimeBoxExactSourceTarget)
    (hBoxPNT : WeightedPrimeBoxPNTTarget) :
    Tendsto normalizedRemainingAfterPrimeBoxFar
      atTop (nhds (-primeBoxLeadingConstant)) := by
  have hBox := normalized_sourcePrimeBox_tendsto hBoxSource hBoxPNT
  have hsub := hFar.sub hBox
  have hrewrite :
      (fun J : ℕ =>
        normalizedCompleteFar J -
          primeScale J * selectedPrimeBoxFar J) =
      normalizedRemainingAfterPrimeBoxFar := by
    funext J
    unfold normalizedCompleteFar normalizedRemainingAfterPrimeBoxFar
    rw [far_eq_primeBox_add_other J]
    ring
  rw [hrewrite] at hsub
  simpa only [zero_sub] using hsub

/-- This is the COMPLETE independent classical hypothesis chain,
not an RH assumption. The unported implication
ClassicalMertensToFarPrimeScaleTarget is a theorem-level
formalization obligation, never silently obtained as an axiom. -/
theorem normalized_remaining_tendsto_of_classical_Mertens
    (hMertensPort : ClassicalMertensToFarPrimeScaleTarget)
    (hMertens : OriginalBalancedPNTLogPowerTarget)
    (hCollar : UniformCollarAllRateTarget)
    (hShort : ShortRatioUniformAllRateTarget)
    (hClose : ReducedCloseUniformAllRateTarget)
    (hBoxSource : OriginalPrimeBoxExactSourceTarget)
    (hBoxPNT : WeightedPrimeBoxPNTTarget) :
    Tendsto normalizedRemainingAfterPrimeBoxFar
      atTop (nhds (-primeBoxLeadingConstant)) := by
  exact normalized_remaining_tendsto_negative_of_independent_gates
    (hMertensPort hMertens hCollar hShort hClose)
    hBoxSource hBoxPNT

/-- Standard unconditional Vinogradov-Korobov scale, written
without loglog singularities for small u. The harmless (3+u)
normalization changes only the numerical constants. -/
def vinogradovKorobovScale (u : ℝ) : ℝ :=
  Real.rpow (max 0 u) (3 / 5 : ℝ) /
    Real.rpow (Real.log (3 + max 0 u)) (1 / 5 : ℝ)

/-- Standard CLASSICAL (not RH-level) source input:
M(x) <= C*x*exp(-c*phi(log x)) with true Mertens prefix.
This follows from the classical Vinogradov-Korobov zeta
zero-free region. It remains an explicit UNPROVED Lean port. -/
def ClassicalVinogradovKorobovMertensTarget : Prop :=
  ∃ C c : ℝ, 0 ≤ C ∧ 0 < c ∧
    ∀ x : ℝ, 1 ≤ x →
      |mertensPrefix x| ≤
        C * x * Real.exp (-c *
          vinogradovKorobovScale (Real.log x))

/-- This complete FAR upper at RATE ONE with stretched exponential
saving is an ordinary mathematical consequence of the preceding
classical Mertens supplier, the unchanged original causal
velocity/energy integral and the independently elementary three
paid-packet absolute bounds. It does NOT imply O(exp(epsilon*T))
for every epsilon>0, as phi(T)=o(T).

The exact calculus/cutoff/finite-source transfer is an explicit
UNPROVED pinned-Lean target, not a research axiom. -/
def ClassicalVinogradovKorobovFarSavingTarget : Prop :=
  ClassicalVinogradovKorobovMertensTarget →
  UniformCollarAllRateTarget →
  ShortRatioUniformAllRateTarget →
  ReducedCloseUniformAllRateTarget →
  ∃ C c : ℝ, 0 ≤ C ∧ 0 < c ∧
    ∀ J : ℕ, 1 ≤ J →
      |farReducedOrLongCross emptyPrimeBand ∅ J| ≤
        C * Real.exp
          (dyadicTime J -
            c * vinogradovKorobovScale (dyadicTime J))

/-- GENUINE relative signed-balance statement, much stronger
than a relative logarithmic error but still FAR weaker than RH:
  |P_J^+-P_J^-| / (P_J^++P_J^-)
       <= C exp(-c phi(T_J))
eventually. Its inputs are the classical VK global source
saving and the independently PNT-proved lower populations;
the conversion is elementary and UNPORTED in Lean. -/
def ClassicalRelativeFarBalanceVKTarget : Prop :=
  ClassicalVinogradovKorobovMertensTarget →
  PrimeBoxesEventualPNTProductCountsTarget →
  PrimeBoxesOriginalSourceLowerTarget →
  UniformCollarAllRateTarget →
  ShortRatioUniformAllRateTarget →
  ReducedCloseUniformAllRateTarget →
  ∃ C c : ℝ, 0 ≤ C ∧ 0 < c ∧
    ∃ J₀ : ℕ, ∀ J : ℕ, J₀ ≤ J →
      |farReducedOrLongCross emptyPrimeBand ∅ J| ≤
        C * (FarPrimeBoxPNTMass.positiveFarMass J +
             FarPrimeBoxPNTMass.negativeFarMass J) *
          Real.exp
            (-c * vinogradovKorobovScale (dyadicTime J))

/-- The precise currently OPEN RH-strength arithmetic supplier.
It is NOT proved, accepted, or replaced by the prime-scale
forced compensation result. -/
def EntireFarEveryPositiveRateStillOpen : Prop :=
  FarOriginalEveryPositiveRateUpperTarget

end GRWTSK.NumberTheory.Moebius.FarPrimeBoxForcedCompensation
