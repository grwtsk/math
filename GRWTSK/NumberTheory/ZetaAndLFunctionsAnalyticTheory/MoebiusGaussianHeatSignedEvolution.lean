/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianStrongHeatUniformEnergy
import Mathlib.Tactic

/-!
# Exact signed heat evolution; fixed-heat uniform energy and residual debt

The fixed positive heat s>=1 has a genuinely unconditional uniform
source-specific bound on the ACTUAL signed HEATED energy:
  sourceHeatEnergy s T <=16*exp(2)*T  for every T>=0.
This does not bound the ORIGINAL unsmoothed signed Mobius energy, since
the full source-minus-heat residual remains.

At any heat time s and increment r, the true finite original-index
coefficient semigroup has an EXACT signed source defect:
  a_s(n)-a_(s+r)(n)=a_s(n)*(1-exp(-r*(log n)^2)).
The physical-time complete signed-square identity is:
  H_s(T)=H_(s+r)(T)+2*M_(s,r)(T)+E_(s,r)(T),
where M is the actual signed mixed time-integral of H_(s+r) waveform
against the complete signed increment wave, while E is the positive
square-integral of that increment. It is NOT the sum of independently
positive residue energies. It does not assert H_s monotone in s.

Consequently the genuine fixed-heat observed energy is no longer the
open RH-strength arithmetic supplier. But the positive reconstruction
radius energy at fixed s>=1 is still an independent, source-indexed
premise; assuming it is all-rate on a fixed AffineFrequent G returns
canonical RH through the already existing exact energy comparison.
In ordinary mathematics, the classical positive density of squarefree
integers makes this fixed-s>=1 positive-radius all-rate premise FALSE:
its radiusWave counts many absolute nonzero μ(n) on every large shell,
and its physical square-energy grows exponentially. This source does
NOT formalize that density theorem and therefore does NOT claim a
kernel-checked radius lower bound. The conditional RH statement below
is a diagnostic of an unusable supplier, not an RH proof strategy.
No RH completion is claimed.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.GaussianHeatSignedEvolution

open MeasureTheory Set
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.AutomircronCanonicalPrimeTyping
open GRWTSK.NumberTheory.Moebius.FiniteTorsionResolutionReturn
open GRWTSK.NumberTheory.Moebius.FinitePhaseDecoderBudget
open GRWTSK.NumberTheory.Moebius.WeightedDecoderEnergyTransfer
open GRWTSK.NumberTheory.Moebius.DecoderPositiveResponse
open GRWTSK.NumberTheory.Moebius.GaussianLogHeatSource
open GRWTSK.NumberTheory.Moebius.GaussianHeatStabilityReturn
open GRWTSK.NumberTheory.Moebius.GaussianStrongHeatUniformEnergy
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential

/-- Every source integer n retains the exact signed coefficient
increment under additional forward heat. No artificial new coefficient
or quotient replaces mu(n). -/
theorem sourceHeatCoeff_increment (s r : ℝ) (n : ℕ) :
    sourceHeatCoeff s n - sourceHeatCoeff (s + r) n =
      sourceHeatCoeff s n * (1 - logHeatMultiplier r n) := by
  rw [sourceHeatCoeff_semigroup]
  ring

/-- Full physical-time signed source increment between any two
heat parameters. Future integer births are retained as zero response,
and the complete original endpoint inventory is unchanged. -/
def heatIncrementWave (s r T u : ℝ) : ℝ :=
  sourceHeatWave s T u - sourceHeatWave (s + r) T u

