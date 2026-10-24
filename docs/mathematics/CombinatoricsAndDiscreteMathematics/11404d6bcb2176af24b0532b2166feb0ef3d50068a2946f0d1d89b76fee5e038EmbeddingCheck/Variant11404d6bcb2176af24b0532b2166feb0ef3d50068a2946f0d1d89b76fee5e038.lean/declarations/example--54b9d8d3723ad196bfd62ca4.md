# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:55c1455a7323a43f5bc58ba937d3f1e126f34797ae46cd0c4a80fe467b4e47fe",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--54b9d8d3723ad196bfd62ca4",
  "source": {
    "blob": "c55079aa50c33fd509ef069d4e3b72e537c2d3d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 15,
    "line": 4,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/11404d6bcb2176af24b0532b2166feb0ef3d50068a2946f0d1d89b76fee5e038EmbeddingCheck/Variant11404d6bcb2176af24b0532b2166feb0ef3d50068a2946f0d1d89b76fee5e038.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:54b9d8d3723ad196bfd62ca4c4fa97f56f4f4fc60ab053c4a72f1a571dc54755",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/11404d6bcb2176af24b0532b2166feb0ef3d50068a2946f0d1d89b76fee5e038EmbeddingCheck/Variant11404d6bcb2176af24b0532b2166feb0ef3d50068a2946f0d1d89b76fee5e038.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:55c1455a7323a43f5bc58ba937d3f1e126f34797ae46cd0c4a80fe467b4e47fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4–15.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {E : Type} (directions : Fin 4 → E) :
    blockDirections directions ({(0 : Fin 4), (2 : Fin 4)} : Finset (Fin 4)) =
      ![directions 0, directions 2] := by
  have h := Finset.orderEmbOfFin_unique
    (s := ({(0 : Fin 4), (2 : Fin 4)} : Finset (Fin 4)))
    (f := (![0, 2] : Fin 2 → Fin 4)) (by decide : _ = 2)
    (by decide) (by decide)
  funext j
  unfold blockDirections blockOrderIso
  rw [Finset.coe_orderIsoOfFin_apply, ← h]
  fin_cases j <;> rfl
end FormalResearch.PositiveAtlas.MomentCumulant
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/11404d6bcb2176af24b0532b2166feb0ef3d50068a2946f0d1d89b76fee5e038EmbeddingCheck/Variant11404d6bcb2176af24b0532b2166feb0ef3d50068a2946f0d1d89b76fee5e038.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/11404d6bcb2176af24b0532b2166feb0ef3d50068a2946f0d1d89b76fee5e038EmbeddingCheck/Variant11404d6bcb2176af24b0532b2166feb0ef3d50068a2946f0d1d89b76fee5e038.lean#L4).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c55079aa50c33fd509ef069d4e3b72e537c2d3d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
