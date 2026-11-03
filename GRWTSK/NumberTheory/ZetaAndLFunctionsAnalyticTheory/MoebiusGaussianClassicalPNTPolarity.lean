/- Copyright (c) 2026 grwtsk contributors. MIT.
Original mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_DEFERRED_PER_USER /
PARSER_NOT_RUN / ELABORATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianSignedPolarityDebt
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusCausalMertensSquareBridge
import GRWTSK.MeasureAndIntegration.GramDiagonalBound
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators Topology

/-!
# Classical PNT forces substantial ORIGINAL signed Gaussian polarity overlap

This is a source-specific NONCIRCULAR rate-one arithmetic consequence
of the already-maintained ClassicalMertensLogPowerInput and
OriginalBalancedPNTLogPowerTarget (a standard unconditional PNT
supplier, still UNPORTED pinned Lean). It is NOT RH-equivalent and
does not establish any all-positive-rate signed upper.

At true dyadic physical endpoint T_J=J log2, J>=9, T_J>=32,
the actual artificial near-identity Gaussian s=exp(-T_J/2)
retains at least half of every original μ(n) in the true
endpoint inventory. The PNT-free squarefree/causal-birth
lower shows
   unsignedHeatEnergy(s,T_J) >=exp(T_J)/65536.

Classical PNT at log-power β=1 provides
   pickupCross(T) <= C*exp(T)/(1+T).
The exact original diagonal cost <=2*T² gives
   pickupEnergy(T)<=2*T²+C*exp(T)/(1+T).
The two-way original Gaussian physical square-energy
comparison, with the INDEPENDENT elementary polynomial
reconstruction radius <=16*T^5, yields
   sourceHeatEnergy(s,T)<=4*T²+
          2*C*exp(T)/(1+T)+32*T^5.
The exact signed heat identity
   unsignedHeatEnergy-sourceHeatEnergy
     =4*integral_0^T PositiveWave*NegativeWave
therefore gives the concrete lower:
   4*overlap >= exp(T)/65536
       -2*C*exp(T)/(1+T)-4*T²-32*T^5.

For large T the RHS is a fixed positive fraction of exp(T),
so this is an ORDINARY unconditional PNT-strength
signed-interference compensation statement, not a
new arithmetic all-rate energy upper and not RH.
The maintained PNT supplier is an explicit named Prop,
NOT a kernel-verified theorem or a hidden axiom.
The squarefree/interval elementary gates are likewise
still NOT_RUN, per user's deferred Lean compilation.
-/

namespace GRWTSK.NumberTheory.Moebius.GaussianClassicalPNTPolarity

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.GaussianSignedPolarityDebt
open GRWTSK.NumberTheory.Moebius.GaussianUnsignedDualEnvelope
open GRWTSK.NumberTheory.Moebius.GaussianSquarefreeRadiusSharpness
open GRWTSK.NumberTheory.Moebius.GaussianHalfRootMassImprovement
open GRWTSK.NumberTheory.Moebius.GaussianSaturatedRadiusUpper
open GRWTSK.NumberTheory.Moebius.GaussianLogHeatSource
open GRWTSK.NumberTheory.Moebius.CausalMertensSquareBridge

/-- An EXACT true-source PNT log-power estimate gives a
quantified exponent-one cancellation credit between the
POSITIVE and NEGATIVE ORIGINAL Möbius Gaussian polarities.
All original indices, squareful zeros, birth-gated response,
both ordered Gram orientations and physical T_J are retained.

The arithmetic input OriginalBalancedPNTLogPowerTarget
is the already named classical PNT estimate. It is NOT
a zero-free Re>1/2 or a full all-positive-rate premise. -/
theorem classical_PNT_forces_signed_gaussian_polarity_compensation
    (hPNT : OriginalBalancedPNTLogPowerTarget)
    (hPop : ElementarySquarefreeBandPopulationTarget)
    (hResponse : ElementarySquarefreeTerminalResponseTarget)
    (hIntegral : ElementaryTerminalRadiusIntegralTarget) :
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ J : ℕ, 9 ≤ J → 32 ≤ dyadicTime J →
        let T : ℝ := dyadicTime J
        let s : ℝ := rootRateHeatTime (1/2) T
        Real.exp T/65536 -
          (2*C*Real.exp T/(1+T)+4*T^2+32*T^5) ≤
            4*positiveNegativeHeatOverlap s T := by
  obtain ⟨C,hC,hCross⟩ := hPNT 1 (by omega)
  refine ⟨C,hC,?_⟩
  intro J hJ hT32
  let T : ℝ := dyadicTime J
  let s : ℝ := rootRateHeatTime (1/2) T
  have hT : 0 ≤ T := dyadicTime_nonneg J
  have hE : pickupEnergy T ≤
      2*T^2 + C*Real.exp T/(1+T) := by
    have hd := (pickupDiagonal_quadratic_bound hT).2
    have hc := hCross T hT
    have he := pickupEnergy_eq_diagonal_add_cross hT
    linarith
  have hs : 0 ≤ s := rootRateHeatTime_nonneg _ _
  have hOriginalHeat :
      sourceHeatEnergy s T ≤
        2*pickupEnergy T+2*sourceHeatRadiusEnergy s T :=
    heatEnergy_le_pickup_add_radius hs hT
  have hRadius :
      sourceHeatRadiusEnergy s T ≤ 16*T^5 := by
    simpa only [s] using
      halfRootHeat_radiusEnergy_le_quintic
        originalInverseRootInventory_closed_from_existing_source hT
  have hHeat :
      sourceHeatEnergy s T ≤
        2*C*Real.exp T/(1+T)+4*T^2+32*T^5 := by
    linarith [hOriginalHeat,hE,hRadius]
  have hUnsigned :
      Real.exp T/65536 ≤ unsignedHeatEnergy s T := by
    simpa only [s,T] using
      halfRoot_schedule_unsigned_heat_exponential_lower
        hPop hResponse hIntegral J hJ hT32
  have hEqual :=
    signedHeatCancellationDebt_eq_four_overlap s T
  unfold signedHeatCancellationDebt at hEqual
  dsimp only [T,s] at hUnsigned hHeat hEqual ⊢
  linarith

end GRWTSK.NumberTheory.Moebius.GaussianClassicalPNTPolarity
