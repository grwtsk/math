# Complete source: GRWTSK.Algebra.LinearAlgebra.ResourceIndexedGramGuardAttempt01.Variant440094fafb7b3065106afbd767d19af8f8b6b0a7bb63da803499484d392429af

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5fe26c9bd0a49c5d1202e76cfe844c929e30dd71` · SHA-256 `3f8c00c2a67ab2bd8dd30b57fa2217a5654e0f4cedbe991ab0fd58a6811cf1b8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.MatrixPosSemidefOfResourceIndexedGramPrecision.Variantc5c123528775d9b59815e6b86d5bb6c7cd0652ff46efdbf541d98cea1188a5d3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c5c123528775d9b59815e6b86d5bb6c7cd0652ff46efdbf541d98cea1188a5d3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.MatrixPosSemidefOfResourceIndexedGramPrecision.Variantc5c123528775d9b59815e6b86d5bb6c7cd0652ff46efdbf541d98cea1188a5d3","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"c5c123528775d9b59815e6b86d5bb6c7cd0652ff46efdbf541d98cea1188a5d3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass17/residual_guard/ResourceIndexedGramGuard-attempt01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import GramResidualGuard

/-! Optional resource-indexed adapter for the unchanged finite source matrix in #232/#234.
Direction grwtsk contributors; scratch proof construction OpenAI Codex.
Each precision may use a different finite row count. No source certificate is supplied. -/

namespace GRWTSK.Algebra.LinearAlgebra.MatrixPosSemidefOfResourceIndexedGramPrecision.Variantc5c123528775d9b59815e6b86d5bb6c7cd0652ff46efdbf541d98cea1188a5d3

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.GramResidualGuard
open scoped ComplexOrder
variable {𝕜 : Type*} [RCLike 𝕜]
variable {n : Type*} [Fintype n] [DecidableEq n]

/-- The source dimension and H remain fixed; only the finite Gram resource may grow. -/
theorem matrix_posSemidef_of_resource_indexed_gram_precision
    (H : Matrix n n 𝕜) (hH : H.IsHermitian)
    (happrox : ∀ ε : ℝ, 0 < ε → ∃ rows : ℕ, ∃ V : Matrix (Fin rows) n 𝕜,
      ‖matrixOperator H-matrixOperator (V.conjTranspose*V)‖ ≤ ε) : H.PosSemidef := by
  apply (matrixOperator_positive_iff H).mp
  apply positive_of_arbitrary_precision (matrixOperator H)
    (Matrix.isSymmetric_toEuclideanLin_iff.mpr hH)
  intro ε hε
  obtain ⟨rows,V,hV⟩ := happrox ε hε
  exact ⟨matrixOperator (V.conjTranspose*V),
    (matrixOperator_positive_iff _).mpr (Matrix.posSemidef_conjTranspose_mul_self V),hV⟩
end ContinuousResearch.GramResidualGuard

#check ContinuousResearch.GramResidualGuard.matrix_posSemidef_of_resource_indexed_gram_precision
#print axioms ContinuousResearch.GramResidualGuard.matrix_posSemidef_of_resource_indexed_gram_precision
#print ContinuousResearch.GramResidualGuard.matrix_posSemidef_of_resource_indexed_gram_precision
```
