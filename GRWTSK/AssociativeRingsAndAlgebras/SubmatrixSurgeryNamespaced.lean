-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.SampleMatrix.Variant9ce5d0237a255619d4fe1f6fac7bc294492c30a6c2e282b50fe04e41d7421817","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9ce5d0237a255619d4fe1f6fac7bc294492c30a6c2e282b50fe04e41d7421817","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.SampleMatrix.Variant9ce5d0237a255619d4fe1f6fac7bc294492c30a6c2e282b50fe04e41d7421817","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"9ce5d0237a255619d4fe1f6fac7bc294492c30a6c2e282b50fe04e41d7421817","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BitMatrix/Tests/SubmatrixSurgery.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BitMatrix.Surgery.Submatrix
import BitMatrix.Network.IntegralPermutationLift

/-!
# Tests for exact binary submatrix surgery

The selected rows and columns are non-contiguous, so the examples exercise the
ordered global embeddings rather than a rectangular offset shortcut.
-/


namespace GRWTSK.Algebra.SampleMatrix.Variant9ce5d0237a255619d4fe1f6fac7bc294492c30a6c2e282b50fe04e41d7421817

namespace BitMatrix.Tests.SubmatrixSurgery

open BitMatrix.Geometry
open BitMatrix.Surgery
open BitMatrix.Surgery.SubmatrixSurgery

def sampleMatrix : BitMatrix 3 4 :=
  fun i j => decide ((i.val + j.val) % 2 = 1)

def sampleLocus : MatrixLocus 3 4 where
  rows := {0, 2}
  columns := {1, 3}

def replacement :
    BitMatrix sampleLocus.rows.card sampleLocus.columns.card :=
  fun i j => decide (i = j)

def sampleSurgery : SubmatrixSurgery sampleMatrix sampleLocus :=
  SubmatrixSurgery.replace sampleMatrix sampleLocus replacement

example : sampleLocus.rows.card = 2 := by native_decide

example : sampleLocus.columns.card = 2 := by native_decide

example : sampleLocus.rowEmbed (0 : Fin 2) = (0 : Fin 3) := by native_decide

example : sampleLocus.rowEmbed (1 : Fin 2) = (2 : Fin 3) := by native_decide

example : sampleLocus.columnEmbed (0 : Fin 2) = (1 : Fin 4) := by native_decide

example : sampleLocus.columnEmbed (1 : Fin 2) = (3 : Fin 4) := by native_decide

example :
    BitMatrix.extractSubmatrix sampleSurgery.result sampleLocus = replacement :=
  sampleSurgery.extract_result

example : sampleSurgery.result 0 1 = true := by native_decide

example : sampleSurgery.result 0 3 = false := by native_decide

example : sampleSurgery.result 2 1 = false := by native_decide

example : sampleSurgery.result 2 3 = true := by native_decide

example : sampleSurgery.result 1 2 = sampleMatrix 1 2 := by
  exact sampleSurgery.outside_unchanged 1 2 (Or.inl (by decide))

example :
    BitMatrix.implantSubmatrix sampleMatrix sampleLocus
        (BitMatrix.extractSubmatrix sampleMatrix sampleLocus) = sampleMatrix :=
  BitMatrix.implantSubmatrix_extractSubmatrix sampleMatrix sampleLocus

example {i : Fin 3} {j : Fin 4}
    (h : (i, j) ∈ BitMatrix.differenceSupport sampleSurgery.result sampleMatrix) :
    i ∈ sampleLocus.rows ∧ j ∈ sampleLocus.columns :=
  sampleSurgery.difference_support_inside h

/-! ## Row-major runtime refinement -/

def sampleMatrixArrayBacked : BitMatrix.ArrayBacked 3 4 :=
  BitMatrix.ArrayBacked.ofMatrix sampleMatrix

def replacementArrayBacked :
    BitMatrix.ArrayBacked sampleLocus.rows.card sampleLocus.columns.card :=
  BitMatrix.ArrayBacked.ofMatrix replacement

def sampleRuntimeSurgery :
    BitMatrix.Surgery.ArrayBackedRefinement sampleMatrixArrayBacked sampleLocus :=
  BitMatrix.Surgery.ArrayBackedRefinement.replace
    sampleMatrixArrayBacked sampleLocus replacementArrayBacked

example : sampleMatrixArrayBacked.toMatrix = sampleMatrix := by simp [sampleMatrixArrayBacked]

example : replacementArrayBacked.toMatrix = replacement := by simp [replacementArrayBacked]

example :
    sampleRuntimeSurgery.result.toMatrix = sampleSurgery.result := by
  calc
    sampleRuntimeSurgery.result.toMatrix =
        BitMatrix.implantSubmatrix sampleMatrixArrayBacked.toMatrix sampleLocus
          replacementArrayBacked.toMatrix := by
      simp [sampleRuntimeSurgery,
        BitMatrix.Surgery.ArrayBackedRefinement.replace_result_refines
          sampleMatrixArrayBacked sampleLocus replacementArrayBacked]
    _ = BitMatrix.implantSubmatrix sampleMatrix sampleLocus replacement := by
      simp [sampleMatrixArrayBacked, replacementArrayBacked]
    _ = sampleSurgery.result := sampleSurgery.result_spec.symm

example :
    BitMatrix.ArrayBacked.flatIdx (0 : Fin 3) (1 : Fin 4) ∈
      sampleLocus.rowMajorOffsets := by
  native_decide

example :
    BitMatrix.ArrayBacked.flatIdx (1 : Fin 3) (1 : Fin 4) ∉
      sampleLocus.rowMajorOffsets := by
  native_decide

example (i : Fin 3) (j : Fin 4) :
    BitMatrix.ArrayBacked.flatIdx i j ∈ sampleLocus.rowMajorOffsets ↔
      i ∈ sampleLocus.rows ∧ j ∈ sampleLocus.columns :=
  sampleLocus.flatIdx_mem_rowMajorOffsets_iff i j

/-! A concrete two-state involution also checks the integral lift boundary. -/

def boolFinTwo : Bool ≃ Fin 2 where
  toFun
    | false => 0
    | true => 1
  invFun i := i = 1
  left_inv b := by cases b <;> rfl
  right_inv i := by fin_cases i <;> rfl

def boolNotInvolution :
    FinitePermutationDynamics.CertifiedInvolution Bool where
  act := Bool.not
  involutive b := by cases b <;> rfl
  support := Finset.univ
  support_spec b := by cases b <;> simp

def boolProjection : BitMatrix.Algebra.InvolutionProjection Bool :=
  BitMatrix.Algebra.InvolutionProjection.ofCertified 2 boolFinTwo boolNotInvolution

example : boolProjection.integralMatrix.det = -1 := by native_decide

example : boolProjection.integralMatrix * boolProjection.integralMatrix = 1 :=
  boolProjection.integralMatrix_mul_self

example : boolProjection.f2Matrix * boolProjection.f2Matrix = 1 :=
  boolProjection.f2Matrix_mul_self

end BitMatrix.Tests.SubmatrixSurgery
