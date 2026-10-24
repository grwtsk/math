-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.FiniteBicomplex.Variant007d715c4f86d6f59e9df858cef33ebb0e67049ddead1f602f6d9c0abb8b176d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"007d715c4f86d6f59e9df858cef33ebb0e67049ddead1f602f6d9c0abb8b176d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.FiniteBicomplex.Variant007d715c4f86d6f59e9df858cef33ebb0e67049ddead1f602f6d9c0abb8b176d","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"007d715c4f86d6f59e9df858cef33ebb0e67049ddead1f602f6d9c0abb8b176d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Hilbert/Bicomplex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Hilbert.DifferentialComplex
import Mathlib.Tactic.NoncommRing

/-!
# Finite signed terrain--cell bicomplex

The two stored matrices are the terrain differential and the cubical
differential *after* the usual `(-1)^p` totalization sign has been applied.
Thus their compatibility law is anticommutation.  This is the flattened,
finite-dimensional form of an unsigned bicomplex law `d_K d_Q = d_Q d_K`.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.FiniteBicomplex.Variant007d715c4f86d6f59e9df858cef33ebb0e67049ddead1f602f6d9c0abb8b176d

noncomputable section

namespace DAF.Hilbert

universe u

/-- An exact finite bicomplex after signed totalization. -/
structure FiniteBicomplex
    (Index : Type u) [Fintype Index] [DecidableEq Index] where
  terrainDifferential : FiniteOperator Index Index
  cubeDifferential : FiniteOperator Index Index
  terrain_square_zero : terrainDifferential * terrainDifferential = 0
  cube_square_zero : cubeDifferential * cubeDifferential = 0
  signed_compatibility :
    terrainDifferential * cubeDifferential +
      cubeDifferential * terrainDifferential = 0

namespace FiniteBicomplex

variable {Index : Type u} [Fintype Index] [DecidableEq Index]

/-- The signed total differential `d_K + (-1)^p d_Q`. -/
def totalDifferential (complex : FiniteBicomplex Index) :
    FiniteOperator Index Index :=
  complex.terrainDifferential + complex.cubeDifferential

/-- Exact finite totalization: the total differential squares to zero. -/
theorem totalDifferential_sq_zero (complex : FiniteBicomplex Index) :
    complex.totalDifferential * complex.totalDifferential = 0 := by
  calc
    complex.totalDifferential * complex.totalDifferential =
        complex.terrainDifferential * complex.terrainDifferential +
          (complex.terrainDifferential * complex.cubeDifferential +
            complex.cubeDifferential * complex.terrainDifferential) +
          complex.cubeDifferential * complex.cubeDifferential := by
            simp only [totalDifferential]
            noncomm_ring
    _ = 0 := by
      rw [complex.terrain_square_zero, complex.signed_compatibility,
        complex.cube_square_zero]
      simp

/-- Forgetting the bidegree split yields the canonical finite differential
complex consumed by the Hodge--Dirac construction. -/
def toDifferentialComplex (complex : FiniteBicomplex Index) :
    FiniteDifferentialComplex Index where
  differential := complex.totalDifferential
  differential_square_zero := complex.totalDifferential_sq_zero

end FiniteBicomplex

end DAF.Hilbert
