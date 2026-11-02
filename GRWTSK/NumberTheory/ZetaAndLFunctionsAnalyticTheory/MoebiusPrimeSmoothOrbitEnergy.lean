/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusPrimeSmoothFiniteConvolution
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.GoodScaleEnergyCriterion
import GRWTSK.MeasureAndIntegration.FiniteResponseSum
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusCausalMertensSquareEnergyIntegration
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusCausalMertensSpike
import Mathlib

/-!
# Selected-prime orbit energy for the original Möbius causal source

The exact finite prime-smooth convolution is transported to the unchanged
Möbius causal response.  All selected-prime dilations belonging to one rough
core are retained in one complete signed orbit waveform.  The internal orbit
energy is nonnegative and has the finite Euler allowance

  prod_{p in P} (1 + p^(-1/2))^2 * pickupDiagonal(T).

For prime banks up to the near-critical cutoff

  (1+T)^2 * (log(2+T))^alpha,  0 <= alpha < 2,

ordinary Chebyshev prime counting makes this allowance subexponential in
physical time.  Consequently the remaining between-core packet is
all-positive-rate on a fixed good-scale set iff the complete pickup energy is.

The source explicitly keeps the weighted convolution Fubini, causal dilation
bound, Euler support identity, and Chebyshev-to-all-rate estimate as named
proof obligations until checked Lean derivations are supplied.  No arithmetic
between-core cancellation, endpoint supplier, or RH proof is asserted.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Set MeasureTheory

namespace GRWTSK.NumberTheory.Moebius.PrimeSmoothOrbitEnergy

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.PrimeSmoothFiniteConvolution
open GRWTSK.NumberTheory.Moebius.BalancedTwoSidedPNTDense
open GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion
open GRWTSK.NumberTheory.Moebius.CausalMertensSquareEnergyIntegration
open GRWTSK.NumberTheory.Moebius.CausalMertensSpike
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential

classical

/-- Möbius restricted pointwise to selected-prime-smooth integers. -/
def selectedSmoothMobius (B : PrimeBand) : ArithmeticFunction ℤ :=
  ArithmeticFunction.moebius.pmul (smoothIndicator B)

/-- Real coefficient used by the original causal waveform. -/
def selectedSmoothMobiusReal (B : PrimeBand) (d : ℕ) : ℝ :=
  ((selectedSmoothMobius B d : ℤ) : ℝ)

/-- Finite Euler norm cost for one complete selected-prime delay orbit. -/
def primeSmoothOrbitCost (B : PrimeBand) : ℝ :=
  ∏ p ∈ B.primes, (1 + (Real.sqrt (p : ℝ))⁻¹) ^ 2

/-- Complete selected-prime orbit over one rough core, at the literal final
endpoint inventory.  The quotient cutoff is exact. -/
def primeSmoothOrbitWaveform
    (B : PrimeBand) (T : ℝ) (q : ℕ) (u : ℝ) : ℝ :=
  let N := ⌊Real.exp T⌋₊
  ((roughMobius B q : ℤ) : ℝ) *
    ∑ d ∈ Finset.Icc 1 (N / q),
      selectedSmoothMobiusReal B d * pickupResponse (d * q) u

/-- Original physical-time Gram between two complete rough-core orbits. -/
def primeSmoothOrbitGram
    (B : PrimeBand) (T : ℝ) (q r : ℕ) : ℝ :=
  ∫ u in (0 : ℝ)..T,
    primeSmoothOrbitWaveform B T q u *
      primeSmoothOrbitWaveform B T r u

/-- Sum of all same-core complete orbit squares. -/
def primeSmoothOrbitInternalEnergy (B : PrimeBand) (T : ℝ) : ℝ :=
  ∑ q ∈ endpointIndex T, primeSmoothOrbitGram B T q q

