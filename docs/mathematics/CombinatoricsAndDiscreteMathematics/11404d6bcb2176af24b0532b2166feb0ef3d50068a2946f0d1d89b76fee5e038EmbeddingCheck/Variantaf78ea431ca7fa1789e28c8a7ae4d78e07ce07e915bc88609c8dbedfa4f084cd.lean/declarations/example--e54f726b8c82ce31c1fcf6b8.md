# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:345c0ef06ffe390b30eb936abe9d5f793f213a16f9214ee3f338425ca962fc7c",
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
  "slug": "example--e54f726b8c82ce31c1fcf6b8",
  "source": {
    "blob": "c50485c1f9412ab98b0bfc0c1bd07d524d0315d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 23,
    "line": 12,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/11404d6bcb2176af24b0532b2166feb0ef3d50068a2946f0d1d89b76fee5e038EmbeddingCheck/Variantaf78ea431ca7fa1789e28c8a7ae4d78e07ce07e915bc88609c8dbedfa4f084cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e54f726b8c82ce31c1fcf6b8c3e45536b8414457152e17224884923aac508cdc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/11404d6bcb2176af24b0532b2166feb0ef3d50068a2946f0d1d89b76fee5e038EmbeddingCheck/Variantaf78ea431ca7fa1789e28c8a7ae4d78e07ce07e915bc88609c8dbedfa4f084cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:345c0ef06ffe390b30eb936abe9d5f793f213a16f9214ee3f338425ca962fc7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 12–23.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/11404d6bcb2176af24b0532b2166feb0ef3d50068a2946f0d1d89b76fee5e038EmbeddingCheck/Variantaf78ea431ca7fa1789e28c8a7ae4d78e07ce07e915bc88609c8dbedfa4f084cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/11404d6bcb2176af24b0532b2166feb0ef3d50068a2946f0d1d89b76fee5e038EmbeddingCheck/Variantaf78ea431ca7fa1789e28c8a7ae4d78e07ce07e915bc88609c8dbedfa4f084cd.lean#L12).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c50485c1f9412ab98b0bfc0c1bd07d524d0315d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
