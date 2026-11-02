/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusSubexponentialResolutionTransfer
import Mathlib.Tactic

/-!
# Physical two-bit observer: finite exceptional-source error certificates

The actual physical observer reports -1, 0 or +1 at the original integer
index. Even an invalid, missing or mismatched record cannot produce an
unbounded scalar: its readout is one of these three values. The ORIGINAL
Mobius coefficient is also in {-1,0,1}, so its signed coefficient error has
absolute magnitude at most two. None of this is an assertion of sensor
fidelity or a mechanism for calculating Mobius from geometry.

Fix ONE genuine finite set F of original positive integer indices. An
independently checked ExactOffFaults premise says the actual physical
stream is source-exact at every positive n outside F. This is a
RECONSTRUCTION premise, not inferred from the number of bits.

The explicitly selected source error radii are 2 at n in F and 0
otherwise. They are then genuine original-index ErrorCertificates.
Their inverse-sqrt weighted mass is uniformly bounded by the finite
original source sum over F, independent of T. Consequently the old
positive radius energy has at most linear-in-T cost, and source versus
observed signed energy have the same all-positive-rate growth class.

An actual Godel observer chart shift preserves the fixed-fault condition
and the same source-index radii. The independently needed all-positive-rate
observed waveform energy remains RH-strength. No finite sensor observation
or fault-list certificate asserts it.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.FiniteFaultPhysicalReturn

open MeasureTheory Set
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.AutomircronCanonicalPrimeTyping
open GRWTSK.NumberTheory.Moebius.PhysicalBitGramReturn
open GRWTSK.NumberTheory.Moebius.PhysicalMoebiusBitCodec
open GRWTSK.NumberTheory.Moebius.FinitePhaseDecoderBudget
open GRWTSK.NumberTheory.Moebius.WeightedDecoderEnergyTransfer
open GRWTSK.NumberTheory.Moebius.DecoderPositiveResponse
open GRWTSK.NumberTheory.Moebius.UnifiedObservationPortfolio
open GRWTSK.NumberTheory.Moebius.AdaptiveDecoderCertificates
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential
open GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity

/-- Every idealized two-polarization bit record, including a geometrically
invalid one, decodes into the bounded integer set {-1,0,1}. This is an
alphabet bound, not an admissibility or coefficient-correctness theorem. -/
theorem signedPhysicalRecord_abs_le_one
    (p : Parameters) (chart : ℝ) (r : PhysicalBitRecord) :
    |(readRecord p chart r : ℝ)| ≤ 1 := by
  unfold readRecord decodeSigned
  cases hpresence : polarizationBit p r.presence <;>
    cases hsign : polarizationBit p r.sign <;>
      simp [hpresence, hsign]

/-- An actually missing or mismatched source record reads zero, but that
does NOT license setting the original arithmetic coefficient to zero. -/
theorem physicalObservedCoeff_abs_le_one
    (p : Parameters) (chart : ℝ)
    (stream : PhysicalStream) (n : ℕ) :
    |PhysicalBitGramReturn.observedCoeff p chart stream n| ≤ 1 := by
  cases h : stream.sample n with
  | none =>
      simp [PhysicalBitGramReturn.observedCoeff, h]
  | some r =>
      by_cases hindex : r.index = n
      · simpa [PhysicalBitGramReturn.observedCoeff, h, hindex] using
          (signedPhysicalRecord_abs_le_one p chart r)
      · simp [PhysicalBitGramReturn.observedCoeff, h, hindex]

