# Pi.continuousMul'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b6261297e271df39ce0469200e5c0e1f9099649081c0895d220e57f4df68813f",
  "kind": "instance",
  "lexical_name": "Pi.continuousMul'",
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
  "slug": "pi-continuousmul--61b65eefe06a6cde338f3954",
  "source": {
    "blob": "82746c2f2a4e25027e47de20068dc6441dfc4b20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 255,
    "path": "GRWTSK/Topology/GeneralTopology/Monoid/Variantdcd3f6148748b85622728c5ebc29d3e224a732f5eb43d23eadda397ac8f044a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:61b65eefe06a6cde338f39543e6100048680925ec894d7c88c4e56d58ee7bb03",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Monoid/Variantdcd3f6148748b85622728c5ebc29d3e224a732f5eb43d23eadda397ac8f044a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b6261297e271df39ce0469200e5c0e1f9099649081c0895d220e57f4df68813f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Pi.continuousMul' : ContinuousMul (ι → M) :=
  Pi.continuousMul
#align pi.has_continuous_mul' Pi.continuousMul'
#align pi.has_continuous_add' Pi.continuousAdd'

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Monoid/Variantdcd3f6148748b85622728c5ebc29d3e224a732f5eb43d23eadda397ac8f044a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Monoid/Variantdcd3f6148748b85622728c5ebc29d3e224a732f5eb43d23eadda397ac8f044a6.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82746c2f2a4e25027e47de20068dc6441dfc4b20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
