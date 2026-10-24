# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Quantization.Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e2ae163336eb522ead3f0c496540e380e30249d7` · SHA-256 `a103bd80345b4244777d7323a9b18e35e7b2fb813cd07fe91e842c8eeea4ddf1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Quantizer.Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Quantizer.Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"eab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/.codex/audits/native-world-model-4d75f63f/replay-d050d760/Surface/BinaryMatrix/Quantization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BinaryMatrix
import Surface.ContinuousAssurance.QuantizationLevel
import Batteries.Data.Nat.Lemmas
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Tactic

/-!
# Finite quantization semantics

A `BinMat.Quantizer Cfg m n` observes a configuration by encoding it as an
`m × n` matrix of bits. Equality of observations induces an equivalence
relation: it is reflexive, symmetric, and transitive because matrix equality
has those properties.

The effective state space is the image of the encoder, not generally the whole
matrix space. Quotienting configurations by indistinguishability therefore
produces exactly the effective states, even when some binary matrices are never
realized. For finite configuration types, the realized image has at most as
many elements as the domain and at most `2 ^ (m * n)` elements globally: there
are `m * n` independently Boolean matrix entries.

An array-backed encoder can be lifted with `Quantizer.ofMut`. Its semantics are
deliberately observational: implementation values are compared only after
conversion through `BinMatMut.toDecl`, never by raw structure or proof-field
equality.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Quantizer.Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b

universe u

namespace BinMat

/--
A finite-resolution observation of configurations as `m × n` binary matrices.

The configuration type need not itself be finite; finiteness is required only
for explicit enumeration of the realized outputs.
-/
structure Quantizer
    (Cfg : Type u)
    (m n : Nat) where
  /-- Encode a configuration as its observable binary matrix. -/
  encode : Cfg → BinMat m n

namespace Quantizer

variable {Cfg : Type u} {m n : Nat}

/-- Configurations are indistinguishable exactly when their encodings agree. -/
def Indistinguishable
    (Q : Quantizer Cfg m n)
    (u v : Cfg) :
    Prop :=
  Q.encode u = Q.encode v

/-- Every configuration is indistinguishable from itself. -/
@[simp]
theorem indistinguishable_refl
    (Q : Quantizer Cfg m n)
    (u : Cfg) :
    Q.Indistinguishable u u :=
  rfl

/-- Indistinguishability is symmetric because equality of encodings is symmetric. -/
theorem indistinguishable_symm
    (Q : Quantizer Cfg m n)
    {u v : Cfg}
    (h : Q.Indistinguishable u v) :
    Q.Indistinguishable v u :=
  h.symm

/-- Indistinguishability is transitive because equality of encodings is transitive. -/
theorem indistinguishable_trans
    (Q : Quantizer Cfg m n)
    {u v w : Cfg}
    (huv : Q.Indistinguishable u v)
    (hvw : Q.Indistinguishable v w) :
    Q.Indistinguishable u w :=
  huv.trans hvw

/--
The encoder kernel as a setoid. Its equivalence laws are inherited from
equality in the declarative matrix space.
-/
def setoid
    (Q : Quantizer Cfg m n) :
    Setoid Cfg where
  r := Q.Indistinguishable
  iseqv := {
    refl := fun u => Q.indistinguishable_refl u
    symm := fun h => Q.indistinguishable_symm h
    trans := fun h₁ h₂ => Q.indistinguishable_trans h₁ h₂
  }

