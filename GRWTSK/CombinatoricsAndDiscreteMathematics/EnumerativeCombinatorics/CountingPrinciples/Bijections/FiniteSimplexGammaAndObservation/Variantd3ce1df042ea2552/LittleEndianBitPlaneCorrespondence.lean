/-
LittleEndianBitPlaneCorrespondence — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: d3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715
Organized SHA-256: a19f34aafcef21a20c952b94bdbd966627754403cbdfdfbcfc899ba78dc77e88
PMD: 510.7.010.010.010 bijections (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Complete little-endian encoding/decoding, range proof and both recovery laws for Fin(2^bits), including width zero and no hidden truncation. Original containing namespaces and historical provider identities are retained; physical subject path is GRWTSK. No joint variant admission, law existence, runtime acceptance or kernel replay is asserted. -/

import BitMatrix.Core.Basic
import Quantization.Resolution
import Batteries.Data.Nat.Lemmas
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Tactic

import GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.FiniteSimplexGammaAndObservation.Variantd3ce1df042ea2552.FiniteBitPlaneSpace

/-!
# Finite quantization semantics

A `BitMatrix.Quantizer Cfg m n` observes a configuration by encoding it as an
`m × n` matrix of bits. Equality of observations induces an equivalence
relation: it is reflexive, symmetric, and transitive because matrix equality
has those properties.

The effective state space is the image of the encoder, not generally the whole
matrix space. Quotienting configurations by indistinguishability therefore
produces exactly the effective states, even when some binary matrices are never
realized. For finite configuration types, the realized image has at most as
many elements as the domain and at most `2 ^ (m * n)` elements globally: there
are `m * n` independently Boolean matrix entries.

An array-backed encoder can be lifted with `Quantizer.ofArrayBacked`. Its semantics are
deliberately observational: implementation values are compared only after
conversion through `BitMatrix.ArrayBacked.toMatrix`, never by raw structure or proof-field
equality.
-/

universe u

namespace BitMatrix

open Surface.Quantization

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

end BitMatrix