/-- Complete ordered signed packet between distinct rough cores. -/
def primeSmoothOrbitCrossEnergy (B : PrimeBand) (T : ℝ) : ℝ :=
  ∑ q ∈ endpointIndex T, ∑ r ∈ endpointIndex T,
    if q ≠ r then primeSmoothOrbitGram B T q r else 0

/-- Arithmetic inverse convolution.  Prime-power factors are `(1-X_p)` on
selected primes and on their complement in the rough factor, respectively. -/
def SelectedSmoothRoughConvolutionIdentity : Prop :=
  ∀ B : PrimeBand,
    selectedSmoothMobius B * roughMobius B =
      ArithmeticFunction.moebius

/-- Exact weighted finite convolution/Fubini statement for the unchanged
causal response and the final endpoint inventory. -/
def PrimeSmoothOrbitWaveformIdentity : Prop :=
  ∀ (B : PrimeBand) (T : ℝ), 0 ≤ T →
    ∀ u : ℝ, 0 ≤ u → u ≤ T →
      wholePickup u =
        ∑ q ∈ endpointIndex T, primeSmoothOrbitWaveform B T q u

/-- Exact energy expansion after the complete orbit waveforms have been
formed.  Both ordered cross-core orientations are retained. -/
def PrimeSmoothOrbitEnergyIdentity : Prop :=
  ∀ (B : PrimeBand) (T : ℝ), 0 ≤ T →
    pickupEnergy T =
      primeSmoothOrbitInternalEnergy B T +
        primeSmoothOrbitCrossEnergy B T

/-- Pointwise causal dilation estimate used in the finite Euler payment. -/
def PrimeSmoothResponseDilationBound : Prop :=
  ∀ (d q : ℕ), 1 ≤ d → 1 ≤ q →
    ∀ u : ℝ,
      0 ≤ pickupResponse (d * q) u ∧
      pickupResponse (d * q) u ≤
        (Real.sqrt (d : ℝ))⁻¹ * pickupResponse q u

/-- Exact squarefree selected-prime Euler support bound. -/
def SelectedSmoothEulerWeightBound : Prop :=
  ∀ (B : PrimeBand) (N : ℕ),
    (∑ d ∈ Finset.Icc 1 N,
      |selectedSmoothMobiusReal B d| / Real.sqrt (d : ℝ)) ≤
        ∏ p ∈ B.primes, (1 + (Real.sqrt (p : ℝ))⁻¹)

/-- Finite source-specific internal-energy estimate.  The companion review
proves it from the two preceding finite gates before any outer absolute value. -/
def PrimeSmoothOrbitInternalEulerBound : Prop :=
  ∀ (B : PrimeBand) (T : ℝ), 0 ≤ T →
    primeSmoothOrbitInternalEnergy B T ≤
      primeSmoothOrbitCost B * pickupDiagonal T

/-- The near-critical physical-time prime bank.  At nonnegative time its cutoff
is asymptotic to `T^2 * (log T)^alpha`. -/
def causalNearCriticalPrimeBand (α T : ℝ) : PrimeBand :=
  initialPrimeBand
    ⌊nearCriticalPrimeCutoff α ⌊Real.exp T⌋₊⌋₊

/-- Chebyshev/partial-summation allowance.  This is the remaining analytic
formalization gate for the internal orbit payment, not an arithmetic
cancellation premise. -/
def NearCriticalPrimeSmoothOrbitCostAllRate : Prop :=
  ∀ α : ℝ, 0 ≤ α → α < 2 →
    SubexponentialUpper
      (fun T =>
        primeSmoothOrbitCost (causalNearCriticalPrimeBand α T) *
          pickupDiagonal T)

/-- Each internal orbit term is a literal square integral. -/
theorem primeSmoothOrbitInternalEnergy_nonneg
    (B : PrimeBand) {T : ℝ} (hT : 0 ≤ T) :
    0 ≤ primeSmoothOrbitInternalEnergy B T := by
  unfold primeSmoothOrbitInternalEnergy primeSmoothOrbitGram
  apply Finset.sum_nonneg
  intro q hq
  exact intervalIntegral.integral_nonneg_of_forall hT
    (fun u => sq_nonneg (primeSmoothOrbitWaveform B T q u))

