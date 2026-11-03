/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.Combinatorics.ShapeChangingBundle
import GRWTSK.Combinatorics.BanachHilbert
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PhysicalMoebiusBitGramReturn

set_option autoImplicit false
noncomputable section

/-!
# Shape lift/lower with source-preserving physical bits

A shape-changing spectral state is decorated with (1) an exact finite
bitfield for the established Hilbert/spherical comparator and (2) the
ENTIRE original-index physical Möbius stream. Neither label is generated
from the spectral tensor, and neither is discarded by a shell expansion.
The original `ShapeChangingBundle` center/shell reconstructions are used
verbatim. The `PhysicalBitGramReturn` ordered off-diagonal source and its
full signed readout defect survive shape lifting and genuine observer shifts.

This is a reversible *decorated state family*, not a local-trivialization
claim for a topological fiber bundle, an isometry on spectral tensor data,
a probabilistic sampling law, or an arithmetic cancellation estimate.
-/

namespace Folder.Research.ShapePhysicalBitTransport

open Carrier
open Mathematics.Cubical
open ShapeChangingBundle
open GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity
open GRWTSK.NumberTheory.Moebius.PhysicalMoebiusBitCodec
open GRWTSK.NumberTheory.Moebius.PhysicalBitGramReturn
open GRWTSK.RiemannHypothesis.CCC

/-- The original shape, a width-indexed exact bitfield and the full
indexed Option-valued physical stream are stored without compression. -/
structure ObservedShapeState (base : GridShape) (k n width : ℕ) where
  shape : ShapeChangingState base k n
  bits : StableBitfield width
  stream : PhysicalStream

/-- Expand the underlying spectral center with the *existing* shell;
the bitfield and complete physical stream are carried unchanged. -/
noncomputable def lift (base : GridShape) (k : ℕ) {n width : ℕ}
    (P : ShapeStepPayload base k n)
    (X : ObservedShapeState base k n width) :
    ObservedShapeState base k (n + 1) width :=
  { shape := ShapeChangingBundle.expandWithShell base k P X.shape
    bits := X.bits
    stream := X.stream }

/-- Retain the entire recovered shell along with the underlying center
and both original observation labels. -/
noncomputable def lower (base : GridShape) (k : ℕ) {n width : ℕ}
    (Y : ObservedShapeState base k (n + 1) width) :
    ObservedShapeState base k n width × ShapeStepPayload base k n :=
  let E := ShapeChangingBundle.contractOneStep base k Y.shape
  ({ shape := E.1, bits := Y.bits, stream := Y.stream }, { shell := E.2 })

@[simp] theorem lift_bits (base : GridShape) (k : ℕ) {n width : ℕ}
    (P : ShapeStepPayload base k n)
    (X : ObservedShapeState base k n width) :
    (lift base k P X).bits = X.bits := rfl

@[simp] theorem lift_stream (base : GridShape) (k : ℕ) {n width : ℕ}
    (P : ShapeStepPayload base k n)
    (X : ObservedShapeState base k n width) :
    (lift base k P X).stream = X.stream := rfl

@[simp] theorem lower_bits (base : GridShape) (k : ℕ) {n width : ℕ}
    (Y : ObservedShapeState base k (n + 1) width) :
    (lower base k Y).1.bits = Y.bits := rfl

@[simp] theorem lower_stream (base : GridShape) (k : ℕ) {n width : ℕ}
    (Y : ObservedShapeState base k (n + 1) width) :
    (lower base k Y).1.stream = Y.stream := rfl

/-- Round-trip reconstruction of the exact source center. -/
theorem lower_lift_center (base : GridShape) (k : ℕ) {n width : ℕ}
    (P : ShapeStepPayload base k n)
    (X : ObservedShapeState base k n width) :
    (lower base k (lift base k P X)).1 = X := by
  change
    ({ shape := (ShapeChangingBundle.contractOneStep base k
        (ShapeChangingBundle.expandWithShell base k P X.shape)).1
       bits := X.bits, stream := X.stream } :
      ObservedShapeState base k n width) = X
  rw [ShapeChangingBundle.contract_expandWithShell_center]
  cases X
  rfl

