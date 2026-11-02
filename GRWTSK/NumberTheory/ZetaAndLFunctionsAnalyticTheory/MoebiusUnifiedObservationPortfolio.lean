/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusIntegratedSourceAtlas
import Mathlib.Tactic

/-!
# A source-faithful RH certificate portfolio joining all actual return paths

The source is STILL the original complete signed ordered Möbius pickup.
Its exact prime typed, two-bit physical, projective/elliptic, Putnam sparse
plus dense, residue gauge and RS/endpoint representations are kept separate.

An arbitrary physical observer stream, including missing and incorrect
records, is embedded into the general decoder interface by preserving each
source integer as its phase. This adapter does NOT falsely claim bounded
phase capacity. The original signed observer defect is literally the
ordinary source-minus-decoded phase defect, not an independently selected
remainder. Real per-index error radii are still required to use any bound.

The portfolio's upper readouts are source-grounded:
  (1) canonical endpoint/curve and complete phase-pair error hybrid;
  (2) integer-rounded source-derived RS endpoint with its full 3T cost;
  (3) actual observed signed waveform energy and positive radius energy;
  (4) true matched elliptic packet and ABSOLUTE complete signed residual;
  (5) original Putnam signed sparse gap and ABSOLUTE dense long-gap residual.
A minimum of independent source upper certificates never double-counts
negative credit, erases a sector, or weakens the old bound. It is only
useful when its selected certificate has genuine asymptotic control.

A sixth optional measured geometric/Weil/Connes/Chowla/Tao/RS certificate
can join by MINIMUM ONLY after it supplies an actual pickupCross upper bound,
not a finite surrogate, attractive geometry or a new loss axiom.

The original all-positive-rate source growth on ONE fixed affinely
frequent set remains OPEN; the terminal RH theorem is strictly conditional.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.UnifiedObservationPortfolio

open MeasureTheory Set
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.AutomircronCanonicalPrimeTyping
open GRWTSK.NumberTheory.Moebius.FiniteTorsionResolutionReturn
open GRWTSK.NumberTheory.Moebius.FinitePhaseDecoderBudget
open GRWTSK.NumberTheory.Moebius.WeightedDecoderEnergyTransfer
open GRWTSK.NumberTheory.Moebius.DecoderPositiveResponse
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion
open GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof
open GRWTSK.NumberTheory.Moebius.SourceReturnAtlas
open GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential

universe u v

/-! ## Missing/mismatched physical streams are ordinary source decoders -/

/-- This phase retains the ORIGINAL unbounded source integer. It is
NOT a finite-torsion compression of all positive integers. -/
def physicalIndexPhase : SourceAtom → ℕ := sourceIndex

/-- Physical source readout, with explicit missing/wrong-index handling
in the imported physical-stream source. -/
def physicalIndexRead (p : Parameters) (chart : ℝ)
    (stream : PhysicalBitGramReturn.PhysicalStream) (n : ℕ) : ℝ :=
  PhysicalBitGramReturn.observedCoeff p chart stream n

/-- One indexed physical readout agrees with the general phase decoder
at every positive integer in the original source. -/
theorem physical_coeff_eq (p : Parameters) (chart : ℝ)
    (stream : PhysicalBitGramReturn.PhysicalStream)
    (n : ℕ) (hn : 1 ≤ n) :
    observedCoeff physicalIndexPhase
      (physicalIndexRead p chart stream) n =
    PhysicalBitGramReturn.observedCoeff p chart stream n := by
  unfold observedCoeff physicalIndexPhase physicalIndexRead
  rw [sourceIndex_encode hn]

/-- Exact equality of BOTH ordered physical and phase-decoder packets,
even for incomplete, wrong-indexed or incorrectly polarized streams. -/
theorem physical_packet_eq_phase_observed (p : Parameters) (chart T : ℝ)
    (stream : PhysicalBitGramReturn.PhysicalStream) :
    PhysicalBitGramReturn.observedPacket p chart T stream =
      observedCross physicalIndexPhase
        (physicalIndexRead p chart stream) T := by
  classical
  unfold PhysicalBitGramReturn.observedPacket observedCross
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  by_cases h : m ≠ n
  · simp only [if_pos h, observedKernel,
      PhysicalBitGramReturn.observedKernel,
      physical_coeff_eq p chart stream m (Finset.mem_Icc.mp hm).1,
      physical_coeff_eq p chart stream n (Finset.mem_Icc.mp hn).1]
  · simp [h]

