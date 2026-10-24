-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Ext.Variant03844803b10e248be9590d7603d7886fa0d30064fa7bc5fe840f999470bf3e0b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"03844803b10e248be9590d7603d7886fa0d30064fa7bc5fe840f999470bf3e0b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Ext.Variant03844803b10e248be9590d7603d7886fa0d30064fa7bc5fe840f999470bf3e0b","mathematical_subject":"Computation.DataStructures","original_sha256":"03844803b10e248be9590d7603d7886fa0d30064fa7bc5fe840f999470bf3e0b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Boolean/Matrix/Binary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Boolean.Matrix.Operations

/-!
# Finite binary matrix core

What is formalized:
Pure finite Boolean matrix operations and encodings over the existing
`Surface.Boolean.BoolMatrix` type: extensionality, identity relation,
row-major bit encodings, finite support, true-entry counts, row-major decoding,
and relational composition.

What is certificate-gated:
Any use of these matrices as flows, spectral objects, Hilbert-space operators,
homological data, prismatic data, arithmetic data, or theorem authority belongs
to the corresponding root namespace and must carry explicit certificates.

What is not claimed:
No zeta, BSD, Connes trace, Hilbert--Polya, prismatic comparison, Kakeya
estimate, topological classification, or analytic theorem follows from this
finite combinatorial file.

Primary mathematical source:
Internal finite Boolean combinatorics.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Ext.Variant03844803b10e248be9590d7603d7886fa0d30064fa7bc5fe840f999470bf3e0b

namespace Surface.Boolean

namespace BoolMatrix

@[ext]
theorem ext
    {A B : BoolMatrix rows cols}
    (h : ∀ i j, A i j = B i j) :
    A = B := by
  funext i
  funext j
  exact h i j

/-- The identity Boolean relation on `Fin n`. -/
def identity (n : Nat) : BoolMatrix n n :=
  fun i j => decide (i = j)

/-- Pointwise XOR of Boolean matrices. -/
def xor
    (A B : BoolMatrix rows cols) :
    BoolMatrix rows cols :=
  fun i j => Bool.xor (A i j) (B i j)

/-- A matrix marking the entries where two matrices differ. -/
def pointwiseDifference
    (A B : BoolMatrix rows cols) :
    BoolMatrix rows cols :=
  fun i j => decide (A i j ≠ B i j)

/-- Pointwise equality of Boolean matrices. -/
def pointwiseEq
    (A B : BoolMatrix rows cols) :
    Prop :=
  ∀ i j, A i j = B i j

/-- Row-major list of all entries. -/
def rowMajorBits
    (A : BoolMatrix rows cols) :
    List Bool :=
  (List.finRange rows).flatMap fun i =>
    (List.finRange cols).map fun j => A i j

/-- Coordinates of true entries. -/
def support
    (A : BoolMatrix rows cols) :
    List (Fin rows × Fin cols) :=
  (List.finRange rows).flatMap fun i =>
    (List.finRange cols).filterMap fun j =>
      if A i j then some (i, j) else none

/-- Number of true entries in row-major order. -/
def trueCount
    (A : BoolMatrix rows cols) :
    Nat :=
  (rowMajorBits A).filter (fun b => b = true) |>.length

/--
Build a matrix from row-major bits, padding absent entries by `false`.

This is a finite combinatorial decoder, not a proof-authority bridge.
-/
def fromBoolList
    (rows cols : Nat)
    (bits : List Bool) :
    BoolMatrix rows cols :=
  fun i j => bits.getD (i.val * cols + j.val) false

/-- Boolean relational composition. -/
def relComp
    (A : BoolMatrix rows mid)
    (B : BoolMatrix mid cols) :
    BoolMatrix rows cols :=
  fun i k =>
    decide (∃ j : Fin mid, A i j = true ∧ B j k = true)

/-- Boolean matrix multiplication in the relation semiring. -/
def relMul
    (A : BoolMatrix rows mid)
    (B : BoolMatrix mid cols) :
    BoolMatrix rows cols :=
  relComp A B

@[simp]
theorem entry_identity_same
    (i : Fin n) :
    BoolMatrix.entry (identity n) i i = true := by
  simp [BoolMatrix.entry, identity]

@[simp]
theorem entry_xor
    (A B : BoolMatrix rows cols)
    (i : Fin rows)
    (j : Fin cols) :
    BoolMatrix.entry (xor A B) i j =
      Bool.xor (BoolMatrix.entry A i j) (BoolMatrix.entry B i j) :=
  rfl

@[simp]
theorem entry_pointwiseDifference
    (A B : BoolMatrix rows cols)
    (i : Fin rows)
    (j : Fin cols) :
    BoolMatrix.entry (pointwiseDifference A B) i j =
      decide (BoolMatrix.entry A i j ≠ BoolMatrix.entry B i j) :=
  rfl

theorem trueCount_nonneg
    (A : BoolMatrix rows cols) :
    0 ≤ trueCount A :=
  Nat.zero_le _

theorem trueCount_zeros :
    trueCount (BoolMatrix.zeros : BoolMatrix rows cols) = 0 := by
  simp [trueCount, rowMajorBits, BoolMatrix.zeros]

theorem transpose_transpose_checked
    (A : BoolMatrix rows cols) :
    BoolMatrix.transpose (BoolMatrix.transpose A) = A :=
  BoolMatrix.transpose_transpose A

theorem join_comm
    (A B : BoolMatrix rows cols) :
    BoolMatrix.join A B = BoolMatrix.join B A := by
  apply ext
  intro i j
  cases hA : A i j <;> cases hB : B i j <;>
    simp [BoolMatrix.join, hA, hB]

theorem meet_comm
    (A B : BoolMatrix rows cols) :
    BoolMatrix.meet A B = BoolMatrix.meet B A := by
  apply ext
  intro i j
  cases hA : A i j <;> cases hB : B i j <;>
    simp [BoolMatrix.meet, hA, hB]

theorem xor_comm
    (A B : BoolMatrix rows cols) :
    xor A B = xor B A := by
  apply ext
  intro i j
  cases hA : A i j <;> cases hB : B i j <;>
    simp [xor, hA, hB]

theorem rowMajor_length_visible
    (A : BoolMatrix rows cols) :
    (rowMajorBits A).length = (rowMajorBits A).length :=
  rfl

end BoolMatrix

end Surface.Boolean
