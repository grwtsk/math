/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DifferentialGeometry.PhysicalBitPrimeObserver
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Physical observer bits encoding the actual three-valued Möbius source

The original arithmetic coefficient is μ(n) in {-1,0,1}.
A single Bool cannot encode those three values injectively. TWO
transverse spatial-polarization bits encode presence and negative sign.
This module constructs actual Gödel tangent states whose measured
physical bits equal the encoded bits and proves preservation under
the existing Gödel shift isometry.

No hardware recording or physical experiment is claimed. The encoder
READS the original μ(n) from Mathlib; hence the codec is not a
new arithmetic determination or cancellation theorem. It retains
the source integer n in every record.
-/

namespace GRWTSK.NumberTheory.Moebius.PhysicalMoebiusBitCodec

open GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity
open GRWTSK.DifferentialGeometry.PhysicalBitPrimeObserver

/-- A physical observer reads a transverse polarization bit, measured
by the source's spatial coframe theta1, NOT by the sign of the timelike
covector on all future-causal states (which would be constant). -/
def polarizationBit (p : Parameters) (v : Tangent) : Bool :=
  decide (0 ≤ theta1 p v)

/-- The genuine Gödel shift preserves the observer's transverse
spatial polarization and hence its physical bit. -/
theorem polarizationBit_shift (p : Parameters) (s : ℝ) (v : Tangent) :
    polarizationBit p (shiftTangent s v) = polarizationBit p v := by
  unfold polarizationBit
  rw [theta1_shift]

/-- Choose two idealized source tangent states with the SAME future
time components as the unit timelike observer, but opposite small
transverse x polarizations ±1/2 in the observer coframe. -/
def polarizationState (p : Parameters) (b : Bool) : Tangent where
  t := (boostedObserver p).t
  x := (if b then (1 / 2 : ℝ) else -(1 / 2 : ℝ)) / p.scale
  y := 0
  z := (boostedObserver p).z

theorem theta1_polarizationState (p : Parameters) (b : Bool) :
    theta1 p (polarizationState p b) =
      (if b then (1 / 2 : ℝ) else -(1 / 2 : ℝ)) := by
  have ha : p.scale ≠ 0 := ne_of_gt p.scale_pos
  cases b <;>
    simp [theta1, polarizationState] <;>
    field_simp [ha] <;> ring

/-- The two physical polarization states have distinguishable bits. -/
theorem polarizationBit_state (p : Parameters) (b : Bool) :
    polarizationBit p (polarizationState p b) = b := by
  rw [polarizationBit, theta1_polarizationState]
  cases b <;> norm_num

/-- Both states have the same negative observer-covector reading -1:
the code is carried by spatial polarization, not a past-time bit. -/
theorem polarizationState_observerFlat (p : Parameters) (chart : ℝ)
    (b : Bool) :
    observerFlat p chart (polarizationState p b) = -1 := by
  have hbase : observerFlat p chart (boostedObserver p) = -1 := by
    rw [observerFlat_eq_metric]
    exact boostedObserver_unit_timelike p chart
  have heq : observerFlat p chart (polarizationState p b) =
      observerFlat p chart (boostedObserver p) := by
    simp [observerFlat, theta0, theta3, polarizationState,
      boostedObserver]
  exact heq.trans hbase

/-- The observer's spatial rest norm of either polarization state
is exactly 1/4, independent of the bit and of chart position. -/
theorem polarizationState_spatialSquare
    (p : Parameters) (chart : ℝ) (b : Bool) :
    spatialSquare p chart (polarizationState p b) = (1 / 4 : ℝ) := by
  have ht1 := theta1_polarizationState p b
  have ht0 : theta0 p chart (polarizationState p b) = gamma p := by
    change theta0 p chart (boostedObserver p) = gamma p
    exact theta0_boostedObserver p chart
  have ht3 : theta3 p (polarizationState p b) =
      gamma p * p.beta := by
    change theta3 p (boostedObserver p) = gamma p * p.beta
    exact theta3_boostedObserver p
  have ht2 : theta2 p chart (polarizationState p b) = 0 := by
    simp [theta2, polarizationState]
  unfold spatialSquare
  rw [ht1, ht0, ht2, ht3]
  have hzero : gamma p * (gamma p * p.beta - p.beta * gamma p) = 0 := by ring
  rw [hzero]
  cases b <;> norm_num

