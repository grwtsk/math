/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.Combinatorics.ShapePhysicalBitTransport

set_option autoImplicit false
noncomputable section

/-!
# Exact two-polarization physical-bit Hilbert comparator

This adapter converts the already-defined *measured* presence/sign
polarizations into the existing `StableBitfield 2` realization. It does
not manufacture a third source bit or change `ArithmeticFunction.moebius`.
The indexed readout retains `Option.none`, the stored original integer
index, and BOTH bits; a wrong index is not silently treated as a valid
zero coefficient. Distances are defined only for present records matching
the queried original integer. Geometric admissibility is a separate
source predicate and is not inferred from a finite Hamming distance.
-/

namespace Folder.Research.ShapePhysicalBitHilbertComparator

open Carrier
open Mathematics.Cubical
open ShapePhysicalBitTransport
open GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity
open GRWTSK.NumberTheory.Moebius.PhysicalMoebiusBitCodec
open GRWTSK.NumberTheory.Moebius.PhysicalBitGramReturn

/-- Embed the existing signed presence/negative pair, in that order,
into the *existing* two-coordinate stable bitfield. -/
def signedBitsAsField (b : SignedBits) : StableBitfield 2 :=
  fun i => if i = 0 then b.nonzero else b.negative

/-- Read the two actual polarization states, without replacing their
original integer index or certifying geometric admissibility. -/
def measuredSignedBits (p : Parameters) (r : PhysicalBitRecord) : SignedBits :=
  { nonzero := polarizationBit p r.presence
    negative := polarizationBit p r.sign }

def recordBitfield (p : Parameters) (r : PhysicalBitRecord) :
    StableBitfield 2 := signedBitsAsField (measuredSignedBits p r)

/-- The bitfield is an exact change of type for the two recorded bits. -/
theorem readRecord_eq_decoded_bitfield
    (p : Parameters) (chart : ℝ) (r : PhysicalBitRecord) :
    readRecord p chart r =
      decodeSigned
        { nonzero := recordBitfield p r 0
          negative := recordBitfield p r 1 } := by
  rfl

/-- Measured fields of the canonical source record agree with the
original two-bit `moebiusBits` codec at the *same* integer n. -/
theorem recordBitfield_recordMoebius (p : Parameters) (n : ℕ) :
    recordBitfield p (recordMoebius p n) =
      signedBitsAsField (moebiusBits n) := by
  funext i
  by_cases hi : i = (0 : Fin 2)
  · simp [recordBitfield, signedBitsAsField, measuredSignedBits,
      recordMoebius, hi, polarizationBit_state]
  · simp [recordBitfield, signedBitsAsField, measuredSignedBits,
      recordMoebius, hi, polarizationBit_state]

/-- A genuine observer shift preserves the measured bitfield exactly.
This is NOT a theorem that every arbitrary spectral metric is invariant. -/
theorem recordBitfield_transfer (p : Parameters) (s : ℝ)
    (r : PhysicalBitRecord) :
    recordBitfield p (transferRecord s r) = recordBitfield p r := by
  funext i
  by_cases hi : i = (0 : Fin 2)
  · simp [recordBitfield, signedBitsAsField, measuredSignedBits,
      transferRecord, hi, polarizationBit_shift]
  · simp [recordBitfield, signedBitsAsField, measuredSignedBits,
      transferRecord, hi, polarizationBit_shift]

/-- The true two-polarization finite squared Hilbert comparator. -/
def recordHilbertDistanceSq (p : Parameters)
    (r q : PhysicalBitRecord) : ℝ :=
  hilbertDistanceSq (recordBitfield p r) (recordBitfield p q)

/-- This comparator has exactly the existing Hamming cardinality. -/
theorem recordHilbertDistanceSq_eq_hamming (p : Parameters)
    (r q : PhysicalBitRecord) :
    recordHilbertDistanceSq p r q =
      (hammingCount (recordBitfield p r) (recordBitfield p q) : ℝ) :=
  hilbertDistanceSq_eq_hamming _ _

/-- Simultaneously transported actual records have exactly the same
two-bit squared Hilbert distance, even before an admissibility check. -/
theorem recordHilbertDistanceSq_transfer (p : Parameters) (s : ℝ)
    (r q : PhysicalBitRecord) :
    recordHilbertDistanceSq p (transferRecord s r) (transferRecord s q) =
      recordHilbertDistanceSq p r q := by
  simp [recordHilbertDistanceSq, recordBitfield_transfer]

/-- A source readout exposing the stored index AND the complete two-bit
word. The outer Option distinguishes missing records from valid μ(n)=0. -/
def indexedBits (p : Parameters)
    {base : GridShape} {k level width : ℕ}
    (X : ObservedShapeState base k level width) (index : ℕ) :
    Option (ℕ × StableBitfield 2) :=
  (X.stream.sample index).map (fun r => (r.index, recordBitfield p r))

