/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusPrimeSmoothOrbitEnergy
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusCausalGramCauchy
import GRWTSK.Combinatorics.GraphTheory.FiniteWeakGramPairs
import Mathlib

/-!
# Weak/strong decomposition of complete prime-smooth orbit cross energy

The selected-prime orbit source first forms one complete signed waveform for
all selected-prime dilations above a rough core.  This file then applies the
actual real Gram Cauchy mechanism to those COMPLETE orbit waveforms.

At the fixed source threshold

  tau(T) = (floor(exp T)+1)^(-6),

the entire ordered between-core packet having at least one orbit diagonal
below tau is paid by

  card(endpointIndex T)^2 * sqrt(tau(T) * internalOrbitEnergy(T)).

For every subcritical near-critical bank, the internal energy is already an
all-positive-rate allowance, so the weak orbit packet is also all-positive-
rate.  The remaining strong orbit packet is source-exactly equivalent to the
old complete between-core packet, and its negative side is paid.  Hence the
remaining one-sided RH-facing estimate is equivalent to an absolute bound on
one COMPLETE strong packet.

A companion ordinary-mathematical obstruction shows why this reduction cannot
finish by energy thresholds and Gram Cauchy alone: N identical normalized
vectors have total diagonal energy one and ordered cross N-1.  For every
threshold, the whole packet lies either in the weak or the strong sector.  The
actual Möbius orbit waveforms are not asserted to be identical; the example
only eliminates a generic energy-threshold bootstrap.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Set MeasureTheory

namespace GRWTSK.NumberTheory.Moebius.PrimeSmoothOrbitWeakStrong

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.PrimeSmoothOrbitEnergy
open GRWTSK.NumberTheory.Moebius.CausalGramCauchy
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteWeakGramPairs
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential

classical

/-- Complete orbit-square diagonal at one rough core. -/
def orbitDiagonal (B : PrimeBand) (T : ℝ) (q : ℕ) : ℝ :=
  primeSmoothOrbitGram B T q q

/-- Fixed physical weak-orbit threshold, chosen before observing any signs. -/
def orbitWeakThreshold (T : ℝ) : ℝ :=
  1 / (((⌊Real.exp T⌋₊ : ℝ) + 1) ^ 6)

/-- Ordered complete between-core packet with at least one low-energy orbit. -/
def primeSmoothOrbitWeakCross (B : PrimeBand) (T : ℝ) : ℝ :=
  ∑ q ∈ endpointIndex T, ∑ r ∈ endpointIndex T,
    if q ≠ r ∧
        min (orbitDiagonal B T q) (orbitDiagonal B T r) <
          orbitWeakThreshold T then
      primeSmoothOrbitGram B T q r
    else 0

/-- Literal complementary ordered strong-orbit packet. -/
def primeSmoothOrbitStrongCross (B : PrimeBand) (T : ℝ) : ℝ :=
  ∑ q ∈ endpointIndex T, ∑ r ∈ endpointIndex T,
    if q ≠ r ∧
        ¬ min (orbitDiagonal B T q) (orbitDiagonal B T r) <
          orbitWeakThreshold T then
      primeSmoothOrbitGram B T q r
    else 0

/-- Source-specific Gram Cauchy gate for complete selected-prime orbit
waveforms.  Its ordinary proof repeats the already published real quadratic
argument after finite continuity of each orbit waveform is established. -/
def PrimeSmoothOrbitGramCauchy : Prop :=
  ∀ (B : PrimeBand) (T : ℝ), 0 ≤ T →
    ∀ q ∈ endpointIndex T, ∀ r ∈ endpointIndex T,
      (primeSmoothOrbitGram B T q r) ^ 2 ≤
        orbitDiagonal B T q * orbitDiagonal B T r

/-- Elementary scalar consequence used to turn the preceding finite estimate
into an all-positive-rate allowance.  The review proves it from
`card(endpointIndex T) ≤ floor(exp T)` and
`orbitWeakThreshold=(floor(exp T)+1)^(-6)`. -/
def OrbitWeakScalarDecay : Prop :=
  ∀ (B : ℝ → PrimeBand) (T : ℝ), 0 ≤ T →
    (((endpointIndex T).card : ℝ) ^ 2) *
      Real.sqrt
        (orbitWeakThreshold T *
          primeSmoothOrbitInternalEnergy (B T) T) ≤
      Real.sqrt (primeSmoothOrbitInternalEnergy (B T) T)

