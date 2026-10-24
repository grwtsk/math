# Complete source: GRWTSK.Algebra.LinearAlgebra.Attempt01.Variante827ecccfbc7ed66de64adc504d50cd328659d7a4b814d5939f08381a431f095

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0ac55de936a685f1b8b2d26e1efa63ecddedab4a` · SHA-256 `e34a3ded41871e28d143b0c4cfc19f07d97ded4307b59a09a1243475d7608994`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.CartanMatrix.Variantb1daf62f3352768677fe2481edd933611599276d80fb4a8dd3b3a0dd0770a9d2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b1daf62f3352768677fe2481edd933611599276d80fb4a8dd3b3a0dd0770a9d2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.CartanMatrix.Variantb1daf62f3352768677fe2481edd933611599276d80fb4a8dd3b3a0dd0770a9d2","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"b1daf62f3352768677fe2481edd933611599276d80fb4a8dd3b3a0dd0770a9d2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/mutation-d4-e8/author-records/generic-metric/attempt01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MatrixCalculus

/-!
Generic metric laws for the existing integer mutation calculus.
Direction: grwtsk contributors. Proof construction: OpenAI Codex.
This additional scratch slice does not modify the frozen seven-module receipt.
-/


namespace GRWTSK.Algebra.LinearAlgebra.CartanMatrix.Variantb1daf62f3352768677fe2481edd933611599276d80fb4a8dd3b3a0dd0770a9d2

namespace FormalResearch.MutationGame
open scoped BigOperators
open Matrix

/-- The loop-free Cartan form, with incoming-row integer adjacency. -/
def cartanMatrix {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ) :
    Matrix (Fin n) (Fin n) ℤ := 2 • (1 : Matrix (Fin n) (Fin n) ℤ) - A

theorem mutationMatrix_cartan {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ)
    (hzero : ∀ i, A i i = 0) (i : Fin n) :
    mutationMatrix A i = 1 - single i i 1 * cartanMatrix A := by
  ext j k
  by_cases hj : j = i
  · subst j
    by_cases hk : k = i
    · subst k
      simp [mutationMatrix, cartanMatrix, hzero, single_mul_eq_updateRow_zero]
    · simp [mutationMatrix, cartanMatrix, hk, single_mul_eq_updateRow_zero,
        Matrix.one_apply, Ne.symm hk]
  · simp [mutationMatrix, cartanMatrix, hj, single_mul_eq_updateRow_zero,
      Matrix.updateRow_apply]

end FormalResearch.MutationGame
```
