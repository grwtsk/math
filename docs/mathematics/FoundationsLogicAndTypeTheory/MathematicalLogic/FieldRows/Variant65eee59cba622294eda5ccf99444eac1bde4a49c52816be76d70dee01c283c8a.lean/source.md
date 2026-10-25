# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FieldRows.Variant65eee59cba622294eda5ccf99444eac1bde4a49c52816be76d70dee01c283c8a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ac0738c6dfe5be2bd51af45358e9f3755ff81203` · SHA-256 `50b880c30797df11d3fcd3a77fbc8072f40c1b3902b13e12175996d81b24fbc2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.RowFieldEncoding.Variant1d3b10e2914b5222e19a05e4941e251fe4ce0a48609b0e7d3f825e7f2590fc84","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1d3b10e2914b5222e19a05e4941e251fe4ce0a48609b0e7d3f825e7f2590fc84","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.RowFieldEncoding.Variant1d3b10e2914b5222e19a05e4941e251fe4ce0a48609b0e7d3f825e7f2590fc84","mathematical_subject":"Logic.Foundations","original_sha256":"1d3b10e2914b5222e19a05e4941e251fe4ce0a48609b0e7d3f825e7f2590fc84","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/FilesystemCodec/FieldRows.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FilesystemCodec.Blocks

/-!
# Field interpretations of framed filesystem rows

Blocking produces Boolean rows; this module interprets each such row through an
explicit model-indexed `GF(2)`-linear field encoding.  The chosen field model is
responsible for its irreducible polynomial, basis, coefficient order, and the
endianness convention already embodied by the bit encoding.  No canonical
choice of any of those parameters is inferred from the row width.

For a fixed row count, conversion between a Boolean matrix and a field-valued
row vector is an equivalence.  Taking the dependent sum over all row counts
therefore gives the exact representation theorem

`(Σ k, BitMatrix k r) ≃ (Σ k, Fin k → F)`.

This equivalence concerns row contents only.  A field vector by itself does not
retain a payload's bit length or certify canonical zero padding; that framing
data remains in `BitPacket` and must accompany the vector when reconstruction
of the original variable-length payload is required.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.RowFieldEncoding.Variant1d3b10e2914b5222e19a05e4941e251fe4ce0a48609b0e7d3f825e7f2590fc84

universe u

namespace FilesystemCodec

open BitMatrix.Reduction.SAT
open BitMatrix.Dynamics.Avalanche

/-! ## One-row field encodings -/

/--
An explicit `GF(2)`-linear interpretation of one `r`-bit matrix row as a field
element.
-/
abbrev RowFieldEncoding
    (F : Type u)
    [Field F]
    [Fintype F]
    [Algebra BitMatrix.FiniteField.GF2 F]
    (r : Nat) :=
  BitMatrix.FiniteField.Encoding F 1 r

/-- Remove the unique row coordinate from a one-row Boolean matrix. -/
def oneRowEquiv (r : Nat) : BitMatrix 1 r ≃ Bits r where
  toFun M j := M 0 j
  invFun bits _ j := bits j
  left_inv M := by
    ext i j
    have hi : i = (0 : Fin 1) := Subsingleton.elim _ _
    subst i
    rfl
  right_inv bits := by
    funext j
    rfl

namespace RowFieldEncoding

variable {F : Type u}
variable [Field F] [Fintype F] [Algebra BitMatrix.FiniteField.GF2 F]
variable {r : Nat}

/-- The selected field model, viewed directly as an `r`-bit row encoding. -/
def code (E : RowFieldEncoding F r) : F ≃ Bits r :=
  BitMatrix.FiniteField.Encoding.code E |>.trans (oneRowEquiv r)

/-- The row code sends field addition to pointwise Boolean XOR. -/
theorem code_add
    (E : RowFieldEncoding F r)
    (x y : F) :
    E.code (x + y) = xorBits (E.code x) (E.code y) := by
  funext j
  change
    (BitMatrix.FiniteField.Encoding.code E (x + y)) 0 j =
      (BitMatrix.FiniteField.Encoding.code E x 0 j !=
        BitMatrix.FiniteField.Encoding.code E y 0 j)
  rw [BitMatrix.FiniteField.Encoding.code_add]
  rfl

end RowFieldEncoding

/-! ## Fixed-row matrices and field vectors -/

variable {F : Type u}
variable [Field F] [Fintype F] [Algebra BitMatrix.FiniteField.GF2 F]
variable {r k : Nat}

