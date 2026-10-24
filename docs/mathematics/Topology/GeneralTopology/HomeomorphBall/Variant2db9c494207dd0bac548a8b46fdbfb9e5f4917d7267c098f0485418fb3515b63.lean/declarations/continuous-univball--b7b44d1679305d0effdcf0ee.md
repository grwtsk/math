# continuous_univBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4cf5dcd-b023-ff82-5f79-2d3acda81f8b",
  "kind": "theorem",
  "lexical_name": "continuous_univBall",
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
  "slug": "continuous-univball--b7b44d1679305d0effdcf0ee",
  "source": {
    "blob": "f98adc08604d749c89b6224084e0f635e4c7aa7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 153,
    "path": "GRWTSK/Topology/GeneralTopology/HomeomorphBall/Variant2db9c494207dd0bac548a8b46fdbfb9e5f4917d7267c098f0485418fb3515b63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7b44d1679305d0effdcf0ee0cd61993911a1dbaf4f03db5d5eb9f1c512ddbae",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/HomeomorphBall/Variant2db9c494207dd0bac548a8b46fdbfb9e5f4917d7267c098f0485418fb3515b63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4cf5dcd-b023-ff82-5f79-2d3acda81f8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_univBall (c : P) (r : ℝ) : Continuous (univBall c r) := by
  simpa [continuous_iff_continuousOn_univ] using (univBall c r).continuousOn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/HomeomorphBall/Variant2db9c494207dd0bac548a8b46fdbfb9e5f4917d7267c098f0485418fb3515b63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/HomeomorphBall/Variant2db9c494207dd0bac548a8b46fdbfb9e5f4917d7267c098f0485418fb3515b63.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f98adc08604d749c89b6224084e0f635e4c7aa7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
