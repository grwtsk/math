# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FixedProgramInterpreter.Variant2a841839c5ea83070e970887250bcb30d0fe3001f6588aa99f7f8ee86058c753

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1031ef61768556191b4d9ab0462df7b8d339b28b` · SHA-256 `2a841839c5ea83070e970887250bcb30d0fe3001f6588aa99f7f8ee86058c753`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BitMatrix.Carrier.BooleanSpace

/-!
# Bounded fixed-program interpreter semantics

This module gives an exact operational semantics for the *decoded* instruction
profile used by the separately fixed local interpreter.  The carrier decoder is
an explicit capability: this file does not identify Lean states with Rust
trait objects, byte vectors, the Rust parser, or its little/MSB-endian wire
format.  Such a byte-level correspondence requires a separate representation
relation and conformance evidence.

The distinction that matters here is semantic and kernel checked.  A checked
decoder/interpreter rejects malformed program states with `none`; its totalized
counterpart maps precisely that rejected branch to the all-false state.
-/

namespace BitMatrix.Runtime.FixedProgramInterpreter

open BitMatrix.Carrier

/-- The carrier-state domain used by the fixed interpreter profile. -/
abbrev State := BooleanState Nat

/-- The all-false carrier state used to totalize decoder failure. -/
def zeroState : State := fun _ => false

/-- Width of the program-length field in the concrete profile. -/
def programLengthBits : Nat := 32

/-- Maximum encoded program length accepted by the bounded profile. -/
def maxProgramBytes : Nat := 65_536

/-- Maximum operand-stack depth accepted by the bounded profile. -/
def maxStackDepth : Nat := 65_536

/-- A bit position admitted by the concrete 32-bit `INDEX_BIT` immediate. -/
abbrev IndexBitPosition := Fin (2 ^ programLengthBits)

/--
Decoded straight-line operations.  `return` remains an operation so that the
checker can require it to be final and to observe exactly one stack value.
-/
inductive Operation where
  | pushFalse
  | pushTrue
  | readSelf
  | readConst (address : Nat)
  | indexBit (position : IndexBitPosition)
  | not
  | xor
  | and
  | or
  | eq
  | dup
  | swap
  | drop
  | return
  deriving DecidableEq, Repr

/-- Static stack-depth transition for a non-return operation. -/
def nextStackDepth : Operation → Nat → Option Nat
  | .pushFalse, depth
  | .pushTrue, depth
  | .readSelf, depth
  | .readConst _, depth
  | .indexBit _, depth => some (depth + 1)
  | .not, 0 => none
  | .not, depth + 1 => some (depth + 1)
  | .xor, 0 | .xor, 1 => none
  | .xor, depth + 2 => some (depth + 1)
  | .and, 0 | .and, 1 => none
  | .and, depth + 2 => some (depth + 1)
  | .or, 0 | .or, 1 => none
  | .or, depth + 2 => some (depth + 1)
  | .eq, 0 | .eq, 1 => none
  | .eq, depth + 2 => some (depth + 1)
  | .dup, 0 => none
  | .dup, depth + 1 => some (depth + 2)
  | .swap, 0 | .swap, 1 => none
  | .swap, depth + 2 => some (depth + 2)
  | .drop, 0 => none
  | .drop, depth + 1 => some depth
  | .return, _ => none

/--
Execute one non-return operation.  The head of the list is the top of stack;
binary instructions pop the right operand before the left operand, matching
the decoded profile (the present Boolean binary operations are commutative).
-/
def executeOperation
    (operation : Operation)
    (input : State)
    (outputIndex : Nat)
    (stack : List Bool) : Option (List Bool) :=
  match operation, stack with
  | .pushFalse, stack => some (false :: stack)
  | .pushTrue, stack => some (true :: stack)
  | .readSelf, stack => some (input outputIndex :: stack)
  | .readConst address, stack => some (input address :: stack)
  | .indexBit position, stack =>
      some (outputIndex.testBit position.val :: stack)
  | .not, value :: rest => some ((!value) :: rest)
  | .xor, right :: left :: rest => some ((left != right) :: rest)
  | .and, right :: left :: rest => some ((left && right) :: rest)
  | .or, right :: left :: rest => some ((left || right) :: rest)
  | .eq, right :: left :: rest => some ((left == right) :: rest)
  | .dup, value :: rest => some (value :: value :: rest)
  | .swap, right :: left :: rest => some (left :: right :: rest)
  | .drop, _ :: rest => some rest
  | _, _ => none

/--
Run decoded operations.  Returning succeeds only when `return` is the final
operation and the stack contains exactly one value.
-/
def evaluateOperations
    (operations : List Operation)
    (input : State)
    (outputIndex : Nat)
    (stack : List Bool := []) : Option Bool :=
  match operations with
  | [] => none
  | .return :: rest =>
      match rest, stack with
      | [], [value] => some value
      | _, _ => none
  | operation :: rest =>
      (executeOperation operation input outputIndex stack).bind fun nextStack =>
        evaluateOperations rest input outputIndex nextStack

/--
Static validation of final return, stack effects, and the configured depth
bound.  The returned natural is the maximum stack depth of the operation list.
-/
def validateOperationsFrom : List Operation → Nat → Nat → Option Nat
  | [], _, _ => none
  | .return :: rest, depth, peak =>
      if rest.isEmpty && depth == 1 then some peak else none
  | operation :: rest, depth, peak => do
      let nextDepth ← nextStackDepth operation depth
      if nextDepth ≤ maxStackDepth then
        validateOperationsFrom rest nextDepth (max peak nextDepth)
      else
        none

/-- Validate a decoded program from an initially empty stack. -/
def validateOperations (operations : List Operation) : Option Nat :=
  validateOperationsFrom operations 0 0

/--
A bounded decoded program.  `encodedByteLength` records the decoder's checked
wire-length fact without pretending that this module defines the byte decoder.
-/
structure DecodedProgram where
  operations : List Operation
  encodedByteLength : Nat
  encodedByteLength_le : encodedByteLength ≤ maxProgramBytes
  maximumStackDepth : Nat
  validation : validateOperations operations = some maximumStackDepth
  operationalSafety : ∀ input outputIndex,
    ∃ output, evaluateOperations operations input outputIndex = some output

/--
The explicit abstract boundary to a checked program-state decoder.  An
implementation may instantiate this capability only after discharging its own
representation and parsing obligations.
-/
structure CheckedDecoder where
  decode : State → Option DecodedProgram

/-- Evaluate a decoder-certified program at one output address. -/
def DecodedProgram.evaluate
    (program : DecodedProgram)
    (input : State)
    (outputIndex : Nat) : Bool :=
  (evaluateOperations program.operations input outputIndex).getD false

/-- Decoder-certified evaluation cannot take the fallback branch. -/
theorem DecodedProgram.evaluateOperations_eq_some_evaluate
    (program : DecodedProgram)
    (input : State)
    (outputIndex : Nat) :
    evaluateOperations program.operations input outputIndex =
      some (program.evaluate input outputIndex) := by
  obtain ⟨output, evaluated⟩ := program.operationalSafety input outputIndex
  simp [DecodedProgram.evaluate, evaluated]

/-- Checked decoding and interpretation; malformed code remains `none`. -/
def interpretChecked
    (decoder : CheckedDecoder)
    (programCode input : State) : Option State :=
  (decoder.decode programCode).map fun program outputIndex =>
    program.evaluate input outputIndex

/--
The separately fixed total interpreter.  A malformed program state denotes
the constant-zero transformation.
-/
def interpretTotal
    (decoder : CheckedDecoder)
    (programCode input : State) : State :=
  (interpretChecked decoder programCode input).getD zeroState

/-- The total interpreter is exactly `Option.getD` of the checked interpreter. -/
theorem interpretTotal_eq_checked_getD
    (decoder : CheckedDecoder)
    (programCode input : State) :
    interpretTotal decoder programCode input =
      (interpretChecked decoder programCode input).getD zeroState :=
  rfl

/-- Successful checked decoding selects the same state in the total profile. -/
theorem interpretTotal_of_decode_some
    (decoder : CheckedDecoder)
    (programCode input : State)
    (program : DecodedProgram)
    (decoded : decoder.decode programCode = some program) :
    interpretTotal decoder programCode input = program.evaluate input := by
  simp [interpretTotal, interpretChecked, decoded]

/-- Decoder rejection is preserved by the checked interpreter. -/
theorem interpretChecked_of_decode_none
    (decoder : CheckedDecoder)
    (programCode input : State)
    (malformed : decoder.decode programCode = none) :
    interpretChecked decoder programCode input = none := by
  simp [interpretChecked, malformed]

/-- Decoder rejection is totalized to the all-false carrier state. -/
theorem interpretTotal_of_decode_none
    (decoder : CheckedDecoder)
    (programCode input : State)
    (malformed : decoder.decode programCode = none) :
    interpretTotal decoder programCode input = zeroState := by
  simp [interpretTotal, interpretChecked, malformed]

/-- Pointwise form of malformed-program totalization. -/
theorem interpretTotal_apply_of_decode_none
    (decoder : CheckedDecoder)
    (programCode input : State)
    (malformed : decoder.decode programCode = none)
    (outputIndex : Nat) :
    interpretTotal decoder programCode input outputIndex = false := by
  rw [interpretTotal_of_decode_none decoder programCode input malformed]
  rfl

end BitMatrix.Runtime.FixedProgramInterpreter
```
