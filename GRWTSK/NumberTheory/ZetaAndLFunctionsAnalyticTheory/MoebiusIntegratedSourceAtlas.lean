/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDecoderPositiveResponse
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PhysicalMoebiusBitGramReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEndpointDenseLongGapSource
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.MoebiusProjectivePrimeResiduePort
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMKaehlerZQGaugeFullReturn
import Mathlib.Tactic

/-!
# Original-source RH atlas: canonical prime typing, two bits, elliptic ports,
# residue gauge, source moments, sparse gaps and signed endpoint return

This leaf joins existing mathematical source interfaces, rather than
postulating an arithmetic oracle. The original source integer, its real
Mobius coefficient, original causal response, both ordered pair orientations
and the actual endpoint cutoff are always retained.

The ideal two-bit codec reads original mu(n) BEFORE encoding it. It is an
exact representation fixture: signed loss, coefficient error and positive
decoder radius are zero. This proves no new cancellation. An independently
measured physical record can fail, but the existing physical observer theorem
keeps its complete defect.

Elliptic matched traces retain the original rough/mixed/matched difference;
Putnam's sparse-gap packet retains its true signed long-gap complement;
the projective elliptic fiber includes exactly the point at infinity.
A compensated all-class residue gauge returns actual dyadic pickupEnergy,
rather than separate unsigned class energies. No source-specific map from
M23, rational elliptic rank, Connes's spectrum, Weil positivity, or a
geometric circle picture is inferred without its own proof.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.SourceReturnAtlas

open MeasureTheory Set
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.AutomircronCanonicalPrimeTyping
open GRWTSK.NumberTheory.Moebius.FiniteTorsionResolutionReturn
open GRWTSK.NumberTheory.Moebius.FinitePhaseDecoderBudget
open GRWTSK.NumberTheory.Moebius.WeightedDecoderEnergyTransfer
open GRWTSK.NumberTheory.Moebius.DecoderPositiveResponse
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof
open GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity

/-! ## Mathlib's exact actual-Mobius two-bit representation -/

/-- Two bits represent the *already calculated* arithmetic coefficient;
the original full integer survives in the attached SourceAtom. -/
def twoBitPhase (a : SourceAtom) :
    PhysicalMoebiusBitCodec.SignedBits :=
  PhysicalMoebiusBitCodec.moebiusBits (sourceIndex a)

/-- Decode the physical observer's two symbolic bits into a real scalar.
This is a chosen arithmetic readout, not a stochastic error model. -/
def twoBitRead (b : PhysicalMoebiusBitCodec.SignedBits) : ℝ :=
  (PhysicalMoebiusBitCodec.decodeSigned b : ℤ)

/-- The actual three-valued Mobius source is exactly read from its own
source-derived two-bit representation. -/
theorem twoBit_exact (a : SourceAtom) :
    twoBitRead (twoBitPhase a) = moebiusReal (sourceIndex a) := by
  change
    ((PhysicalMoebiusBitCodec.decodeSigned
      (PhysicalMoebiusBitCodec.moebiusBits (sourceIndex a)) : ℤ) : ℝ) =
      ((ArithmeticFunction.moebius (sourceIndex a) : ℤ) : ℝ)
  rw [PhysicalMoebiusBitCodec.decode_moebiusBits]

/-- The exact coefficient returns on every original positive integer.
No inference is drawn from a two-bit phase without prior mu(n) knowledge. -/
theorem twoBit_coeff_eq (n : ℕ) (hn : 1 ≤ n) :
    observedCoeff twoBitPhase twoBitRead n = moebiusReal n :=
  observedCoeff_eq_of_exact twoBitPhase twoBitRead twoBit_exact n hn

/-- Zero observed error is proved from exact arithmetic source encoding,
not fitted from the desired small energy. -/
theorem twoBit_source_error_certificate (T : ℝ) :
    ErrorCertificate twoBitPhase twoBitRead (fun _ => 0) T := by
  intro n hn
  change |moebiusReal n - observedCoeff twoBitPhase twoBitRead n| ≤ 0
  rw [twoBit_coeff_eq n (Finset.mem_Icc.mp hn).1]
  simp

/-- Exact readout returns the COMPLETE original ordered off-diagonal Gram. -/
theorem twoBit_cross_eq_source (T : ℝ) :
    observedCross twoBitPhase twoBitRead T = pickupCross T :=
  observedCross_eq_pickupCross_of_exact
    twoBitPhase twoBitRead twoBit_exact T