/-- The complete signed missing/incorrect physical observer defect is
IDENTICAL to the arbitrary-index decoder loss; no term is erased by
a missing record or by treating zero as a signed coefficient. -/
theorem physical_defect_eq_phase_signedLoss (p : Parameters) (chart T : ℝ)
    (stream : PhysicalBitGramReturn.PhysicalStream) :
    PhysicalBitGramReturn.signedReadoutDefect p chart T stream =
      signedLoss physicalIndexPhase
        (physicalIndexRead p chart stream) T := by
  classical
  unfold PhysicalBitGramReturn.signedReadoutDefect signedLoss
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  by_cases h : m ≠ n
  · simp only [if_pos h, observedKernel,
      PhysicalBitGramReturn.observedKernel,
      physical_coeff_eq p chart stream m (Finset.mem_Icc.mp hm).1,
      physical_coeff_eq p chart stream n (Finset.mem_Icc.mp hn).1]
  · simp [h]

/-- An independently checked error radius for EVERY original integer
makes a physical stream eligible for quantitative radius-energy bounds.
No source missingness or hardware reliability is assumed away. -/
theorem physical_stream_error_certificate
    (p : Parameters) (chart T : ℝ)
    (stream : PhysicalBitGramReturn.PhysicalStream)
    (eta : ℕ → ℝ)
    (hradius : ∀ n ∈ endpointIndex T,
      |moebiusReal n -
        PhysicalBitGramReturn.observedCoeff p chart stream n| ≤ eta n) :
    ErrorCertificate physicalIndexPhase
      (physicalIndexRead p chart stream) eta T := by
  intro n hn
  change
    |moebiusReal n -
      observedCoeff physicalIndexPhase
        (physicalIndexRead p chart stream) n| ≤ eta n
  rw [physical_coeff_eq p chart stream n (Finset.mem_Icc.mp hn).1]
  exact hradius n hn

/-- The actual Gödel transfer preserves the scalar at each integer,
including missing and wrongly indexed physical records. -/
theorem physical_readout_shift (p : Parameters) (chart s : ℝ)
    (stream : PhysicalBitGramReturn.PhysicalStream) (n : ℕ) :
    physicalIndexRead p (chart + s)
        (PhysicalBitGramReturn.transferStream s stream) n =
      physicalIndexRead p chart stream n :=
  PhysicalBitGramReturn.observedCoeff_transfer p chart s stream n

/-! ## One complete portfolio of independent original-source upper bounds -/

/-- Five source-specific upper readouts, with no double counting.
The elliptic term keeps its complete signed residual until the ABS step;
the sparse term keeps the entire dense long-gap source.
The observed energy term squares the ORIGINAL signed response waveform. -/
def sourcePortfolioUpper
    {Phase : Type u} {W : WeierstrassCurve ℤ}
    (B : EllipticFiberEndpointComparison.GoodPrimeBank W)
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta : ℕ → ℝ) (ε T : ℝ)
    (depth : ℕ → ℕ) (primes : Finset ℕ) : ℝ :=
  min (phaseHybridUpper phase decode eta T depth primes)
    (min
      (GRWTSK.NumberTheory.Moebius.PickupSignedQuadrature.roundedObservation T +
        3 * T)
      (min
        (2 * observedEnergy phase decode T + 2 * radiusEnergy eta T)
        (min
          (EllipticFiberEndpointComparison.matchedEllipticPacket B T +
            |EllipticFiberEndpointComparison.fullSignedResidual B T|)
          (GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting.endpointGapSetCross
            (putnamRateGapSet ε T) T + |denseLongGapSource ε T|))))

/-- The energy route bounds the original OFF-DIAGONAL cross because the
actual diagonal is nonnegative. It does not make individual mixed pairs
nonnegative or assume an all-positive-rate error supplier. -/
theorem cross_le_decoder_energy_upper
    {Phase : Type u}
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta : ℕ → ℝ) {T : ℝ} (hT : 0 ≤ T)
    (hcert : ErrorCertificate phase decode eta T) :
    pickupCross T ≤
      2 * observedEnergy phase decode T + 2 * radiusEnergy eta T := by
  have hsrc := pickupEnergy_eq_diagonal_add_cross hT
  have hdiag := (pickupDiagonal_quadratic_bound hT).1
  have henergy :=
    pickupEnergy_le_two_observed_add_radius phase decode eta hT hcert
  linarith