/-- The entire independently supplied shell is reconstructed. -/
theorem lower_lift_shell (base : GridShape) (k : ℕ) {n width : ℕ}
    (P : ShapeStepPayload base k n)
    (X : ObservedShapeState base k n width) :
    (lower base k (lift base k P X)).2 = P := by
  change
    ({ shell := (ShapeChangingBundle.contractOneStep base k
        (ShapeChangingBundle.expandWithShell base k P X.shape)).2 } :
      ShapeStepPayload base k n) = P
  rw [ShapeChangingBundle.contract_expandWithShell_shell]
  cases P
  rfl

/-- A lowered expanded observation returns the *whole* original
spectral state, exact bits, and the original indexed physical stream. -/
theorem lift_lower (base : GridShape) (k : ℕ) {n width : ℕ}
    (Y : ObservedShapeState base k (n + 1) width) :
    lift base k (lower base k Y).2 (lower base k Y).1 = Y := by
  change
    ({ shape := ShapeChangingBundle.expandWithShell base k
        ({ shell := (ShapeChangingBundle.contractOneStep base k Y.shape).2 } :
          ShapeStepPayload base k n)
        (ShapeChangingBundle.contractOneStep base k Y.shape).1
       bits := Y.bits, stream := Y.stream } :
      ObservedShapeState base k (n + 1) width) = Y
  rw [ShapeChangingBundle.expand_contractOneStep]
  cases Y
  rfl

/-- The genuine chart shift acts only on the actual physical stream,
using the established two-tangent transfer at each original index. -/
def shift (s : ℝ) {base : GridShape} {k n width : ℕ}
    (X : ObservedShapeState base k n width) :
    ObservedShapeState base k n width :=
  { shape := X.shape, bits := X.bits, stream := transferStream s X.stream }

/-- Chart transport commutes with shell expansion: neither operation
changes an index, drops a shell, or modifies the bitfield. -/
theorem shift_lift (base : GridShape) (k : ℕ) {n width : ℕ}
    (s : ℝ) (P : ShapeStepPayload base k n)
    (X : ObservedShapeState base k n width) :
    shift s (lift base k P X) = lift base k P (shift s X) := rfl

/-- Chart transport commutes with lowering, retaining the same shell. -/
theorem lower_shift (base : GridShape) (k : ℕ) {n width : ℕ}
    (s : ℝ) (Y : ObservedShapeState base k (n + 1) width) :
    lower base k (shift s Y) =
      (shift s (lower base k Y).1, (lower base k Y).2) := rfl

/-- An ordered physical observer shift does not turn missing observations
into present ones or alter the original-index coverage predicate. -/
theorem completeStreamOn_shift (s T : ℝ)
    {base : GridShape} {k n width : ℕ}
    (X : ObservedShapeState base k n width)
    (h : CompleteStreamOn T X.stream) :
    CompleteStreamOn T (shift s X).stream := by
  intro index hi
  obtain ⟨r, hr⟩ := h index hi
  refine ⟨transferRecord s r, ?_⟩
  change Option.map (transferRecord s) (X.stream.sample index) =
    some (transferRecord s r)
  rw [hr]
  rfl

/-- For every present original-index record, both geometric acceptance
conditions survive the actual shift with the chart changed accordingly. -/
theorem admissibleStreamOn_shift (p : Parameters) (chart s T : ℝ)
    {base : GridShape} {k n width : ℕ}
    (X : ObservedShapeState base k n width)
    (h : AdmissibleStreamOn p chart T X.stream) :
    AdmissibleStreamOn p (chart + s) T (shift s X).stream := by
  intro index hi r hr
  cases hs : X.stream.sample index with
  | none =>
      simp [shift, transferStream, hs] at hr
  | some old =>
      have heq : transferRecord s old = r := by
        simpa [shift, transferStream, hs] using hr
      subst r
      obtain ⟨hindex, hgeometry⟩ := h index hi old hs
      exact ⟨by simpa [transferRecord_index] using hindex,
        admissiblePhysicalBitRecord_transfer p chart s old hgeometry⟩

/-- A squared Hilbert distance between the two actual stored bitfields. -/
def squaredBitDistance {base : GridShape} {k n width : ℕ}
    (X Y : ObservedShapeState base k n width) : ℝ :=
  hilbertDistanceSq X.bits Y.bits