/-- Every orbit diagonal is a literal square integral. -/
theorem orbitDiagonal_nonneg
    (B : PrimeBand) {T : ℝ} (hT : 0 ≤ T) (q : ℕ) :
    0 ≤ orbitDiagonal B T q := by
  unfold orbitDiagonal primeSmoothOrbitGram
  exact intervalIntegral.integral_nonneg_of_forall hT
    (fun u => mul_self_nonneg (primeSmoothOrbitWaveform B T q u))

/-- One orbit diagonal is a nonnegative summand of the complete internal
selected-prime orbit energy. -/
theorem orbitDiagonal_le_internal
    (B : PrimeBand) {T : ℝ} (hT : 0 ≤ T)
    (q : ℕ) (hq : q ∈ endpointIndex T) :
    orbitDiagonal B T q ≤ primeSmoothOrbitInternalEnergy B T := by
  unfold primeSmoothOrbitInternalEnergy
  exact Finset.single_le_sum
    (fun r hr hne => orbitDiagonal_nonneg B hT r) hq

/-- Exact source partition.  No pair is omitted or counted twice. -/
theorem orbitCross_eq_weak_add_strong
    (B : PrimeBand) (T : ℝ) :
    primeSmoothOrbitCrossEnergy B T =
      primeSmoothOrbitWeakCross B T +
        primeSmoothOrbitStrongCross B T := by
  classical
  unfold primeSmoothOrbitCrossEnergy primeSmoothOrbitWeakCross
    primeSmoothOrbitStrongCross
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro q hq
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro r hr
  by_cases hqr : q = r
  · simp [hqr]
  · by_cases hw :
      min (orbitDiagonal B T q) (orbitDiagonal B T r) <
        orbitWeakThreshold T
    · simp [hqr, hw]
    · simp [hqr, hw]

/-- Exact finite weak-orbit estimate from the complete orbit Gram Cauchy
inequality and the actual internal orbit energy. -/
theorem orbitWeakCross_abs_le_card_sq_sqrt
    (hCS : PrimeSmoothOrbitGramCauchy)
    (B : PrimeBand) {T : ℝ} (hT : 0 ≤ T) :
    |primeSmoothOrbitWeakCross B T| ≤
      (((endpointIndex T).card : ℝ) ^ 2) *
        Real.sqrt
          (orbitWeakThreshold T *
            primeSmoothOrbitInternalEnergy B T) := by
  have hq : 0 ≤ orbitWeakThreshold T := by
    unfold orbitWeakThreshold
    positivity
  have hI : 0 ≤ primeSmoothOrbitInternalEnergy B T :=
    primeSmoothOrbitInternalEnergy_nonneg B hT
  have hd : ∀ q ∈ endpointIndex T,
      0 ≤ orbitDiagonal B T q ∧
        orbitDiagonal B T q ≤ primeSmoothOrbitInternalEnergy B T := by
    intro q hqmem
    exact ⟨orbitDiagonal_nonneg B hT q,
      orbitDiagonal_le_internal B hT q hqmem⟩
  have hgram : ∀ q ∈ endpointIndex T, ∀ r ∈ endpointIndex T,
      (primeSmoothOrbitGram B T q r)^2 ≤
        orbitDiagonal B T q * orbitDiagonal B T r :=
    hCS B T hT
  change
    |∑ q ∈ endpointIndex T, ∑ r ∈ endpointIndex T,
      if q ≠ r ∧
        min (orbitDiagonal B T q) (orbitDiagonal B T r) <
          orbitWeakThreshold T
      then primeSmoothOrbitGram B T q r else 0| ≤ _
  exact selectedWeakCross_abs_le_card_sq_sqrt
    (endpointIndex T)
    (fun q r =>
      min (orbitDiagonal B T q) (orbitDiagonal B T r) <
        orbitWeakThreshold T)
    (orbitDiagonal B T) (primeSmoothOrbitGram B T)
    (orbitWeakThreshold T) (primeSmoothOrbitInternalEnergy B T)
    hq hI hd hgram
    (fun q hqmem r hr hsel => hsel)

