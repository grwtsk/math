# Complete source: GRWTSK.Algebra.MatrixReducerIR.Variantc28b18a3dbec053a820764ba990cf352adcabc297043af1585eb529455c775a8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f592eea0b22a2661b0479ee0f0b2bade57730d9c` · SHA-256 `c28b18a3dbec053a820764ba990cf352adcabc297043af1585eb529455c775a8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Runtime.ReducerIR
import FilesystemCodec.FieldRows
import DAF.Causal.ObserverFactor

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

open SATReduction
open FilesystemCodec

namespace BinaryMatrix.Runtime

/-- Typed representations admitted by the reducer language. -/
inductive Rep : Type 1
  | natural
  | boolean
  | bits (width : Nat)
  | matrix (rows cols : Nat)
  | packet (width : Nat)
  | variableMatrix (width : Nat)
  | field (F : Type)
  | vector (length : Nat) (element : Rep)
  | pair (left right : Rep)

/-- Embed a domain-independent runtime representation into the matrix IR. -/
def Rep.ofRuntime : DAF.Runtime.Rep → Rep
  | .natural => .natural
  | .boolean => .boolean
  | .pair left right => .pair (ofRuntime left) (ofRuntime right)

/-- Semantic interpretation of a reducer representation. -/
def Rep.Denote : Rep → Type
  | .natural => Nat
  | .boolean => Bool
  | .bits width => Bits width
  | .matrix rows cols => BinMat rows cols
  | .packet width => BitPacket width
  | .variableMatrix width => VariableMatrix width
  | .field F => F
  | .vector length element => Fin length → element.Denote
  | .pair left right => left.Denote × right.Denote

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
      [Algebra BinMatGalois.GF2 F]
      (E : RowFieldEncoding F width) :
      ReducerIR (.matrix 1 width) (.field F)
  | fieldEncode
      {F : Type} [Field F] [Fintype F]
      [Algebra BinMatGalois.GF2 F]
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
  | .flatten => BinMatGalois.flattenEquiv _ _
  | .reshape => (BinMatGalois.flattenEquiv _ _).symm
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

open ObservableRecursion
open ObserverFactor

universe uInput uResolution

/--
A reducer program together with the equations making it an observer-local
factor.  The raw program need not be surjective; `toObserverReducer` restricts
its local codomain to the realized image.
-/
structure CertifiedReducerIR
    {Input : Type uInput}
    {Resolution : Type uResolution}
    {GlobalRep : Rep}
    (M : System Input GlobalRep.Denote Resolution)
    (ρ : Resolution) where
  LocalRep : Rep
  program : ReducerIR GlobalRep LocalRep
  localStep : Input → LocalRep.Denote → LocalRep.Denote
  localObserve : LocalRep.Denote → M.Observation ρ
  step_commute : ∀ input state,
    program.eval (M.step input state) =
      localStep input (program.eval state)
  observe_commute : ∀ state,
    localObserve (program.eval state) = M.observe ρ state

namespace CertifiedReducerIR

/-- Every certified program yields a surjective reducer on its realized image. -/
def toObserverReducer
    {Input : Type uInput}
    {Resolution : Type uResolution}
    {GlobalRep : Rep}
    {M : System Input GlobalRep.Denote Resolution}
    {ρ : Resolution}
    (C : CertifiedReducerIR M ρ) :
    ObserverReducer M ρ :=
  ObserverReducer.ofRealizedImage
    C.program.eval C.localStep C.localObserve
    C.step_commute C.observe_commute

end CertifiedReducerIR

end BinaryMatrix.Runtime
```
