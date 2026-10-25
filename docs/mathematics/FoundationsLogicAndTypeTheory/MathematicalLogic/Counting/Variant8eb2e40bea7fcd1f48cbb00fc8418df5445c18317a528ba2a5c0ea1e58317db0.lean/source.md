# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Counting.Variant8eb2e40bea7fcd1f48cbb00fc8418df5445c18317a528ba2a5c0ea1e58317db0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `18b7076c3ff276d8bf3a35a7de5a4c0dfc495258` · SHA-256 `cd2b341b0634607a96e05008d7e0734cf56a1cdfd4d61475c7f69661ada53cce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CountableEncoding.Variant36c0a8fdb0d51671429bdafa62bb22c7633d16dee0821769a3f7cb8d4299d4ae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"36c0a8fdb0d51671429bdafa62bb22c7633d16dee0821769a3f7cb8d4299d4ae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.CountableEncoding.Variant36c0a8fdb0d51671429bdafa62bb22c7633d16dee0821769a3f7cb8d4299d4ae","mathematical_subject":"Logic.Foundations","original_sha256":"36c0a8fdb0d51671429bdafa62bb22c7633d16dee0821769a3f7cb8d4299d4ae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/Tree/Counting.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.Tree.Core


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CountableEncoding.Variant36c0a8fdb0d51671429bdafa62bb22c7633d16dee0821769a3f7cb8d4299d4ae

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
