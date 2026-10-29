-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.LiftedOperator.Variant2282ae5d3f3ef1b8a2456f0e09a3d1a86d71c3cd3e570c89458283fa471ef4fe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2282ae5d3f3ef1b8a2456f0e09a3d1a86d71c3cd3e570c89458283fa471ef4fe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.LiftedOperator.Variant2282ae5d3f3ef1b8a2456f0e09a3d1a86d71c3cd3e570c89458283fa471ef4fe","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"2282ae5d3f3ef1b8a2456f0e09a3d1a86d71c3cd3e570c89458283fa471ef4fe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Fold/TotalTransport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Fold.ChainMap
import DAF.Hilbert.Heat
import DAF.Hilbert.HodgeDirac
import Mathlib.LinearAlgebra.Matrix.Kronecker

/-!
# Fold transport on the total finite DAF operator

An accepted terrain fold is lifted by tensoring with the identity on the
spindle fiber.  Exact chain and grading intertwining then imply total-operator
and heat intertwining.  Point-projection carriage is stated at matrix level,
where the rank-one projection is `v vᴴ`.
-/


namespace GRWTSK.Algebra.LinearAlgebra.LiftedOperator.Variant2282ae5d3f3ef1b8a2456f0e09a3d1a86d71c3cd3e570c89458283fa471ef4fe

noncomputable section

namespace DAF.Fold

open DAF.Hilbert
open scoped Kronecker

universe u v

variable {Index : Type u} [Fintype Index] [DecidableEq Index]
variable {SpindleIndex : Type v}
  [Fintype SpindleIndex] [DecidableEq SpindleIndex]
variable {terrain : GradedTerrainComplex Index}

namespace FoldUnitary

/-- Lift a terrain fold to the full terrain--spindle product. -/
def liftedOperator (fold : FoldUnitary terrain) :
    FiniteOperator (Index × SpindleIndex) (Index × SpindleIndex) :=
  fold.operator ⊗ₖ (1 : Matrix SpindleIndex SpindleIndex ℂ)

theorem liftedOperator_unitary_left (fold : FoldUnitary terrain) :
    fold.liftedOperator.conjTranspose * fold.liftedOperator =
      (1 : Matrix (Index × SpindleIndex) (Index × SpindleIndex) ℂ) := by
  rw [liftedOperator, Matrix.conjTranspose_kronecker]
  simp only [Matrix.conjTranspose_one]
  rw [← Matrix.mul_kronecker_mul, fold.unitary_left]
  simp

theorem liftedOperator_unitary_right (fold : FoldUnitary terrain) :
    fold.liftedOperator * fold.liftedOperator.conjTranspose =
      (1 : Matrix (Index × SpindleIndex) (Index × SpindleIndex) ℂ) := by
  rw [liftedOperator, Matrix.conjTranspose_kronecker]
  simp only [Matrix.conjTranspose_one]
  rw [← Matrix.mul_kronecker_mul, fold.unitary_right]
  simp

/-- The lifted fold commutes with the total finite DAF operator. -/
theorem fold_intertwines_totalOperator
    (fold : FoldUnitary terrain)
    (spindle : FiniteOperator SpindleIndex SpindleIndex) :
    fold.liftedOperator * terrain.DAFTotalOperator spindle =
      terrain.DAFTotalOperator spindle * fold.liftedOperator := by
  calc
    fold.liftedOperator * terrain.DAFTotalOperator spindle =
        (fold.operator * terrain.complex.hodgeDirac) ⊗ₖ
            (1 : Matrix SpindleIndex SpindleIndex ℂ) +
          (fold.operator * terrain.grading) ⊗ₖ spindle := by
      simp only [liftedOperator, GradedTerrainComplex.DAFTotalOperator,
        mul_add]
      rw [← Matrix.mul_kronecker_mul, Matrix.mul_one,
        ← Matrix.mul_kronecker_mul, Matrix.one_mul]
    _ = (terrain.complex.hodgeDirac * fold.operator) ⊗ₖ
            (1 : Matrix SpindleIndex SpindleIndex ℂ) +
          (terrain.grading * fold.operator) ⊗ₖ spindle := by
      rw [fold.fold_intertwines_hodgeDirac, fold.intertwinesGrading]
    _ = terrain.DAFTotalOperator spindle * fold.liftedOperator := by
      simp only [liftedOperator, GradedTerrainComplex.DAFTotalOperator,
        add_mul]
      rw [← Matrix.mul_kronecker_mul, Matrix.mul_one,
        ← Matrix.mul_kronecker_mul, Matrix.mul_one]

/-- Lifted fold transport commutes with the total finite heat family. -/
theorem fold_intertwines_totalDiffuser
    (fold : FoldUnitary terrain)
    (spindle : FiniteOperator SpindleIndex SpindleIndex)
    (s : ℝ) :
    fold.liftedOperator *
        heatDiffuser (terrain.DAFTotalOperator spindle) s =
      heatDiffuser (terrain.DAFTotalOperator spindle) s *
        fold.liftedOperator := by
  let total := terrain.DAFTotalOperator spindle
  have commuteTotal : Commute fold.liftedOperator total :=
    fold.fold_intertwines_totalOperator spindle
  have commuteSquare : Commute fold.liftedOperator (total * total) := by
    calc
      fold.liftedOperator * (total * total) =
          (fold.liftedOperator * total) * total := by simp [mul_assoc]
      _ = (total * fold.liftedOperator) * total := by
        rw [commuteTotal.eq]
      _ = total * (fold.liftedOperator * total) := by simp [mul_assoc]
      _ = total * (total * fold.liftedOperator) := by rw [commuteTotal.eq]
      _ = (total * total) * fold.liftedOperator := by simp [mul_assoc]
  have scaledCommute :
      Commute fold.liftedOperator ((-(s : ℂ)) • (total * total)) :=
    commuteSquare.smul_right (-(s : ℂ))
  exact scaledCommute.exp_right.eq

/-- Matrix of the rank-one projection onto a coordinate vector. -/
def vectorProjectionMatrix
    (vector : FiniteHilbert (Index × SpindleIndex)) :
    FiniteOperator (Index × SpindleIndex) (Index × SpindleIndex) :=
  Matrix.vecMulVec vector (star vector)

/-- Exact operator-level carriage of a point projection. -/
theorem fold_transports_pointProjection
    (fold : FoldUnitary terrain)
    (source target : FiniteHilbert (Index × SpindleIndex))
    (transportsPoint :
      Matrix.mulVec fold.liftedOperator source = target) :
    fold.liftedOperator * vectorProjectionMatrix source *
        fold.liftedOperator.conjTranspose =
      vectorProjectionMatrix target := by
  rw [vectorProjectionMatrix, Matrix.mul_vecMulVec,
    Matrix.vecMulVec_mul, Matrix.vecMul_conjTranspose]
  rw [transportsPoint]
  simp only [star_star]
  rw [transportsPoint]
  rfl

end FoldUnitary

end DAF.Fold
