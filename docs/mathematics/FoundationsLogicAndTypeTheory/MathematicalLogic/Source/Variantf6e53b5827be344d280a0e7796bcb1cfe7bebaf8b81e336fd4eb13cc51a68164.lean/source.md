# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Source.Variantf6e53b5827be344d280a0e7796bcb1cfe7bebaf8b81e336fd4eb13cc51a68164

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `553ab5df0ace9944033341d97ad7ed539c5bc8e9` · SHA-256 `f6e53b5827be344d280a0e7796bcb1cfe7bebaf8b81e336fd4eb13cc51a68164`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BitMatrix.Carrier.BooleanSpace

/-!
# Canonical finite sources and source-state codecs

This module states the exact source-codec interface without claiming that the
project currently constructs the full sequential-prime address assignment.
An implementation must provide both decoding laws; only then is its source
constructor promoted to an equivalence with its image.
-/

namespace BitMatrix.Codec

/--
A canonical source is represented by its body before the required final LF.
The body contains no CR and does not itself end in LF, so `text` has exactly
one terminal LF.  UTF-8 validity follows from using Lean `String` as source.
-/
structure CanonicalSource where
  body : String
  noCarriageReturn : '\r' ∉ body.toList
  noTerminalLineFeed : body.toList.getLast? ≠ some '\n'

namespace CanonicalSource

@[ext]
theorem ext {left right : CanonicalSource} (body : left.body = right.body) :
    left = right := by
  cases left
  cases right
  cases body
  rfl

/-- Canonical text with exactly one terminal line feed. -/
def text (source : CanonicalSource) : String :=
  source.body.push '\n'

/-- Canonical UTF-8 bytes. -/
def utf8 (source : CanonicalSource) : ByteArray :=
  source.text.toUTF8

/-- Prefix-free natural code for a finite list of naturals. -/
def naturalListCode : List Nat → Nat
  | [] => 0
  | head :: tail => Nat.pair head (naturalListCode tail) + 1

theorem naturalListCode_injective : Function.Injective naturalListCode := by
  intro left
  induction left with
  | nil =>
      intro right equal
      cases right with
      | nil => rfl
      | cons head tail => simp [naturalListCode] at equal
  | cons head tail inductionHypothesis =>
      intro right equal
      cases right with
      | nil => simp [naturalListCode] at equal
      | cons otherHead otherTail =>
          simp only [naturalListCode, Nat.add_right_cancel_iff] at equal
          have parts := Nat.pair_eq_pair.mp equal
          congr
          · exact parts.1
          · exact inductionHypothesis parts.2

/-- A lossless natural code for canonical source records. -/
def code (source : CanonicalSource) : Nat :=
  naturalListCode (source.body.toList.map Char.toNat)

theorem code_injective : Function.Injective code := by
  intro left right equal
  apply ext
  apply String.toList_injective
  apply (List.map_injective_iff.mpr (fun _ _ equality => Char.toNat_inj.mp equality))
  exact naturalListCode_injective equal

end CanonicalSource

/-- Most-significant-bit-first access to a source byte. -/
def byteBitMSB (byte : UInt8) (index : Fin 8) : Bool :=
  Nat.testBit byte.toNat (7 - index.val)

/-- Points in the canonical finite source graph. -/
inductive SourcePoint (length : Nat) where
  | root
  | byte (index : Fin length)
  deriving DecidableEq

/-- The three fixed binary relations of the self-source schema. -/
inductive SourceRelation where
  | contains
  | next
  | ref
  deriving DecidableEq, Repr

/-- Every source relation in the fixed schema has arity two. -/
def SourceRelation.arity (_ : SourceRelation) : Nat := 2

/--
Conditional capability for the self-contained source constructor.  `decode`
is partial on unrestricted states, and the second law forbids it from
accepting a state other than the exact encoding it reports.
-/
structure SourceCodec (Address : Type) where
  encode : CanonicalSource → BitMatrix.Carrier.BooleanState Address
  decode : BitMatrix.Carrier.BooleanState Address → Option CanonicalSource
  decode_encode : ∀ source, decode (encode source) = some source
  encode_decode : ∀ {state source}, decode state = some source → encode source = state

