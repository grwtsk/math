# transpose_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e71002f0d5fbcb179719f239c1a747c64879caf4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 659,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c7e876ac39c6ca27a248c0ae4f0031cbab5a55fcc9f248acf8c0d9dbdba9c53d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:12ddecf0-eb63-888a-b22a-818f84cfe64e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e62a2c73-8de1-fc3d-2217-82692074c2c1",
  "kind": "theorem",
  "lexical_name": "transpose_sum",
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
  "slug": "transpose-sum--55da3b78d8ef7e4f384e2674",
  "source": {
    "blob": "e71002f0d5fbcb179719f239c1a747c64879caf4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 666,
    "line": 659,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantc7e876ac39c6ca27a248c0ae4f0031cbab5a55fcc9f248acf8c0d9dbdba9c53d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55da3b78d8ef7e4f384e2674b7070af1453ddee10ee669a4cc782ff0acaa7084",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantc7e876ac39c6ca27a248c0ae4f0031cbab5a55fcc9f248acf8c0d9dbdba9c53d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e62a2c73-8de1-fc3d-2217-82692074c2c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 659–666.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem transpose_sum [AddCommMonoid α] {ι : Type*} (s : Finset ι) (M : ι → Matrix m n α) :
    (∑ i ∈ s, M i)ᵀ = ∑ i ∈ s, (M i)ᵀ :=
  map_sum (transposeAddEquiv m n α) _ s

variable (m n R α)

/-- `Matrix.transpose` as a `LinearMap` -/
@[simps apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantc7e876ac39c6ca27a248c0ae4f0031cbab5a55fcc9f248acf8c0d9dbdba9c53d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantc7e876ac39c6ca27a248c0ae4f0031cbab5a55fcc9f248acf8c0d9dbdba9c53d.lean#L659).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e71002f0d5fbcb179719f239c1a747c64879caf4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
