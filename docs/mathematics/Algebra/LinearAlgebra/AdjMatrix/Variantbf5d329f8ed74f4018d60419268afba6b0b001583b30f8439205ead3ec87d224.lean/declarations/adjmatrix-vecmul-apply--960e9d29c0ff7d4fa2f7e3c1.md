# adjMatrix_vecMul_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6cd78f0a5c115c0b1df853a0ab4e0363346ad009",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 363,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf5d329f8ed74f4018d60419268afba6b0b001583b30f8439205ead3ec87d224.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6865d0a7-5df6-2915-f354-db9aa51d1485",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f22f3e7a-5118-d1aa-5db3-bfea10ee5235",
  "kind": "theorem",
  "lexical_name": "adjMatrix_vecMul_apply",
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
  "slug": "adjmatrix-vecmul-apply--960e9d29c0ff7d4fa2f7e3c1",
  "source": {
    "blob": "6cd78f0a5c115c0b1df853a0ab4e0363346ad009",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 363,
    "path": "GRWTSK/Algebra/LinearAlgebra/AdjMatrix/Variantbf5d329f8ed74f4018d60419268afba6b0b001583b30f8439205ead3ec87d224.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:960e9d29c0ff7d4fa2f7e3c14994d2d63a4a9ad91208c45285b997d55707c28f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AdjMatrix/Variantbf5d329f8ed74f4018d60419268afba6b0b001583b30f8439205ead3ec87d224.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f22f3e7a-5118-d1aa-5db3-bfea10ee5235`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjMatrix_vecMul_apply [NonAssocSemiring α] (v : V) (vec : V → α) :
    (vec ᵥ* G.adjMatrix α) v = ∑ u ∈ G.neighborFinset v, vec u := by
  simp only [← dotProduct_adjMatrix, vecMul]
  refine congr rfl ?_; ext x
  rw [← transpose_apply (adjMatrix α G) x v, transpose_adjMatrix]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AdjMatrix/Variantbf5d329f8ed74f4018d60419268afba6b0b001583b30f8439205ead3ec87d224.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AdjMatrix/Variantbf5d329f8ed74f4018d60419268afba6b0b001583b30f8439205ead3ec87d224.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cd78f0a5c115c0b1df853a0ab4e0363346ad009` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
