/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianLogHeatSource
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusSubexponentialResolutionTransfer
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.DyadicSignedResidueWaveform
import Mathlib.Tactic

/-!
# Real heat stability of the original signed Möbius waveform

The EXACT source-valued Fourier-log Gaussian sourceHeatCoeff is
  μ_s(n) = μ(n)*exp(-s*(log n)^2), s >= 0.
No sign, zero, original integer n, causal birth, original cutoff, full
off-diagonal pair or physical-time energy is redefined.

The new heat observation is permitted to be SMALL only if its actual
signed waveform-energy supplier is proved on one fixed adequately covered
set of real times. A Gaussian semigroup in coefficient space does NOT
supply that inequality by positivity. The entire reconstruction radius
energy is an additional named analytic premise, never dropped.

The previous original-source signed energy, exact all-parity/nonunit
dyadic residue energy, and scalar RS endpoint all retain their old
normalization. A kernel/source identification with the Rodgers–Tao
de Bruijn–Newman H_t(z) or with the formal-research compensated Fourier
heat remains MISSING; negative deformation t=-4s in the arithmetic
log-frequency Dirichlet-series convention is only a multiplier analogy.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.GaussianHeatStabilityReturn

open MeasureTheory Set
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.AutomircronCanonicalPrimeTyping
open GRWTSK.NumberTheory.Moebius.FinitePhaseDecoderBudget
open GRWTSK.NumberTheory.Moebius.WeightedDecoderEnergyTransfer
open GRWTSK.NumberTheory.Moebius.DecoderPositiveResponse
open GRWTSK.NumberTheory.Moebius.GaussianLogHeatSource
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion
open GRWTSK.NumberTheory.Moebius.SubexponentialResolutionTransfer
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential

/-- A heat observation is a complete source-indexed decoder at
nonnegative heat time; its full signed error remains certified. -/
theorem heat_observation_source_certificate
    {s : ℝ} (hs : 0 ≤ s) (T : ℝ) :
    ErrorCertificate sourceHeatPhase (sourceHeatCoeff s)
      (sourceHeatRadius s) T :=
  sourceHeat_errorCertificate hs T

/-- Exact source-specific error energy is below the positive radius
energy, which retains the complete original causal Gram. -/
theorem signed_heat_reconstruction_energy_le_radius
    {s T : ℝ} (hs : 0 ≤ s) (hT : 0 ≤ T) :
    errorEnergy sourceHeatPhase (sourceHeatCoeff s) T ≤
      sourceHeatRadiusEnergy s T :=
  errorEnergy_le_radiusEnergy
    sourceHeatPhase (sourceHeatCoeff s) (sourceHeatRadius s)
    hT (sourceHeat_errorCertificate hs T)

/-- Every original signed ordered off-diagonal cross term remains
in the source. We use positivity of ONLY the true complete diagonal
to transport an upper bound from the entire signed energy. -/
theorem pickupCross_le_heat_energy_and_radius
    {s T : ℝ} (hs : 0 ≤ s) (hT : 0 ≤ T) :
    pickupCross T ≤
      2 * sourceHeatEnergy s T +
        2 * sourceHeatRadiusEnergy s T := by
  have hsrc := pickupEnergy_eq_diagonal_add_cross hT
  have hdiag := (pickupDiagonal_quadratic_bound hT).1
  have hheat := pickupEnergy_le_heat_add_radius hs hT
  linarith

/-- One and ONLY one quarter-unit curvature allowance connects the
actual source cross to its independently reconstructed endpoint. -/
theorem endpointSum_le_heat_energy_radius_quarter
    {s T : ℝ} (hs : 0 ≤ s) (hT : 0 ≤ T) :
    endpointSum T ≤
      2 * sourceHeatEnergy s T +
        2 * sourceHeatRadiusEnergy s T + (1 / 4 : ℝ) := by
  have hcross := pickupCross_le_heat_energy_and_radius hs hT
  have hc := (abs_le.mp (endpointSum_error hT)).2
  linarith

/-- Exact same all-parity and nonunit residue source energy on the
original dyadic scale. Heat does not separately square each class. -/
theorem complete_residue_energy_le_heat_with_radius
    (j d : ℕ) [NeZero d] {s : ℝ} (hs : 0 ≤ s) :
    GRWTSK.NumberTheory.Moebius.DyadicSignedResidueWaveform.completeResidueEnergy j d ≤
      2 * sourceHeatEnergy s (dyadicTime j) +
        2 * sourceHeatRadiusEnergy s (dyadicTime j) := by
  rw [GRWTSK.NumberTheory.Moebius.DyadicSignedResidueWaveform.completeResidueEnergy_eq_pickupEnergy]
  exact pickupEnergy_le_heat_add_radius hs (dyadicTime_nonnegative j)

