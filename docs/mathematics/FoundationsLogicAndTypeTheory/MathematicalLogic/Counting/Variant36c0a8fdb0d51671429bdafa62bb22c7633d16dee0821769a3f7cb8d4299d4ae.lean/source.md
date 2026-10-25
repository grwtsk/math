# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Counting.Variant36c0a8fdb0d51671429bdafa62bb22c7633d16dee0821769a3f7cb8d4299d4ae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5bc280f10378ec0866456bc76842aabebf1ce6e4` · SHA-256 `36c0a8fdb0d51671429bdafa62bb22c7633d16dee0821769a3f7cb8d4299d4ae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Tree.Core

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Tree

structure CountableEncoding (α : Type) where
  encode : α → Nat
  decode : Nat → Option α
  roundTrip : ∀ x, decode (encode x) = some x

theorem CountableEncoding.encode_injective
    {α : Type}
    (E : CountableEncoding α) :
    Function.Injective E.encode := by
  intro a b h
  have hdecode := congrArg E.decode h
  rw [E.roundTrip a, E.roundTrip b] at hdecode
  injection hdecode

noncomputable def decodeByPreimage
    {α : Type}
    (encode : α → Nat)
    (n : Nat) : Option α := by
  classical
  exact
    if h : ∃ x, encode x = n then
      some (Classical.choose h)
    else
      none

theorem decodeByPreimage_roundTrip
    {α : Type}
    (encode : α → Nat)
    (hinj : Function.Injective encode)
    (x : α) :
    decodeByPreimage encode (encode x) = some x := by
  classical
  unfold decodeByPreimage
  by_cases h : ∃ y, encode y = encode x
  · simp [h]
    exact hinj (Classical.choose_spec h)
  · exfalso
    exact h ⟨x, rfl⟩

structure PairingCodec where
  pair : Nat → Nat → Nat
  unpair : Nat → Nat × Nat
  roundTrip : ∀ a b, unpair (pair a b) = (a, b)
  injective : ∀ a b c d, pair a b = pair c d → a = c ∧ b = d
  claimBoundary : List String

def tagEncode (P : PairingCodec) (tag payload : Nat) : Nat :=
  P.pair tag payload

def binaryLogicAtom_countable
    (P : PairingCodec)
    (matrixEncoding : CountableEncoding SomeBinaryLogicMatrix)
    (stringEncoding : CountableEncoding String) :
    CountableEncoding BinaryLogicAtom where
  encode := fun
    | BinaryLogicAtom.matrix M => tagEncode P 0 (matrixEncoding.encode M)
    | BinaryLogicAtom.token s => tagEncode P 1 (stringEncoding.encode s)
    | BinaryLogicAtom.modularity s => tagEncode P 2 (stringEncoding.encode s)
  decode := fun n =>
    match P.unpair n with
    | (0, payload) =>
        match matrixEncoding.decode payload with
        | some M => some (BinaryLogicAtom.matrix M)
        | none => none
    | (1, payload) =>
        match stringEncoding.decode payload with
        | some s => some (BinaryLogicAtom.token s)
        | none => none
    | (2, payload) =>
        match stringEncoding.decode payload with
        | some s => some (BinaryLogicAtom.modularity s)
        | none => none
    | _ => none
  roundTrip := by
    intro x
    cases x with
    | matrix M =>
        simp [tagEncode, P.roundTrip, matrixEncoding.roundTrip]
    | token s =>
        simp [tagEncode, P.roundTrip, stringEncoding.roundTrip]
    | modularity s =>
        simp [tagEncode, P.roundTrip, stringEncoding.roundTrip]

def encodeTree
    (P : PairingCodec)
    (atomEncoding : CountableEncoding BinaryLogicAtom) :
    BinaryLogicTree → Nat
  | BinaryLogicTree.leaf a =>
      P.pair 0 (atomEncoding.encode a)
  | BinaryLogicTree.node l r =>
      P.pair 1 (P.pair (encodeTree P atomEncoding l) (encodeTree P atomEncoding r))

