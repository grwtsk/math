# denseRange_algebraMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "14f0ecc0926209007030c132999ff102c660ede1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/bae6f56a9d68bc9a0f79d3f8861e1c931ccc8342cfe05ae8f22199a6bac8d46d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fffc763b-05b2-9976-5a8f-7a1cf533d40c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:476855ee-8e24-0fb2-da94-81a71ce8e876",
  "kind": "theorem",
  "lexical_name": "denseRange_algebraMap",
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
  "slug": "denserange-algebramap--aa858ac78e0f7fd33689e498",
  "source": {
    "blob": "14f0ecc0926209007030c132999ff102c660ede1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 106,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/InfiniteAdeleRing/Variantbae6f56a9d68bc9a0f79d3f8861e1c931ccc8342cfe05ae8f22199a6bac8d46d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa858ac78e0f7fd33689e49866bb7a0f76b067907be79b44afadadd3628c41ff",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/InfiniteAdeleRing/Variantbae6f56a9d68bc9a0f79d3f8861e1c931ccc8342cfe05ae8f22199a6bac8d46d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:476855ee-8e24-0fb2-da94-81a71ce8e876`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem denseRange_algebraMap [NumberField K] : DenseRange <| algebraMap K K∞ :=
  (DenseRange.piMap fun v => Completion.denseRange_coe v).comp
    (InfinitePlace.denseRange_algebraMap_pi K) (.piMap fun v => Completion.continuous_coe v)

/-- The norm on the infinite adele ring is given by the product of the normalized norms
across infinite places. The normalized norm is the real norm at real places and the
square of the complex norm at complex places. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/InfiniteAdeleRing/Variantbae6f56a9d68bc9a0f79d3f8861e1c931ccc8342cfe05ae8f22199a6bac8d46d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/InfiniteAdeleRing/Variantbae6f56a9d68bc9a0f79d3f8861e1c931ccc8342cfe05ae8f22199a6bac8d46d.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14f0ecc0926209007030c132999ff102c660ede1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