namespace SourceCodec

theorem encode_injective
    {Address : Type}
    (codec : SourceCodec Address) :
    Function.Injective codec.encode := by
  intro left right equal
  have decoded := congrArg codec.decode equal
  rw [codec.decode_encode, codec.decode_encode] at decoded
  exact Option.some.inj decoded

/-- States accepted as exact encodings by this source codec. -/
def SourceState
    {Address : Type}
    (codec : SourceCodec Address) :=
  { state : BitMatrix.Carrier.BooleanState Address //
    ∃ source, codec.encode source = state }

/-- The source constructor is exactly invertible on its image. -/
noncomputable def sourceEquiv
    {Address : Type}
    (codec : SourceCodec Address) :
    CanonicalSource ≃ codec.SourceState where
  toFun source := ⟨codec.encode source, source, rfl⟩
  invFun state := Classical.choose state.property
  left_inv source := by
    apply codec.encode_injective
    exact Classical.choose_spec
      ((show ∃ candidate, codec.encode candidate = codec.encode source from
        ⟨source, rfl⟩))
  right_inv state := by
    apply Subtype.ext
    exact Classical.choose_spec state.property

@[simp]
theorem sourceEquiv_apply
    {Address : Type}
    (codec : SourceCodec Address)
    (source : CanonicalSource) :
    (codec.sourceEquiv source).val = codec.encode source :=
  rfl

/-- A distinguished source selects the baseline used by the scalar inverse. -/
def sourceBaseline
    {Address : Type}
    (codec : SourceCodec Address)
    (source : CanonicalSource) :
    BitMatrix.Carrier.BooleanState Address :=
  codec.encode source

end SourceCodec

noncomputable section

/--
The canonical source encoded as a one-hot Boolean state over natural-number
addresses.  This is an exact mathematical source codec specialization.  It is
not the byte-level runtime wire format and is not claimed to be the restricted
sequential-prime carrier assignment from the rhetorical document.
-/
def oneHotSourceState (source : CanonicalSource) :
    BitMatrix.Carrier.BooleanState Nat :=
  fun address => decide (address = source.code)

theorem oneHotSourceState_injective : Function.Injective oneHotSourceState := by
  intro left right equal
  apply CanonicalSource.code_injective
  by_contra different
  have atLeft := congrFun equal left.code
  simp [oneHotSourceState, different] at atLeft

/--
Exact image decoder for `oneHotSourceState`.  Decoding is noncomputable because
membership in the unrestricted function-space image is not decidable; the
round-trip laws are nevertheless kernel checked.
-/
noncomputable def decodeOneHotSourceState
    (state : BitMatrix.Carrier.BooleanState Nat) : Option CanonicalSource := by
  classical
  exact if witness : ∃ source, oneHotSourceState source = state then
      some (Classical.choose witness)
    else
      none

/-- A concrete, exact source codec over natural-number addresses. -/
noncomputable def oneHotSourceCodec : SourceCodec Nat where
  encode := oneHotSourceState
  decode := decodeOneHotSourceState
  decode_encode source := by
    simp only [decodeOneHotSourceState]
    split
    · rename_i witness
      congr 1
      apply oneHotSourceState_injective
      exact Classical.choose_spec witness
    · rename_i absent
      exact False.elim (absent ⟨source, rfl⟩)
  encode_decode := by
    intro state source decoded
    simp only [decodeOneHotSourceState] at decoded
    split at decoded
    · rename_i witness
      have chosen : Classical.choose witness = source := Option.some.inj decoded
      rw [← chosen]
      exact Classical.choose_spec witness
    · contradiction

@[simp]
theorem oneHotSourceCodec_decode_encode (source : CanonicalSource) :
    oneHotSourceCodec.decode (oneHotSourceCodec.encode source) = some source :=
  oneHotSourceCodec.decode_encode source

end

end BitMatrix.Codec
```