/-- The heat increment is the literal finite original-source signed
sum, not an independently posited error or a positive variance. -/
theorem heatIncrementWave_eq_source_sum (s r T u : ℝ) :
    heatIncrementWave s r T u =
      ∑ n ∈ endpointIndex T,
        (sourceHeatCoeff s n *
          (1 - logHeatMultiplier r n)) * pickupResponse n u := by
  have hindex (q : ℝ) :
      sourceHeatWave q T u =
        ∑ n ∈ endpointIndex T,
          sourceHeatCoeff q n * pickupResponse n u := by
    unfold sourceHeatWave observedWave
    apply Finset.sum_congr rfl
    intro n hn
    unfold observedCoeff sourceHeatPhase
    rw [sourceIndex_encode (Finset.mem_Icc.mp hn).1]
  unfold heatIncrementWave
  rw [hindex s, hindex (s + r), ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  rw [← sub_mul, sourceHeatCoeff_increment]
  ring

/-- The actual signed mixed heat-energy term; it may be POSITIVE
or NEGATIVE because complete Mobius signs are not absolute-valued. -/
def heatMixedEnergy (s r T : ℝ) : ℝ :=
  ∫ u in (0 : ℝ)..T,
    sourceHeatWave (s + r) T u * heatIncrementWave s r T u

/-- Positive physical-time square of the ACTUAL signed increment,
not a sum of separate nonnegative original-source mode energies. -/
def heatIncrementEnergy (s r T : ℝ) : ℝ :=
  ∫ u in (0 : ℝ)..T, heatIncrementWave s r T u ^ 2

/-- Finite Gaussian HEAT parameter addition obeys an exact signed
physical-energy balance. Both mixed orientations are retained in
the 2*heatMixedEnergy term, and the increment's full square is paid.
This algebra is valid for arbitrary real s,r; positivity is NOT used. -/
theorem sourceHeatEnergy_exact_signed_balance
    (s r T : ℝ) :
    sourceHeatEnergy s T =
      sourceHeatEnergy (s + r) T +
        2 * heatMixedEnergy s r T + heatIncrementEnergy s r T := by
  have hfs : Continuous (sourceHeatWave s T) := by
    unfold sourceHeatWave
    exact observedWave_continuous sourceHeatPhase (sourceHeatCoeff s) T
  have hfg : Continuous (sourceHeatWave (s + r) T) := by
    unfold sourceHeatWave
    exact observedWave_continuous sourceHeatPhase (sourceHeatCoeff (s + r)) T
  have hd : Continuous (heatIncrementWave s r T) := by
    unfold heatIncrementWave
    exact hfs.sub hfg
  have hiG : IntervalIntegrable
      (fun u : ℝ => sourceHeatWave (s + r) T u ^ 2) volume 0 T :=
    (hfg.pow 2).intervalIntegrable 0 T
  have hiM : IntervalIntegrable
      (fun u : ℝ => (2 : ℝ) *
        (sourceHeatWave (s + r) T u * heatIncrementWave s r T u))
      volume 0 T :=
    (continuous_const.mul (hfg.mul hd)).intervalIntegrable 0 T
  have hiD : IntervalIntegrable
      (fun u : ℝ => heatIncrementWave s r T u ^ 2) volume 0 T :=
    (hd.pow 2).intervalIntegrable 0 T
  change
    (∫ u in (0 : ℝ)..T, sourceHeatWave s T u ^ 2) =
      (∫ u in (0 : ℝ)..T, sourceHeatWave (s + r) T u ^ 2) +
        2 * (∫ u in (0 : ℝ)..T,
          sourceHeatWave (s + r) T u * heatIncrementWave s r T u) +
        (∫ u in (0 : ℝ)..T, heatIncrementWave s r T u ^ 2)
  calc
    (∫ u in (0 : ℝ)..T, sourceHeatWave s T u ^ 2) =
        ∫ u in (0 : ℝ)..T,
          (sourceHeatWave (s + r) T u ^ 2 +
            2 * (sourceHeatWave (s + r) T u *
              heatIncrementWave s r T u)) +
            heatIncrementWave s r T u ^ 2 := by
      apply intervalIntegral.integral_congr
      intro u hu
      unfold heatIncrementWave
      ring
    _ = (∫ u in (0 : ℝ)..T, sourceHeatWave (s + r) T u ^ 2) +
        2 * (∫ u in (0 : ℝ)..T,
          sourceHeatWave (s + r) T u * heatIncrementWave s r T u) +
        (∫ u in (0 : ℝ)..T, heatIncrementWave s r T u ^ 2) := by
      rw [intervalIntegral.integral_add (hiG.add hiM) hiD,
        intervalIntegral.integral_add hiG hiM,
        intervalIntegral.integral_const_mul]
      ring

/-- HEAT-ENERGY monotonicity is EQUIVALENT to the signed mixed
source margin plus the increment square having the correct sign.
Positive heat coefficients or a PSD coefficient-space metric alone
cannot establish this signed full-Gram margin. -/
theorem heatEnergy_nonincreasing_iff_signed_margin (s r T : ℝ) :
    sourceHeatEnergy (s + r) T ≤ sourceHeatEnergy s T ↔
      0 ≤ 2 * heatMixedEnergy s r T + heatIncrementEnergy s r T := by
  have h := sourceHeatEnergy_exact_signed_balance s r T
  constructor <;> intro hh <;> linarith

/-- At a strong FIXED heat time s>=1 the independently bounded
HEATED observation leaves only the TRUE original source positive
reconstruction radius as an RH-strength supplier. Every term still
uses the real source-indexed moebius function. -/
theorem riemannHypothesis_of_strongHeat_radius_good_scales
    {s : ℝ} (hs : 1 ≤ s) {G : Set ℝ}
    (hcover : AffineFrequent G)
    (hradius : SubexponentialOn
      (fun T => sourceHeatRadiusEnergy s T) G) :
    _root_.RiemannHypothesis := by
  have hs0 : 0 ≤ s := (by norm_num : (0 : ℝ) ≤ 1).trans hs
  exact riemannHypothesis_of_heat_observation_and_radius
    (fun _ : ℝ => s) hcover
    (fun T hG hT => hs0)
    hradius
    (sourceHeatEnergy_subexponential_of_strong hs G)

/-- This theorem is a mathematical boundary, NOT a missing direct
proof of the radius premise: all-positive-rate control of the
positive reconstruction energy for fixed nonzero heat would imply
RH precisely because strong Gaussian heat already controls its
own signed energy. -/
theorem strongHeat_radius_supplier_is_RH_sufficient
    {s : ℝ} (hs : 1 ≤ s) {G : Set ℝ}
    (hcover : AffineFrequent G) :
    SubexponentialOn (fun T => sourceHeatRadiusEnergy s T) G →
      _root_.RiemannHypothesis :=
  riemannHypothesis_of_strongHeat_radius_good_scales hs hcover

end GRWTSK.NumberTheory.Moebius.GaussianHeatSignedEvolution