/-- The FULL ORIGINAL signed pickup is below every portfolio readout
under TRUE source-indexed coefficient errors and genuine selected primes.
No estimate is assumed for the elliptic or dense remaining residual. -/
theorem cross_le_sourcePortfolioUpper
    {Phase : Type u} {W : WeierstrassCurve ℤ}
    (B : EllipticFiberEndpointComparison.GoodPrimeBank W)
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta : ℕ → ℝ) (ε : ℝ)
    {T : ℝ} (hT : 0 ≤ T)
    (depth : ℕ → ℕ) (primes : Finset ℕ)
    (hp : ∀ p ∈ primes, p.Prime)
    (hcert : ErrorCertificate phase decode eta T) :
    pickupCross T ≤
      sourcePortfolioUpper B phase decode eta ε T depth primes := by
  unfold sourcePortfolioUpper
  apply le_min
  · exact pickupCross_le_phaseHybridUpper
      phase decode eta hT depth primes hp hcert
  apply le_min
  · exact GRWTSK.NumberTheory.Moebius.PickupSignedQuadrature.cross_le_roundedObservation_add hT
  apply le_min
  · exact cross_le_decoder_energy_upper phase decode eta hT hcert
  apply le_min
  · have hsource :=
      EllipticFiberEndpointComparison.pickupCross_eq_elliptic_add_full_residual B T
    have hres := le_abs_self
      (EllipticFiberEndpointComparison.fullSignedResidual B T)
    linarith
  · have hres := le_abs_self (denseLongGapSource ε T)
    unfold denseLongGapSource at hres ⊢
    linarith

/-- The new portfolio never worsens the already published endpoint/curve
and phase-decoder hybrid, even when other certificates are very weak. -/
theorem sourcePortfolioUpper_le_old
    {Phase : Type u} {W : WeierstrassCurve ℤ}
    (B : EllipticFiberEndpointComparison.GoodPrimeBank W)
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta : ℕ → ℝ) (ε T : ℝ)
    (depth : ℕ → ℕ) (primes : Finset ℕ) :
    sourcePortfolioUpper B phase decode eta ε T depth primes ≤
      endpointHybridUpper T depth primes := by
  unfold sourcePortfolioUpper
  exact (min_le_left _ _).trans
    (phaseHybridUpper_le_previous phase decode eta T depth primes)

/-- The portfolio is also never worse than the independently constructed
integer-rounded, finite-cell Reed-Solomon readout upper allowance. -/
theorem sourcePortfolioUpper_le_rounded
    {Phase : Type u} {W : WeierstrassCurve ℤ}
    (B : EllipticFiberEndpointComparison.GoodPrimeBank W)
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta : ℕ → ℝ) (ε T : ℝ)
    (depth : ℕ → ℕ) (primes : Finset ℕ) :
    sourcePortfolioUpper B phase decode eta ε T depth primes ≤
      GRWTSK.NumberTheory.Moebius.PickupSignedQuadrature.roundedObservation T +
        3 * T := by
  unfold sourcePortfolioUpper
  exact (min_le_right _ _).trans (min_le_left _ _)

/-- Quadrature and all alternate scalar certificates bound the original
endpoint with the old quarter-unit error charged exactly ONCE. -/
theorem endpoint_le_sourcePortfolioUpper_quarter
    {Phase : Type u} {W : WeierstrassCurve ℤ}
    (B : EllipticFiberEndpointComparison.GoodPrimeBank W)
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta : ℕ → ℝ) (ε : ℝ)
    {T : ℝ} (hT : 0 ≤ T)
    (depth : ℕ → ℕ) (primes : Finset ℕ)
    (hp : ∀ p ∈ primes, p.Prime)
    (hcert : ErrorCertificate phase decode eta T) :
    endpointSum T ≤
      sourcePortfolioUpper B phase decode eta ε T depth primes +
        (1 / 4 : ℝ) := by
  have hsrc := cross_le_sourcePortfolioUpper
    B phase decode eta ε hT depth primes hp hcert
  have hcurvature := (abs_le.mp (endpointSum_error hT)).2
  linarith

/-! ## Exact physical stream-to-portfolio integration -/