/-- Every physically READ coefficient, whether correct or not, has
a magnitude-two ORIGINAL-minus-readout bound. No prime or source is
dropped, and squareful coefficients remain distinct from missing data. -/
theorem physicalCoeff_error_abs_le_two
    (p : Parameters) (chart : ℝ)
    (stream : PhysicalStream) (n : ℕ) :
    |moebiusReal n -
      PhysicalBitGramReturn.observedCoeff p chart stream n| ≤ 2 := by
  have hmob := moebiusReal_abs_le_one n
  have hread := physicalObservedCoeff_abs_le_one p chart stream n
  have htri :
      |moebiusReal n -
        PhysicalBitGramReturn.observedCoeff p chart stream n| ≤
      |moebiusReal n| +
        |PhysicalBitGramReturn.observedCoeff p chart stream n| := by
    simpa only [sub_eq_add_neg, abs_neg] using
      (abs_add_le (moebiusReal n)
        (-PhysicalBitGramReturn.observedCoeff p chart stream n))
  linarith

/-- A finite collection of original integer indices whose readouts may
be incorrect. No time-dependent change of the EXCEPTION SET is allowed
in this stronger finite-fault theorem. -/
def ExactOffFaults
    (p : Parameters) (chart : ℝ)
    (stream : PhysicalStream) (F : Finset ℕ) : Prop :=
  ∀ n : ℕ, 1 ≤ n → n ∉ F →
    PhysicalBitGramReturn.observedCoeff p chart stream n =
      moebiusReal n

/-- Source radii are zero outside F and two inside F.
The 0 at a nonfault is a PROVED exactness claim, not an inference
from a missing reading or a zero-valued Mobius coefficient. -/
def faultRadius (F : Finset ℕ) (n : ℕ) : ℝ :=
  if n ∈ F then 2 else 0

/-- Exactness off F and the actual three-symbol physical range give
a source-indexed coefficient-error certificate over EVERY endpoint n. -/
theorem physical_fault_errorCertificate
    (p : Parameters) (chart : ℝ)
    (stream : PhysicalStream) (F : Finset ℕ)
    (T : ℝ) (hExact : ExactOffFaults p chart stream F) :
    ErrorCertificate physicalIndexPhase
      (physicalIndexRead p chart stream) (faultRadius F) T := by
  apply physical_stream_error_certificate p chart T stream
    (faultRadius F)
  intro n hn
  by_cases hF : n ∈ F
  · simpa [faultRadius, hF] using
      physicalCoeff_error_abs_le_two p chart stream n
  · have hn1 := (Finset.mem_Icc.mp hn).1
    have hsame := hExact n hn1 hF
    simp [faultRadius, hF, hsame]

/-- The finite fixed exceptional support has an actual, computable
nonnegative inverse-square-root cost. A zero integer in F contributes
zero weight and does not enter the original positive endpoint support. -/
def fixedFaultMass (F : Finset ℕ) : ℝ :=
  ∑ n ∈ F, (2 : ℝ) * (Real.sqrt (n : ℝ))⁻¹

theorem fixedFaultMass_nonneg (F : Finset ℕ) :
    0 ≤ fixedFaultMass F := by
  unfold fixedFaultMass
  apply Finset.sum_nonneg
  intro n hn
  exact mul_nonneg (by norm_num)
    (inv_nonneg.mpr (Real.sqrt_nonneg _))

/-- The original endpoint weighted mass is bounded by the SAME finite
source fault inventory at every height. No number of nonfault indices
is included and there is no exponential total-index-count factor. -/
theorem weightedFaultMass_le_fixed (F : Finset ℕ) (T : ℝ) :
    weightedErrorMass (faultRadius F) T ≤ fixedFaultMass F := by
  classical
  have hsubset :
      (endpointIndex T).filter (fun n => n ∈ F) ⊆ F := by
    intro n hn
    exact (Finset.mem_filter.mp hn).2
  calc
    weightedErrorMass (faultRadius F) T =
        ∑ n ∈ (endpointIndex T).filter (fun n => n ∈ F),
          (2 : ℝ) * (Real.sqrt (n : ℝ))⁻¹ := by
      unfold weightedErrorMass
      rw [Finset.sum_filter]
      apply Finset.sum_congr rfl
      intro n hn
      by_cases hF : n ∈ F
      · simp [faultRadius, hF]
      · simp [faultRadius, hF]
    _ ≤ fixedFaultMass F := by
      unfold fixedFaultMass
      exact Finset.sum_le_sum_of_subset_of_nonneg hsubset
        (fun n hnF hnNot =>
          mul_nonneg (by norm_num : (0 : ℝ) ≤ 2)
            (inv_nonneg.mpr (Real.sqrt_nonneg _)))

