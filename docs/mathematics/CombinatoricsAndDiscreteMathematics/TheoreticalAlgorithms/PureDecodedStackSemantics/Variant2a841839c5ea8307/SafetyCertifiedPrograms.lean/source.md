# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PureDecodedStackSemantics.Variant2a841839c5ea8307.SafetyCertifiedPrograms

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0d5bfc81949a169ad48ae61a6e4ac59f8c4a5d0f` · SHA-256 `b39631d32436faf38240ce4429f1c9af8c6684190280b1fc2d8fdfaab9b072a5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
SafetyCertifiedPrograms
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


/- evaluateOperations requires final return and exactly one stack element. Validation checks depth≤maxStackDepth but operationalSafety is an INDEPENDENT universally supplied field of the WHOLE DecodedProgram alongside operations,length/bound,maximumStackDepth,validation. No theorem deriving safety from the validator or encoded byte length from operations is invented. -/

import BitMatrix.Carrier.BooleanSpace

import GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PureDecodedStackSemantics.Variant2a841839c5ea8307.InstructionsAndOneStep

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

end GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PureDecodedStackSemantics.Variant2a841839c5ea8307
```