/-- The low-orbit-energy packet is globally all-positive-rate once the same-
core internal energy has been paid. -/
theorem orbitWeakCross_allRate
    (hCS : PrimeSmoothOrbitGramCauchy)
    (hscalar : OrbitWeakScalarDecay)
    (B : ℝ → PrimeBand)
    (hinternal : SubexponentialUpper
      (fun T => primeSmoothOrbitInternalEnergy (B T) T)) :
    SubexponentialUpper
      (fun T => |primeSmoothOrbitWeakCross (B T) T|) := by
  intro ε hε
  have h2ε : 0 < 2 * ε := by positivity
  obtain ⟨C, hC, hI⟩ := hinternal (2 * ε) h2ε
  refine ⟨Real.sqrt C, Real.sqrt_nonneg C, ?_⟩
  intro T hT
  have hweak := orbitWeakCross_abs_le_card_sq_sqrt hCS (B T) hT
  have hdecay := hscalar B T hT
  have hIT := hI T hT
  have hsqrtI :
      Real.sqrt (primeSmoothOrbitInternalEnergy (B T) T) ≤
        Real.sqrt C * Real.exp (ε * T) := by
    have hI0 := primeSmoothOrbitInternalEnergy_nonneg (B T) hT
    have hsI :
        (Real.sqrt (primeSmoothOrbitInternalEnergy (B T) T)) ^ 2 =
          primeSmoothOrbitInternalEnergy (B T) T :=
      Real.sq_sqrt hI0
    have hsC : (Real.sqrt C) ^ 2 = C := Real.sq_sqrt hC
    have hsq :
        (Real.sqrt C * Real.exp (ε * T)) ^ 2 =
          C * Real.exp ((2 * ε) * T) := by
      rw [mul_pow, hsC]
      rw [show (2 * ε) * T = ε * T + ε * T by ring,
        Real.exp_add]
      ring
    have hleft0 :
        0 ≤ Real.sqrt (primeSmoothOrbitInternalEnergy (B T) T) :=
      Real.sqrt_nonneg _
    have hright0 : 0 ≤ Real.sqrt C * Real.exp (ε * T) :=
      mul_nonneg (Real.sqrt_nonneg _) (Real.exp_pos _).le
    nlinarith [hIT]
  exact hweak.trans (hdecay.trans hsqrtI)

/-- Removing a globally paid weak packet does not change the one-sided
all-positive-rate obligation on a fixed good-scale set. -/
theorem strongCross_subexponentialOn_iff_cross
    (B : ℝ → PrimeBand)
    (hweak : SubexponentialUpper
      (fun T => |primeSmoothOrbitWeakCross (B T) T|))
    (G : Set ℝ) :
    SubexponentialOn
        (fun T => primeSmoothOrbitStrongCross (B T) T) G ↔
      SubexponentialOn
        (fun T => primeSmoothOrbitCrossEnergy (B T) T) G := by
  constructor
  · intro hstrong ε hε
    obtain ⟨Cs, Rs, hCs, hRs, hs⟩ := hstrong ε hε
    obtain ⟨Cw, hCw, hw⟩ := hweak ε hε
    refine ⟨Cs + Cw, Rs, add_nonneg hCs hCw, hRs, ?_⟩
    intro T hG hTR
    have hT : 0 ≤ T := hRs.trans hTR
    have hpart := orbitCross_eq_weak_add_strong (B T) T
    have hwT := hw T hT
    have hsT := hs T hG hTR
    have hweakUpper := le_trans (le_abs_self _) hwT
    rw [hpart]
    nlinarith
  · intro hcross ε hε
    obtain ⟨Cc, Rc, hCc, hRc, hc⟩ := hcross ε hε
    obtain ⟨Cw, hCw, hw⟩ := hweak ε hε
    refine ⟨Cc + Cw, Rc, add_nonneg hCc hCw, hRc, ?_⟩
    intro T hG hTR
    have hT : 0 ≤ T := hRc.trans hTR
    have hpart := orbitCross_eq_weak_add_strong (B T) T
    have hcT := hc T hG hTR
    have hwT := hw T hT
    have hminusWeak :
        -primeSmoothOrbitWeakCross (B T) T ≤
          Cw * Real.exp (ε * T) := by
      exact (neg_le_abs _).trans hwT
    linarith

/-- The negative side of the strong packet is paid by the same-core energy and
the already controlled weak packet. -/
theorem strongCross_negative_allRate
    (hdecomp : PrimeSmoothOrbitEnergyIdentity)
    (B : ℝ → PrimeBand)
    (hinternal : SubexponentialUpper
      (fun T => primeSmoothOrbitInternalEnergy (B T) T))
    (hweak : SubexponentialUpper
      (fun T => |primeSmoothOrbitWeakCross (B T) T|)) :
    SubexponentialUpper
      (fun T => -primeSmoothOrbitStrongCross (B T) T) := by
  intro ε hε
  obtain ⟨Ci, hCi, hi⟩ := hinternal ε hε
  obtain ⟨Cw, hCw, hw⟩ := hweak ε hε
  refine ⟨Ci + Cw, add_nonneg hCi hCw, ?_⟩
  intro T hT
  have hcross := primeSmoothOrbitCross_neg_le_internal
    hdecomp (B T) hT
  have hpart := orbitCross_eq_weak_add_strong (B T) T
  have hiT := hi T hT
  have hwT := hw T hT
  have hweakLower :
      -Cw * Real.exp (ε * T) ≤
        primeSmoothOrbitWeakCross (B T) T := by
    have := (neg_le_abs (primeSmoothOrbitWeakCross (B T) T)).trans hwT
    linarith
  linarith

