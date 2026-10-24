# det_eq_sum_row_mul_submatrix_succAbove_succAbove_det

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0c717f3efa74f722a21036a29eed3d25bd6424d0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d16d14f7cabdf2cd80681177cd1a94ba62da9915d88e581f7b96b87712ca4735.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:86d558cb-8bda-3560-7232-abf51774ee3d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6a84c5d3-cd11-4e89-b81b-dfe79f8a93e2",
  "kind": "theorem",
  "lexical_name": "det_eq_sum_row_mul_submatrix_succAbove_succAbove_det",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "det-eq-sum-row-mul-submatrix-succabove-succabove-det--4093ee7dee60bfefc763ce0d",
  "source": {
    "blob": "0c717f3efa74f722a21036a29eed3d25bd6424d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 89,
    "path": "GRWTSK/Algebra/LinearAlgebra/Misc/Variantd16d14f7cabdf2cd80681177cd1a94ba62da9915d88e581f7b96b87712ca4735.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4093ee7dee60bfefc763ce0d93dde33c9e9ca12696bc0905483ac8a3982c2461",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Misc/Variantd16d14f7cabdf2cd80681177cd1a94ba62da9915d88e581f7b96b87712ca4735.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a84c5d3-cd11-4e89-b81b-dfe79f8a93e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_eq_sum_row_mul_submatrix_succAbove_succAbove_det {n : ℕ}
    (M : Matrix (Fin (n + 1)) (Fin (n + 1)) R) (i₀ j₀ : Fin (n + 1))
    (hv : ∀ i ≠ i₀, ∑ j, M i j = 0) :
    M.det = (-1) ^ (i₀ + j₀ : ℕ) *
      (∑ j, M i₀ j) * (M.submatrix (Fin.succAbove i₀) (Fin.succAbove j₀)).det := by
  rw [← det_transpose, det_eq_sum_column_mul_submatrix_succAbove_succAbove_det _ j₀ i₀
    (by simpa using hv), ← det_transpose, transpose_submatrix, transpose_transpose, add_comm]
  simp_rw [transpose_apply]

end Matrix
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Misc/Variantd16d14f7cabdf2cd80681177cd1a94ba62da9915d88e581f7b96b87712ca4735.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Misc/Variantd16d14f7cabdf2cd80681177cd1a94ba62da9915d88e581f7b96b87712ca4735.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c717f3efa74f722a21036a29eed3d25bd6424d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