/-- Exact Hamming/Hilbert comparison, not an asymptotic approximation. -/
theorem squaredBitDistance_eq_hamming {base : GridShape} {k n width : ℕ}
    (X Y : ObservedShapeState base k n width) :
    squaredBitDistance X Y = (hammingCount X.bits Y.bits : ℝ) :=
  hilbertDistanceSq_eq_hamming X.bits Y.bits

/-- Even distinct shells cannot change the bitfield comparator. -/
theorem squaredBitDistance_lift (base : GridShape) (k : ℕ)
    {n width : ℕ} (P Q : ShapeStepPayload base k n)
    (X Y : ObservedShapeState base k n width) :
    squaredBitDistance (lift base k P X) (lift base k Q Y) =
      squaredBitDistance X Y := rfl

/-- The normalized finite bit discrepancy is meaningful at positive
bit width; its source is the declared Hilbert realization. -/
def normalizedBitDistance {base : GridShape} {k n width : ℕ}
    (X Y : ObservedShapeState base k n width) : ℝ :=
  squaredBitDistance X Y / (width : ℝ)

/-- Exact finite discrepancy formula, without a random-law hypothesis. -/
theorem normalizedBitDistance_eq_hamming
    {base : GridShape} {k n width : ℕ} (hwidth : 0 < width)
    (X Y : ObservedShapeState base k n width) :
    normalizedBitDistance X Y =
      (hammingCount X.bits Y.bits : ℝ) / (width : ℝ) := by
  rw [normalizedBitDistance, squaredBitDistance_eq_hamming]

/-- The normalized bit comparator ignores shells exactly, even when
the two independently supplied shells differ. -/
theorem normalizedBitDistance_lift (base : GridShape) (k : ℕ)
    {n width : ℕ} (P Q : ShapeStepPayload base k n)
    (X Y : ObservedShapeState base k n width) :
    normalizedBitDistance (lift base k P X) (lift base k Q Y) =
      normalizedBitDistance X Y := rfl

/-- The existing exact rational-sphere numerator certificate gives
16 times the Hamming count for the same unmodified bitfields. -/
theorem sphereNumeratorDistance_eq_hamming
    {base : GridShape} {k n width : ℕ}
    (X Y : ObservedShapeState base k n width) :
    integerCarrierDistanceSq (sphereNumerator X.bits) (sphereNumerator Y.bits) =
      16 * (hammingCount X.bits Y.bits : ℤ) :=
  sphereNumerator_distance_certificate X.bits Y.bits

/-- The complete nearest-anchor set is the squared-Hilbert argmin. -/
theorem isAnchor_iff_squaredNearest
    {base : GridShape} {k n width : ℕ}
    (x : Fin width → ℝ) (X : ObservedShapeState base k n width) :
    IsAnchor x X.bits ↔ IsSquaredNearest x X.bits :=
  Mathematics.Cubical.isAnchor_iff_isSquaredNearest

/-- Read exactly one original integer-indexed physical coefficient;
missing or incorrectly indexed samples are not assigned source fidelity. -/
def coefficient (p : Parameters) (chart : ℝ)
    {base : GridShape} {k n width : ℕ}
    (X : ObservedShapeState base k n width) (index : ℕ) : ℝ :=
  observedCoeff p chart X.stream index

@[simp] theorem coefficient_lift (p : Parameters) (chart : ℝ)
    (base : GridShape) (k : ℕ) {n width : ℕ}
    (P : ShapeStepPayload base k n)
    (X : ObservedShapeState base k n width) (index : ℕ) :
    coefficient p chart (lift base k P X) index =
      coefficient p chart X index := rfl

/-- Preserve all source indices and both polarization bits under the
original observer-coordinate shift. -/
theorem coefficient_shift (p : Parameters) (chart s : ℝ)
    {base : GridShape} {k n width : ℕ}
    (X : ObservedShapeState base k n width) (index : ℕ) :
    coefficient p (chart + s) (shift s X) index =
      coefficient p chart X index :=
  observedCoeff_transfer p chart s X.stream index