/-- The physical observer's true finite fault set, together with actual
source-exactness outside that set, supplies the old uniform error-mass
hypothesis for one fixed set G. This does NOT construct source exactness. -/
theorem physical_fixedFault_uniformWeightedError
    (p : Parameters)
    (chart : ℝ → ℝ) (stream : ℝ → PhysicalStream)
    (F : Finset ℕ) {G : Set ℝ}
    (hExact : ∀ T ∈ G, ExactOffFaults p (chart T) (stream T) F) :
    UniformWeightedErrorOn
      (fun _ : ℝ => physicalIndexPhase)
      (fun T => physicalIndexRead p (chart T) (stream T))
      (fun _ : ℝ => faultRadius F) G := by
  refine ⟨fixedFaultMass F, fixedFaultMass_nonneg F, ?_⟩
  intro T hTG hT
  exact ⟨physical_fault_errorCertificate p (chart T) (stream T) F T
        (hExact T hTG),
    weightedFaultMass_le_fixed F T⟩

/-- Uniform finite true source faults give a source-independent,
all-positive-rate positive-radius-energy allowance via the existing
physical-time causal response theorem. -/
theorem physical_fixedFault_radiusEnergy_subexponential
    (p : Parameters)
    (chart : ℝ → ℝ) (stream : ℝ → PhysicalStream)
    (F : Finset ℕ) {G : Set ℝ}
    (hExact : ∀ T ∈ G, ExactOffFaults p (chart T) (stream T) F) :
    SubexponentialOn (fun T : ℝ => radiusEnergy (faultRadius F) T) G :=
  radiusEnergy_subexponential_of_uniform_mass
    (fun _ : ℝ => physicalIndexPhase)
    (fun T => physicalIndexRead p (chart T) (stream T))
    (fun _ : ℝ => faultRadius F)
    (physical_fixedFault_uniformWeightedError p chart stream F hExact)

/-- A physical signed waveform whose actual source-index incorrect
records are confined to a fixed finite F is RH-energy equivalent to
the ORIGINAL signed Möbius waveform. The asymptotic bound for either
waveform is still an independent arithmetic proposition. -/
theorem physical_fixedFault_observedEnergy_iff_original
    (p : Parameters)
    (chart : ℝ → ℝ) (stream : ℝ → PhysicalStream)
    (F : Finset ℕ) {G : Set ℝ}
    (hExact : ∀ T ∈ G, ExactOffFaults p (chart T) (stream T) F) :
    SubexponentialOn
        (fun T => observedEnergy physicalIndexPhase
          (physicalIndexRead p (chart T) (stream T)) T) G ↔
      SubexponentialOn pickupEnergy G :=
  observedEnergy_subexponential_iff_pickupEnergy
    (fun _ : ℝ => physicalIndexPhase)
    (fun T => physicalIndexRead p (chart T) (stream T))
    (fun _ : ℝ => faultRadius F)
    (physical_fixedFault_uniformWeightedError p chart stream F hExact)

/-- Once an actual physical observation satisfies its still-open
all-rate observed-energy input and genuine fault-control premise,
the canonical existing good-scale RH theorem may be consumed.
This conditional implication constructs NO arithmetic cancellation. -/
theorem riemannHypothesis_of_physical_fixedFault_observedEnergy
    (p : Parameters)
    (chart : ℝ → ℝ) (stream : ℝ → PhysicalStream)
    (F : Finset ℕ) {G : Set ℝ}
    (hcover : AffineFrequent G)
    (hExact : ∀ T ∈ G, ExactOffFaults p (chart T) (stream T) F)
    (hObserved : SubexponentialOn
      (fun T => observedEnergy physicalIndexPhase
        (physicalIndexRead p (chart T) (stream T)) T) G) :
    _root_.RiemannHypothesis :=
  GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion.riemannHypothesis_of_energy_good_scales
    hcover
    ((physical_fixedFault_observedEnergy_iff_original
      p chart stream F hExact).mp hObserved)