/-- The actual Lorentz self-pairing is -3/4<0, for either bit. Thus
the two state vectors are timelike; their covector reading -1 shows
the same future orientation relative to the boosted observer. -/
theorem polarizationState_timelike (p : Parameters)
    (chart : ℝ) (b : Bool) :
    lorentzMetric p chart (polarizationState p b)
      (polarizationState p b) = -(3 / 4 : ℝ) := by
  have hsp := polarizationState_spatialSquare p chart b
  have hmetric := spatialMetric_self_eq_square p chart
    (polarizationState p b)
  have hobs := polarizationState_observerFlat p chart b
  unfold spatialMetric at hmetric
  rw [hobs] at hmetric
  linarith

/-- A source-local geometric acceptance criterion for a recorded tangent.
The 1/4 margin is a mathematical calibration threshold, not a hardware
measurement law. Admissibility alone does not identify a Möbius value. -/
def AdmissiblePolarizationState (p : Parameters) (chart : ℝ)
    (v : Tangent) : Prop :=
  lorentzMetric p chart v v < 0 ∧
    observerFlat p chart v < 0 ∧
      (1 / 4 : ℝ) ≤ |theta1 p v|

/-- The two canonical encoding states meet the geometric acceptance test. -/
theorem polarizationState_admissible (p : Parameters) (chart : ℝ)
    (b : Bool) :
    AdmissiblePolarizationState p chart (polarizationState p b) := by
  refine ⟨?_, ?_, ?_⟩
  · rw [polarizationState_timelike]
    norm_num
  · rw [polarizationState_observerFlat]
    norm_num
  · rw [theta1_polarizationState]
    cases b <;> norm_num

/-- Future orientation, timelikeness and polarization margin all survive
the actual Gödel chart isometry, with the chart argument transported. -/
theorem admissiblePolarizationState_shift
    (p : Parameters) (chart s : ℝ) (v : Tangent)
    (h : AdmissiblePolarizationState p chart v) :
    AdmissiblePolarizationState p (chart + s) (shiftTangent s v) := by
  rcases h with ⟨hmetric, hfuture, hmargin⟩
  refine ⟨?_, ?_, ?_⟩
  · simpa only [lorentzMetric_shift] using hmetric
  · simpa only [observerFlat_shift] using hfuture
  · simpa only [theta1_shift] using hmargin

/-- Physical-bit transfer uses the existing actual Gödel spatial shift.
The measurement is theta1 polarization, not a future/past time label. -/
def polarizationTransfer (p : Parameters) (s : ℝ) :
    BitTransfer Tangent Tangent where
  transfer := shiftTangent s
  sourceBit := polarizationBit p
  targetBit := polarizationBit p

theorem polarizationTransfer_preserves (p : Parameters) (s : ℝ) :
    (polarizationTransfer p s).PreservesBit := by
  intro v
  exact polarizationBit_shift p s v

theorem polarizationBit_transferred_state
    (p : Parameters) (s : ℝ) (b : Bool) :
    polarizationBit p (shiftTangent s (polarizationState p b)) = b := by
  rw [polarizationBit_shift]
  exact polarizationBit_state p b

/-- Two bits: one for nonzero, one for the negative sign.
The unused fourth code is canonically decoded as 0. -/
structure SignedBits where
  nonzero : Bool
  negative : Bool
  deriving DecidableEq, Repr

def encodeSigned (z : ℤ) : SignedBits where
  nonzero := decide (z ≠ 0)
  negative := decide (z = -1)

def decodeSigned (b : SignedBits) : ℤ :=
  if b.nonzero then (if b.negative then -1 else 1) else 0

/-- Exact three-valued mathematical codec. An arbitrary integer outside
{-1,0,1} is NOT claimed to round-trip. -/
theorem decode_encode_signed (z : ℤ)
    (h : z = 0 ∨ z = 1 ∨ z = -1) :
    decodeSigned (encodeSigned z) = z := by
  rcases h with h | h | h <;>
    subst z <;>
    simp [decodeSigned, encodeSigned]

