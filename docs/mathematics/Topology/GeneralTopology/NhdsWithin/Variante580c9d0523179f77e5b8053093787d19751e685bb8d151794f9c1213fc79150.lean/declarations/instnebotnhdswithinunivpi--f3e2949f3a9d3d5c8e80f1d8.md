# instNeBotNhdsWithinUnivPi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:49b5719c09e3ba1d9d94b6b4f861a956a30a5225454bf5d8cdf1a4f0a8c4d6d5",
  "kind": "instance",
  "lexical_name": "instNeBotNhdsWithinUnivPi",
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
  "slug": "instnebotnhdswithinunivpi--f3e2949f3a9d3d5c8e80f1d8",
  "source": {
    "blob": "bc09a0ae9903f2419cc4f63415f10d94dafea47e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 360,
    "path": "GRWTSK/Topology/GeneralTopology/NhdsWithin/Variante580c9d0523179f77e5b8053093787d19751e685bb8d151794f9c1213fc79150.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f3e2949f3a9d3d5c8e80f1d86466b5dd510eb06775b346a9abb933c02e6cc1f8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NhdsWithin/Variante580c9d0523179f77e5b8053093787d19751e685bb8d151794f9c1213fc79150.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:49b5719c09e3ba1d9d94b6b4f861a956a30a5225454bf5d8cdf1a4f0a8c4d6d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 360–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instNeBotNhdsWithinUnivPi {s : ∀ i, Set (X i)} {x : ∀ i, X i}
    [∀ i, (𝓝[s i] x i).NeBot] : (𝓝[pi univ s] x).NeBot := by
  simpa [nhdsWithin_pi_neBot]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NhdsWithin/Variante580c9d0523179f77e5b8053093787d19751e685bb8d151794f9c1213fc79150.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NhdsWithin/Variante580c9d0523179f77e5b8053093787d19751e685bb8d151794f9c1213fc79150.lean#L360).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc09a0ae9903f2419cc4f63415f10d94dafea47e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
