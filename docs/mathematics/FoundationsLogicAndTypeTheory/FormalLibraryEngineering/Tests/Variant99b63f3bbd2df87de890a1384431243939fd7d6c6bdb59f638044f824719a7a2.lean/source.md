# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tests.Variant99b63f3bbd2df87de890a1384431243939fd7d6c6bdb59f638044f824719a7a2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4b38000a57565211eee31dbb1e9686521ba4f1ed` · SHA-256 `99b63f3bbd2df87de890a1384431243939fd7d6c6bdb59f638044f824719a7a2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FilesystemCodec.Commitment
import FilesystemCodec.FieldRows
import BitMatrix.FiniteField.GaloisRound
import Mathlib.Tactic.DeriveFintype
import Mathlib.Tactic.FinCases

/-!
# Concrete tests for filesystem matrix codecs

These finite examples exercise the framing, row-field, absorption, and digest
boundaries proved by the production modules.  Computation is used only for the
small concrete carriers; semantic round trips and noninvertibility results are
instances of the corresponding general theorems.
-/

namespace FilesystemCodec

open BitMatrix.Reduction.SAT
open BitMatrix.FiniteField

/-! ## Five payload bits in width-three rows -/

/-- A concrete five-bit payload with alternating bits. -/
def payload5 : BitString :=
  BitString.ofBits fun i : Fin 5 => decide (i.val % 2 = 0)

example :
    (block (r := 3) (by decide) payload5).rows = 2 := by
  native_decide

example :
    (block (r := 3) (by decide) payload5).payloadBits = 5 := by
  native_decide

example :
    unblock (block (r := 3) (by decide) payload5) = payload5 :=
  unblock_block _ _

/-- The sixth row-major coordinate is canonical zero padding. -/
example :
    BitMatrix.FiniteField.flattenEquiv
        (block (r := 3) (by decide) payload5).rows 3
        (block (r := 3) (by decide) payload5).matrix
        ⟨5, by decide⟩ =
      false := by
  native_decide

/-! ## A bare matrix forgets the padding boundary -/

/-- The one-bit payload `0`. -/
def zeroPayload1 : BitString :=
  BitString.ofBits fun _ : Fin 1 => false

/-- The two-bit payload `00`. -/
def zeroPayload2 : BitString :=
  BitString.ofBits fun _ : Fin 2 => false

example : zeroPayload1 ≠ zeroPayload2 := by
  intro h
  have hlen := congrArg BitString.bitLength h
  change 1 = 2 at hlen
  omega

example :
    (block (r := 2) (by decide) zeroPayload1).toVariableMatrix =
      (block (r := 2) (by decide) zeroPayload2).toVariableMatrix := by
  native_decide

/-! ## A concrete one-bit row field encoding -/

/-- The unique entry of a `1 × 1` coordinate matrix represents its `GF2` value. -/
def gf2RowCoordinates : GF2 ≃ₗ[GF2] GF2Matrix 1 1 :=
  { toFun := fun x _ _ => x
    invFun := fun A => A 0 0
    left_inv := fun _ => rfl
    right_inv := by
      intro A
      funext i j
      fin_cases i
      fin_cases j
      rfl
    map_add' := by intro x y; rfl
    map_smul' := by intro c x; rfl }

/-- A model-indexed encoding of a one-bit row by `GF2`. -/
def gf2RowEncoding : RowFieldEncoding GF2 1 :=
  ⟨gf2RowCoordinates⟩

/-- Three field values used to exercise the row-vector round trip. -/
def gf2Values : Fin 3 → GF2 :=
  fun i => if i.val = 1 then 0 else 1

example :
    rowVectorEquiv gf2RowEncoding 3
        ((rowVectorEquiv gf2RowEncoding 3).symm gf2Values) =
      gf2Values := by
  simp

example (A B : BitMatrix 3 1) :
    rowVectorEquiv gf2RowEncoding 3 (BitMatrix.xor A B) =
      fun i =>
        rowVectorEquiv gf2RowEncoding 3 A i +
          rowVectorEquiv gf2RowEncoding 3 B i :=
  rowVectorEquiv_xor gf2RowEncoding A B

/-! ## Fixed-width digest compression -/

/-- A three-element abstract snapshot domain. -/
inductive TinySnapshot
  | first
  | second
  | third
  deriving DecidableEq, Fintype

/-- A one-bit digest deliberately colliding on `first` and `second`. -/
def tinyDigest : TinySnapshot → BitMatrix 1 1
  | .first => fun _ _ => false
  | .second => fun _ _ => false
  | .third => fun _ _ => true

example : ¬ Function.Injective tinyDigest :=
  digest_not_injective_of_card_gt tinyDigest (by decide)

example :
    TinySnapshot.first ≠ TinySnapshot.second ∧
      tinyDigest TinySnapshot.first = tinyDigest TinySnapshot.second := by
  native_decide

example :
    ¬ ∃ decode : BitMatrix 1 1 → Option TinySnapshot,
        ∀ snapshot, decode (tinyDigest snapshot) = some snapshot :=
  no_digest_decoder_of_card_gt tinyDigest (by decide)

/-! ## Known-block absorption versus joint compression -/

/-- Inversion is an explicit permutation of the two-element field. -/
noncomputable def gf2Permutation : GF2 ≃ GF2 :=
  BitMatrix.FiniteField.Round.inversionPermutation

/-- Interpret a Boolean block as its corresponding `GF2` element. -/
def injectBoolGF2 : Bool → GF2 :=
  BitMatrix.FiniteField.boolGF2Equiv

example (block : Bool) (state : GF2) :
    unabsorb gf2Permutation injectBoolGF2 block
        (absorb gf2Permutation injectBoolGF2 block state) =
      state :=
  unabsorb_absorb _ _ _ _

example :
    ¬ Function.Injective
        (fun input : GF2 × Bool =>
          absorb gf2Permutation injectBoolGF2 input.2 input.1) :=
  absorb_pair_not_injective gf2Permutation injectBoolGF2 (by decide)

end FilesystemCodec
```
