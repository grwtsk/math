/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PhysicalMoebiusBitCodec
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PhysicalBitWindowReturn
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Complete ORIGINAL Möbius Gram returned from a physical bit stream

An idealized stream stores an Option of the actual two-tangent physical
observer record per ORIGINAL source integer n. It may be missing or
contain a record indexed for a different n. Both cases are read as 0,
but the ENTIRE original-minus-observed signed defect is retained
in the complete ordered pair sum, so no missing source term disappears.

The canonical encoded stream contains both actual μ(n) bits for
EVERY original integer n, with proof of exact decoding. This is a
REPRESENTATION of arithmetic data that must already be known; it is
not a physical mechanism for determining μ or a new RH cancellation.

The genuine Gödel shift transfers this stream without changing any
decoded bit, integer source index, complete packet, or signed defect.
A qπ-relative real window changes only the observation clock,
leaving the original prime and entire signed residual unchanged.
-/

namespace GRWTSK.NumberTheory.Moebius.PhysicalBitGramReturn

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PhysicalMoebiusBitCodec
open GRWTSK.NumberTheory.Moebius.PhysicalBitWindowReturn
open GRWTSK.NumberTheory.Moebius.EllipticFiberEndpointComparison
open GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity
open GRWTSK.DifferentialGeometry.PhysicalBitPrimeObserver
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.PrimeResidueFiberPort
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII

/-- A possibly incomplete physical recording at every original integer.
Option.none is an explicit missing source observation, not a proof of μ=0. -/
structure PhysicalStream where
  sample : ℕ → Option PhysicalBitRecord

/-- The canonical symbolic encoding READS the ACTUAL source coefficient;
it does not generate Möbius arithmetic from physical dynamics. -/
def encodedStream (p : Parameters) : PhysicalStream :=
  ⟨fun n => some (recordMoebius p n)⟩

/-- A physical stream's signed readout is accepted ONLY at the original
integer-index match. A missing or mislabeled reading gives zero, but
its source-minus-readout defect remains visible in subsequent sums. -/
def observedCoeff (p : Parameters) (chart : ℝ)
    (stream : PhysicalStream) (n : ℕ) : ℝ :=
  match stream.sample n with
  | none => 0
  | some r => if r.index = n then (readRecord p chart r : ℝ) else 0

theorem observedCoeff_none (p : Parameters) (chart : ℝ)
    (stream : PhysicalStream) (n : ℕ)
    (h : stream.sample n = none) :
    observedCoeff p chart stream n = 0 := by
  simp [observedCoeff, h]

theorem observedCoeff_wrong_index (p : Parameters) (chart : ℝ)
    (stream : PhysicalStream) (n : ℕ) (r : PhysicalBitRecord)
    (h : stream.sample n = some r) (wrong : r.index ≠ n) :
    observedCoeff p chart stream n = 0 := by
  simp [observedCoeff, h, wrong]

/-- No original source integer is lost in the complete encoded stream. -/
theorem observedCoeff_encoded (p : Parameters) (chart : ℝ) (n : ℕ) :
    observedCoeff p chart (encodedStream p) n = moebiusReal n := by
  simp [observedCoeff, encodedStream, recordMoebius_index,
    readRecord_recordMoebius, moebiusReal]

/-- Shift every actual source record by the true Gödel isometry, retaining
its Option.none status and original n identity. -/
def transferStream (s : ℝ) (stream : PhysicalStream) : PhysicalStream :=
  ⟨fun n => (stream.sample n).map (transferRecord s)⟩

theorem observedCoeff_transfer (p : Parameters) (chart s : ℝ)
    (stream : PhysicalStream) (n : ℕ) :
    observedCoeff p (chart+s) (transferStream s stream) n =
      observedCoeff p chart stream n := by
  cases h : stream.sample n with
  | none =>
      simp [observedCoeff, transferStream, h]
  | some r =>
      by_cases hi : r.index = n
      · simp [observedCoeff, transferStream, h,
          transferRecord_index, hi, readRecord_transfer]
      · simp [observedCoeff, transferStream, h,
          transferRecord_index, hi]

/-- The actual original response Gram, weighted by the physically read
integer-indexed source coefficient. No elliptic trace replacement. -/
def observedKernel (p : Parameters) (chart T : ℝ)
    (stream : PhysicalStream) (m n : ℕ) : ℝ :=
  observedCoeff p chart stream m *
    observedCoeff p chart stream n * pickupResponseGram T m n

/-- A complete original-index ordered off-diagonal physical readout packet.
Both orientations and the original diagonal exclusion survive. -/
def observedPacket (p : Parameters) (chart T : ℝ)
    (stream : PhysicalStream) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if m ≠ n then observedKernel p chart T stream m n else 0

