/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusAdaptiveDecoderCertificates
import Mathlib.Tactic

/-!
# All-positive-rate error-mass transfer on the SAME source good scales

The previous positive causal response module proved
  radiusEnergy(eta,T) <= 4*T*weightedErrorMass(eta,T)^2.
Its initial reusable growth theorem required a uniformly bounded
weightedErrorMass on one fixed scale set G.

Here the mass may GROW. It suffices to certify the all-positive-rate
SubexponentialOn growth of the actual nonnegative weighted mass,
still computed over every ORIGINAL n in the closed endpoint inventory.
Splitting each requested positive exponent into two equal halves
pays one half for squaring a quarter-rate mass and the other half for
the real physical-time factor T. All constants and thresholds are
rate-dependent, but G itself is FIXED.

The result is a conservative quantified implication. No finite prime
bank, physical codec, RS interpolation, elliptic rank, M23 action, or
external conjecture supplies the required mass growth automatically.
Observed signed waveform energy remains a separate RH-strength input.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.SubexponentialResolutionTransfer

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.AutomircronCanonicalPrimeTyping
open GRWTSK.NumberTheory.Moebius.FinitePhaseDecoderBudget
open GRWTSK.NumberTheory.Moebius.WeightedDecoderEnergyTransfer
open GRWTSK.NumberTheory.Moebius.DecoderPositiveResponse
open GRWTSK.NumberTheory.Moebius.UnifiedObservationPortfolio
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential

universe u

/-- Every requested strictly positive rate is paid explicitly. The
coefficient-error mass need not be bounded, and no future-dependent
source index has been discarded. -/
theorem radiusEnergy_subexponential_of_mass_subexponential
    {Phase : Type u}
    (phase : ℝ → SourceAtom → Phase)
    (decode : ℝ → Phase → ℝ)
    (eta : ℝ → ℕ → ℝ) {G : Set ℝ}
    (hcert : ∀ T ∈ G, 0 ≤ T →
      ErrorCertificate (phase T) (decode T) (eta T) T)
    (hmass : SubexponentialOn
      (fun T => weightedErrorMass (eta T) T) G) :
    SubexponentialOn (fun T => radiusEnergy (eta T) T) G := by
  intro ε hε
  let δ : ℝ := ε / 4
  have hδ : 0 < δ := by dsimp [δ]; linarith
  have hhalf : 0 < ε / 2 := by linarith
  obtain ⟨C, R, hC, hR, hmassBound⟩ := hmass δ hδ
  let D : ℝ := 4 * C ^ 2 * (1 / (ε / 2))
  refine ⟨D, R, by dsimp [D]; positivity, hR, ?_⟩
  intro T hTG hRT
  have hT : 0 ≤ T := hR.trans hRT
  have hc := hcert T hTG hT
  have he : radiusEnergy (eta T) T ≤
      4 * T * weightedErrorMass (eta T) T ^ 2 :=
    radiusEnergy_le_time_mass (phase T) (decode T) (eta T) hT hc
  have hm0 : 0 ≤ weightedErrorMass (eta T) T :=
    weightedErrorMass_nonneg (phase T) (decode T) (eta T) T hc
  have hm : weightedErrorMass (eta T) T ≤
      C * Real.exp (δ * T) := hmassBound T hTG hRT
  have hce : 0 ≤ C * Real.exp (δ * T) :=
    mul_nonneg hC (Real.exp_pos _).le
  have hsq :
      weightedErrorMass (eta T) T ^ 2 ≤
        (C * Real.exp (δ * T)) ^ 2 :=
    (sq_le_sq₀ hm0 hce).mpr hm
  have hexpSquare :
      (C * Real.exp (δ * T)) ^ 2 =
        C ^ 2 * Real.exp ((ε / 2) * T) := by
    calc
      _ = C ^ 2 * (Real.exp (δ * T) * Real.exp (δ * T)) := by ring
      _ = C ^ 2 * Real.exp ((ε / 2) * T) := by
        rw [← Real.exp_add]
        have ht : δ * T + δ * T = (ε / 2) * T := by
          dsimp [δ]
          ring
        rw [ht]
  rw [hexpSquare] at hsq
  have htime : T ≤
      (1 / (ε / 2)) * Real.exp ((ε / 2) * T) := by
    simpa using pow_le_factorial_mul_exp hhalf hT 1
  have htimeExp : T * Real.exp ((ε / 2) * T) ≤
      (1 / (ε / 2)) * Real.exp (ε * T) := by
    calc
      T * Real.exp ((ε / 2) * T) ≤
          ((1 / (ε / 2)) * Real.exp ((ε / 2) * T)) *
            Real.exp ((ε / 2) * T) :=
        mul_le_mul_of_nonneg_right htime (Real.exp_pos _).le
      _ = (1 / (ε / 2)) * Real.exp (ε * T) := by
        calc
          ((1 / (ε / 2)) * Real.exp ((ε / 2) * T)) *
              Real.exp ((ε / 2) * T) =
            (1 / (ε / 2)) *
              (Real.exp ((ε / 2) * T) * Real.exp ((ε / 2) * T)) := by ring
          _ = (1 / (ε / 2)) * Real.exp (ε * T) := by
            rw [← Real.exp_add]
            have ht : (ε / 2) * T + (ε / 2) * T = ε * T := by ring
            rw [ht]
  calc
    radiusEnergy (eta T) T ≤
        4 * T * weightedErrorMass (eta T) T ^ 2 := he
    _ ≤ 4 * T * (C ^ 2 * Real.exp ((ε / 2) * T)) :=
      mul_le_mul_of_nonneg_left hsq (by positivity)
    _ = (4 * C ^ 2) * (T * Real.exp ((ε / 2) * T)) := by ring
    _ ≤ (4 * C ^ 2) * ((1 / (ε / 2)) * Real.exp (ε * T)) :=
      mul_le_mul_of_nonneg_left htimeExp (by positivity)
    _ = D * Real.exp (ε * T) := by
      dsimp [D]
      ring

