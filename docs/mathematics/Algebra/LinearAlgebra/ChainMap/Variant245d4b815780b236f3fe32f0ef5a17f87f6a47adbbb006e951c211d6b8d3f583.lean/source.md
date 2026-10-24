# Complete source: GRWTSK.Algebra.LinearAlgebra.ChainMap.Variant245d4b815780b236f3fe32f0ef5a17f87f6a47adbbb006e951c211d6b8d3f583

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a5a695d561cef585ab569539584488b04c2e4190` · SHA-256 `286bc1738028ec0bff6f484ba329c6b4cc1b879c0465001b92934913c15c3f43`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.FoldUnitary.Variantb6190f3dcc6b2cc5d99fac44468578725e67e7520f3eb5f2c3d7c8ee2c3aa5aa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b6190f3dcc6b2cc5d99fac44468578725e67e7520f3eb5f2c3d7c8ee2c3aa5aa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.FoldUnitary.Variantb6190f3dcc6b2cc5d99fac44468578725e67e7520f3eb5f2c3d7c8ee2c3aa5aa","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"b6190f3dcc6b2cc5d99fac44468578725e67e7520f3eb5f2c3d7c8ee2c3aa5aa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Fold/ChainMap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Fold.Core
import DAF.Hilbert.HodgeDirac

/-!
# Unitary finite fold chain maps

Accepted folds carry exact two-sided unitarity, differential intertwining, and
grading intertwining.  These proofs imply Hodge--Dirac and Laplacian
intertwining; graph reachability or a reversible metadata bit is insufficient.
-/


namespace GRWTSK.Algebra.LinearAlgebra.FoldUnitary.Variantb6190f3dcc6b2cc5d99fac44468578725e67e7520f3eb5f2c3d7c8ee2c3aa5aa

noncomputable section

namespace DAF.Fold

universe u

open DAF.Hilbert

variable {Index : Type u} [Fintype Index] [DecidableEq Index]

/-- Exact finite unitary implementing one fold. -/
structure FoldUnitary (terrain : GradedTerrainComplex Index) where
  fold : FoldDatum
  operator : FiniteOperator Index Index
  unitary_left : operator.conjTranspose * operator = 1
  unitary_right : operator * operator.conjTranspose = 1
  intertwinesCoboundary :
    operator * terrain.complex.differential =
      terrain.complex.differential * operator
  intertwinesGrading :
    operator * terrain.grading = terrain.grading * operator

namespace FoldUnitary

variable {terrain : GradedTerrainComplex Index}

/-- Differential intertwining plus two-sided unitarity forces
codifferential intertwining. -/
theorem intertwinesCodifferential (fold : FoldUnitary terrain) :
    fold.operator * terrain.complex.codifferential =
      terrain.complex.codifferential * fold.operator := by
  have adjointRelation := congrArg Matrix.conjTranspose
    fold.intertwinesCoboundary
  have relation :
      terrain.complex.codifferential * fold.operator.conjTranspose =
        fold.operator.conjTranspose * terrain.complex.codifferential := by
    simpa [FiniteDifferentialComplex.codifferential] using adjointRelation
  calc
    fold.operator * terrain.complex.codifferential =
        fold.operator * terrain.complex.codifferential *
          (fold.operator.conjTranspose * fold.operator) := by
            rw [fold.unitary_left, mul_one]
    _ = fold.operator *
        (terrain.complex.codifferential * fold.operator.conjTranspose) *
          fold.operator := by noncomm_ring
    _ = fold.operator *
        (fold.operator.conjTranspose * terrain.complex.codifferential) *
          fold.operator := by rw [relation]
    _ = (fold.operator * fold.operator.conjTranspose) *
        terrain.complex.codifferential * fold.operator := by noncomm_ring
    _ = terrain.complex.codifferential * fold.operator := by
      rw [fold.unitary_right, one_mul]

theorem fold_intertwines_hodgeDirac (fold : FoldUnitary terrain) :
    fold.operator * terrain.complex.hodgeDirac =
      terrain.complex.hodgeDirac * fold.operator := by
  simp only [FiniteDifferentialComplex.hodgeDirac, mul_add, add_mul]
  rw [fold.intertwinesCoboundary, fold.intertwinesCodifferential]

theorem fold_intertwines_laplacian (fold : FoldUnitary terrain) :
    fold.operator * terrain.complex.laplacian =
      terrain.complex.laplacian * fold.operator := by
  rw [← terrain.complex.hodgeDirac_square]
  calc
    fold.operator * (terrain.complex.hodgeDirac * terrain.complex.hodgeDirac) =
        (fold.operator * terrain.complex.hodgeDirac) *
          terrain.complex.hodgeDirac := by simp [mul_assoc]
    _ = (terrain.complex.hodgeDirac * fold.operator) *
          terrain.complex.hodgeDirac := by rw [fold.fold_intertwines_hodgeDirac]
    _ = terrain.complex.hodgeDirac *
        (fold.operator * terrain.complex.hodgeDirac) := by simp [mul_assoc]
    _ = terrain.complex.hodgeDirac *
        (terrain.complex.hodgeDirac * fold.operator) := by
          rw [fold.fold_intertwines_hodgeDirac]
    _ = (terrain.complex.hodgeDirac * terrain.complex.hodgeDirac) *
        fold.operator := by simp [mul_assoc]

/-- Fold unitarity is exact matrix unitarity. -/
theorem isUnitary (fold : FoldUnitary terrain) :
    fold.operator.conjTranspose * fold.operator = 1 ∧
      fold.operator * fold.operator.conjTranspose = 1 :=
  ⟨fold.unitary_left, fold.unitary_right⟩

end FoldUnitary

end DAF.Fold
```