/-- The EXACT missing, mislabeled or changed bit cost, measured against
the original signed kernel. A failed recording cannot silently set μ=0. -/
def signedReadoutDefect (p : Parameters) (chart T : ℝ)
    (stream : PhysicalStream) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if m ≠ n then
      sourceKernel T m n - observedKernel p chart T stream m n
    else 0

/-- The complete ORIGINAL signed Möbius source equals physical packet
PLUS the entire source-minus-physical defect for ANY stream, even a
completely empty or mislabeled one. No analytic estimate assumed. -/
theorem pickupCross_eq_observed_add_defect
    (p : Parameters) (chart T : ℝ) (stream : PhysicalStream) :
    pickupCross T =
      observedPacket p chart T stream +
        signedReadoutDefect p chart T stream := by
  classical
  unfold pickupCross observedPacket signedReadoutDefect
  simp only [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  simp only [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases h : m ≠ n
  · simp only [if_pos h]
    simp only [sourceKernel]
    ring
  · simp [h]

/-- For the idealized exact encoding, every original coefficient agrees
and therefore the complete signed readout defect vanishes term by term. -/
theorem signedReadoutDefect_encoded_zero
    (p : Parameters) (chart T : ℝ) :
    signedReadoutDefect p chart T (encodedStream p) = 0 := by
  classical
  unfold signedReadoutDefect
  apply Finset.sum_eq_zero
  intro m hm
  apply Finset.sum_eq_zero
  intro n hn
  by_cases h : m ≠ n
  · simp [h, observedKernel, sourceKernel, observedCoeff_encoded]
  · simp [h]

/-- Exact source recovered from two idealized physical observer bits per
integer. This is an information-preserving representation, not a new
arithmetical proof of μ. -/
theorem observedPacket_encoded_eq_pickupCross
    (p : Parameters) (chart T : ℝ) :
    observedPacket p chart T (encodedStream p) = pickupCross T := by
  have h := pickupCross_eq_observed_add_defect
    p chart T (encodedStream p)
  rw [signedReadoutDefect_encoded_zero] at h
  linarith

/-- The actual Gödel physical transfer changes neither integer source
indices nor the fully summed signed physical readout packet. -/
theorem observedPacket_transfer (p : Parameters) (chart s T : ℝ)
    (stream : PhysicalStream) :
    observedPacket p (chart+s) T (transferStream s stream) =
      observedPacket p chart T stream := by
  unfold observedPacket
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  simp only [observedKernel,
    observedCoeff_transfer]

/-- Thus the COMPLETE signed defect for any imperfect physical stream
is also invariant under the same actual bit-preserving shift. -/
theorem signedReadoutDefect_transfer (p : Parameters) (chart s T : ℝ)
    (stream : PhysicalStream) :
    signedReadoutDefect p (chart+s) T (transferStream s stream) =
      signedReadoutDefect p chart T stream := by
  unfold signedReadoutDefect
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  simp only [observedKernel,
    observedCoeff_transfer]

/-- Return to the genuine elliptic prime-fiber decomposition, with ALL
rough, mixed, trace and signed loss sectors retained, at the same T. -/
theorem observedPacket_encoded_elliptic_return
    {W : WeierstrassCurve ℤ}
    (B : GoodPrimeBank W) (p : Parameters) (chart T : ℝ) :
    observedPacket p chart T (encodedStream p) =
      matchedEllipticPacket B T + fullSignedResidual B T := by
  rw [observedPacket_encoded_eq_pickupCross]
  exact pickupCross_eq_elliptic_add_full_residual B T

/-- A calibrated π*q window is only a REAL change of the input time.
The complete physical bits return the ORIGINAL signed endpoint source
at the reconstructed time. No q residue and no Möbius coefficient
is changed by this clock. -/
theorem observedPacket_pi_window
    (p : Parameters) (chart : ℝ) (q : PrimeIndex) (t : ℝ) :
    observedPacket p chart (physicalTime q piUnit t)
      (encodedStream p) = pickupCross (physicalTime q piUnit t) :=
  observedPacket_encoded_eq_pickupCross p chart (physicalTime q piUnit t)

/-- A physical stream's complete signed defect remains payable even
after q-relative π windowing. It is not erased by physical bit transport
or by a choice of observer units. -/
theorem observedPacket_pi_signed_return
    {W : WeierstrassCurve ℤ}
    (B : GoodPrimeBank W) (p : Parameters) (chart : ℝ)
    (stream : PhysicalStream) (q : PrimeIndex) (t : ℝ) :
    observedPacket p chart (physicalTime q piUnit t) stream +
      signedReadoutDefect p chart (physicalTime q piUnit t) stream =
    matchedEllipticPacket B (physicalTime q piUnit t) +
      fullSignedResidual B (physicalTime q piUnit t) := by
  rw [← pickupCross_eq_observed_add_defect]
  exact pickupCross_eq_elliptic_add_full_residual B
    (physicalTime q piUnit t)

end GRWTSK.NumberTheory.Moebius.PhysicalBitGramReturn