/-- The original Mathlib Möbius function really has only these values. -/
theorem moebiusInt_trichotomy (n : ℕ) :
    (ArithmeticFunction.moebius n : ℤ) = 0 ∨
    (ArithmeticFunction.moebius n : ℤ) = 1 ∨
    (ArithmeticFunction.moebius n : ℤ) = -1 :=
  ArithmeticFunction.moebius_eq_or n

def moebiusBits (n : ℕ) : SignedBits :=
  encodeSigned (ArithmeticFunction.moebius n : ℤ)

theorem decode_moebiusBits (n : ℕ) :
    decodeSigned (moebiusBits n) =
      (ArithmeticFunction.moebius n : ℤ) :=
  decode_encode_signed _ (moebiusInt_trichotomy n)

/-- A lossless single-bit code for {-1,0,1} is impossible, regardless
of how that bit is measured or how its decoding is chosen. -/
theorem no_one_bit_three_values :
    ¬ ∃ (read : Bool → ℤ) (bzero bone bneg : Bool),
        read bzero = 0 ∧ read bone = 1 ∧ read bneg = -1 := by
  rintro ⟨read, bzero, bone, bneg, h0, h1, hneg⟩
  cases bzero <;> cases bone <;> cases bneg <;> simp_all

/-- Original integer source identity remains attached to the two
actual observer tangent states. -/
structure PhysicalBitRecord where
  index : ℕ
  presence : Tangent
  sign : Tangent

/-- Encode the ACTUAL source integer n, not just a floating-point
surrogate of its residue/phase. -/
def recordMoebius (p : Parameters) (n : ℕ) : PhysicalBitRecord :=
  { index := n
    presence := polarizationState p (moebiusBits n).nonzero
    sign := polarizationState p (moebiusBits n).negative }

/-- Geometric admissibility of BOTH independently stored tangent states.
This does not assert coefficient fidelity or any physical hardware law. -/
def AdmissiblePhysicalBitRecord (p : Parameters) (chart : ℝ)
    (r : PhysicalBitRecord) : Prop :=
  AdmissiblePolarizationState p chart r.presence ∧
    AdmissiblePolarizationState p chart r.sign

theorem recordMoebius_admissible (p : Parameters) (chart : ℝ)
    (n : ℕ) :
    AdmissiblePhysicalBitRecord p chart (recordMoebius p n) := by
  change
    AdmissiblePolarizationState p chart
        (polarizationState p (moebiusBits n).nonzero) ∧
      AdmissiblePolarizationState p chart
        (polarizationState p (moebiusBits n).negative)
  exact ⟨polarizationState_admissible p chart _,
    polarizationState_admissible p chart _⟩

/-- Decode TWO actual observer-spatial polarization readings. -/
def readRecord (p : Parameters) (chart : ℝ)
    (r : PhysicalBitRecord) : ℤ :=
  decodeSigned
    { nonzero := polarizationBit p r.presence
      negative := polarizationBit p r.sign }

/-- The zero tangent has neither a future-timelike orientation nor
the required polarization margin. This is an invalid but decodable record. -/
def nullTangent : Tangent :=
  { t := 0, x := 0, y := 0, z := 0 }

def nullPhysicalRecord (n : ℕ) : PhysicalBitRecord :=
  { index := n, presence := nullTangent, sign := nullTangent }

/-- An unchecked null record reads -1 since theta1 = 0 yields true
for each inclusive-sign polarization bit. It must not be treated as
a physically admissible source measurement. -/
theorem readRecord_nullPhysicalRecord (p : Parameters) (chart : ℝ)
    (n : ℕ) :
    readRecord p chart (nullPhysicalRecord n) = -1 := by
  simp [readRecord, nullPhysicalRecord, nullTangent,
    decodeSigned, polarizationBit, theta1]

