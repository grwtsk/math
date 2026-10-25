# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.TypeIndexedReducerModels.Variant98ad3f70657c2f43.ShapeIndexedStructuralReducers

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `625cefbc584fe38de324638e1ab73c4e885882a9` · SHA-256 `2425ce2e3a8e059366164205fc6b9e37d679a6861f2a894e4772dda9e8e5f42e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
ShapeIndexedStructuralReducers — exact original pure mathematical model
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 98ad3f70657c2f438359276bcdd8a0d6df6eaa06d04ab1ba5704561c7b305717
Organized SHA-256: e79259c19f489a79484ea3b2159ee9d10fd2dd74ddba6a2f7f657a010a6040a5
PMD: 510.0.070.020.010 dependent functions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- The complete shape-indexed reducer language and total structural evaluator retain all constructors and field/Fintype/GF2-algebra/encoding instances. The private XOR-family helper and both callers stay together. Structural description strings and the exact generic-core constructor embedding are retained without a theorem that this embedding commutes with interpretation. -/

import DAF.Runtime.ReducerIR
import FilesystemCodec.FieldRows
import DAF.Causal.ObserverFactor

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.TypeIndexedReducerModels.Variant98ad3f70657c2f43.TypedRepresentations

/-!
# A total typed reducer language

`ReducerIR` is a deliberately small, intrinsically typed language for the
pure reducers used by the observer examples.  Matrix dimensions, field types,
and packet framing appear in `Rep`, so ill-shaped compositions cannot be
formed.  Evaluation is structural and total.

The packet-to-matrix instruction intentionally returns a dependent variable
matrix and drops `payloadBits`; it is therefore suitable for a lossy observer,
not for a lossless filesystem representation.  A certified observer factor is
added below once the program is accompanied by explicit transition and
observation commutation proofs.

This Lean evaluator certifies the mathematical reducer semantics.  It does
not, by itself, verify a Rust compiler or generated machine code.
-/

open BitMatrix.Reduction.SAT
open FilesystemCodec

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.TypeIndexedReducerModels.Variant98ad3f70657c2f43

namespace BitMatrix.Runtime
/-- A total, shape-indexed reducer program. -/
inductive ReducerIR : Rep → Rep → Type 1
  | identity : ReducerIR A A
  | compose : ReducerIR A B → ReducerIR B C → ReducerIR A C
  | pair : ReducerIR A B → ReducerIR A C → ReducerIR A (.pair B C)
  | projectLeft : ReducerIR (.pair A B) A
  | projectRight : ReducerIR (.pair A B) B
  | booleanNot : ReducerIR .boolean .boolean
  | selectRows (select : Fin outRows → Fin rows) :
      ReducerIR (.matrix rows cols) (.matrix outRows cols)
  | selectColumns (select : Fin outCols → Fin cols) :
      ReducerIR (.matrix rows cols) (.matrix rows outCols)
  | xorFoldRows : ReducerIR (.matrix rows cols) (.bits cols)
  | xorFoldColumns : ReducerIR (.matrix rows cols) (.bits rows)
  | flatten : ReducerIR (.matrix rows cols) (.bits (rows * cols))
  | reshape : ReducerIR (.bits (rows * cols)) (.matrix rows cols)
  | fieldDecode
      {F : Type} [Field F] [Fintype F]
      [Algebra BitMatrix.FiniteField.GF2 F]
      (E : RowFieldEncoding F width) :
      ReducerIR (.matrix 1 width) (.field F)
  | fieldEncode
      {F : Type} [Field F] [Fintype F]
      [Algebra BitMatrix.FiniteField.GF2 F]
      (E : RowFieldEncoding F width) :
      ReducerIR (.field F) (.matrix 1 width)
  | mapFieldPermutation {F : Type} (P : Equiv.Perm F) :
      ReducerIR (.field F) (.field F)
  | packetMatrix : ReducerIR (.packet width) (.variableMatrix width)
  | payloadLength : ReducerIR (.packet width) .natural
  | sequenceModulo (modulus : Nat) : ReducerIR .natural .natural

namespace ReducerIR

/-- XOR-fold a finite family of Boolean values. -/
private def xorFamily {n : Nat} (x : Fin n → Bool) : Bool :=
  (List.ofFn x).foldl (fun acc bit => acc != bit) false

/-- Total evaluator for the typed reducer language. -/
def eval : ReducerIR A B → A.Denote → B.Denote
  | .identity => id
  | .compose first second => fun input => second.eval (first.eval input)
  | .pair left right => fun input => (left.eval input, right.eval input)
  | .projectLeft => Prod.fst
  | .projectRight => Prod.snd
  | .booleanNot => Bool.not
  | .selectRows select => fun matrix i j => matrix (select i) j
  | .selectColumns select => fun matrix i j => matrix i (select j)
  | .xorFoldRows => fun matrix j => xorFamily (fun i => matrix i j)
  | .xorFoldColumns => fun matrix i => xorFamily (fun j => matrix i j)
  | .flatten => BitMatrix.FiniteField.flattenEquiv _ _
  | .reshape => (BitMatrix.FiniteField.flattenEquiv _ _).symm
  | @fieldDecode width F fieldInst fintypeInst algebraInst E =>
      letI := fieldInst
      letI := fintypeInst
      letI := algebraInst
      fun matrix =>
        (RowFieldEncoding.code E).symm (oneRowEquiv width matrix)
  | @fieldEncode width F fieldInst fintypeInst algebraInst E =>
      letI := fieldInst
      letI := fintypeInst
      letI := algebraInst
      fun value =>
        (oneRowEquiv width).symm (RowFieldEncoding.code E value)
  | .mapFieldPermutation P => P
  | .packetMatrix => fun packet => packet.toVariableMatrix
  | .payloadLength => fun packet => packet.payloadBits
  | .sequenceModulo modulus => fun (sequence : Nat) => sequence % modulus

@[simp]
theorem eval_identity (value : A.Denote) :
    (identity : ReducerIR A A).eval value = value :=
  by simp [eval]

@[simp]
theorem eval_compose
    (first : ReducerIR A B)
    (second : ReducerIR B C)
    (value : A.Denote) :
    (compose first second).eval value = second.eval (first.eval value) :=
  by simp [eval]

/-- Stable structural description retained in implementation manifests. -/
def describe : ReducerIR A B → String
  | .identity => "identity"
  | .compose first second =>
      "compose(" ++ first.describe ++ "," ++ second.describe ++ ")"
  | .pair left right =>
      "pair(" ++ left.describe ++ "," ++ right.describe ++ ")"
  | .projectLeft => "projectLeft"
  | .projectRight => "projectRight"
  | .booleanNot => "booleanNot"
  | .selectRows _ => "selectRows"
  | .selectColumns _ => "selectColumns"
  | .xorFoldRows => "xorFoldRows"
  | .xorFoldColumns => "xorFoldColumns"
  | .flatten => "flatten"
  | .reshape => "reshape"
  | @fieldDecode _ _ _ _ _ _ => "fieldDecode"
  | @fieldEncode _ _ _ _ _ _ => "fieldEncode"
  | .mapFieldPermutation _ => "mapFieldPermutation"
  | .packetMatrix => "packetMatrix(lossyFraming)"
  | .payloadLength => "payloadLength"
  | .sequenceModulo modulus => s!"sequenceModulo({modulus})"

/--
Embed the representation-independent reducer core.  Field, matrix, and packet
constructors remain an explicit domain extension rather than dependencies of
`DAF.Runtime.ReducerIR`.
-/
def ofRuntime :
    {A B : DAF.Runtime.Rep} →
      DAF.Runtime.ReducerIR A B →
      ReducerIR (Rep.ofRuntime A) (Rep.ofRuntime B)
  | _, _, .identity => .identity
  | _, _, .compose first second =>
      .compose (ofRuntime first) (ofRuntime second)
  | _, _, .pair left right => .pair (ofRuntime left) (ofRuntime right)
  | _, _, .projectLeft => .projectLeft
  | _, _, .projectRight => .projectRight
  | _, _, .boolNot => .booleanNot
  | _, _, .sequenceModulo modulus => .sequenceModulo modulus


end ReducerIR

end BitMatrix.Runtime

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.TypeIndexedReducerModels.Variant98ad3f70657c2f43
```
