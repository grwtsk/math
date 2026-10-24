# CantorTopologyCapability

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9cb99c429ac61f86b727b36cbed90926e0e204906f34f5f561a9ac437def3b1c",
  "kind": "structure",
  "lexical_name": "CantorTopologyCapability",
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
  "slug": "cantortopologycapability--3637153c63631a4095e94f58",
  "source": {
    "blob": "2d129f497ac5416c7a55129cf8191775a9a40f88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 26,
    "path": "GRWTSK/Topology/GeneralTopology/Cantor/Variant5216783331a3585aabfd987d031048221f996d0a61a9282710bfe04411f67030.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3637153c63631a4095e94f587f18dd36ae07d057da08bbfbbde93de7f51d7ae8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Cantor/Variant5216783331a3585aabfd987d031048221f996d0a61a9282710bfe04411f67030.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9cb99c429ac61f86b727b36cbed90926e0e204906f34f5f561a9ac437def3b1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CantorTopologyCapability
    (Space : Type)
    [TopologicalSpace Space] where
  nonempty : Nonempty Space
  compact : IsCompact (Set.univ : Set Space)
  metrizable : Nonempty (TopologicalSpace.MetrizableSpace Space)
  noIsolatedPoint : ∀ point : Space, ¬IsOpen ({point} : Set Space)
  totallyDisconnected : IsTotallyDisconnected (Set.univ : Set Space)
  clopenBasis : ∃ basis : Set (Set Space),
    TopologicalSpace.IsTopologicalBasis basis ∧
      ∀ member ∈ basis, IsClopen member

/--
Continuity is an additional capability beyond the baseline set equivalence.
The equality witness prevents an unrelated homeomorphism between the same
types from being presented as the designated baseline interpreter.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Cantor/Variant5216783331a3585aabfd987d031048221f996d0a61a9282710bfe04411f67030.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Cantor/Variant5216783331a3585aabfd987d031048221f996d0a61a9282710bfe04411f67030.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d129f497ac5416c7a55129cf8191775a9a40f88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