/-- The actual Godel chart shift changes only the readout coordinates;
it cannot create a new fault or repair an incorrect original coefficient. -/
theorem exactOffFaults_godelShift
    (p : Parameters) (chart s : ℝ)
    (stream : PhysicalStream) (F : Finset ℕ)
    (hExact : ExactOffFaults p chart stream F) :
    ExactOffFaults p (chart + s)
      (PhysicalBitGramReturn.transferStream s stream) F := by
  intro n hn hnot
  rw [PhysicalBitGramReturn.observedCoeff_transfer]
  exact hExact n hn hnot

/-- Independent, decoder-compatible certificates may be combined
with the physical fixed-fault bound without losing the actual
source-indexed error term. -/
theorem physical_fault_radiusMeet_certified
    (p : Parameters) (chart : ℝ)
    (stream : PhysicalStream) (F : Finset ℕ)
    (eta : ℕ → ℝ) (T : ℝ)
    (hExact : ExactOffFaults p chart stream F)
    (hOther : ErrorCertificate physicalIndexPhase
      (physicalIndexRead p chart stream) eta T) :
    ErrorCertificate physicalIndexPhase
      (physicalIndexRead p chart stream)
      (radiusMeet (faultRadius F) eta) T :=
  errorCertificate_radiusMeet
    physicalIndexPhase (physicalIndexRead p chart stream)
    (faultRadius F) eta T
    (physical_fault_errorCertificate p chart stream F T hExact)
    hOther


/-! ## The faulty physical stream versus the COMPLETE all-residue source -/

/-- The FULL mixed-parity/nonunit residue energy and an actual possibly
faulty physical-bit energy compare in BOTH directions. The exact old
source energy is used as the common comparison, and only the certified
positive decoder-radius energy is charged. No individual class energy
is substituted for the square of the complete signed waveform. -/
theorem physical_fault_dyadic_residue_energy_comparison
    (p : Parameters) (chart : ℝ)
    (stream : PhysicalStream) (F : Finset ℕ)
    (j d : ℕ) [NeZero d]
    (hExact : ExactOffFaults p chart stream F) :
    (observedEnergy physicalIndexPhase
      (physicalIndexRead p chart stream) (GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint.dyadicTime j) ≤
        2 * GRWTSK.NumberTheory.Moebius.DyadicSignedResidueWaveform.completeResidueEnergy j d +
          2 * radiusEnergy (faultRadius F)
            (GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint.dyadicTime j)) ∧
    (GRWTSK.NumberTheory.Moebius.DyadicSignedResidueWaveform.completeResidueEnergy j d ≤
        2 * observedEnergy physicalIndexPhase
          (physicalIndexRead p chart stream)
            (GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint.dyadicTime j) +
          2 * radiusEnergy (faultRadius F)
            (GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint.dyadicTime j)) := by
  let T : ℝ := GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint.dyadicTime j
  have hT : 0 ≤ T :=
    GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint.dyadicTime_nonnegative j
  have hc : ErrorCertificate physicalIndexPhase
      (physicalIndexRead p chart stream) (faultRadius F) T :=
    physical_fault_errorCertificate p chart stream F T hExact
  have hforward :=
    observedEnergy_le_two_pickup_add_radius
      physicalIndexPhase (physicalIndexRead p chart stream)
      (faultRadius F) hT hc
  have hreverse :=
    pickupEnergy_le_two_observed_add_radius
      physicalIndexPhase (physicalIndexRead p chart stream)
      (faultRadius F) hT hc
  rw [GRWTSK.NumberTheory.Moebius.DyadicSignedResidueWaveform.completeResidueEnergy_eq_pickupEnergy]
  exact ⟨hforward, hreverse⟩

end GRWTSK.NumberTheory.Moebius.FiniteFaultPhysicalReturn