/-- The complete ordered off-diagonal signed packet, unchanged in kernel. -/
def packet (p : Parameters) (chart T : ℝ)
    {base : GridShape} {k n width : ℕ}
    (X : ObservedShapeState base k n width) : ℝ :=
  observedPacket p chart T X.stream

/-- The *entire* signed source-minus-observation defect is retained. -/
def defect (p : Parameters) (chart T : ℝ)
    {base : GridShape} {k n width : ℕ}
    (X : ObservedShapeState base k n width) : ℝ :=
  signedReadoutDefect p chart T X.stream

/-- Exact equality to the ORIGINAL signed Möbius cross energy for any
stream, including missing, corrupt and incorrectly indexed observations. -/
theorem pickupCross_eq_packet_add_defect (p : Parameters) (chart T : ℝ)
    {base : GridShape} {k n width : ℕ}
    (X : ObservedShapeState base k n width) :
    pickupCross T = packet p chart T X + defect p chart T X :=
  GRWTSK.NumberTheory.Moebius.PhysicalBitGramReturn.pickupCross_eq_observed_add_defect
    p chart T X.stream

@[simp] theorem packet_lift (p : Parameters) (chart T : ℝ)
    (base : GridShape) (k : ℕ) {n width : ℕ}
    (P : ShapeStepPayload base k n)
    (X : ObservedShapeState base k n width) :
    packet p chart T (lift base k P X) = packet p chart T X := rfl

@[simp] theorem defect_lift (p : Parameters) (chart T : ℝ)
    (base : GridShape) (k : ℕ) {n width : ℕ}
    (P : ShapeStepPayload base k n)
    (X : ObservedShapeState base k n width) :
    defect p chart T (lift base k P X) = defect p chart T X := rfl

/-- Actual physical transport preserves the complete observed packet. -/
theorem packet_shift (p : Parameters) (chart s T : ℝ)
    {base : GridShape} {k n width : ℕ}
    (X : ObservedShapeState base k n width) :
    packet p (chart + s) T (shift s X) = packet p chart T X :=
  observedPacket_transfer p chart s T X.stream

/-- The full source defect, not just the encoded idealization, also
survives physical observer shift. -/
theorem defect_shift (p : Parameters) (chart s T : ℝ)
    {base : GridShape} {k n width : ℕ}
    (X : ObservedShapeState base k n width) :
    defect p (chart + s) T (shift s X) = defect p chart T X :=
  signedReadoutDefect_transfer p chart s T X.stream

/-- A simultaneous shape lift and actual chart shift preserves the
complete signed return, including both ordered pair orientations. -/
theorem signed_return_lift_shift (p : Parameters) (chart s T : ℝ)
    (base : GridShape) (k : ℕ) {n width : ℕ}
    (P : ShapeStepPayload base k n)
    (X : ObservedShapeState base k n width) :
    packet p (chart + s) T (shift s (lift base k P X)) +
      defect p (chart + s) T (shift s (lift base k P X)) =
    packet p chart T X + defect p chart T X := by
  rw [packet_shift, defect_shift, packet_lift, defect_lift]

/-- The canonical source agrees only under the explicit premise that
this state actually contains the canonical two-bit encoding. -/
theorem packet_eq_pickupCross_of_encoded (p : Parameters) (chart T : ℝ)
    {base : GridShape} {k n width : ℕ}
    (X : ObservedShapeState base k n width)
    (h : X.stream = encodedStream p) :
    packet p chart T X = pickupCross T := by
  change observedPacket p chart T X.stream = pickupCross T
  rw [h]
  exact observedPacket_encoded_eq_pickupCross p chart T

/-- Two simultaneous geometric transports cannot manufacture an
arithmetic estimate: under canonical encoding they exactly re-express
rather than bound the original signed source. -/
theorem packet_lift_shift_encoded (p : Parameters) (chart s T : ℝ)
    (base : GridShape) (k : ℕ) {n width : ℕ}
    (P : ShapeStepPayload base k n)
    (X : ObservedShapeState base k n width)
    (h : X.stream = encodedStream p) :
    packet p (chart + s) T (shift s (lift base k P X)) = pickupCross T := by
  rw [packet_shift, packet_lift]
  exact packet_eq_pickupCross_of_encoded p chart T X h

end Folder.Research.ShapePhysicalBitTransport
