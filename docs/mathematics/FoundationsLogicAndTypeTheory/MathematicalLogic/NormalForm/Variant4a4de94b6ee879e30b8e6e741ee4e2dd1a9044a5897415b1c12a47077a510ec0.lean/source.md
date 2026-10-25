# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.NormalForm.Variant4a4de94b6ee879e30b8e6e741ee4e2dd1a9044a5897415b1c12a47077a510ec0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6f10d141eff95dc17e65a3424a1f8827a1703bdd` · SHA-256 `4a4de94b6ee879e30b8e6e741ee4e2dd1a9044a5897415b1c12a47077a510ec0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.Compression.Semantics

set_option autoImplicit false

namespace Think.Compression.Syntax

def encode {α : Type} (xs : List α) : CompressedString α :=
  { raw := encodeRaw xs
    wf := encodeRaw_wf xs }

theorem decode_encode_identity {α : Type}
    (xs : List α) :
    decode (encode xs) = xs := by
  exact encodeRaw_denote xs

def normalize {α : Type} (s : CompressedString α) : CompressedString α :=
  encode (decode s)

theorem normalize_def {α : Type}
    (s : CompressedString α) :
    normalize s = encode (decode s) := rfl

theorem normalize_sound {α : Type}
    (s : CompressedString α) :
    decode (normalize s) = decode s := by
  unfold normalize
  rw [decode_encode_identity]

theorem normalize_idempotent {α : Type}
    (s : CompressedString α) :
    normalize (normalize s) = normalize s := by
  unfold normalize
  rw [decode_encode_identity]

theorem encode_decode_normalizes {α : Type}
    (s : CompressedString α) :
    encode (decode s) = normalize s := rfl

def NormalForm {α : Type} (s : CompressedString α) : Prop :=
  (normalize s).raw = s.raw

def CanonicalRaw {α : Type} (s : CompressedString α) : Prop :=
  ∃ xs : List α, s.raw = encodeRaw xs

theorem encode_is_normal {α : Type}
    (xs : List α) :
    NormalForm (encode xs) := by
  unfold NormalForm normalize decode encode
  change encodeRaw (denote (encodeRaw xs)) = encodeRaw xs
  rw [encodeRaw_denote]

theorem normalize_is_normal {α : Type}
    (s : CompressedString α) :
    NormalForm (normalize s) := by
  unfold NormalForm normalize
  rw [decode_encode_identity]

theorem encode_is_canonical_raw {α : Type}
    (xs : List α) :
    CanonicalRaw (encode xs) :=
  ⟨xs, rfl⟩

theorem normalForm_is_canonical_raw {α : Type}
    (s : CompressedString α)
    (h : NormalForm s) :
    CanonicalRaw s :=
  ⟨decode s, h.symm⟩

theorem normalize_unique_raw {α : Type}
    {s t : CompressedString α}
    (hs : NormalForm s)
    (ht : NormalForm t)
    (hdecode : decode s = decode t) :
    s.raw = t.raw := by
  calc
    s.raw = (normalize s).raw := hs.symm
    _ = encodeRaw (decode s) := rfl
    _ = encodeRaw (decode t) := by rw [hdecode]
    _ = (normalize t).raw := rfl
    _ = t.raw := ht

structure NormalCompressedString (α : Type) where
  carrier : CompressedString α
  normal : NormalForm carrier
deriving Repr

def normalInclude {α : Type} (normal : NormalCompressedString α) :
    CompressedString α :=
  normal.carrier

def reflect {α : Type} (s : CompressedString α) :
    NormalCompressedString α :=
  { carrier := normalize s
    normal := normalize_is_normal s }

theorem include_reflect_raw {α : Type}
    (s : CompressedString α) :
    (normalInclude (reflect s)).raw = (normalize s).raw := rfl

theorem reflect_include_raw {α : Type}
    (normal : NormalCompressedString α) :
    (normalInclude (reflect (normalInclude normal))).raw =
      (normalInclude normal).raw :=
  normal.normal

def normalEncode {α : Type} (xs : List α) :
    NormalCompressedString α :=
  { carrier := encode xs
    normal := encode_is_normal xs }

def normalDecode {α : Type}
    (normal : NormalCompressedString α) : List α :=
  decode normal.carrier

theorem normalDecode_normalEncode {α : Type}
    (xs : List α) :
    normalDecode (normalEncode xs) = xs :=
  decode_encode_identity xs

theorem normalEncode_normalDecode_raw {α : Type}
    (normal : NormalCompressedString α) :
    (normalEncode (normalDecode normal)).carrier.raw =
      normal.carrier.raw :=
  normalize_unique_raw
    (encode_is_normal (normalDecode normal))
    normal.normal
    (decode_encode_identity (normalDecode normal))

theorem norm_list_left_inverse {α : Type}
    (xs : List α) :
    normalDecode (normalEncode xs) = xs :=
  normalDecode_normalEncode xs

theorem norm_list_right_inverse_raw {α : Type}
    (normal : NormalCompressedString α) :
    (normalEncode (normalDecode normal)).carrier.raw =
      normal.carrier.raw :=
  normalEncode_normalDecode_raw normal

def adjunctionOrientation : String :=
  "decode_left_adjoint_encode_right_adjoint_normalize_encode_after_decode"

theorem encode_injective {α : Type} :
    Function.Injective (@encode α) := by
  intro xs ys h
  have hdecode := congrArg decode h
  simpa [decode_encode_identity] using hdecode

theorem decode_surjective {α : Type} :
    Function.Surjective (@decode α) := by
  intro xs
  exact ⟨encode xs, decode_encode_identity xs⟩

def subword {α : Type}
    (s : CompressedString α) (start len : Nat) : CompressedString α :=
  encode (((decode s).drop start).take len)

theorem subword_preserves_wellFormed {α : Type}
    (s : CompressedString α) (start len : Nat) :
    WellFormed (subword s start len).raw :=
  (subword s start len).wf

theorem decode_subword {α : Type}
    (s : CompressedString α) (start len : Nat) :
    decode (subword s start len) =
      ((decode s).drop start).take len := by
  unfold subword
  rw [decode_encode_identity]

end Think.Compression.Syntax
```
