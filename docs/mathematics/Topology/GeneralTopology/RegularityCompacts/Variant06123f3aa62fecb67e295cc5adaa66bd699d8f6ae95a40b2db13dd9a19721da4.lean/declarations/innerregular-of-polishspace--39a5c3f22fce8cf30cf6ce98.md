# InnerRegular_of_polishSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:56a8d59aa34fc36d64a9a3b359169240411a9aeb4bfcd31e5a6cf38f2eab784e",
  "kind": "instance",
  "lexical_name": "InnerRegular_of_polishSpace",
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
  "slug": "innerregular-of-polishspace--39a5c3f22fce8cf30cf6ce98",
  "source": {
    "blob": "0e9f5cb6c12dc77d143f68d964f4ecbc7251cac2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 183,
    "path": "GRWTSK/Topology/GeneralTopology/RegularityCompacts/Variant06123f3aa62fecb67e295cc5adaa66bd699d8f6ae95a40b2db13dd9a19721da4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:39a5c3f22fce8cf30cf6ce98f12e6189e174fb778ea4497a0cce614b95d43bce",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RegularityCompacts/Variant06123f3aa62fecb67e295cc5adaa66bd699d8f6ae95a40b2db13dd9a19721da4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:56a8d59aa34fc36d64a9a3b359169240411a9aeb4bfcd31e5a6cf38f2eab784e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance InnerRegular_of_polishSpace [TopologicalSpace α]
    [PolishSpace α] [BorelSpace α] (P : Measure α) [IsFiniteMeasure P] :
    P.InnerRegular := by
  letI := TopologicalSpace.upgradeIsCompletelyMetrizable α
  exact InnerRegular_of_pseudoEMetricSpace_completeSpace_secondCountable P

/--
A measure `μ` on a `PseudoEMetricSpace E` and `CompleteSpace E` with `SecondCountableTopology E`
is inner regular for finite measure sets with respect to compact sets.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RegularityCompacts/Variant06123f3aa62fecb67e295cc5adaa66bd699d8f6ae95a40b2db13dd9a19721da4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RegularityCompacts/Variant06123f3aa62fecb67e295cc5adaa66bd699d8f6ae95a40b2db13dd9a19721da4.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e9f5cb6c12dc77d143f68d964f4ecbc7251cac2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