/-- A source-certified, potentially growing subexponential weighted
coefficient-error mass preserves the observed/original signed energy
growth class, at all positive rates on one fixed G. -/
theorem observedEnergy_subexponential_iff_of_mass_subexponential
    {Phase : Type u}
    (phase : ℝ → SourceAtom → Phase)
    (decode : ℝ → Phase → ℝ)
    (eta : ℝ → ℕ → ℝ) {G : Set ℝ}
    (hcert : ∀ T ∈ G, 0 ≤ T →
      ErrorCertificate (phase T) (decode T) (eta T) T)
    (hmass : SubexponentialOn
      (fun T => weightedErrorMass (eta T) T) G) :
    SubexponentialOn
        (fun T => observedEnergy (phase T) (decode T) T) G ↔
      SubexponentialOn pickupEnergy G :=
  observedEnergy_subexponential_iff_of_radiusEnergy phase decode eta
    hcert
    (radiusEnergy_subexponential_of_mass_subexponential phase decode eta
      hcert hmass)

/-- The improvement to the earlier uniform weighted-error condition
enters the unchanged canonical RH consumer. This remains conditional
on the genuinely arithmetic observed signed waveform energy supplier. -/
theorem riemannHypothesis_of_observedEnergy_and_subexponential_mass
    {Phase : Type u}
    (phase : ℝ → SourceAtom → Phase)
    (decode : ℝ → Phase → ℝ)
    (eta : ℝ → ℕ → ℝ) {G : Set ℝ}
    (hcover : AffineFrequent G)
    (hcert : ∀ T ∈ G, 0 ≤ T →
      ErrorCertificate (phase T) (decode T) (eta T) T)
    (hmass : SubexponentialOn
      (fun T => weightedErrorMass (eta T) T) G)
    (hobserved : SubexponentialOn
      (fun T => observedEnergy (phase T) (decode T) T) G) :
    _root_.RiemannHypothesis :=
  GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion.riemannHypothesis_of_energy_good_scales
    hcover
    ((observedEnergy_subexponential_iff_of_mass_subexponential
      phase decode eta hcert hmass).mp hobserved)

/-- With the same original signed source, growing-mass control
also supplies a subexponential bound on the unified portfolio:
its positive-response energy branch is one of the MINIMUM choices.
There is no assumption that all other branches separately shrink. -/
theorem sourcePortfolio_subexponential_of_observed_and_mass
    {Phase : Type u} {W : WeierstrassCurve ℤ}
    (B : GRWTSK.NumberTheory.Moebius.EllipticFiberEndpointComparison.GoodPrimeBank W)
    (phase : ℝ → SourceAtom → Phase)
    (decode : ℝ → Phase → ℝ)
    (eta : ℝ → ℕ → ℝ)
    (εsource : ℝ → ℝ) (depth : ℝ → ℕ → ℕ)
    (primes : ℝ → Finset ℕ) {G : Set ℝ}
    (hcert : ∀ T ∈ G, 0 ≤ T →
      ErrorCertificate (phase T) (decode T) (eta T) T)
    (hmass : SubexponentialOn
      (fun T => weightedErrorMass (eta T) T) G)
    (hobserved : SubexponentialOn
      (fun T => observedEnergy (phase T) (decode T) T) G) :
    SubexponentialOn (fun T =>
      sourcePortfolioUpper B (phase T) (decode T) (eta T)
        (εsource T) T (depth T) (primes T)) G := by
  have hradius : SubexponentialOn
      (fun T => radiusEnergy (eta T) T) G :=
    radiusEnergy_subexponential_of_mass_subexponential
      phase decode eta hcert hmass
  intro ε hε
  obtain ⟨A, R, hA, hR, hobs⟩ := hobserved ε hε
  obtain ⟨D, S, hD, hS, hrad⟩ := hradius ε hε
  refine ⟨2 * A + 2 * D, max R S, by positivity,
    hR.trans (le_max_left R S), ?_⟩
  intro T hGT hTRS
  have hTR : R ≤ T := (le_max_left R S).trans hTRS
  have hTS : S ≤ T := (le_max_right R S).trans hTRS
  have hmin :
      sourcePortfolioUpper B (phase T) (decode T) (eta T)
        (εsource T) T (depth T) (primes T) ≤
        2 * observedEnergy (phase T) (decode T) T +
          2 * radiusEnergy (eta T) T := by
    unfold sourcePortfolioUpper
    exact (min_le_right _ _).trans
      ((min_le_right _ _).trans (min_le_left _ _))
  calc
    sourcePortfolioUpper B (phase T) (decode T) (eta T)
        (εsource T) T (depth T) (primes T) ≤
        2 * observedEnergy (phase T) (decode T) T +
          2 * radiusEnergy (eta T) T := hmin
    _ ≤ 2 * (A * Real.exp (ε * T)) +
          2 * (D * Real.exp (ε * T)) :=
      add_le_add
        (mul_le_mul_of_nonneg_left (hobs T hGT hTR)
          (by norm_num : (0 : ℝ) ≤ 2))
        (mul_le_mul_of_nonneg_left (hrad T hGT hTS)
          (by norm_num : (0 : ℝ) ≤ 2))
    _ = (2 * A + 2 * D) * Real.exp (ε * T) := by ring

end GRWTSK.NumberTheory.Moebius.SubexponentialResolutionTransfer
