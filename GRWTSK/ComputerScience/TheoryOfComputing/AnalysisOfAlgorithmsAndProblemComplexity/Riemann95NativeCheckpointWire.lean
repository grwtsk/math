/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Init

/-!
Wire representation of a finite native HS-95 checkpoint. The frame stores
the window and prime address, the signed absolute head position, the scanned
bit, and the two length-delimited half-tapes in left-then-right order.

Each natural field uses the compound representation γ′ of n + 1 from
Peter Elias, *Universal Codeword Sets and Representations of the Integers*,
IEEE Transactions on Information Theory 21(2), p. 199 (March 1975),
https://doi.org/10.1109/TIT.1975.1055349.

The wire parser preserves the raw record. Native address validation and
blank-extension normalization belong to the configuration adapter.
-/

set_option autoImplicit false

namespace GRWTSK.ComputerScience.Riemann95PrimeMachine.NativeCheckpoint

abbrev Bits := List (Fin 2)

/-- Raw checkpoint fields. Both tape lists are ordered nearest-first. -/
structure Record where
  window : Nat
  prime : Nat
  position : Int
  scanned : Fin 2
  left : Bits
  right : Bits

private def lowBit (value : Nat) : Fin 2 :=
  ⟨value % 2, Nat.mod_lt value (by decide)⟩

/- Prepend a zero for each low bit placed in front of the suffix. The
   terminal one is the leading binary digit of the positive value. -/
private def writeGWidth : Nat → Nat → Bits → Bits
  | 0, _, suffix => 1 :: suffix
  | width + 1, value, suffix =>
    0 :: writeGWidth width (value / 2) (lowBit value :: suffix)

/-- Write the unary width and the most-significant-bit-first digits of n + 1. -/
def writeG (n : Nat) : Bits :=
  writeGWidth (n + 1).log2 (n + 1) []

/- Each leading zero requires one payload bit after the first one.
   The recursion consumes those bits in order as it returns. -/
private def readGPositive : Bits → Option (Nat × Bits)
  | [] => none
  | bit :: rest =>
    if bit = 0 then
      match readGPositive rest with
      | some (value, next :: suffix) => some (2 * value + next.val, suffix)
      | _ => none
    else
      some (1, rest)

/-- Read one natural number and return the unread suffix. -/
def readG (input : Bits) : Option (Nat × Bits) :=
  (readGPositive input).map fun result => (result.1 - 1, result.2)

private theorem writeGWidth_append (width value : Nat) (tail suffix : Bits) :
    writeGWidth width value (tail ++ suffix) = writeGWidth width value tail ++ suffix := by
  induction width generalizing value tail with
  | zero => rfl
  | succ width ih =>
    exact congrArg (List.cons (0 : Fin 2)) (ih (value / 2) (lowBit value :: tail))