/-- The finite Euler estimate and near-critical cost imply a global
all-positive-rate allowance for every same-core orbit square. -/
theorem nearCritical_internal_allRate
    (hfinite : PrimeSmoothOrbitInternalEulerBound)
    (hcost : NearCriticalPrimeSmoothOrbitCostAllRate)
    {α : ℝ} (hα0 : 0 ≤ α) (hα2 : α < 2) :
    SubexponentialUpper
      (fun T => primeSmoothOrbitInternalEnergy
        (causalNearCriticalPrimeBand α T) T) := by
  exact (hcost α hα0 hα2).mono (fun T hT =>
    hfinite (causalNearCriticalPrimeBand α T) T hT)

/-- Once the internal selected-prime orbit energy is paid at all positive
rates, the remaining between-core packet is exactly equivalent to the complete
energy growth obligation on the same fixed good-scale set. -/
theorem orbitCross_subexponentialOn_iff_pickupEnergy
    (hdecomp : PrimeSmoothOrbitEnergyIdentity)
    (B : ℝ → PrimeBand)
    (hinternal : SubexponentialUpper
      (fun T => primeSmoothOrbitInternalEnergy (B T) T))
    (G : Set ℝ) :
    SubexponentialOn
        (fun T => primeSmoothOrbitCrossEnergy (B T) T) G ↔
      SubexponentialOn pickupEnergy G := by
  constructor
  · intro hcross
    have hsum := add_global hcross hinternal
    apply subexponentialOn_mono hsum
    intro T hG hT
    rw [hdecomp (B T) T hT]
    ring
  · intro henergy
    apply subexponentialOn_mono henergy
    intro T hG hT
    have hi := primeSmoothOrbitInternalEnergy_nonneg (B T) hT
    have hd := hdecomp (B T) T hT
    linarith


/-- The complete between-core packet cannot be more negative than the
same-core orbit energy.  This is an exact consequence of positivity of the
unchanged total causal energy, not a sectorwise positivity assertion. -/
theorem primeSmoothOrbitCross_neg_le_internal
    (hdecomp : PrimeSmoothOrbitEnergyIdentity)
    (B : PrimeBand) {T : ℝ} (hT : 0 ≤ T) :
    -primeSmoothOrbitCrossEnergy B T ≤
      primeSmoothOrbitInternalEnergy B T := by
  have henergy : 0 ≤ pickupEnergy T := by
    unfold pickupEnergy
    exact intervalIntegral.integral_nonneg_of_forall hT
      (fun u => sq_nonneg (wholePickup u))
  have hd := hdecomp B T hT
  linarith

/-- After the near-critical same-core payment, the NEGATIVE side of the
complete net between-core packet is already all-positive-rate.  The sole
RH-strength direction is its positive upper excursion. -/
theorem nearCritical_cross_negative_allRate
    (hdecomp : PrimeSmoothOrbitEnergyIdentity)
    (hfinite : PrimeSmoothOrbitInternalEulerBound)
    (hcost : NearCriticalPrimeSmoothOrbitCostAllRate)
    {α : ℝ} (hα0 : 0 ≤ α) (hα2 : α < 2) :
    SubexponentialUpper
      (fun T => -primeSmoothOrbitCrossEnergy
        (causalNearCriticalPrimeBand α T) T) := by
  have hi := nearCritical_internal_allRate hfinite hcost hα0 hα2
  exact hi.mono (fun T hT =>
    primeSmoothOrbitCross_neg_le_internal hdecomp
      (causalNearCriticalPrimeBand α T) hT)

