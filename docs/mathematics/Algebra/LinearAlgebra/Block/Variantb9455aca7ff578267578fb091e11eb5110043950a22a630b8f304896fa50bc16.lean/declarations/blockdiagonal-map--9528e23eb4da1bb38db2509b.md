# blockDiagonal'_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bdb55880ff9c904d959c4e1b093bdc138a1ab307",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 665,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9455aca7ff578267578fb091e11eb5110043950a22a630b8f304896fa50bc16.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:26f213b6-9e59-44fa-4798-fbf578685eb5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:91d381d0-5fb2-4ade-b691-9cc48466a190",
  "kind": "theorem",
  "lexical_name": "blockDiagonal'_map",
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
  "slug": "blockdiagonal-map--9528e23eb4da1bb38db2509b",
  "source": {
    "blob": "bdb55880ff9c904d959c4e1b093bdc138a1ab307",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 672,
    "line": 665,
    "path": "GRWTSK/Algebra/LinearAlgebra/Block/Variantb9455aca7ff578267578fb091e11eb5110043950a22a630b8f304896fa50bc16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9528e23eb4da1bb38db2509bed630ed8057933c765f0f9e2fad0bb48b9e48cea",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Block/Variantb9455aca7ff578267578fb091e11eb5110043950a22a630b8f304896fa50bc16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91d381d0-5fb2-4ade-b691-9cc48466a190`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 665–672.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem blockDiagonal'_map (M : ∀ i, Matrix (m' i) (n' i) α) (f : α → β) (hf : f 0 = 0) :
    (blockDiagonal' M).map f = blockDiagonal' fun k => (M k).map f := by
  ext
  simp only [map_apply, blockDiagonal'_apply, eq_comm]
  rw [apply_dite f, hf]
#align matrix.block_diagonal'_map Matrix.blockDiagonal'_map

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Block/Variantb9455aca7ff578267578fb091e11eb5110043950a22a630b8f304896fa50bc16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Block/Variantb9455aca7ff578267578fb091e11eb5110043950a22a630b8f304896fa50bc16.lean#L665).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdb55880ff9c904d959c4e1b093bdc138a1ab307` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