/-- Reverse full signed-energy comparison; a Gaussian observation is
not claimed to be monotone in the physical causal Gram norm. -/
theorem heat_energy_le_complete_residue_with_radius
    (j d : ℕ) [NeZero d] {s : ℝ} (hs : 0 ≤ s) :
    sourceHeatEnergy s (dyadicTime j) ≤
      2 * GRWTSK.NumberTheory.Moebius.DyadicSignedResidueWaveform.completeResidueEnergy j d +
        2 * sourceHeatRadiusEnergy s (dyadicTime j) := by
  rw [GRWTSK.NumberTheory.Moebius.DyadicSignedResidueWaveform.completeResidueEnergy_eq_pickupEnergy]
  exact heatEnergy_le_pickup_add_radius hs (dyadicTime_nonnegative j)

/-- The already-proved source-specific radius-energy estimate gives a
complete physical-time error bill. The mass is NOT known subexponential
merely because it is finite at each T. -/
theorem heatRadiusEnergy_le_weighted_mass
    {s T : ℝ} (hs : 0 ≤ s) (hT : 0 ≤ T) :
    sourceHeatRadiusEnergy s T ≤
      4 * T * (weightedErrorMass (sourceHeatRadius s) T) ^ 2 := by
  exact radiusEnergy_le_time_mass
    sourceHeatPhase (sourceHeatCoeff s) (sourceHeatRadius s)
    hT (sourceHeat_errorCertificate hs T)

/-- Two-way preservation of the original all-positive-rate energy
class uses an explicit heat-radius budget on ONE fixed set G. -/
theorem heatEnergy_subexponential_iff_original
    (s : ℝ → ℝ) {G : Set ℝ}
    (hs : ∀ T ∈ G, 0 ≤ T → 0 ≤ s T)
    (hradius : SubexponentialOn
      (fun T => sourceHeatRadiusEnergy (s T) T) G) :
    SubexponentialOn
      (fun T => sourceHeatEnergy (s T) T) G ↔
      SubexponentialOn pickupEnergy G := by
  exact observedEnergy_subexponential_iff_of_radiusEnergy
    (fun _ : ℝ => sourceHeatPhase)
    (fun T => sourceHeatCoeff (s T))
    (fun T => sourceHeatRadius (s T))
    (fun T hG hT =>
      sourceHeat_errorCertificate (hs T hG hT) T)
    hradius

/-- A source-proved every-positive-rate bound on the actual
nonnegative heat radius weighted mass suffices to bound the
positive radius energy, without assuming a uniform fixed mass. -/
theorem heatRadiusEnergy_subexponential_of_mass
    (s : ℝ → ℝ) {G : Set ℝ}
    (hs : ∀ T ∈ G, 0 ≤ T → 0 ≤ s T)
    (hmass : SubexponentialOn
      (fun T => weightedErrorMass (sourceHeatRadius (s T)) T) G) :
    SubexponentialOn
      (fun T => sourceHeatRadiusEnergy (s T) T) G := by
  exact radiusEnergy_subexponential_of_mass_subexponential
    (fun _ : ℝ => sourceHeatPhase)
    (fun T => sourceHeatCoeff (s T))
    (fun T => sourceHeatRadius (s T))
    (fun T hG hT =>
      sourceHeat_errorCertificate (hs T hG hT) T)
    hmass

/-- The canonical RH consumer is strictly CONDITIONAL on the genuinely
arithmetic observed heat-energy supplier and the positive heat-error
supplier, on the SAME fixed affine-frequent G. Coefficient heat
contraction is not a producer of either growth premise. -/
theorem riemannHypothesis_of_heat_observation_and_radius
    (s : ℝ → ℝ) {G : Set ℝ}
    (hcover : AffineFrequent G)
    (hs : ∀ T ∈ G, 0 ≤ T → 0 ≤ s T)
    (hradius : SubexponentialOn
      (fun T => sourceHeatRadiusEnergy (s T) T) G)
    (hheat : SubexponentialOn
      (fun T => sourceHeatEnergy (s T) T) G) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_energy_good_scales hcover
    ((heatEnergy_subexponential_iff_original s hs hradius).mp hheat)

/-- Stronger SOURCE-EXACT conditional route with independently
supplied all-positive-rate heat-error mass, no uniform mass constant. -/
theorem riemannHypothesis_of_heat_observation_and_mass
    (s : ℝ → ℝ) {G : Set ℝ}
    (hcover : AffineFrequent G)
    (hs : ∀ T ∈ G, 0 ≤ T → 0 ≤ s T)
    (hmass : SubexponentialOn
      (fun T => weightedErrorMass (sourceHeatRadius (s T)) T) G)
    (hheat : SubexponentialOn
      (fun T => sourceHeatEnergy (s T) T) G) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_heat_observation_and_radius s hcover hs
    (heatRadiusEnergy_subexponential_of_mass s hs hmass) hheat

end GRWTSK.NumberTheory.Moebius.GaussianHeatStabilityReturn
