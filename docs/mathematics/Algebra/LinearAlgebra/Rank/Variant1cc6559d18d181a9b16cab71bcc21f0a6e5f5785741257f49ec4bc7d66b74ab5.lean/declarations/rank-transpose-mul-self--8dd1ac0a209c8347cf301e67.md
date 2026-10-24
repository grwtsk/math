# rank_transpose_mul_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e2e66ba299c1ed33821d3fd6c0bc9441ff8e27d8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 393,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1cc6559d18d181a9b16cab71bcc21f0a6e5f5785741257f49ec4bc7d66b74ab5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:46fade27-6378-60eb-81bd-2d6375cd9144",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e769d920-4fe2-b86c-0be7-19d11183a210",
  "kind": "theorem",
  "lexical_name": "rank_transpose_mul_self",
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
  "slug": "rank-transpose-mul-self--8dd1ac0a209c8347cf301e67",
  "source": {
    "blob": "e2e66ba299c1ed33821d3fd6c0bc9441ff8e27d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 404,
    "line": 393,
    "path": "GRWTSK/Algebra/LinearAlgebra/Rank/Variant1cc6559d18d181a9b16cab71bcc21f0a6e5f5785741257f49ec4bc7d66b74ab5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8dd1ac0a209c8347cf301e676d4387bd158bf65a42df616e36d6e6d5ee550cf4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Rank/Variant1cc6559d18d181a9b16cab71bcc21f0a6e5f5785741257f49ec4bc7d66b74ab5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e769d920-4fe2-b86c-0be7-19d11183a210`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 393–404.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rank_transpose_mul_self (A : Matrix m n R) : (Aᵀ * A).rank = A.rank := by
  dsimp only [rank]
  refine add_left_injective (finrank R <| LinearMap.ker A.mulVecLin) ?_
  dsimp only
  trans finrank R { x // x ∈ LinearMap.range (mulVecLin (Aᵀ * A)) } +
    finrank R { x // x ∈ LinearMap.ker (mulVecLin (Aᵀ * A)) }
  · rw [ker_mulVecLin_transpose_mul_self]
  · simp only [LinearMap.finrank_range_add_finrank_ker]

end LinearOrderedField

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Rank/Variant1cc6559d18d181a9b16cab71bcc21f0a6e5f5785741257f49ec4bc7d66b74ab5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Rank/Variant1cc6559d18d181a9b16cab71bcc21f0a6e5f5785741257f49ec4bc7d66b74ab5.lean#L393).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2e66ba299c1ed33821d3fd6c0bc9441ff8e27d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