/-- Once the negative side is paid, an upper estimate for the one COMPLETE
strong packet is equivalent to an absolute-value estimate. -/
theorem strongCross_abs_iff
    (hdecomp : PrimeSmoothOrbitEnergyIdentity)
    (B : ℝ → PrimeBand)
    (hinternal : SubexponentialUpper
      (fun T => primeSmoothOrbitInternalEnergy (B T) T))
    (hweak : SubexponentialUpper
      (fun T => |primeSmoothOrbitWeakCross (B T) T|))
    (G : Set ℝ) :
    SubexponentialOn
        (fun T => |primeSmoothOrbitStrongCross (B T) T|) G ↔
      SubexponentialOn
        (fun T => primeSmoothOrbitStrongCross (B T) T) G := by
  exact subexponentialOn_abs_iff_of_neg_global
    (strongCross_negative_allRate hdecomp B hinternal hweak) G

/-- Revised source-equivalent RH consumer.  Its arithmetic premise is the
complete strong orbit packet after the internal and weak packets are paid. -/
theorem riemannHypothesis_of_nearCritical_strongOrbit_good_scales
    (hdecomp : PrimeSmoothOrbitEnergyIdentity)
    (hfinite : PrimeSmoothOrbitInternalEulerBound)
    (hcost : NearCriticalPrimeSmoothOrbitCostAllRate)
    (hCS : PrimeSmoothOrbitGramCauchy)
    (hscalar : OrbitWeakScalarDecay)
    {α : ℝ} (hα0 : 0 ≤ α) (hα2 : α < 2)
    {G : Set ℝ} (hG : AffineFrequent G)
    (hstrong : SubexponentialOn
      (fun T => primeSmoothOrbitStrongCross
        (causalNearCriticalPrimeBand α T) T) G) :
    _root_.RiemannHypothesis := by
  let B : ℝ → PrimeBand := fun T => causalNearCriticalPrimeBand α T
  have hi : SubexponentialUpper
      (fun T => primeSmoothOrbitInternalEnergy (B T) T) :=
    nearCritical_internal_allRate hfinite hcost hα0 hα2
  have hw : SubexponentialUpper
      (fun T => |primeSmoothOrbitWeakCross (B T) T|) :=
    orbitWeakCross_allRate hCS hscalar B hi
  have hcross :=
    (strongCross_subexponentialOn_iff_cross B hw G).mp hstrong
  exact riemannHypothesis_of_nearCritical_orbitCross_good_scales
    hdecomp hfinite hcost hα0 hα2 hG hcross

/-- Exact formal target of the generic no-go theorem proved in the companion
review.  There are finite Gram systems with total diagonal one and ordered
cross N-1 such that every threshold places the whole cross packet in either
the weak or the strong sector.  This is not asserted of the actual Möbius
orbit system. -/
def AlignedGramThresholdObstruction : Prop :=
  ∀ N : ℕ, 1 ≤ N →
    ∃ (d : Fin N → ℝ) (k : Fin N → Fin N → ℝ),
      (∀ i, d i = 1 / (N : ℝ)) ∧
      (∀ i j, k i j = 1 / (N : ℝ)) ∧
      (∑ i, d i) = 1 ∧
      (∀ i j, (k i j)^2 ≤ d i * d j) ∧
      ∀ τ : ℝ,
        max
          |∑ i, ∑ j,
            if i ≠ j ∧ min (d i) (d j) < τ then k i j else 0|
          |∑ i, ∑ j,
            if i ≠ j ∧ ¬ min (d i) (d j) < τ then k i j else 0| =
          ((N - 1 : ℕ) : ℝ)

/-- Final disposition: the exact finite weak payment is a genuine reduction,
but the aligned-Gram obstruction proves that energy thresholds and Cauchy
alone cannot control the remaining complete strong packet. -/
def PrimeSmoothOrbitWeakStrongDisposition : Prop :=
  PrimeSmoothOrbitGramCauchy ∧
    OrbitWeakScalarDecay ∧
      AlignedGramThresholdObstruction

end GRWTSK.NumberTheory.Moebius.PrimeSmoothOrbitWeakStrong