/-- A missing or inaccurate physical bit stream may enter the FULL
quantitative portfolio once the required genuine coefficient radii
are independently certified at each original integer. -/
theorem physical_stream_le_sourcePortfolioUpper
    {W : WeierstrassCurve ℤ}
    (B : EllipticFiberEndpointComparison.GoodPrimeBank W)
    (p : Parameters) (chart : ℝ)
    (stream : PhysicalBitGramReturn.PhysicalStream)
    (eta : ℕ → ℝ) (ε : ℝ)
    {T : ℝ} (hT : 0 ≤ T)
    (depth : ℕ → ℕ) (primes : Finset ℕ)
    (hp : ∀ q ∈ primes, q.Prime)
    (hradius : ∀ n ∈ endpointIndex T,
      |moebiusReal n -
        PhysicalBitGramReturn.observedCoeff p chart stream n| ≤ eta n) :
    PhysicalBitGramReturn.observedPacket p chart T stream +
        PhysicalBitGramReturn.signedReadoutDefect p chart T stream ≤
      sourcePortfolioUpper B physicalIndexPhase
        (physicalIndexRead p chart stream) eta ε T depth primes := by
  rw [← PhysicalBitGramReturn.pickupCross_eq_observed_add_defect]
  exact cross_le_sourcePortfolioUpper B
    physicalIndexPhase (physicalIndexRead p chart stream) eta ε
    hT depth primes hp
    (physical_stream_error_certificate p chart T stream eta hradius)

/-! ## Safe source certificate inputs for other research directions -/

/-- A genuinely proved arithmetic/geometry upper source may be added
by minimum. The source-specific inequality is a REQUIRED proof input:
finite spectral, M23, RS, Weil, Connes or planar labels alone do not
produce it. -/
def extraSourceUpper
    {Phase : Type u} {W : WeierstrassCurve ℤ}
    (B : EllipticFiberEndpointComparison.GoodPrimeBank W)
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta : ℕ → ℝ) (ε T : ℝ)
    (depth : ℕ → ℕ) (primes : Finset ℕ)
    (candidate : ℝ) : ℝ :=
  min (sourcePortfolioUpper B phase decode eta ε T depth primes) candidate

theorem cross_le_extraSourceUpper
    {Phase : Type u} {W : WeierstrassCurve ℤ}
    (B : EllipticFiberEndpointComparison.GoodPrimeBank W)
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta : ℕ → ℝ) (ε : ℝ)
    {T : ℝ} (hT : 0 ≤ T)
    (depth : ℕ → ℕ) (primes : Finset ℕ)
    (candidate : ℝ)
    (hp : ∀ p ∈ primes, p.Prime)
    (hcert : ErrorCertificate phase decode eta T)
    (hsource : pickupCross T ≤ candidate) :
    pickupCross T ≤
      extraSourceUpper B phase decode eta ε T depth primes candidate := by
  unfold extraSourceUpper
  exact le_min
    (cross_le_sourcePortfolioUpper B phase decode eta ε hT depth primes hp hcert)
    hsource

/-- Explicit transitive source inequality, not a claim that the added
geometric certificate is known to exist. -/
theorem extraSourceUpper_le_old
    {Phase : Type u} {W : WeierstrassCurve ℤ}
    (B : EllipticFiberEndpointComparison.GoodPrimeBank W)
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta : ℕ → ℝ) (ε T : ℝ)
    (depth : ℕ → ℕ) (primes : Finset ℕ)
    (candidate : ℝ) :
    extraSourceUpper B phase decode eta ε T depth primes candidate ≤
      endpointHybridUpper T depth primes := by
  unfold extraSourceUpper
  exact (min_le_left _ _).trans
    (sourcePortfolioUpper_le_old B phase decode eta ε T depth primes)

/-! ## Gauge covariance of both observed-energy and portfolio certificates -/

/-- Scalar-decoder compatibility is enough for physical-time waveform
invariance; phase-map invertibility is not separately required. -/
theorem observedWave_decoderGauge
    {Phase : Type u} {Other : Type v}
    (phase : SourceAtom → Phase) (f : Phase → Other)
    (decode : Phase → ℝ) (read : Other → ℝ)
    (hcompat : DecoderCompatible phase f decode read)
    (T u : ℝ) :
    observedWave (fun a => f (phase a)) read T u =
      observedWave phase decode T u := by
  unfold observedWave
  apply Finset.sum_congr rfl
  intro n hn
  rw [observedCoeff_reframe phase f decode read hcompat]

/-- Physical-time energy of the complete decoded SIGNED wave is invariant
under decoder-compatible transport, not merely its source label. -/
theorem observedEnergy_decoderGauge
    {Phase : Type u} {Other : Type v}
    (phase : SourceAtom → Phase) (f : Phase → Other)
    (decode : Phase → ℝ) (read : Other → ℝ)
    (hcompat : DecoderCompatible phase f decode read)
    (T : ℝ) :
    observedEnergy (fun a => f (phase a)) read T =
      observedEnergy phase decode T := by
  unfold observedEnergy
  apply intervalIntegral.integral_congr
  intro u hu
  rw [observedWave_decoderGauge phase f decode read hcompat T u]

