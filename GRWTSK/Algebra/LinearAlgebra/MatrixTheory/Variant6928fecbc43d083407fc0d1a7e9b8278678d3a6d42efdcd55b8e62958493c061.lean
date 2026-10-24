-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.MatrixTheory.Variantf38e0cab9751c492c050f0c216d40e8a536b47c7c43c1d4aa3a0416c940bcb01","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f38e0cab9751c492c050f0c216d40e8a536b47c7c43c1d4aa3a0416c940bcb01","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Matrix.Variantf38e0cab9751c492c050f0c216d40e8a536b47c7c43c1d4aa3a0416c940bcb01","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"f38e0cab9751c492c050f0c216d40e8a536b47c7c43c1d4aa3a0416c940bcb01","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Matrix.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Boolean matrices

Object nucleus for finite Boolean matrices. Operations, encodings, relation
composition, cycle checks, counts, and Warshall closure live in
`Boolean.Matrix.*` leaves.
-/


namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.Variantf38e0cab9751c492c050f0c216d40e8a536b47c7c43c1d4aa3a0416c940bcb01

namespace Boolean

/--
A Boolean matrix is a two-dimensional grid with `rows` rows and `cols` columns.

An entry is addressed by a row index `Fin rows` and a column index `Fin cols`,
and every entry is exactly a `Bool`, equivalently `false`/`true` or `0`/`1`.
-/
abbrev Matrix (rows cols : Nat) :=
  Fin rows → Fin cols → Bool

/-- Read the entry in row `i` and column `j`. -/
def Matrix.entry
    (A : Matrix rows cols)
    (i : Fin rows)
    (j : Fin cols) :
    Bool :=
  A i j

/-- The row indexed by `i`. -/
def Matrix.row
    (A : Matrix rows cols)
    (i : Fin rows) :
    Fin cols → Bool :=
  fun j => A i j

/-- The column indexed by `j`. -/
def Matrix.col
    (A : Matrix rows cols)
    (j : Fin cols) :
    Fin rows → Bool :=
  fun i => A i j

/-- Every matrix entry is one of the two Boolean values. -/
theorem Matrix.entry_eq_false_or_true
    (A : Matrix rows cols)
    (i : Fin rows)
    (j : Fin cols) :
    Matrix.entry A i j = false ∨
      Matrix.entry A i j = true := by
  cases Matrix.entry A i j <;> simp

end Boolean
