# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReducerIR.Variantf8fdff5f1e14fe7d9289c97b1e70a594c6129b7ba220f46567cc8ed1b7de3058

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `305c822d62614e7cdfc764542ab8a02bf347d920` · SHA-256 `f8fdff5f1e14fe7d9289c97b1e70a594c6129b7ba220f46567cc8ed1b7de3058`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Domain-independent reducer IR

This intrinsically typed, total core contains only representation-independent
operations.  Matrix selection, packet framing, and finite-field conversion are
owned by domain adapters.  Consequently the runtime core has no dependency on
BinaryMatrix or filesystem modules.
-/

namespace DAF.Runtime

/-- Scalar and product representations supported by the generic reducer core. -/
inductive Rep : Type
  | natural
  | boolean
  | pair (left right : Rep)
  deriving DecidableEq, Repr

/-- Semantic interpretation of a generic runtime representation. -/
def Rep.Denote : Rep → Type
  | .natural => Nat
  | .boolean => Bool
  | .pair left right => left.Denote × right.Denote

/-- A total typed language for representation-independent reducers. -/
inductive ReducerIR : Rep → Rep → Type
  | identity : ReducerIR A A
  | compose : ReducerIR A B → ReducerIR B C → ReducerIR A C
  | pair : ReducerIR A B → ReducerIR A C → ReducerIR A (.pair B C)
  | projectLeft : ReducerIR (.pair A B) A
  | projectRight : ReducerIR (.pair A B) B
  | boolNot : ReducerIR .boolean .boolean
  | sequenceModulo (modulus : Nat) : ReducerIR .natural .natural

namespace ReducerIR

/-- Structural, total evaluation of the generic reducer language. -/
def eval : ReducerIR A B → A.Denote → B.Denote
  | .identity => id
  | .compose first second => fun input => second.eval (first.eval input)
  | .pair left right => fun input => (left.eval input, right.eval input)
  | .projectLeft => Prod.fst
  | .projectRight => Prod.snd
  | .boolNot => Bool.not
  | .sequenceModulo modulus => fun (sequence : Nat) => sequence % modulus

@[simp]
theorem eval_identity (value : A.Denote) :
    (identity : ReducerIR A A).eval value = value :=
  rfl

@[simp]
theorem eval_compose
    (first : ReducerIR A B)
    (second : ReducerIR B C)
    (value : A.Denote) :
    (compose first second).eval value = second.eval (first.eval value) :=
  rfl

@[simp]
theorem eval_sequenceModulo (modulus sequence : Nat) :
    (sequenceModulo modulus : ReducerIR .natural .natural).eval sequence =
      sequence % modulus :=
  rfl

end ReducerIR

end DAF.Runtime
```
