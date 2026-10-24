# Complete source: GRWTSK.Algebra.LinearAlgebra.MatrixCalculus.Variant4dfa05790358b1b5245f75757d28c6a27344eed2ff8fb1b810c1f4aec9bc9514

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7ae0374ab0eb8bbcfc7f692d3be25e12254c82ea` · SHA-256 `3e6f760a8bf26379b402f696946f9b942fc21d4e7f6bae01ec72fa554a33d9bb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.MutationMatrix.Variant03390fe44736ec77b51513744b42096e5ebe4f8d1b3e1e1f32682b03505f5243","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"03390fe44736ec77b51513744b42096e5ebe4f8d1b3e1e1f32682b03505f5243","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.MutationMatrix.Variant03390fe44736ec77b51513744b42096e5ebe4f8d1b3e1e1f32682b03505f5243","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"03390fe44736ec77b51513744b42096e5ebe4f8d1b3e1e1f32682b03505f5243","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/mutation-d4-e8/MatrixCalculus.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Calculus


namespace GRWTSK.Algebra.LinearAlgebra.MutationMatrix.Variant03390fe44736ec77b51513744b42096e5ebe4f8d1b3e1e1f32682b03505f5243

namespace FormalResearch.MutationGame
open scoped BigOperators

/-- An identity matrix with the selected mutation row replaced. -/
def mutationMatrix {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ) (i : Fin n) :
    Matrix (Fin n) (Fin n) ℤ :=
  Matrix.updateRow 1 i (fun k => if k = i then -1 else A i k)

theorem mutationMatrix_mulVec {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ)
    (i : Fin n) (x : Population n) : (mutationMatrix A i).mulVec x = mutate A i x := by
  funext j
  by_cases h : j = i
  · subst j
    simp only [mutationMatrix, Matrix.mulVec, Matrix.updateRow_self, mutate]
    change (∑ k, (if k = i then -1 else A i k) * x k) =
      -x i + ∑ k ∈ Finset.univ.erase i, A i k * x k
    rw [← Finset.sum_erase_add _ _ (Finset.mem_univ i)]
    have hs : (∑ k ∈ Finset.univ.erase i, (if k = i then -1 else A i k) * x k) =
        ∑ k ∈ Finset.univ.erase i, A i k * x k := by
      apply Finset.sum_congr rfl
      intro k hk
      rw [if_neg (Finset.mem_erase.mp hk).1]
    rw [hs]
    simp
    ring
  · simp [mutationMatrix, Matrix.updateRow_apply, h, mutate, Matrix.mulVec,
      dotProduct, Matrix.one_apply]

theorem mutationMatrix_sq {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ) (i : Fin n) :
    mutationMatrix A i * mutationMatrix A i = 1 := by
  apply Matrix.ext_iff_mulVec.mpr
  intro x
  rw [← Matrix.mulVec_mulVec, mutationMatrix_mulVec, mutationMatrix_mulVec,
    mutate_involutive A i, Matrix.one_mulVec]

theorem mutationMatrix_det {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ) (i : Fin n) :
    (mutationMatrix A i).det = -1 := by
  have hs : (fun k => if k = i then -1 else A i k) =
      ∑ k, (if k = i then -1 else A i k) • (1 : Matrix (Fin n) (Fin n) ℤ) k := by
    funext j
    rw [← Matrix.vecMul_eq_sum, Matrix.vecMul_one]
  rw [mutationMatrix, hs, Matrix.det_updateRow_sum]
  simp

/-- Left-to-right words act by reversed matrix multiplication on columns. -/
def wordMatrix {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ) :
    List (Fin n) → Matrix (Fin n) (Fin n) ℤ
  | [] => 1
  | i :: w => wordMatrix A w * mutationMatrix A i

theorem wordMatrix_mulVec {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ)
    (w : List (Fin n)) (x : Population n) : (wordMatrix A w).mulVec x = play A w x := by
  induction w generalizing x with
  | nil => simp [wordMatrix]
  | cons i w ih =>
    rw [wordMatrix, ← Matrix.mulVec_mulVec, mutationMatrix_mulVec, ih, play_cons]

theorem wordMatrix_append {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ)
    (u v : List (Fin n)) : wordMatrix A (u ++ v) = wordMatrix A v * wordMatrix A u := by
  apply Matrix.ext_iff_mulVec.mpr
  intro x
  rw [wordMatrix_mulVec, play_append, ← Matrix.mulVec_mulVec,
    wordMatrix_mulVec, wordMatrix_mulVec]

theorem wordMatrix_reverse {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ)
    (w : List (Fin n)) : wordMatrix A w.reverse * wordMatrix A w = 1 := by
  apply Matrix.ext_iff_mulVec.mpr
  intro x
  rw [← Matrix.mulVec_mulVec, wordMatrix_mulVec, wordMatrix_mulVec, play_reverse,
    Matrix.one_mulVec]

end FormalResearch.MutationGame
```