/-- Every term of the source-grounded portfolio survives an actual
compatible gauge/code transport. The original source itself is never
transported through an unproved quotient equivalence. -/
theorem sourcePortfolioUpper_decoderGauge
    {Phase : Type u} {Other : Type v} {W : WeierstrassCurve ℤ}
    (B : EllipticFiberEndpointComparison.GoodPrimeBank W)
    (phase : SourceAtom → Phase) (f : Phase → Other)
    (decode : Phase → ℝ) (read : Other → ℝ)
    (eta : ℕ → ℝ) (ε T : ℝ)
    (depth : ℕ → ℕ) (primes : Finset ℕ)
    (hcompat : DecoderCompatible phase f decode read) :
    sourcePortfolioUpper B (fun a => f (phase a)) read eta ε T depth primes =
      sourcePortfolioUpper B phase decode eta ε T depth primes := by
  unfold sourcePortfolioUpper phaseHybridUpper
  rw [observedCross_reframe phase f decode read hcompat T,
      errorEnvelope_reframe phase f decode read eta hcompat T,
      observedEnergy_decoderGauge phase f decode read hcompat T]

/-- A genuine reversible change of phase automatically provides its
unique compatible readout by the inverse equivalence. This is about
typed representation, not an unconstructed geometric isogeny. -/
theorem decoderCompatible_equiv
    {Phase : Type u} {Other : Type v}
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (e : Phase ≃ Other) :
    DecoderCompatible phase e decode (fun b => decode (e.symm b)) := by
  intro a
  simp

/-- The entire portfolio therefore transports through a genuine finite
torsion, binary or residue-phase equivalence while original n remains. -/
theorem sourcePortfolioUpper_equiv
    {Phase : Type u} {Other : Type v} {W : WeierstrassCurve ℤ}
    (B : EllipticFiberEndpointComparison.GoodPrimeBank W)
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (e : Phase ≃ Other)
    (eta : ℕ → ℝ) (ε T : ℝ)
    (depth : ℕ → ℕ) (primes : Finset ℕ) :
    sourcePortfolioUpper B (fun a => e (phase a))
      (fun b => decode (e.symm b)) eta ε T depth primes =
    sourcePortfolioUpper B phase decode eta ε T depth primes :=
  sourcePortfolioUpper_decoderGauge B phase e decode
    (fun b => decode (e.symm b)) eta ε T depth primes
    (decoderCompatible_equiv phase decode e)

/-! ## Complete original RH consumer, with no hidden arithmetic supplier -/

/-- All chosen certificate methods compare to the SAME source on G.
The only global arithmetic premise is the true all-positive-rate upper
bound of the JOINT original-source portfolio on ONE fixed affinely frequent
set. Each source-specific decoder and prime predicate is still required;
the new proposition is not proved here. -/
theorem riemannHypothesis_of_sourcePortfolio_good_scales
    {Phase : Type u} {W : WeierstrassCurve ℤ}
    (B : EllipticFiberEndpointComparison.GoodPrimeBank W)
    (phase : ℝ → SourceAtom → Phase)
    (decode : ℝ → Phase → ℝ)
    (eta : ℝ → ℕ → ℝ) (ε : ℝ → ℝ)
    (depth : ℝ → ℕ → ℕ)
    (primes : ℝ → Finset ℕ)
    {G : Set ℝ}
    (hcover : AffineFrequent G)
    (hp : ∀ T ∈ G, 0 ≤ T → ∀ p ∈ primes T, p.Prime)
    (hcert : ∀ T ∈ G, 0 ≤ T →
      ErrorCertificate (phase T) (decode T) (eta T) T)
    (hbudget : SubexponentialOn
      (fun T => sourcePortfolioUpper B (phase T) (decode T)
        (eta T) (ε T) T (depth T) (primes T)) G) :
    _root_.RiemannHypothesis := by
  apply riemannHypothesis_of_cross_good_scales hcover
  apply subexponentialOn_mono hbudget
  intro T hG hT
  exact cross_le_sourcePortfolioUpper
    B (phase T) (decode T) (eta T) (ε T) hT
    (depth T) (primes T) (hp T hG hT) (hcert T hG hT)

end GRWTSK.NumberTheory.Moebius.UnifiedObservationPortfolio
