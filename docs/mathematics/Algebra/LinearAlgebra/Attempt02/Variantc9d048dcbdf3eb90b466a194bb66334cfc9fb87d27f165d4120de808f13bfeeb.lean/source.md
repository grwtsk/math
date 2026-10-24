# Complete source: GRWTSK.Algebra.LinearAlgebra.Attempt02.Variantc9d048dcbdf3eb90b466a194bb66334cfc9fb87d27f165d4120de808f13bfeeb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7ed1c5c40892f123b36eb40163c43956ba007701` · SHA-256 `59e31ff10074d1a5d0db872019132c4fd046513a92605aea23b1d9664e365889`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.CartanMatrix.Variant122a9d48d0b68a835186a02b4481913bfcb834d0cf98c14bb0a19fff094c2723","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"122a9d48d0b68a835186a02b4481913bfcb834d0cf98c14bb0a19fff094c2723","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.CartanMatrix.Variant122a9d48d0b68a835186a02b4481913bfcb834d0cf98c14bb0a19fff094c2723","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"122a9d48d0b68a835186a02b4481913bfcb834d0cf98c14bb0a19fff094c2723","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/mutation-d4-e8/author-records/generic-metric/attempt02.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MatrixCalculus

/-!
Generic metric laws for the existing integer mutation calculus.
Direction: grwtsk contributors. Proof construction: OpenAI Codex.
This additional scratch slice does not modify the frozen seven-module receipt.
-/


namespace GRWTSK.Algebra.LinearAlgebra.CartanMatrix.Variant122a9d48d0b68a835186a02b4481913bfcb834d0cf98c14bb0a19fff094c2723

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
      simp [mutationMatrix, cartanMatrix, hzero, single_mul_eq_updateRow_zero,
        Matrix.ofNat_apply]
    · simp [mutationMatrix, cartanMatrix, hk, single_mul_eq_updateRow_zero,
        Matrix.ofNat_apply, Ne.symm hk]
  · simp [mutationMatrix, cartanMatrix, hj, single_mul_eq_updateRow_zero,
      Matrix.updateRow_apply]

/-- The complete bilinear-form update, without symmetry or positivity assumptions. -/
theorem mutation_form_entry {n : ℕ} (A B : Matrix (Fin n) (Fin n) ℤ)
    (hzero : ∀ i, A i i = 0) (i j k : Fin n) :
    ((mutationMatrix A i)ᵀ * B * mutationMatrix A i) j k =
      B j k - cartanMatrix A i j * B i k - B j i * cartanMatrix A i k +
        cartanMatrix A i j * B i i * cartanMatrix A i k := by
  have heq : (mutationMatrix A i)ᵀ * B * mutationMatrix A i =
      B - (cartanMatrix A)ᵀ * single i i 1 * B - B * single i i 1 * cartanMatrix A +
        (cartanMatrix A)ᵀ * single i i 1 * B * single i i 1 * cartanMatrix A := by
    rw [mutationMatrix_cartan A hzero i]
    simp only [transpose_sub, transpose_one, transpose_mul, transpose_single]
    noncomm_ring
  rw [heq]
  simp [Matrix.mul_apply, Matrix.single]

end FormalResearch.MutationGame
```