/-- If the negative side of a real source is globally all-positive-rate, then
an upper bound for the complete signed source on fixed good scales is
equivalent to an absolute-value bound for that SAME complete source.  This
never licenses taking absolute values before forming the between-core sum. -/
theorem subexponentialOn_abs_iff_of_neg_global
    {f : ℝ → ℝ} (hneg : SubexponentialUpper (fun T => -f T))
    (G : Set ℝ) :
    SubexponentialOn (fun T => |f T|) G ↔
      SubexponentialOn f G := by
  constructor
  · intro habs
    exact subexponentialOn_mono habs
      (fun T hG hT => le_abs_self (f T))
  · intro hpos ε hε
    obtain ⟨C, R, hC, hR, hCb⟩ := hpos ε hε
    obtain ⟨D, hD, hDb⟩ := hneg ε hε
    refine ⟨C + D, R, add_nonneg hC hD, hR, ?_⟩
    intro T hG hTR
    have hT : 0 ≤ T := hR.trans hTR
    have hp := hCb T hG hTR
    have hn := hDb T hT
    have hexp : 0 ≤ Real.exp (ε * T) := (Real.exp_pos _).le
    have hupper : f T ≤ (C + D) * Real.exp (ε * T) := by
      exact hp.trans (mul_le_mul_of_nonneg_right
        (le_add_of_nonneg_right hD) hexp)
    have hlower : -((C + D) * Real.exp (ε * T)) ≤ f T := by
      have hDn : D * Real.exp (ε * T) ≤
          (C + D) * Real.exp (ε * T) :=
        mul_le_mul_of_nonneg_right (le_add_of_nonneg_left hC) hexp
      linarith
    exact (abs_le).2 ⟨hlower, hupper⟩

/-- For a near-critical bank, absolute control of the COMPLETE net
between-core packet is equivalent to the one-sided RH-facing control.  The
absolute value is outside the full signed packet, never outside its sectors. -/
theorem nearCritical_orbitCross_abs_iff
    (hdecomp : PrimeSmoothOrbitEnergyIdentity)
    (hfinite : PrimeSmoothOrbitInternalEulerBound)
    (hcost : NearCriticalPrimeSmoothOrbitCostAllRate)
    {α : ℝ} (hα0 : 0 ≤ α) (hα2 : α < 2)
    (G : Set ℝ) :
    SubexponentialOn
        (fun T => |primeSmoothOrbitCrossEnergy
          (causalNearCriticalPrimeBand α T) T|) G ↔
      SubexponentialOn
        (fun T => primeSmoothOrbitCrossEnergy
          (causalNearCriticalPrimeBand α T) T) G := by
  exact subexponentialOn_abs_iff_of_neg_global
    (nearCritical_cross_negative_allRate
      hdecomp hfinite hcost hα0 hα2) G

/-- The newest source-exact Mertens-Abel integration also bounds the COMPLETE
between-core packet from above, because the paid internal orbit energy is
nonnegative.  This is a comparison theorem, not a quantitative Mertens input. -/
theorem primeSmoothOrbitCross_le_absMertensEnergy
    (hdecomp : PrimeSmoothOrbitEnergyIdentity)
    (B : PrimeBand) (T : ℝ) (hT : 0 ≤ T) :
    primeSmoothOrbitCrossEnergy B T ≤
      ∫ u in (0 : ℝ)..T,
        absMertensDropWave ⌊Real.exp T⌋₊ u ^ 2 := by
  have hi := primeSmoothOrbitInternalEnergy_nonneg B hT
  have hd := hdecomp B T hT
  have hm := pickupEnergy_le_integral_absMertensDrops T hT
  linarith