/-- Extract row `i` of a Boolean matrix as an `r`-bit vector. -/
def matrixRow (M : BitMatrix k r) (i : Fin k) : Bits r :=
  fun j => M i j

/--
Decode every matrix row independently through `E`.  Its inverse encodes every
field coordinate back into the corresponding Boolean row.
-/
def rowVectorEquiv
    (E : RowFieldEncoding F r)
    (k : Nat) :
    BitMatrix k r ≃ (Fin k → F) where
  toFun M i := E.code.symm (matrixRow M i)
  invFun values i j := E.code (values i) j
  left_inv M := by
    ext i j
    change E.code (E.code.symm (matrixRow M i)) j = M i j
    rw [E.code.apply_symm_apply]
    rfl
  right_inv values := by
    funext i
    change E.code.symm (E.code (values i)) = values i
    exact E.code.symm_apply_apply (values i)

@[simp]
theorem rowVectorEquiv_apply
    (E : RowFieldEncoding F r)
    (M : BitMatrix k r)
    (i : Fin k) :
    rowVectorEquiv E k M i =
      E.code.symm (matrixRow M i) :=
  rfl

@[simp]
theorem rowVectorEquiv_symm_apply
    (E : RowFieldEncoding F r)
    (x : Fin k → F)
    (i : Fin k)
    (j : Fin r) :
    (rowVectorEquiv E k).symm x i j =
      E.code (x i) j :=
  rfl

/-- Pointwise matrix XOR decodes to pointwise field addition, row by row. -/
theorem rowVectorEquiv_xor
    (E : RowFieldEncoding F r)
    (A B : BitMatrix k r) :
    rowVectorEquiv E k (BitMatrix.xor A B) =
      fun i => rowVectorEquiv E k A i + rowVectorEquiv E k B i := by
  funext i
  apply E.code.injective
  change
    E.code (E.code.symm (matrixRow (BitMatrix.xor A B) i)) =
      E.code
        (E.code.symm (matrixRow A i) + E.code.symm (matrixRow B i))
  rw [E.code.apply_symm_apply, E.code_add,
    E.code.apply_symm_apply, E.code.apply_symm_apply]
  rfl

/-! ## Dependent variable-row representation -/

/-- A field vector whose finite row count is retained in its type. -/
abbrev VariableFieldVector (F : Type u) :=
  Σ k : Nat, Fin k → F

/--
Apply the fixed-row equivalence inside each summand, retaining the row count
exactly.
-/
def variableMatrixFieldEquiv
    (E : RowFieldEncoding F r) :
    VariableMatrix r ≃ VariableFieldVector F where
  toFun M := ⟨M.1, rowVectorEquiv E M.1 M.2⟩
  invFun values := ⟨values.1, (rowVectorEquiv E values.1).symm values.2⟩
  left_inv M := by
    rcases M with ⟨k, M⟩
    simp only [Equiv.symm_apply_apply]
  right_inv values := by
    rcases values with ⟨k, values⟩
    simp only [Equiv.apply_symm_apply]

@[simp]
theorem variableMatrixFieldEquiv_rows
    (E : RowFieldEncoding F r)
    (M : VariableMatrix r) :
    (variableMatrixFieldEquiv E M).1 = M.1 :=
  rfl

@[simp]
theorem variableMatrixFieldEquiv_symm_rows
    (E : RowFieldEncoding F r)
    (values : VariableFieldVector F) :
    ((variableMatrixFieldEquiv E).symm values).1 = values.1 :=
  rfl

/-! ## Retaining packet framing alongside field rows -/

namespace BitPacket

/-- Interpret every validated packet row as a field element. -/
def fieldRows
    (E : RowFieldEncoding F r)
    (packet : BitPacket r) :
    Fin packet.rows → F :=
  rowVectorEquiv E packet.rows packet.matrix

/-- Re-encode a packet's interpreted field rows as a Boolean matrix. -/
def matrixOfFieldRows
    (E : RowFieldEncoding F r)
    (packet : BitPacket r) :
    BitMatrix packet.rows r :=
  (rowVectorEquiv E packet.rows).symm (packet.fieldRows E)

@[simp]
theorem matrixOfFieldRows_eq
    (E : RowFieldEncoding F r)
    (packet : BitPacket r) :
    packet.matrixOfFieldRows E = packet.matrix :=
  (rowVectorEquiv E packet.rows).symm_apply_apply packet.matrix

end BitPacket

end FilesystemCodec
```