theorem encodeTree_injective
    (P : PairingCodec)
    (atomEncoding : CountableEncoding BinaryLogicAtom) :
    Function.Injective (encodeTree P atomEncoding) := by
  intro A B h
  induction A generalizing B with
  | leaf a =>
      cases B with
      | leaf b =>
          have hp := P.injective 0 (atomEncoding.encode a) 0 (atomEncoding.encode b) h
          have hab := atomEncoding.encode_injective hp.2
          cases hab
          rfl
      | node l r =>
          have htag :=
            (P.injective
              0 (atomEncoding.encode a)
              1 (P.pair (encodeTree P atomEncoding l) (encodeTree P atomEncoding r))
              h).1
          cases htag
  | node l r ihl ihr =>
      cases B with
      | leaf b =>
          have htag :=
            (P.injective
              1 (P.pair (encodeTree P atomEncoding l) (encodeTree P atomEncoding r))
              0 (atomEncoding.encode b)
              h).1
          cases htag
      | node l' r' =>
          have houter :=
            P.injective
              1 (P.pair (encodeTree P atomEncoding l) (encodeTree P atomEncoding r))
              1 (P.pair (encodeTree P atomEncoding l') (encodeTree P atomEncoding r'))
              h
          have hinner :=
            P.injective
              (encodeTree P atomEncoding l)
              (encodeTree P atomEncoding r)
              (encodeTree P atomEncoding l')
              (encodeTree P atomEncoding r')
              houter.2
          have hl := ihl hinner.1
          have hr := ihr hinner.2
          cases hl
          cases hr
          rfl

noncomputable def decodeTree
    (P : PairingCodec)
    (atomEncoding : CountableEncoding BinaryLogicAtom) :
    Nat → Option BinaryLogicTree :=
  decodeByPreimage (encodeTree P atomEncoding)

theorem decodeTree_encodeTree
    (P : PairingCodec)
    (atomEncoding : CountableEncoding BinaryLogicAtom)
    (t : BinaryLogicTree) :
    decodeTree P atomEncoding (encodeTree P atomEncoding t) = some t :=
  decodeByPreimage_roundTrip
    (encodeTree P atomEncoding)
    (encodeTree_injective P atomEncoding)
    t

noncomputable def binaryLogicTree_countable
    (P : PairingCodec)
    (atomEncoding : CountableEncoding BinaryLogicAtom) :
    CountableEncoding BinaryLogicTree where
  encode := encodeTree P atomEncoding
  decode := decodeTree P atomEncoding
  roundTrip := decodeTree_encodeTree P atomEncoding

def natMatrixAtom (n : Nat) : BinaryLogicAtom :=
  BinaryLogicAtom.matrix {
    rows := n + 1
    cols := 0
    matrix := BinaryLogicMatrix.zero (n + 1) 0
  }

def natLeaf (n : Nat) : BinaryLogicTree :=
  BinaryLogicTree.leaf (natMatrixAtom n)

theorem natLeaf_injective :
    Function.Injective natLeaf := by
  intro a b h
  unfold natLeaf natMatrixAtom at h
  injection h with hatom
  injection hatom with hmatrix
  have hrows := congrArg SomeBinaryLogicMatrix.rows hmatrix
  exact Nat.succ.inj hrows

theorem binaryLogicTree_countably_infinite
    (P : PairingCodec)
    (atomEncoding : CountableEncoding BinaryLogicAtom) :
    Nonempty (CountableEncoding BinaryLogicTree) ∧
      ∃ f : Nat → BinaryLogicTree, Function.Injective f := by
  exact ⟨⟨binaryLogicTree_countable P atomEncoding⟩, ⟨natLeaf, natLeaf_injective⟩⟩

end Tree
end BinaryLogicMatrix
end Surface.Legacy
```