/-- Both mixed signed defect orientations vanish for an exact source codec. -/
theorem twoBit_signedLoss_zero (T : ℝ) :
    signedLoss twoBitPhase twoBitRead T = 0 :=
  signedLoss_zero_of_exact twoBitPhase twoBitRead twoBit_exact T

/-- Every zero radius gives zero positive-response wave, irrespective of
how large the original endpoint inventory is. -/
theorem radiusWave_zero (T u : ℝ) :
    radiusWave (fun _ => 0) T u = 0 := by
  simp [radiusWave]

/-- The exact arithmetic codec incurs no positive-radius energy. -/
theorem radiusEnergy_zero (T : ℝ) :
    radiusEnergy (fun _ => 0) T = 0 := by
  simp [radiusEnergy, radiusWave]

/-- The original signed error waveform vanishes pointwise for two bits
which were actually constructed from original Mobius coefficients. -/
theorem twoBit_errorWave_zero (T u : ℝ) :
    errorWave twoBitPhase twoBitRead T u = 0 := by
  unfold errorWave
  apply Finset.sum_eq_zero
  intro n hn
  change
    (moebiusReal n - observedCoeff twoBitPhase twoBitRead n) *
      pickupResponse n u = 0
  rw [twoBit_coeff_eq n (Finset.mem_Icc.mp hn).1]
  ring

/-- The complete ORIGINAL signed waveform equals the decoded response
waveform at every nonnegative time inside the unchanged final inventory. -/
theorem twoBit_wave_eq_source {T u : ℝ}
    (hu : 0 ≤ u) (huT : u ≤ T) :
    observedWave twoBitPhase twoBitRead T u = wholePickup u := by
  have h := wholePickup_eq_observed_add_error
    twoBitPhase twoBitRead hu huT
  rw [twoBit_errorWave_zero] at h
  linarith

/-- A complete source-derived bit encoder reconstructs exactly the original
integrated signed energy; it creates no arithmetic growth estimate. -/
theorem twoBit_energy_eq_source {T : ℝ} (hT : 0 ≤ T) :
    observedEnergy twoBitPhase twoBitRead T = pickupEnergy T := by
  unfold observedEnergy pickupEnergy
  apply intervalIntegral.integral_congr
  intro u hu
  rw [Set.uIcc_of_le hT] at hu
  rw [twoBit_wave_eq_source hu.1 hu.2]

/-! ## Exact all-source ledger, not a new signed-cancellation theorem -/

/-- Canonical integer-prime typing, idealized physical two-bit stream,
true finite elliptic packet and complete Putnam sparse/long partition
ALL return the SAME original signed pickupCross T, with exact defects. -/
theorem typed_bit_physical_elliptic_sparse_return
    {W : WeierstrassCurve ℤ}
    (B : EllipticFiberEndpointComparison.GoodPrimeBank W)
    (p : Parameters) (chart ε T : ℝ) :
    typedCross T = observedCross twoBitPhase twoBitRead T ∧
      observedCross twoBitPhase twoBitRead T =
        PhysicalBitGramReturn.observedPacket p chart T
          (PhysicalBitGramReturn.encodedStream p) ∧
      PhysicalBitGramReturn.observedPacket p chart T
          (PhysicalBitGramReturn.encodedStream p) =
        EllipticFiberEndpointComparison.matchedEllipticPacket B T +
          EllipticFiberEndpointComparison.fullSignedResidual B T ∧
      pickupCross T =
        GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting.endpointGapSetCross
          (putnamRateGapSet ε T) T + denseLongGapSource ε T := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · calc
      typedCross T = pickupCross T := typedCross_eq_pickupCross T
      _ = observedCross twoBitPhase twoBitRead T :=
        (twoBit_cross_eq_source T).symm
  · calc
      observedCross twoBitPhase twoBitRead T = pickupCross T :=
        twoBit_cross_eq_source T
      _ = PhysicalBitGramReturn.observedPacket p chart T
            (PhysicalBitGramReturn.encodedStream p) :=
        (PhysicalBitGramReturn.observedPacket_encoded_eq_pickupCross
          p chart T).symm
  · exact PhysicalBitGramReturn.observedPacket_encoded_elliptic_return
      B p chart T
  · unfold denseLongGapSource
    ring

