# Complete source: GRWTSK.Algebra.UniversalAlgebra.Blocks.Variante3afb526265eda1580b86b58642fd6c9af7892944b58033f42dbdb60f1e7bf9d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ae10cc237a7795dee4e544d313e52871204f8e88` · SHA-256 `6358a99f14600538c28163bdc289dcc4002f5e5a054e10beb88bf330148d41ac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.BitString.Variant5ed626a0b32688e7c00d5c2201a0e1df8ded14a627979442f150adaadd2f286a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5ed626a0b32688e7c00d5c2201a0e1df8ded14a627979442f150adaadd2f286a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.BitString.Variant5ed626a0b32688e7c00d5c2201a0e1df8ded14a627979442f150adaadd2f286a","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"5ed626a0b32688e7c00d5c2201a0e1df8ded14a627979442f150adaadd2f286a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/FilesystemCodec/Blocks.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FilesystemCodec.Serialization
import BitMatrix.FiniteField.Galois
import Mathlib.Algebra.Order.Floor.Div

/-!
# Dependently sized filesystem blocks

A serialized payload has a run-time bit length, whereas `BitMatrix k r` records
both dimensions in its type.  `BitString` packages a bit vector with its
length, and `BitPacket r` retains the dependent row count together with the
exact payload length and a proof that every padding bit is zero.

That framing information is essential.  Padding cannot be removed by scanning
trailing zeros: a genuine trailing zero is observationally identical to a
padding zero.  Consequently the bare coproduct `Σ k, BitMatrix k r` is not a
complete packet representation.  The explicit counterexample below shows
that the one-bit payload `0` and the two-bit payload `00` have the same bare
one-row matrix at width two, while their validated packets remain distinct.

All matrices use the existing row-major `BitMatrix.FiniteField.flattenEquiv`.  No host
filesystem operation or machine-word bound enters this pure framing layer.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.BitString.Variant5ed626a0b32688e7c00d5c2201a0e1df8ded14a627979442f150adaadd2f286a

namespace FilesystemCodec

open BitMatrix.Reduction.SAT

/-! ## Variable-length bit strings -/

/-- A bit vector whose width is stored as dependent data. -/
structure BitString where
  bitLength : Nat
  bits : Bits bitLength
  deriving DecidableEq

/-- Dependent extensionality for variable-length bit strings. -/
@[ext]
theorem BitString.ext {x y : BitString}
    (hlen : x.bitLength = y.bitLength)
    (hbits : HEq x.bits y.bits) : x = y := by
  cases x with
  | mk xn xb =>
      cases y with
      | mk yn yb =>
          cases hlen
          cases hbits
          rfl

/-- The unique empty bit string. -/
def BitString.empty : BitString :=
  ⟨0, fun i => Fin.elim0 i⟩

/-- Forget the static width of a bit vector by storing it in `BitString`. -/
def BitString.ofBits (bits : Bits n) : BitString :=
  ⟨n, bits⟩

/-- A byte-framing codec fixes byte order and within-byte bit order. -/
abbrev ByteBitCodec :=
  DAF.LeftInverseCodec FramedBytes BitString

/-! ## Canonical row count -/

/-- The least number of width-`r` rows capable of holding `payloadBits` bits. -/
def rowsFor (r payloadBits : Nat) : Nat :=
  payloadBits ⌈/⌉ r

/-- Ceiling division provides enough coordinates for the complete payload. -/
theorem payloadBits_le_rowsFor_mul (hr : 0 < r) (payloadBits : Nat) :
    payloadBits ≤ rowsFor r payloadBits * r := by
  simpa [rowsFor, Nat.mul_comm] using
    (le_smul_ceilDiv hr : payloadBits ≤ r • (payloadBits ⌈/⌉ r))

/-- `rowsFor` is the least row count satisfying the capacity inequality. -/
theorem rowsFor_minimal (hr : 0 < r) {payloadBits rows : Nat}
    (hfit : payloadBits ≤ rows * r) :
    rowsFor r payloadBits ≤ rows := by
  rw [rowsFor, ceilDiv_le_iff_le_mul hr]
  simpa [Nat.mul_comm] using hfit

/-! ## Raw and validated packets -/

/-- A matrix packet before its capacity, row count, and padding are validated. -/
structure RawBitPacket (r : Nat) where
  rows : Nat
  matrix : BitMatrix rows r
  payloadBits : Nat
  deriving DecidableEq