/-- Coarser positive Mertens-square Gram-drop comparison for the same complete
between-core packet.  The companion review records its unavoidable
half-exponent Cauchy loss. -/
theorem primeSmoothOrbitCross_le_MertensSquareGramDrop
    (hdecomp : PrimeSmoothOrbitEnergyIdentity)
    (B : PrimeBand) (T : ℝ) (hT : 0 ≤ T) :
    primeSmoothOrbitCrossEnergy B T ≤
      ∑ k ∈ Finset.range ⌊Real.exp T⌋₊,
        finiteMertensPrefix (k + 1) ^ 2 *
          (pickupResponseGram T 1 (k + 1) -
            pickupResponseGram T 1 (k + 2)) := by
  have hi := primeSmoothOrbitInternalEnergy_nonneg B hT
  have hd := hdecomp B T hT
  have hm := pickupEnergy_le_MertensSquareGramDrop T hT
  linarith

/-- Sharp ordinary-mathematical threshold for paying selected-prime orbits by
the absolute half-weight Euler cost.  PNT gives
`log cost ~ 4*sqrt(Y)/log Y`; for
`Y=T^2*(log T)^alpha` this is `~2*T*(log T)^(alpha/2-1)`.
The subcritical clause is already represented by
`NearCriticalPrimeSmoothOrbitCostAllRate`; the critical/supercritical clauses
remain visible analytic formalization targets. -/
def PrimeSmoothOrbitEulerCostPhaseTransition : Prop :=
  (∀ α : ℝ, 0 ≤ α → α < 2 →
    SubexponentialUpper
      (fun T => primeSmoothOrbitCost
        (causalNearCriticalPrimeBand α T))) ∧
  (¬ SubexponentialUpper
      (fun T => primeSmoothOrbitCost
        (causalNearCriticalPrimeBand 2 T))) ∧
  (∀ α : ℝ, 2 < α →
    ∀ ε : ℝ, 0 < ε →
      ∀ C : ℝ, 0 ≤ C →
        ∃ T : ℝ, 0 ≤ T ∧
          C * Real.exp (ε * T) <
            primeSmoothOrbitCost
              (causalNearCriticalPrimeBand α T))


/-- The paper-proved fifth-power Mertens spike detector localizes inside the
complete net between-core packet after the same-core orbit payment.  This is
an exact finite inequality with the spike theorem left as its visible premise.
No strict Mertens power saving is assumed or concluded here. -/
theorem mertensSpike_forces_orbitCross_budget
    (hspike : OriginalPickupMertensSpikeLocalLowerTarget)
    (hdecomp : PrimeSmoothOrbitEnergyIdentity)
    (hfinite : PrimeSmoothOrbitInternalEulerBound)
    (B : PrimeBand) (N : ℕ) (hN : 1 ≤ N) :
    |finiteMertensPrefix N| ^ 5 ≤
      1944 * (N : ℝ) ^ 4 *
        (primeSmoothOrbitCrossEnergy B
            (Real.log ((N : ℝ) + |finiteMertensPrefix N| / 2)) +
          primeSmoothOrbitCost B *
            pickupDiagonal
              (Real.log ((N : ℝ) + |finiteMertensPrefix N| / 2))) := by
  let T : ℝ := Real.log ((N : ℝ) + |finiteMertensPrefix N| / 2)
  have hbase : 0 ≤ Real.log (N : ℝ) := by
    apply Real.log_nonneg
    exact_mod_cast hN
  have harg : (1 : ℝ) ≤ (N : ℝ) + |finiteMertensPrefix N| / 2 := by
    have hcast : (1 : ℝ) ≤ (N : ℝ) := by exact_mod_cast hN
    linarith [abs_nonneg (finiteMertensPrefix N)]
  have hT : 0 ≤ T := Real.log_nonneg harg
  have henergy0 : 0 ≤ pickupEnergy (Real.log (N : ℝ)) := by
    unfold pickupEnergy
    exact intervalIntegral.integral_nonneg_of_forall hbase
      (fun u => sq_nonneg (wholePickup u))
  have hs := hspike N hN
  have hs' :
      |finiteMertensPrefix N| ^ 5 ≤
        1944 * (N : ℝ) ^ 4 * pickupEnergy T := by
    dsimp [T]
    have hfac : 0 ≤ 1944 * (N : ℝ) ^ 4 := by positivity
    exact hs.trans (mul_le_mul_of_nonneg_left
      (sub_le_self _ henergy0) hfac)
  have hi := hfinite B T hT
  have hd := hdecomp B T hT
  have hupper :
      pickupEnergy T ≤
        primeSmoothOrbitCrossEnergy B T +
          primeSmoothOrbitCost B * pickupDiagonal T := by
    rw [hd]
    linarith
  have hfac : 0 ≤ 1944 * (N : ℝ) ^ 4 := by positivity
  exact hs'.trans (mul_le_mul_of_nonneg_left hupper hfac)

