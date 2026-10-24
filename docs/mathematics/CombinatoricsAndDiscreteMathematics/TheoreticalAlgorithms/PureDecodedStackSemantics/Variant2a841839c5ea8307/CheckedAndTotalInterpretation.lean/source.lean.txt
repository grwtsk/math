/-
CheckedAndTotalInterpretation
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 2a841839c5ea83070e970887250bcb30d0fe3001f6588aa99f7f8ee86058c753
Organized SHA-256: 44133c05dd0de043677b9ffb35731f021988c3b23ef2e0f03b04be8b2d25bca0
PMD: 510.7.120 theoretical algorithms (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- Whole CheckedDecoder contains the arbitrary State→Option DecodedProgram capability. Exact interpretChecked/interpretTotal and all success/rejection/pointwise proof terms preserve full decoder/programCode/input/program/decoded or malformed premises. getD fallback is zeroState exactly. No Lean-to-Rust byte/wire/parser/trait-object representation relation, decoder construction, conformance evidence or total representability is supplied. -/

import BitMatrix.Carrier.BooleanSpace

import GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PureDecodedStackSemantics.Variant2a841839c5ea8307.SafetyCertifiedPrograms

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

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PureDecodedStackSemantics.Variant2a841839c5ea8307

open BitMatrix.Carrier

/--
The explicit abstract boundary to a checked program-state decoder.  An
implementation may instantiate this capability only after discharging its own
representation and parsing obligations.
-/
structure CheckedDecoder where
  decode : State → Option DecodedProgram

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

end GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PureDecodedStackSemantics.Variant2a841839c5ea8307
