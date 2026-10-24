# Complete source: GRWTSK.Algebra.LinearAlgebra.Warshall.Variant43c45704fb078eedd69ec9082738a9ba80822267060133058967b52b7c980706

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dc67668e741f29a9e9e7ac23915384b8b03c8b38` · SHA-256 `8d44129dcca61182af9da35878603e3885f06f99ef95047cb07f0a1ec9e2e2e9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.MatrixWarshallStep.Variant02638ddc564966b11bd343610aa2e8b042664b92d09760fd1dc1e67a627d1e6c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"02638ddc564966b11bd343610aa2e8b042664b92d09760fd1dc1e67a627d1e6c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.MatrixWarshallStep.Variant02638ddc564966b11bd343610aa2e8b042664b92d09760fd1dc1e67a627d1e6c","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"02638ddc564966b11bd343610aa2e8b042664b92d09760fd1dc1e67a627d1e6c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Matrix/Warshall.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Matrix


namespace GRWTSK.Algebra.LinearAlgebra.MatrixWarshallStep.Variant02638ddc564966b11bd343610aa2e8b042664b92d09760fd1dc1e67a627d1e6c

namespace Boolean

/--
One Warshall update at intermediate vertex `k`.

The new entry `(i, j)` is true precisely when it was already true, or when
there is an `i → k` connection and a `k → j` connection.
-/
def Matrix.warshallStep
    {n : Nat}
    (k : Fin n)
    (A : Matrix n n) :
    Matrix n n :=
  fun i j => A i j || (A i k && A k j)

@[simp] theorem Matrix.entry_warshallStep
    {n : Nat}
    (k : Fin n)
    (A : Matrix n n)
    (i j : Fin n) :
    Matrix.entry (Matrix.warshallStep k A) i j =
      (Matrix.entry A i j ||
        (Matrix.entry A i k && Matrix.entry A k j)) :=
  rfl

/--
`warshallAux limit h A` performs Warshall updates for all intermediate
vertices with indices `< limit`.

The proof `h : limit ≤ n` ensures that each intermediate index is a valid
`Fin n`.
-/
def Matrix.warshallAux {n : Nat} :
    (limit : Nat) → limit ≤ n → Matrix n n → Matrix n n
  | 0, _, A => A
  | k + 1, hk, A =>
      Matrix.warshallStep
        ⟨k, hk⟩
        (Matrix.warshallAux
          k
          (Nat.le_trans (Nat.le_succ k) hk)
          A)

/--
Warshall's algorithm on a square Boolean matrix.

For a relation matrix, this repeatedly applies the Boolean update

`A[i,j] := A[i,j] || (A[i,k] && A[k,j])`

for every intermediate index `k`.
-/
def Matrix.warshall
    {n : Nat}
    (A : Matrix n n) :
    Matrix n n :=
  Matrix.warshallAux n (Nat.le_refl n) A

@[simp] theorem Matrix.warshallAux_zero
    {n : Nat}
    (h : 0 ≤ n)
    (A : Matrix n n) :
    Matrix.warshallAux 0 h A = A :=
  rfl

end Boolean
```