/-- Even after all these source transports, the signed endpoint
correction is retained exactly; its quarter-unit estimate is separate. -/
theorem endpoint_sparse_elliptic_signed_return
    {W : WeierstrassCurve ℤ}
    (B : EllipticFiberEndpointComparison.GoodPrimeBank W)
    (ε T : ℝ) :
    endpointSum T =
      GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting.endpointGapSetCross
        (putnamRateGapSet ε T) T +
      denseLongGapSource ε T +
      EllipticFiberEndpointComparison.signedEndpointCorrection T ∧
    endpointSum T =
      EllipticFiberEndpointComparison.matchedEllipticPacket B T +
      EllipticFiberEndpointComparison.fullSignedResidual B T +
      EllipticFiberEndpointComparison.signedEndpointCorrection T := by
  constructor
  · unfold EllipticFiberEndpointComparison.signedEndpointCorrection
      denseLongGapSource
    ring
  · exact
      EllipticFiberEndpointComparison.endpointSum_eq_elliptic_residual_correction
        B T

/-- The source-derived physical stream and exact symbolic two-bit codec
have exactly the same ordered Gram; a real incomplete stream does NOT
inherit this equality without paying its original signed defect. -/
theorem encoded_physical_eq_twoBit
    (p : Parameters) (chart T : ℝ) :
    PhysicalBitGramReturn.observedPacket p chart T
        (PhysicalBitGramReturn.encodedStream p) =
      observedCross twoBitPhase twoBitRead T := by
  rw [PhysicalBitGramReturn.observedPacket_encoded_eq_pickupCross]
  exact (twoBit_cross_eq_source T).symm

/-- Independently rounded endpoint/RS coefficient readout differs from the
exact TWO-BIT arithmetic source by no more than the original 3T budget. -/
theorem rounded_vs_twoBit_cross {T : ℝ} (hT : 0 ≤ T) :
    |GRWTSK.NumberTheory.Moebius.PickupSignedQuadrature.roundedObservation T -
      observedCross twoBitPhase twoBitRead T| ≤ 3 * T := by
  rw [twoBit_cross_eq_source]
  exact GRWTSK.NumberTheory.Moebius.PickupSignedQuadrature.roundedObservation_error hT

/-! ## Full projective elliptic count: preserve the point at infinity -/

/-- The projective extension of an actual finite prime-field elliptic
model has exactly the original point count, rather than the affine
count minus one. A projective label injection is a CAPACITY condition;
no rational torsion or Mordell-Weil rank is inferred. -/
theorem projective_elliptic_label_capacity
    (W : WeierstrassCurve ℤ)
    (p : GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.PrimeResidueFiberPort.PrimeIndex)
    (S : Finset ℕ)
    (label : (↥S) →
      GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.ProjectivePrimeResiduePort.ProjectivePointFiber W p)
    (hinj : Function.Injective label) :
    S.card ≤
      GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FiniteEulerWindow.integralModelCount W p.1 := by
  classical
  have hcard :
      S.card ≤ Fintype.card
        (GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.ProjectivePrimeResiduePort.ProjectivePointFiber W p) := by
    simpa using Fintype.card_le_of_injective label hinj
  rw [GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.ProjectivePrimeResiduePort.ProjectivePointPort.projective_card W p] at hcard
  exact hcard

/-! ## All-residue gauge detector is another actual source-energy view -/

/-- The chosen U(1) contragredient detector, with ALL residue/parity
classes, integrates the same exact signed source energy as the two-bit
decoder on a real dyadic horizon. The gauge source already constructs the
identity; this theorem connects it without claiming a new physical law. -/
theorem dyadic_gauge_twoBit_energy_return
    (j d : ℕ) [NeZero d]
    (g : GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMKaehlerZQGaugedResidueAnchor.Gauge d)
    (hT : 0 ≤ GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint.dyadicTime j) :
    observedEnergy twoBitPhase twoBitRead
      (GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint.dyadicTime j) =
      ∫ t in (0 : ℝ)..GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint.dyadicTime j,
        ((GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMKaehlerZQGaugedResidueAnchor.detector
          d g
          (GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMKaehlerZQGaugedResidueAnchor.gaugePacket
            d g
            (GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMKaehlerZQGaugedResidueAnchor.originalSectorPacket
              j d t))).re) ^ 2 := by
  rw [twoBit_energy_eq_source hT]
  exact
    GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMKaehlerZQGaugeFullReturn.compensated_original_energy
      j d g

end GRWTSK.NumberTheory.Moebius.SourceReturnAtlas
