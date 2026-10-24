# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1c6f23cf488135c6b14f8d93dc0941727684a1db491ead99136eb9b14e23721",
  "kind": "instance",
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
  "slug": "instance--8a3a0a8aa7703d890f05fd1a",
  "source": {
    "blob": "f7e75a4555647a415020a6d4dd96ddcebd429269",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 252,
    "path": "GRWTSK/Topology/GeneralTopology/DiscreteQuotient/Variantf00aafdbd49a4537a00658a0818f75c844cedcee5d7f4f306887e7d2e5477300.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a3a0a8aa7703d890f05fd1a0a7e20fea4793b8b4bf77c2559a975eacb17d76e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DiscreteQuotient/Variantf00aafdbd49a4537a00658a0818f75c844cedcee5d7f4f306887e7d2e5477300.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1c6f23cf488135c6b14f8d93dc0941727684a1db491ead99136eb9b14e23721`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [LocallyConnectedSpace X] : OrderBot (DiscreteQuotient X) where
  bot :=
    { toSetoid := connectedComponentSetoid X
      isOpen_setOf_rel := fun x => by
        convert isOpen_connectedComponent (x := x)
        ext y
        simpa only [connectedComponentSetoid, ← connectedComponent_eq_iff_mem] using eq_comm }
  bot_le S := fun x y (h : connectedComponent x = connectedComponent y) =>
    (S.isClopen_setOf_rel x).connectedComponent_subset (S.refl _) <| h.symm ▸ mem_connectedComponent

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DiscreteQuotient/Variantf00aafdbd49a4537a00658a0818f75c844cedcee5d7f4f306887e7d2e5477300.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DiscreteQuotient/Variantf00aafdbd49a4537a00658a0818f75c844cedcee5d7f4f306887e7d2e5477300.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7e75a4555647a415020a6d4dd96ddcebd429269` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