/--
The effective states are precisely the matrices realized by some
configuration. This image can be a proper subset of all `m × n` matrices.
-/
def EffectiveState
    (Q : Quantizer Cfg m n) :=
  {A : BinMat m n // ∃ u : Cfg, Q.encode u = A}

/-- Regard one encoded configuration as a realized effective state. -/
def toEffective
    (Q : Quantizer Cfg m n)
    (u : Cfg) :
    Q.EffectiveState :=
  ⟨Q.encode u, u, rfl⟩

/--
Factor the encoder through indistinguishability classes. Well-definedness is
exactly the assertion that indistinguishable representatives encode equally.
-/
def quotientToEffective
    (Q : Quantizer Cfg m n) :
    Quotient Q.setoid → Q.EffectiveState :=
  Quotient.lift Q.toEffective (by
    intro u v huv
    apply Subtype.ext
    exact huv)

/-- The quotient map sends a representative to its encoded effective state. -/
@[simp]
theorem quotientToEffective_mk
    (Q : Quantizer Cfg m n)
    (u : Cfg) :
    Q.quotientToEffective (Quotient.mk Q.setoid u) =
      Q.toEffective u :=
  rfl

/--
Distinct quotient classes have distinct effective states: equal image values
make their representatives indistinguishable.
-/
theorem quotientToEffective_injective
    (Q : Quantizer Cfg m n) :
    Function.Injective Q.quotientToEffective := by
  intro x y h
  induction x using Quotient.inductionOn with
  | _ u =>
    induction y using Quotient.inductionOn with
    | _ v =>
      apply Quotient.sound
      change Q.encode u = Q.encode v
      exact congrArg Subtype.val h

/-- Every effective state has a representative configuration in the quotient. -/
theorem quotientToEffective_surjective
    (Q : Quantizer Cfg m n) :
    Function.Surjective Q.quotientToEffective := by
  rintro ⟨A, u, hu⟩
  refine ⟨Quotient.mk Q.setoid u, ?_⟩
  apply Subtype.ext
  exact hu

/--
Indistinguishability classes are equivalent to the encoder image. They are not
claimed to be equivalent to the entire matrix space, since the encoder need
not realize every binary matrix.
-/
noncomputable def quotientEquivEffective
    (Q : Quantizer Cfg m n) :
    Quotient Q.setoid ≃ Q.EffectiveState :=
  Equiv.ofBijective Q.quotientToEffective
    ⟨Q.quotientToEffective_injective,
     Q.quotientToEffective_surjective⟩

/-- Enumerate the distinct outputs realized by a finite configuration type. -/
def effectiveStates
    (Q : Quantizer Cfg m n)
    [Fintype Cfg] :
    Finset (BinMat m n) :=
  Finset.univ.image Q.encode

/-- Membership in the finite enumeration is equivalent to being encoded. -/
theorem mem_effectiveStates_iff
    (Q : Quantizer Cfg m n)
    [Fintype Cfg]
    (A : BinMat m n) :
    A ∈ Q.effectiveStates ↔
      ∃ u : Cfg, Q.encode u = A := by
  simp [effectiveStates]

/-- A finite encoder image has no more states than its configuration domain. -/
theorem card_effectiveStates_le_domain
    (Q : Quantizer Cfg m n)
    [Fintype Cfg] :
    Q.effectiveStates.card ≤ Fintype.card Cfg := by
  simpa [effectiveStates] using
    (Finset.card_image_le (s := Finset.univ) (f := Q.encode))

/--
An `m × n` one-bit matrix has exactly `2 ^ (m * n)` possible values.

This also covers zero rows or zero columns: there is exactly one function from
an empty index type, matching `2 ^ 0 = 1`.
-/
theorem card_binMat
    (m n : Nat) :
    Fintype.card (BinMat m n) = 2 ^ (m * n) := by
  change Fintype.card (Fin m → Fin n → Bool) = 2 ^ (m * n)
  rw [Fintype.card_fun, Fintype.card_fun]
  simp only [Fintype.card_bool, Fintype.card_fin]
  rw [← Nat.pow_mul, Nat.mul_comm]

/--
Every finite quantizer realizes at most `2 ^ (m * n)` effective states, the
global information bound for an `m × n` binary observation.
-/
theorem card_effectiveStates_le_bits
    (Q : Quantizer Cfg m n)
    [Fintype Cfg] :
    Q.effectiveStates.card ≤ 2 ^ (m * n) := by
  calc
    Q.effectiveStates.card ≤ Fintype.card (BinMat m n) :=
      Finset.card_le_univ Q.effectiveStates
    _ = 2 ^ (m * n) := card_binMat m n

/--
Lift an executable array-backed encoder into the declarative quantizer layer.
The only observable result is `BinMatMut.toDecl`.
-/
def ofMut
    (encodeMut : Cfg → BinMatMut m n) :
    Quantizer Cfg m n :=
  ⟨fun u => (encodeMut u).toDecl⟩

/-- An array-backed quantizer encodes by passing its result through `toDecl`. -/
@[simp]
theorem ofMut_encode
    (encodeMut : Cfg → BinMatMut m n)
    (u : Cfg) :
    (ofMut encodeMut).encode u =
      (encodeMut u).toDecl :=
  rfl

/--
Array-backed configurations are indistinguishable exactly when their
declarative observations agree; raw arrays and invariant proofs are irrelevant.
-/
theorem ofMut_indistinguishable_iff
    (encodeMut : Cfg → BinMatMut m n)
    (u v : Cfg) :
    (ofMut encodeMut).Indistinguishable u v ↔
      (encodeMut u).toDecl = (encodeMut v).toDecl :=
  Iff.rfl

end Quantizer

open Surface.ContinuousAssurance

/-!
## Positive multibit observations

A multibit matrix is a finite family of Boolean bit planes.  The plane index
is the resolution dimension; it is not a row or column index and it does not
represent a compiler word.  Plane `p` has significance `2 ^ p.val`.
-/

/-- A row/column Boolean matrix at each of `bits` explicit bit planes. -/
def QuantizedMatrix
    (bits rows columns : Nat) :=
  Fin bits → BinMat rows columns

instance instFintypeQuantizedMatrix
    (bits rows columns : Nat) :
    Fintype (QuantizedMatrix bits rows columns) := by
  unfold QuantizedMatrix BinMat Matrix
  infer_instance

instance instDecidableEqQuantizedMatrix
    (bits rows columns : Nat) :
    DecidableEq (QuantizedMatrix bits rows columns) := by
  unfold QuantizedMatrix BinMat Matrix
  infer_instance

/-- The complete bit-plane space has one independent bit per plane and cell. -/
theorem card_quantizedMatrix
    (bits rows columns : Nat) :
    Fintype.card (QuantizedMatrix bits rows columns) =
      2 ^ (bits * rows * columns) := by
  calc
    Fintype.card (QuantizedMatrix bits rows columns) =
        Fintype.card (BinMat rows columns) ^ bits := by
      change Fintype.card (Fin bits → BinMat rows columns) = _
      rw [Fintype.card_fun]
      simp
    _ = (2 ^ (rows * columns)) ^ bits := by
      exact congrArg (fun cardinality : Nat => cardinality ^ bits)
        (Quantizer.card_binMat rows columns)
    _ = 2 ^ ((rows * columns) * bits) := by
      exact (Nat.pow_mul 2 (rows * columns) bits).symm
    _ = 2 ^ (bits * rows * columns) := by
      congr 1
      ac_rfl

/-- A positive-resolution quantizer into a finite family of bit planes. -/
structure NQuantizer
    (Cfg : Type u)
    (rows columns : Nat) where
  resolution : ResolutionBits
  encode :
    Cfg → QuantizedMatrix resolution.value rows columns

namespace NQuantizer

variable {Cfg : Type u} {rows columns : Nat}

/-- Multibit configurations are indistinguishable when all bit planes agree. -/
def Indistinguishable
    (Q : NQuantizer Cfg rows columns)
    (left right : Cfg) : Prop :=
  Q.encode left = Q.encode right

@[simp]
theorem indistinguishable_refl
    (Q : NQuantizer Cfg rows columns)
    (configuration : Cfg) :
    Q.Indistinguishable configuration configuration :=
  rfl

theorem indistinguishable_symm
    (Q : NQuantizer Cfg rows columns)
    {left right : Cfg}
    (h : Q.Indistinguishable left right) :
    Q.Indistinguishable right left :=
  h.symm

theorem indistinguishable_trans
    (Q : NQuantizer Cfg rows columns)
    {first second third : Cfg}
    (hfirst : Q.Indistinguishable first second)
    (hsecond : Q.Indistinguishable second third) :
    Q.Indistinguishable first third :=
  hfirst.trans hsecond

/-- Equality of encodings as a quotient relation. -/
def setoid
    (Q : NQuantizer Cfg rows columns) : Setoid Cfg where
  r := Q.Indistinguishable
  iseqv :=
    { refl := Q.indistinguishable_refl
      symm := Q.indistinguishable_symm
      trans := Q.indistinguishable_trans }

/-- The actual encoder image, not the entire bit-plane representation space. -/
def EffectiveState
    (Q : NQuantizer Cfg rows columns) :=
  {encoded : QuantizedMatrix Q.resolution.value rows columns //
    ∃ configuration : Cfg, Q.encode configuration = encoded}

/-- Encode one representative as an effective state. -/
def toEffective
    (Q : NQuantizer Cfg rows columns)
    (configuration : Cfg) : Q.EffectiveState :=
  ⟨Q.encode configuration, configuration, rfl⟩

/-- Factor the multibit encoder through its indistinguishability quotient. -/
def quotientToEffective
    (Q : NQuantizer Cfg rows columns) :
    Quotient Q.setoid → Q.EffectiveState :=
  Quotient.lift Q.toEffective (by
    intro left right h
    apply Subtype.ext
    exact h)

@[simp]
theorem quotientToEffective_mk
    (Q : NQuantizer Cfg rows columns)
    (configuration : Cfg) :
    Q.quotientToEffective (Quotient.mk Q.setoid configuration) =
      Q.toEffective configuration :=
  rfl

theorem quotientToEffective_injective
    (Q : NQuantizer Cfg rows columns) :
    Function.Injective Q.quotientToEffective := by
  intro left right equality
  induction left using Quotient.inductionOn with
  | _ leftRepresentative =>
    induction right using Quotient.inductionOn with
    | _ rightRepresentative =>
      apply Quotient.sound
      change Q.encode leftRepresentative = Q.encode rightRepresentative
      exact congrArg Subtype.val equality

theorem quotientToEffective_surjective
    (Q : NQuantizer Cfg rows columns) :
    Function.Surjective Q.quotientToEffective := by
  rintro ⟨encoded, configuration, equality⟩
  refine ⟨Quotient.mk Q.setoid configuration, ?_⟩
  apply Subtype.ext
  exact equality

/-- Indistinguishability classes are equivalent to the realized image. -/
noncomputable def quotientEquivEffective
    (Q : NQuantizer Cfg rows columns) :
    Quotient Q.setoid ≃ Q.EffectiveState :=
  Equiv.ofBijective Q.quotientToEffective
    ⟨Q.quotientToEffective_injective,
      Q.quotientToEffective_surjective⟩

/-- Enumerate the realized multibit matrices for a finite domain. -/
def effectiveStates
    (Q : NQuantizer Cfg rows columns)
    [Fintype Cfg] :
    Finset (QuantizedMatrix Q.resolution.value rows columns) :=
  Finset.univ.image Q.encode

theorem mem_effectiveStates_iff
    (Q : NQuantizer Cfg rows columns)
    [Fintype Cfg]
    (encoded : QuantizedMatrix Q.resolution.value rows columns) :
    encoded ∈ Q.effectiveStates ↔
      ∃ configuration : Cfg, Q.encode configuration = encoded := by
  simp [effectiveStates]

theorem card_effectiveStates_le_domain
    (Q : NQuantizer Cfg rows columns)
    [Fintype Cfg] :
    Q.effectiveStates.card ≤ Fintype.card Cfg := by
  simpa [effectiveStates] using
    (Finset.card_image_le (s := Finset.univ) (f := Q.encode))

/-- The encoder image is bounded by the complete bit-plane state space. -/
theorem card_effectiveStates_le_resolution
    (Q : NQuantizer Cfg rows columns)
    [Fintype Cfg] :
    Q.effectiveStates.card ≤
      2 ^ (Q.resolution.value * rows * columns) := by
  calc
    Q.effectiveStates.card ≤
        Fintype.card
          (QuantizedMatrix Q.resolution.value rows columns) :=
      Finset.card_le_univ Q.effectiveStates
    _ = 2 ^ (Q.resolution.value * rows * columns) :=
      card_quantizedMatrix Q.resolution.value rows columns

end NQuantizer

/-- Decode bit planes with little-endian significance `2 ^ plane`. -/
def decodeBitPlanes
    (q : QuantizedMatrix bits rows columns) :
    Matrix (Fin rows) (Fin columns) Nat :=
  fun row column =>
    ∑ plane : Fin bits,
      if q plane row column then 2 ^ plane.val else 0

/--
Encode an unsigned finite word as little-endian bit planes.  The source entry
is a `Fin (2 ^ bits)`, so range validity is part of the type rather than a
runtime side condition.  Plane `p` is exactly bit `p` of the source value.
-/
def encodeBitPlanes
    (values : Matrix (Fin rows) (Fin columns) (Fin (2 ^ bits))) :
    QuantizedMatrix bits rows columns :=
  fun plane row column => (values row column).val.testBit plane.val

/-- Decoded natural entries are nonnegative. -/
theorem decodeBitPlanes_nonnegative
    (q : QuantizedMatrix bits rows columns)
    (row : Fin rows)
    (column : Fin columns) :
    0 ≤ decodeBitPlanes q row column :=
  Nat.zero_le _

/-- Separate the least-significant plane from the remaining planes. -/
theorem decodeBitPlanes_succ
    (q : QuantizedMatrix (bits + 1) rows columns)
    (row : Fin rows)
    (column : Fin columns) :
    decodeBitPlanes q row column =
      (if q 0 row column then 1 else 0) +
        2 * decodeBitPlanes (fun plane => q plane.succ) row column := by
  simp only [decodeBitPlanes, Fin.sum_univ_succ, Fin.val_zero, pow_zero,
    Fin.val_succ, pow_succ]
  rw [Finset.mul_sum]
  apply congrArg ((if q 0 row column then 1 else 0) + ·)
  apply Finset.sum_congr rfl
  intro plane _
  split <;> simp [Nat.mul_comm]

/-- The explicit weighted sum agrees with Batteries' little-endian `ofBits`. -/
theorem decodeBitPlanes_eq_ofBits
    (q : QuantizedMatrix bits rows columns)
    (row : Fin rows)
    (column : Fin columns) :
    decodeBitPlanes q row column =
      Nat.ofBits (fun plane : Fin bits => q plane row column) := by
  induction bits with
  | zero => simp [decodeBitPlanes]
  | succ bits inductionHypothesis =>
      rw [decodeBitPlanes_succ, Nat.ofBits_succ,
        inductionHypothesis (fun plane => q plane.succ)]
      cases q 0 row column <;>
        simp [Bool.toNat, Nat.add_comm, Function.comp_def]

/-- Every decoded cell lies in the unsigned `bits`-bit range. -/
theorem decodeBitPlanes_lt_pow
    (q : QuantizedMatrix bits rows columns)
    (row : Fin rows)
    (column : Fin columns) :
    decodeBitPlanes q row column < 2 ^ bits := by
  induction bits with
  | zero => simp [decodeBitPlanes]
  | succ bits inductionHypothesis =>
      rw [decodeBitPlanes_succ]
      have htail :
          decodeBitPlanes (fun plane => q plane.succ) row column <
            2 ^ bits :=
        inductionHypothesis (fun plane => q plane.succ)
      have hleast : (if q 0 row column then 1 else 0) ≤ 1 := by
        split <;> simp
      calc
        (if q 0 row column then 1 else 0) +
              2 * decodeBitPlanes (fun plane => q plane.succ) row column ≤
            1 + 2 * decodeBitPlanes (fun plane => q plane.succ) row column :=
          Nat.add_le_add_right hleast _
        _ < 2 * 2 ^ bits := by omega
        _ = 2 ^ (bits + 1) := by
          rw [pow_succ]
          omega

/-- Package every decoded entry together with its proved unsigned range. -/
def decodedFiniteMatrix
    (q : QuantizedMatrix bits rows columns) :
    Matrix (Fin rows) (Fin columns) (Fin (2 ^ bits)) :=
  fun row column =>
    ⟨decodeBitPlanes q row column, decodeBitPlanes_lt_pow q row column⟩

/--
BIT-03: decoding the finite-word encoder returns the original unsigned word.
This is the exact encode/decode law, including width zero.
-/
@[simp]
theorem decodeBitPlanes_encodeBitPlanes
    (values : Matrix (Fin rows) (Fin columns) (Fin (2 ^ bits)))
    (row : Fin rows)
    (column : Fin columns) :
    decodeBitPlanes (encodeBitPlanes values) row column =
      (values row column).val := by
  rw [decodeBitPlanes_eq_ofBits]
  change Nat.ofBits
      (fun plane : Fin bits => (values row column).val.testBit plane.val) = _
  rw [Nat.ofBits_testBit,
    Nat.mod_eq_of_lt (values row column).isLt]

/-- The encoded finite word always decodes inside the declared bit range. -/
theorem decode_encodeBitPlanes_lt_pow
    (values : Matrix (Fin rows) (Fin columns) (Fin (2 ^ bits)))
    (row : Fin rows)
    (column : Fin columns) :
    decodeBitPlanes (encodeBitPlanes values) row column < 2 ^ bits := by
  rw [decodeBitPlanes_encodeBitPlanes]
  exact (values row column).isLt

/--
Encoding the range-certified decoding also recovers every original bit plane;
there is no hidden padding or truncation inside `QuantizedMatrix`.
-/
@[simp]
theorem encodeBitPlanes_decodedFiniteMatrix
    (q : QuantizedMatrix bits rows columns) :
    encodeBitPlanes (decodedFiniteMatrix q) = q := by
  funext plane row column
  simp only [encodeBitPlanes, decodedFiniteMatrix]
  rw [decodeBitPlanes_eq_ofBits]
  exact Nat.testBit_ofBits_lt
    (fun index : Fin bits => q index row column)
    plane.val plane.isLt

end BinMat
```