/-- Dependent extensionality for raw packets. -/
@[ext]
theorem RawBitPacket.ext {x y : RawBitPacket r}
    (hrows : x.rows = y.rows)
    (hmatrix : HEq x.matrix y.matrix)
    (hpayload : x.payloadBits = y.payloadBits) : x = y := by
  cases x with
  | mk xr xm xp =>
      cases y with
      | mk yr ym yp =>
          cases hrows
          cases hmatrix
          cases hpayload
          rfl

/--
Canonical packet validity records sufficient capacity, the minimal row count,
and zero padding after the exact payload boundary.
-/
def RawBitPacket.Canonical (packet : RawBitPacket r) : Prop :=
  packet.payloadBits ≤ packet.rows * r ∧
  packet.rows = rowsFor r packet.payloadBits ∧
  ∀ k : Fin (packet.rows * r),
    packet.payloadBits ≤ k.val →
      BitMatrix.FiniteField.flattenEquiv packet.rows r packet.matrix k = false

/-- A canonically framed, zero-padded variable-row matrix packet. -/
def BitPacket (r : Nat) :=
  {packet : RawBitPacket r // packet.Canonical}

namespace BitPacket

/-- The dependent row count of a validated packet. -/
def rows (packet : BitPacket r) : Nat :=
  packet.1.rows

/-- The Boolean matrix carried by a validated packet. -/
def matrix (packet : BitPacket r) : BitMatrix packet.rows r :=
  packet.1.matrix

/-- The exact number of non-padding coordinates. -/
def payloadBits (packet : BitPacket r) : Nat :=
  packet.1.payloadBits

@[simp] theorem rows_mk (packet : RawBitPacket r) (h) :
    rows ⟨packet, h⟩ = packet.rows := rfl

@[simp] theorem matrix_mk (packet : RawBitPacket r) (h) :
    matrix ⟨packet, h⟩ = packet.matrix := rfl

@[simp] theorem payloadBits_mk (packet : RawBitPacket r) (h) :
    payloadBits ⟨packet, h⟩ = packet.payloadBits := rfl

theorem capacity (packet : BitPacket r) :
    packet.payloadBits ≤ packet.rows * r :=
  packet.2.1

theorem rows_eq (packet : BitPacket r) :
    packet.rows = rowsFor r packet.payloadBits :=
  packet.2.2.1

theorem padding (packet : BitPacket r) (k : Fin (packet.rows * r))
    (hk : packet.payloadBits ≤ k.val) :
    BitMatrix.FiniteField.flattenEquiv packet.rows r packet.matrix k = false :=
  packet.2.2.2 k hk

end BitPacket

/-! ## Blocking and unblocking -/

/--
Block a variable-length payload into the least number of width-`r` rows,
placing payload bits in row-major order and filling unused coordinates with
`false`.
-/
def block {r : Nat} (hr : 0 < r) (payload : BitString) : BitPacket r := by
  let rows := rowsFor r payload.bitLength
  let padded : Bits (rows * r) := fun k =>
    if h : k.val < payload.bitLength then payload.bits ⟨k.val, h⟩ else false
  let matrix : BitMatrix rows r :=
    (BitMatrix.FiniteField.flattenEquiv rows r).symm padded
  refine ⟨⟨rows, matrix, payload.bitLength⟩, ?_⟩
  refine ⟨payloadBits_le_rowsFor_mul hr payload.bitLength, rfl, ?_⟩
  intro k hk
  simp only [matrix, Equiv.apply_symm_apply]
  simp [padded, Nat.not_lt.mpr hk]

/-- Discard canonical padding using the packet's retained payload length. -/
def unblock {r : Nat} (packet : BitPacket r) : BitString :=
  ⟨packet.payloadBits, fun k =>
    BitMatrix.FiniteField.flattenEquiv packet.rows r packet.matrix
      ⟨k.val, lt_of_lt_of_le k.isLt packet.capacity⟩⟩

@[simp]
theorem block_rows {r : Nat} (hr : 0 < r) (payload : BitString) :
    (block hr payload).rows = rowsFor r payload.bitLength :=
  rfl

@[simp]
theorem block_payloadBits {r : Nat} (hr : 0 < r) (payload : BitString) :
    (block hr payload).payloadBits = payload.bitLength :=
  rfl

@[simp]
theorem unblock_bitLength {r : Nat} (packet : BitPacket r) :
    (unblock packet).bitLength = packet.payloadBits :=
  rfl

/-- Unblocking a freshly blocked payload recovers every bit and its length. -/
@[simp]
theorem unblock_block {r : Nat} (hr : 0 < r) (payload : BitString) :
    unblock (block hr payload) = payload := by
  apply BitString.ext (x := unblock (block hr payload)) (y := payload) rfl
  apply heq_of_eq
  funext k
  change (BitMatrix.FiniteField.flattenEquiv (rowsFor r payload.bitLength) r)
      ((BitMatrix.FiniteField.flattenEquiv (rowsFor r payload.bitLength) r).symm
        (fun k => if h : k.val < payload.bitLength then
          payload.bits ⟨k.val, h⟩ else false)) _ = payload.bits k
  rw [Equiv.apply_symm_apply]
  simp

/-- Reblocking a valid packet reproduces its canonical matrix and framing. -/
@[simp]
theorem block_unblock {r : Nat} (hr : 0 < r) (packet : BitPacket r) :
    block hr (unblock packet) = packet := by
  rcases packet with ⟨⟨rows, matrix, payloadBits⟩, hcapacity, hrows, hpadding⟩
  change rows = rowsFor r payloadBits at hrows
  subst rows
  apply Subtype.ext
  refine RawBitPacket.ext
    (x := (block hr (unblock
      ⟨⟨rowsFor r payloadBits, matrix, payloadBits⟩,
        ⟨hcapacity, rfl, hpadding⟩⟩)).1)
    (y := ⟨rowsFor r payloadBits, matrix, payloadBits⟩)
    rfl (heq_of_eq ?_) rfl
  apply (BitMatrix.FiniteField.flattenEquiv (rowsFor r payloadBits) r).injective
  funext k
  by_cases hk : k.val < payloadBits
  · simp [block, unblock, hk]
    rfl
  · have hpad := hpadding k (Nat.le_of_not_gt hk)
    simpa [block, unblock, hk] using hpad

/-- Exact equivalence between arbitrary bit strings and canonical packets. -/
def blockEquiv {r : Nat} (hr : 0 < r) : BitString ≃ BitPacket r where
  toFun := block hr
  invFun := unblock
  left_inv := unblock_block hr
  right_inv := block_unblock hr

/-! ## Why a bare variable matrix is not a framed packet -/

/-- A dependent row count paired with a matrix, without payload framing. -/
abbrev VariableMatrix (r : Nat) :=
  Σ rows : Nat, BitMatrix rows r

/-- Forget the payload boundary and canonical-padding proof. -/
def BitPacket.toVariableMatrix (packet : BitPacket r) : VariableMatrix r :=
  ⟨packet.rows, packet.matrix⟩

/-- The one-bit zero payload used in the framing counterexample. -/
private def zeroPayloadOne : BitString :=
  BitString.ofBits (fun _ : Fin 1 => false)

/-- The two-bit zero payload used in the framing counterexample. -/
private def zeroPayloadTwo : BitString :=
  BitString.ofBits (fun _ : Fin 2 => false)

/--
At row width two, `0` and `00` occupy the same one-row zero matrix.  Their
packets differ because the exact payload length remains part of the framing.
-/
theorem variableMatrix_forgets_payload_length :
    ∃ p q : BitPacket 2,
      p ≠ q ∧ p.toVariableMatrix = q.toVariableMatrix := by
  let p := block (r := 2) (by decide) zeroPayloadOne
  let q := block (r := 2) (by decide) zeroPayloadTwo
  refine ⟨p, q, ?_, ?_⟩
  · intro hpq
    have hlen := congrArg BitPacket.payloadBits hpq
    change 1 = 2 at hlen
    omega
  · apply Sigma.ext
    · rfl
    · apply heq_of_eq
      ext i j
      change (if _ : (BitMatrix.FiniteField.rowMajorIndexEquiv 1 2 (i, j)).val < 1
        then false else false) =
        (if _ : (BitMatrix.FiniteField.rowMajorIndexEquiv 1 2 (i, j)).val < 2
        then false else false)
      simp

end FilesystemCodec
```
