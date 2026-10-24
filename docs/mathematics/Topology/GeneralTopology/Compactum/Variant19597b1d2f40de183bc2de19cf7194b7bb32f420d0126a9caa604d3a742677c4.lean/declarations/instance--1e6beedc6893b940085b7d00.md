# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d84e2ffebefbd41335dbefaf5103dd2acf68c5ac0228b5042f77a045e5a0ec5c",
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
  "slug": "instance--1e6beedc6893b940085b7d00",
  "source": {
    "blob": "8de82494e76861f3271a4a37a046173df09772f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 184,
    "path": "GRWTSK/Topology/GeneralTopology/Compactum/Variant19597b1d2f40de183bc2de19cf7194b7bb32f420d0126a9caa604d3a742677c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e6beedc6893b940085b7d00e4ab96b2645b1d0ebfd345952b9211d89b00874a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compactum/Variant19597b1d2f40de183bc2de19cf7194b7bb32f420d0126a9caa604d3a742677c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d84e2ffebefbd41335dbefaf5103dd2acf68c5ac0228b5042f77a045e5a0ec5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {X : Compactum} : CompactSpace X := by
  constructor
  rw [isCompact_iff_ultrafilter_le_nhds]
  intro F _
  refine ⟨X.str F, by tauto, ?_⟩
  rw [le_nhds_iff]
  intro S h1 h2
  exact h2 F h1

/-- A local definition used only in the proofs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compactum/Variant19597b1d2f40de183bc2de19cf7194b7bb32f420d0126a9caa604d3a742677c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compactum/Variant19597b1d2f40de183bc2de19cf7194b7bb32f420d0126a9caa604d3a742677c4.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8de82494e76861f3271a4a37a046173df09772f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