/-- Ordinary-mathematical asymptotic consequence of the preceding exact
inequality.  For a subcritical bank, any actual Mertens spike exponent
`theta>4/5` forces a positive complete between-core spike of exponent
`5*theta-4`, after an arbitrarily smaller all-rate internal allowance.
The detailed quantifier proof is recorded in the review and remains a visible
Lean formalization target. -/
def NearCriticalMertensSpikeForcesCrossGrowth : Prop :=
  ∀ α θ : ℝ, 0 ≤ α → α < 2 → (4 / 5 : ℝ) < θ →
    ∀ seq : ℕ → ℕ,
      Filter.Tendsto seq Filter.atTop Filter.atTop →
      (∀ j : ℕ,
        ((seq j : ℕ) : ℝ) ^ θ ≤
          |finiteMertensPrefix (seq j)|) →
      ∃ c : ℝ, 0 < c ∧
        ∀ᶠ j : ℕ in Filter.atTop,
          c * ((seq j : ℕ) : ℝ) ^ (5 * θ - 4) ≤
            primeSmoothOrbitCrossEnergy
              (causalNearCriticalPrimeBand α
                (Real.log ((seq j : ℝ) +
                  |finiteMertensPrefix (seq j)| / 2)))
              (Real.log ((seq j : ℝ) +
                |finiteMertensPrefix (seq j)| / 2))

/-- Conditional canonical RH return from the source-exact between-core packet.
The theorem does not construct its arithmetic premise. -/
theorem riemannHypothesis_of_nearCritical_orbitCross_good_scales
    (hdecomp : PrimeSmoothOrbitEnergyIdentity)
    (hfinite : PrimeSmoothOrbitInternalEulerBound)
    (hcost : NearCriticalPrimeSmoothOrbitCostAllRate)
    {α : ℝ} (hα0 : 0 ≤ α) (hα2 : α < 2)
    {G : Set ℝ} (hG : AffineFrequent G)
    (hcross : SubexponentialOn
      (fun T => primeSmoothOrbitCrossEnergy
        (causalNearCriticalPrimeBand α T) T) G) :
    _root_.RiemannHypothesis := by
  have hi := nearCritical_internal_allRate hfinite hcost hα0 hα2
  have henergy :=
    (orbitCross_subexponentialOn_iff_pickupEnergy hdecomp
      (fun T => causalNearCriticalPrimeBand α T) hi G).mp hcross
  exact riemannHypothesis_of_energy_good_scales hG henergy

/-- Full source disposition: the finite arithmetic/delay identities and
Chebyshev allowance are separate from the remaining RH-strength cross-core
cancellation. -/
def PrimeSmoothOrbitEnergyDisposition : Prop :=
  SelectedSmoothRoughConvolutionIdentity ∧
    PrimeSmoothOrbitWaveformIdentity ∧
      PrimeSmoothOrbitEnergyIdentity ∧
        PrimeSmoothResponseDilationBound ∧
          SelectedSmoothEulerWeightBound ∧
            PrimeSmoothOrbitInternalEulerBound ∧
              NearCriticalPrimeSmoothOrbitCostAllRate ∧
                PrimeSmoothOrbitEulerCostPhaseTransition ∧
                  NearCriticalMertensSpikeForcesCrossGrowth

end GRWTSK.NumberTheory.Moebius.PrimeSmoothOrbitEnergy