private theorem readGPositive_writeGWidth (width value : Nat) (suffix : Bits)
    (leading : value / 2 ^ width = 1) :
    readGPositive (writeGWidth width value suffix) = some (value, suffix) := by
  induction width generalizing value suffix with
  | zero =>
    have valueOne : value = 1 := by
      simpa only [Nat.pow_zero, Nat.div_one] using leading
    rw [valueOne, writeGWidth, readGPositive, ite_eq_right (show (1 : Fin 2) ≠ 0 by decide)]
  | succ width ih =>
    have reduced : (value / 2) / 2 ^ width = 1 := by
      rw [Nat.div_div_eq_div_mul, ← Nat.pow_succ']
      exact leading
    have parsed := ih (value / 2) (lowBit value :: suffix) reduced
    rw [writeGWidth, readGPositive, ite_eq_left (rfl : (0 : Fin 2) = 0), parsed]
    change some (2 * (value / 2) + value % 2, suffix) = some (value, suffix)
    rw [Nat.div_add_mod]

/-- Reading a written G field returns its value and the entire original suffix. -/
theorem readG_writeG_append (n : Nat) (suffix : Bits) :
    readG (writeG n ++ suffix) = some (n, suffix) := by
  have bounds :=
    (Nat.log2_eq_iff (n := n + 1) (k := (n + 1).log2) (Nat.succ_ne_zero n)).mp rfl
  have leading : (n + 1) / 2 ^ (n + 1).log2 = 1 := by
    apply Nat.div_eq_of_lt_le
    · simpa only [Nat.one_mul] using bounds.1
    · simpa only [Nat.pow_succ'] using bounds.2
  have parsed := readGPositive_writeGWidth (n + 1).log2 (n + 1) suffix leading
  simp only [readG, writeG, ← writeGWidth_append, List.nil_append, parsed,
    Option.map_some, Nat.add_sub_cancel]

private theorem eq_one_of_ne_zero (bit : Fin 2) (nonzero : bit ≠ 0) : bit = 1 := by
  have nonzeroValue : bit.val ≠ 0 := fun h => nonzero (Fin.ext h)
  have bounded := bit.isLt
  apply Fin.ext
  change bit.val = 1
  omega

private theorem readGPositive_sound {input : Bits} {value : Nat} {suffix : Bits}
    (accepted : readGPositive input = some (value, suffix)) :
    0 < value ∧ writeGWidth value.log2 value suffix = input := by
  induction input generalizing value suffix with
  | nil => simp [readGPositive] at accepted
  | cons bit rest ih =>
    by_cases zero : bit = 0
    · subst bit
      cases parsed : readGPositive rest with
      | none => simp [readGPositive, parsed] at accepted
      | some result =>
        rcases result with ⟨high, pending⟩
        cases pending with
        | nil => simp [readGPositive, parsed] at accepted
        | cons next remaining =>
          simp [readGPositive, parsed] at accepted
          rcases accepted with ⟨rfl, rfl⟩
          obtain ⟨positive, reconstructed⟩ := ih parsed
          have bounded := next.isLt
          have valuePositive : 0 < 2 * high + next.val := by omega
          have width : (2 * high + next.val).log2 = high.log2 + 1 := by
            obtain ⟨lower, upper⟩ :=
              (Nat.log2_eq_iff (Nat.ne_of_gt positive)).mp (rfl : high.log2 = high.log2)
            apply (Nat.log2_eq_iff (Nat.ne_of_gt valuePositive)).mpr
            rw [Nat.pow_succ'] at upper
            simp only [Nat.pow_succ']
            omega
          have quotient : (2 * high + next.val) / 2 = high := by omega
          have digit : lowBit (2 * high + next.val) = next :=
            Fin.ext (by change (2 * high + next.val) % 2 = next.val; omega)
          exact ⟨valuePositive, by rw [width, writeGWidth, quotient, digit, reconstructed]⟩
    · have one := eq_one_of_ne_zero bit zero
      subst bit
      simp [readGPositive] at accepted
      rcases accepted with ⟨rfl, rfl⟩
      exact ⟨by decide, rfl⟩

private theorem writeG_append_of_readG_eq_some {input suffix : Bits} {value : Nat}
    (accepted : readG input = some (value, suffix)) : writeG value ++ suffix = input := by
  obtain ⟨⟨positiveValue, rest⟩, parsed, same⟩ := Option.map_eq_some_iff.mp accepted
  have ⟨positive, reconstructed⟩ := readGPositive_sound parsed
  change (positiveValue - 1, rest) = (value, suffix) at same
  cases same
  have restore : positiveValue - 1 + 1 = positiveValue := by omega
  simpa only [writeG, ← writeGWidth_append, List.nil_append, restore] using reconstructed

private def readBit : Bits → Option (Fin 2 × Bits)
  | [] => none
  | bit :: rest => some (bit, rest)

private def writePosition : Int → Bits
  | .ofNat n => 0 :: writeG n
  | .negSucc n => 1 :: writeG n

private def readPosition (input : Bits) : Option (Int × Bits) := do
  let (sign, rest) ← readBit input
  let (magnitude, rest) ← readG rest
  pure (if sign = 0 then .ofNat magnitude else .negSucc magnitude, rest)

private theorem readPosition_writePosition_append (position : Int) (suffix : Bits) :
    readPosition (writePosition position ++ suffix) = some (position, suffix) := by
  cases position <;>
    simp [writePosition, readPosition, readBit, readG_writeG_append]

private theorem readBit_sound {input suffix : Bits} {bit : Fin 2}
    (accepted : readBit input = some (bit, suffix)) : bit :: suffix = input := by
  cases input with
  | nil => simp [readBit] at accepted
  | cons first rest =>
    simp [readBit] at accepted
    rcases accepted with ⟨rfl, rfl⟩
    rfl

private theorem writePosition_append_of_readPosition_eq_some {input suffix : Bits}
    {position : Int} (accepted : readPosition input = some (position, suffix)) :
    writePosition position ++ suffix = input := by
  obtain ⟨⟨sign, rest⟩, signRead, accepted⟩ := Option.bind_eq_some_iff.mp accepted
  obtain ⟨⟨magnitude, remaining⟩, magnitudeRead, final⟩ := Option.bind_eq_some_iff.mp accepted
  change some (if sign = 0 then Int.ofNat magnitude else Int.negSucc magnitude, remaining) =
    some (position, suffix) at final
  injection final with pair
  cases pair
  have reconstructed := writeG_append_of_readG_eq_some magnitudeRead
  by_cases zero : sign = 0
  · subst sign
    simpa [writePosition, reconstructed] using readBit_sound signRead
  · have one := eq_one_of_ne_zero sign zero
    subst sign
    simpa [writePosition, reconstructed] using readBit_sound signRead

private def writeTape (tape : Bits) : Bits :=
  writeG tape.length ++ tape

private def readTape (input : Bits) : Option (Bits × Bits) := do
  let (count, rest) ← readG input
  let (tape, suffix) := rest.splitAt count
  if tape.length = count then some (tape, suffix) else none

private theorem readTape_writeTape_append (tape suffix : Bits) :
    readTape (writeTape tape ++ suffix) = some (tape, suffix) := by
  simp [writeTape, readTape, List.append_assoc, readG_writeG_append]

private theorem writeTape_append_of_readTape_eq_some {input tape suffix : Bits}
    (accepted : readTape input = some (tape, suffix)) :
    writeTape tape ++ suffix = input := by
  obtain ⟨⟨count, rest⟩, countRead, final⟩ := Option.bind_eq_some_iff.mp accepted
  simp only [List.splitAt_eq] at final
  by_cases length : (rest.take count).length = count
  · simp only [length, ite_true, Option.some.injEq, Prod.mk.injEq] at final
    rcases final with ⟨rfl, rfl⟩
    rw [writeTape, length, List.append_assoc, List.take_append_drop]
    exact writeG_append_of_readG_eq_some countRead
  · rw [ite_eq_right length] at final
    contradiction

/-- Encode the checkpoint fields in the prescribed order. -/
def writeRecord (record : Record) : Bits :=
  writeG record.window ++ writeG record.prime ++ writePosition record.position ++
    [record.scanned] ++ writeTape record.left ++ writeTape record.right

private def readFrame (input : Bits) : Option (Record × Bits) := do
  let (window, rest) ← readG input
  let (prime, rest) ← readG rest
  let (position, rest) ← readPosition rest
  let (scanned, rest) ← readBit rest
  let (left, rest) ← readTape rest
  let (right, suffix) ← readTape rest
  pure (⟨window, prime, position, scanned, left, right⟩, suffix)

private theorem writeRecord_append_of_readFrame_eq_some {input suffix : Bits} {record : Record}
    (accepted : readFrame input = some (record, suffix)) :
    writeRecord record ++ suffix = input := by
  obtain ⟨⟨window, afterWindow⟩, windowRead, accepted⟩ := Option.bind_eq_some_iff.mp accepted
  obtain ⟨⟨prime, afterPrime⟩, primeRead, accepted⟩ := Option.bind_eq_some_iff.mp accepted
  obtain ⟨⟨position, afterPosition⟩, positionRead, accepted⟩ := Option.bind_eq_some_iff.mp accepted
  obtain ⟨⟨scanned, afterScanned⟩, scannedRead, accepted⟩ := Option.bind_eq_some_iff.mp accepted
  obtain ⟨⟨left, afterLeft⟩, leftRead, accepted⟩ := Option.bind_eq_some_iff.mp accepted
  obtain ⟨⟨right, remaining⟩, rightRead, final⟩ := Option.bind_eq_some_iff.mp accepted
  change some (⟨window, prime, position, scanned, left, right⟩, remaining) =
    some (record, suffix) at final
  injection final with pair
  cases pair
  simp only [writeRecord, List.append_assoc]
  rw [writeTape_append_of_readTape_eq_some rightRead,
    writeTape_append_of_readTape_eq_some leftRead]
  change writeG window ++ (writeG prime ++ (writePosition position ++ scanned :: afterScanned)) =
    input
  rw [readBit_sound scannedRead, writePosition_append_of_readPosition_eq_some positionRead,
    writeG_append_of_readG_eq_some primeRead, writeG_append_of_readG_eq_some windowRead]

/-- Read one complete raw checkpoint, rejecting any unread suffix. -/
def readRecord (input : Bits) : Option Record := do
  let (record, suffix) ← readFrame input
  if suffix.isEmpty then some record else none

private theorem readFrame_writeRecord_append (record : Record) (suffix : Bits) :
    readFrame (writeRecord record ++ suffix) = some (record, suffix) := by
  cases record
  simp [readFrame, writeRecord, List.append_assoc, readG_writeG_append,
    readPosition_writePosition_append, readBit, readTape_writeTape_append]

/-- Reading a complete encoded checkpoint recovers every raw field. -/
theorem readRecord_writeRecord (record : Record) :
    readRecord (writeRecord record) = some record := by
  have frame := readFrame_writeRecord_append record []
  simp only [List.append_nil] at frame
  simp [readRecord, frame]

/-- A nonempty suffix after a complete checkpoint is rejected. -/
theorem readRecord_writeRecord_append_of_ne_nil (record : Record) {suffix : Bits}
    (nonempty : suffix ≠ []) :
    readRecord (writeRecord record ++ suffix) = none := by
  cases suffix with
  | nil => exact (nonempty rfl).elim
  | cons bit rest => simp [readRecord, readFrame_writeRecord_append]

/-- A successfully read complete checkpoint is its record's unique wire encoding. -/
theorem writeRecord_of_readRecord_eq_some {input : Bits} {record : Record}
    (accepted : readRecord input = some record) : writeRecord record = input := by
  obtain ⟨⟨decoded, suffix⟩, frame, final⟩ := Option.bind_eq_some_iff.mp accepted
  cases suffix with
  | nil =>
    have same : decoded = record := by simpa using final
    subst decoded
    simpa only [List.append_nil] using writeRecord_append_of_readFrame_eq_some frame
  | cons bit tail => simp at final

end GRWTSK.ComputerScience.Riemann95PrimeMachine.NativeCheckpoint