/-- An absent record remains absent; it has not been decoded as μ=0. -/
theorem indexedBits_missing (p : Parameters)
    {base : GridShape} {k level width : ℕ}
    (X : ObservedShapeState base k level width) (index : ℕ)
    (h : X.stream.sample index = none) :
    indexedBits p X index = none := by
  simp [indexedBits, h]

/-- An incorrectly indexed present record remains distinguishable from
absence and from an indexed zero-valued observation. -/
theorem indexedBits_wrong_index (p : Parameters)
    {base : GridShape} {k level width : ℕ}
    (X : ObservedShapeState base k level width) (index : ℕ)
    (r : PhysicalBitRecord) (h : X.stream.sample index = some r)
    (wrong : r.index ≠ index) :
    indexedBits p X index = some (r.index, recordBitfield p r) ∧
      r.index ≠ index := by
  exact ⟨by simp [indexedBits, h], wrong⟩

/-- The actual source stream has a PRESENT correctly indexed two-bit
record, including at original indices where the true coefficient is zero. -/
theorem indexedBits_encoded (p : Parameters)
    {base : GridShape} {k level width : ℕ}
    (X : ObservedShapeState base k level width) (index : ℕ)
    (h : X.stream = encodedStream p) :
    indexedBits p X index =
      some (index, signedBitsAsField (moebiusBits index)) := by
  simp [indexedBits, h, encodedStream, recordMoebius_index,
    recordBitfield_recordMoebius]

/-- Pure shell transport never changes Option status, original record
index, or either measured physical bit. -/
theorem indexedBits_lift (p : Parameters) (base : GridShape)
    (k : ℕ) {level width : ℕ}
    (P : ShapeStepPayload base k level)
    (X : ObservedShapeState base k level width) (index : ℕ) :
    indexedBits p (lift base k P X) index = indexedBits p X index := rfl

/-- Actual observer shift preserves the exact typed indexed-bit reading. -/
theorem indexedBits_shift (p : Parameters) (s : ℝ)
    {base : GridShape} {k level width : ℕ}
    (X : ObservedShapeState base k level width) (index : ℕ) :
    indexedBits p (shift s X) index = indexedBits p X index := by
  cases hs : X.stream.sample index with
  | none =>
      simp [indexedBits, shift, transferStream, hs]
  | some r =>
      simp [indexedBits, shift, transferStream, hs,
        transferRecord_index, recordBitfield_transfer]

/-- Finite squared-Hilbert distance is returned ONLY when both source
observations are present and have their original integer index. An
unavailable distance does not imply zero discrepancy or μ(n)=0. -/
def indexedHilbertDistanceSq (p : Parameters)
    {base : GridShape} {k level width : ℕ}
    (X Y : ObservedShapeState base k level width) (index : ℕ) : Option ℝ :=
  match indexedBits p X index, indexedBits p Y index with
  | some (ix, b), some (iy, c) =>
      if ix = index ∧ iy = index then
        some (hilbertDistanceSq b c)
      else none
  | _, _ => none

/-- At two explicitly valid indexed readings the conditional squared
Hilbert distance is exactly the original two-bit Hamming count. -/
theorem indexedHilbertDistanceSq_eq_hamming (p : Parameters)
    {base : GridShape} {k level width : ℕ}
    (X Y : ObservedShapeState base k level width) (index : ℕ)
    (b c : StableBitfield 2)
    (hb : indexedBits p X index = some (index, b))
    (hc : indexedBits p Y index = some (index, c)) :
    indexedHilbertDistanceSq p X Y index =
      some (hammingCount b c : ℝ) := by
  simp [indexedHilbertDistanceSq, hb, hc, hilbertDistanceSq_eq_hamming]

/-- Expansion with possibly different shells preserves every valid
indexed comparison (and preserves missing/incorrect status). -/
theorem indexedHilbertDistanceSq_lift (p : Parameters)
    (base : GridShape) (k : ℕ) {level width : ℕ}
    (P Q : ShapeStepPayload base k level)
    (X Y : ObservedShapeState base k level width) (index : ℕ) :
    indexedHilbertDistanceSq p (lift base k P X) (lift base k Q Y) index =
      indexedHilbertDistanceSq p X Y index := by
  simp [indexedHilbertDistanceSq, indexedBits_lift]

/-- Two genuine observer shifts leave the finite optional comparator
unchanged, including its unavailable cases. -/
theorem indexedHilbertDistanceSq_shift (p : Parameters) (s : ℝ)
    {base : GridShape} {k level width : ℕ}
    (X Y : ObservedShapeState base k level width) (index : ℕ) :
    indexedHilbertDistanceSq p (shift s X) (shift s Y) index =
      indexedHilbertDistanceSq p X Y index := by
  simp [indexedHilbertDistanceSq, indexedBits_shift]

end Folder.Research.ShapePhysicalBitHilbertComparator
