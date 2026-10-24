# pullback.isLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c5312ae6d6bbdde9c7354d735dc8f4f9cebe48c7d3c432bce2fe495fde8d8da4",
  "kind": "def",
  "lexical_name": "pullback.isLimit",
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
  "slug": "pullback-islimit--2e95dc58f50ee030940509a9",
  "source": {
    "blob": "1fa71ebcd4bf11f815be82f5caee3dbd0818b1b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 96,
    "path": "GRWTSK/Topology/GeneralTopology/Limits/Variant9fe85f41a940c799ea6984d42bb8a5b862ecadf3b3ed99e2961954d047823527.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e95dc58f50ee030940509a978319820e315c5cd7af88f9a48399fc39331877a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Limits/Variant9fe85f41a940c799ea6984d42bb8a5b862ecadf3b3ed99e2961954d047823527.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c5312ae6d6bbdde9c7354d735dc8f4f9cebe48c7d3c432bce2fe495fde8d8da4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pullback.isLimit : Limits.IsLimit (pullback.cone f g) :=
  Limits.PullbackCone.isLimitAux _
    (fun s => pullback.lift f g s.fst s.snd s.condition)
    (fun _ => pullback.lift_fst _ _ _ _ _)
    (fun _ => pullback.lift_snd _ _ _ _ _)
    (fun _ _ hm => pullback.hom_ext _ _ _ _ (hm .left) (hm .right))

section Isos

/-- The isomorphism from the explicit pullback to the abstract pullback. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Limits/Variant9fe85f41a940c799ea6984d42bb8a5b862ecadf3b3ed99e2961954d047823527.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Limits/Variant9fe85f41a940c799ea6984d42bb8a5b862ecadf3b3ed99e2961954d047823527.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fa71ebcd4bf11f815be82f5caee3dbd0818b1b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
