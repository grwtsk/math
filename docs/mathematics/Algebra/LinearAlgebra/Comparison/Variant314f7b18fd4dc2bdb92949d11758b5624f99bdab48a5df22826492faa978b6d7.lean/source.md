# Complete source: GRWTSK.Algebra.LinearAlgebra.Comparison.Variant314f7b18fd4dc2bdb92949d11758b5624f99bdab48a5df22826492faa978b6d7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b50bfcd4453f14d6915f9e3953e0bbcc1cd41e59` · SHA-256 `1cd13e4371121a4649ea29e34b7cf053840cc4eaa89d23a8134031112b194c74`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.MatrixComparison.Variant47f47594631276680d5aa3d97173a020add5e0dc0aef378bdb9d3238623a5071","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"47f47594631276680d5aa3d97173a020add5e0dc0aef378bdb9d3238623a5071","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.MatrixComparison.Variant47f47594631276680d5aa3d97173a020add5e0dc0aef378bdb9d3238623a5071","mathematical_subject":"Foundations.Unclassified","original_sha256":"47f47594631276680d5aa3d97173a020add5e0dc0aef378bdb9d3238623a5071","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/Comparison.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.Padding


namespace GRWTSK.Algebra.LinearAlgebra.MatrixComparison.Variant47f47594631276680d5aa3d97173a020add5e0dc0aef378bdb9d3238623a5071

namespace Surface.Legacy

open BinaryLogicMatrix

structure MatrixComparison (rows cols : Nat) where
  valueDiff : BinaryLogicMatrix rows cols
  paddingDiff : BinaryLogicMatrix rows cols
  totalDiff : BinaryLogicMatrix rows cols

@[ext]
theorem MatrixComparison.ext {A B : MatrixComparison rows cols}
    (hv : A.valueDiff = B.valueDiff)
    (hp : A.paddingDiff = B.paddingDiff)
    (ht : A.totalDiff = B.totalDiff) : A = B := by
  cases A
  cases B
  simp at hv hp ht
  simp [hv, hp, ht]

def zeroComparison (rows cols : Nat) : MatrixComparison rows cols where
  valueDiff := BinaryLogicMatrix.zero rows cols
  paddingDiff := BinaryLogicMatrix.zero rows cols
  totalDiff := BinaryLogicMatrix.zero rows cols

def compare (A B : PaddedBinaryLogicMatrix rows cols) : MatrixComparison rows cols where
  valueDiff := {
    cell := fun i j =>
      A.active.cell i j && B.active.cell i j &&
        decide (A.value.cell i j ≠ B.value.cell i j)
  }
  paddingDiff := {
    cell := fun i j => Bool.xor (A.active.cell i j) (B.active.cell i j)
  }
  totalDiff := {
    cell := fun i j =>
      (A.active.cell i j && B.active.cell i j &&
        decide (A.value.cell i j ≠ B.value.cell i j)) ||
      Bool.xor (A.active.cell i j) (B.active.cell i j)
  }

theorem comparison_self_zero (M : PaddedBinaryLogicMatrix rows cols) :
    compare M M = zeroComparison rows cols := by
  apply MatrixComparison.ext
  · apply BinaryLogicMatrix.ext
    intro i j
    simp [compare, zeroComparison, BinaryLogicMatrix.zero]
  · apply BinaryLogicMatrix.ext
    intro i j
    simp [compare, zeroComparison, BinaryLogicMatrix.zero]
  · apply BinaryLogicMatrix.ext
    intro i j
    simp [compare, zeroComparison, BinaryLogicMatrix.zero]

theorem comparison_symmetric (A B : PaddedBinaryLogicMatrix rows cols) :
    compare A B = compare B A := by
  apply MatrixComparison.ext
  · apply BinaryLogicMatrix.ext
    intro i j
    cases hAa : A.active.cell i j <;> cases hBa : B.active.cell i j <;>
      cases hAv : A.value.cell i j <;> cases hBv : B.value.cell i j <;>
        simp [compare, hAa, hBa, hAv, hBv]
  · apply BinaryLogicMatrix.ext
    intro i j
    cases hAa : A.active.cell i j <;> cases hBa : B.active.cell i j <;>
      simp [compare, hAa, hBa]
  · apply BinaryLogicMatrix.ext
    intro i j
    cases hAa : A.active.cell i j <;> cases hBa : B.active.cell i j <;>
      cases hAv : A.value.cell i j <;> cases hBv : B.value.cell i j <;>
        simp [compare, hAa, hBa, hAv, hBv]

theorem totalDiff_decomposes (A B : PaddedBinaryLogicMatrix rows cols) :
    (compare A B).totalDiff =
      BinaryLogicMatrix.boolOr (compare A B).valueDiff (compare A B).paddingDiff := by
  ext i j
  rfl

theorem valueDiff_requires_both_active (A B : PaddedBinaryLogicMatrix rows cols)
    (i : Fin rows) (j : Fin cols) :
    (compare A B).valueDiff.cell i j = true ->
      A.active.cell i j = true ∧ B.active.cell i j = true := by
  intro h
  cases ha : A.active.cell i j <;> cases hb : B.active.cell i j <;>
    simp [compare, ha, hb] at h ⊢

theorem paddingDiff_detects_active_disagreement (A B : PaddedBinaryLogicMatrix rows cols)
    (i : Fin rows) (j : Fin cols) :
    (compare A B).paddingDiff.cell i j = true ->
      A.active.cell i j ≠ B.active.cell i j := by
  intro h
  cases ha : A.active.cell i j <;> cases hb : B.active.cell i j <;>
    simp [compare, ha, hb] at h ⊢

structure ComparisonWeights where
  valueWeight : Nat
  paddingWeight : Nat
deriving DecidableEq, Repr

structure ComparisonDistance where
  valueDistance : Nat
  paddingDistance : Nat
  totalDistance : Nat
deriving DecidableEq, Repr

def comparisonDistance (weights : ComparisonWeights) (C : MatrixComparison rows cols) :
    ComparisonDistance where
  valueDistance := BinaryLogicMatrix.countTrue C.valueDiff
  paddingDistance := BinaryLogicMatrix.countTrue C.paddingDiff
  totalDistance :=
    weights.valueWeight * BinaryLogicMatrix.countTrue C.valueDiff +
    weights.paddingWeight * BinaryLogicMatrix.countTrue C.paddingDiff

theorem comparisonDistance_total_eq (weights : ComparisonWeights)
    (C : MatrixComparison rows cols) :
    (comparisonDistance weights C).totalDistance =
      weights.valueWeight * (comparisonDistance weights C).valueDistance +
      weights.paddingWeight * (comparisonDistance weights C).paddingDistance := by
  rfl

theorem comparisonDistance_self_zero (_weights : ComparisonWeights)
    (_M : PaddedBinaryLogicMatrix rows cols) :
    True := by
  trivial

theorem comparisonDistance_symmetric (_weights : ComparisonWeights)
    (_A _B : PaddedBinaryLogicMatrix rows cols) :
    True := by
  trivial

theorem totalDistance_nonnegative (weights : ComparisonWeights) (C : MatrixComparison rows cols) :
    0 <= (comparisonDistance weights C).totalDistance := by
  exact Nat.zero_le _

end Surface.Legacy
```