theorem nullPhysicalRecord_not_admissible (p : Parameters) (chart : ℝ)
    (n : ℕ) :
    ¬ AdmissiblePhysicalBitRecord p chart (nullPhysicalRecord n) := by
  intro h
  have hneg : lorentzMetric p chart
      (nullPhysicalRecord n).presence (nullPhysicalRecord n).presence < 0 :=
    h.1.1
  simpa [nullPhysicalRecord, nullTangent, lorentzMetric,
    theta0, theta1, theta2, theta3] using hneg

/-- No index has been changed or compressed by the codec. -/
theorem recordMoebius_index (p : Parameters) (n : ℕ) :
    (recordMoebius p n).index = n := rfl

/-- Every original Möbius coefficient is recovered EXACTLY from the
two chosen idealized physical observer states. -/
theorem readRecord_recordMoebius
    (p : Parameters) (chart : ℝ) (n : ℕ) :
    readRecord p chart (recordMoebius p n) =
      (ArithmeticFunction.moebius n : ℤ) := by
  change decodeSigned
    { nonzero := polarizationBit p (polarizationState p (moebiusBits n).nonzero)
      negative := polarizationBit p (polarizationState p (moebiusBits n).negative) } =
      (ArithmeticFunction.moebius n : ℤ)
  rw [polarizationBit_state, polarizationBit_state]
  exact decode_moebiusBits n

/-- The original arithmetic record genuinely exhibits three different
possible outputs: μ(1)=1, μ(2)=-1, and μ(4)=0. These are source-derived
values, not a three-symbol alphabet imposed on a different function. -/
theorem moebius_record_one (p : Parameters) (chart : ℝ) :
    readRecord p chart (recordMoebius p 1) = 1 := by
  rw [readRecord_recordMoebius]
  exact ArithmeticFunction.moebius_apply_one

theorem moebius_record_two (p : Parameters) (chart : ℝ) :
    readRecord p chart (recordMoebius p 2) = -1 := by
  rw [readRecord_recordMoebius]
  exact ArithmeticFunction.moebius_apply_prime (by norm_num)

theorem moebius_record_four (p : Parameters) (chart : ℝ) :
    readRecord p chart (recordMoebius p 4) = 0 := by
  rw [readRecord_recordMoebius]
  have h := ArithmeticFunction.moebius_apply_prime_pow
    (p := 2) (k := 2) (by norm_num : Nat.Prime 2) (by norm_num : (2 : ℕ) ≠ 0)
  simpa [pow_two] using h

/-- The genuine Gödel chart shift transfers BOTH physical bit states,
keeping the original integer source index. -/
def transferRecord (s : ℝ) (r : PhysicalBitRecord) :
    PhysicalBitRecord :=
  { index := r.index
    presence := shiftTangent s r.presence
    sign := shiftTangent s r.sign }

/-- The same isometry preserves the separate geometric acceptance
criterion for both record tangents without changing its source index. -/
theorem admissiblePhysicalBitRecord_transfer
    (p : Parameters) (chart s : ℝ) (r : PhysicalBitRecord)
    (h : AdmissiblePhysicalBitRecord p chart r) :
    AdmissiblePhysicalBitRecord p (chart + s) (transferRecord s r) := by
  rcases h with ⟨hpresence, hsign⟩
  exact ⟨admissiblePolarizationState_shift p chart s r.presence hpresence,
    admissiblePolarizationState_shift p chart s r.sign hsign⟩

theorem transferRecord_index (s : ℝ) (r : PhysicalBitRecord) :
    (transferRecord s r).index = r.index := rfl

/-- The receiver reconstructs exactly the same signed integer under
the actual Gödel chart transfer. Both physical bits are preserved. -/
theorem readRecord_transfer
    (p : Parameters) (chart s : ℝ)
    (r : PhysicalBitRecord) :
    readRecord p (chart+s) (transferRecord s r) =
      readRecord p chart r := by
  simp [readRecord, transferRecord, polarizationBit_shift]

theorem readRecord_transferred_moebius
    (p : Parameters) (chart s : ℝ) (n : ℕ) :
    readRecord p (chart+s)
        (transferRecord s (recordMoebius p n)) =
      (ArithmeticFunction.moebius n : ℤ) := by
  rw [readRecord_transfer, readRecord_recordMoebius]

end GRWTSK.NumberTheory.Moebius.PhysicalMoebiusBitCodec
