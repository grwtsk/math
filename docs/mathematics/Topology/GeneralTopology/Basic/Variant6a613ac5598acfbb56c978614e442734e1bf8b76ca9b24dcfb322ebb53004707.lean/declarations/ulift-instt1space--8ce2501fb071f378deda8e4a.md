# ULift.instT1Space

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:11ef926b82a2b654b0cf4774c563552dd0ac84e683fad9ab7f37b67eb9eec342",
  "kind": "instance",
  "lexical_name": "ULift.instT1Space",
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
  "slug": "ulift-instt1space--8ce2501fb071f378deda8e4a",
  "source": {
    "blob": "c717452f9310dda1e60e8cbc0e58775814c1b268",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 551,
    "line": 548,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant6a613ac5598acfbb56c978614e442734e1bf8b76ca9b24dcfb322ebb53004707.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8ce2501fb071f378deda8e4a92e304488530dff83cd3557df54484a6f4c852b3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant6a613ac5598acfbb56c978614e442734e1bf8b76ca9b24dcfb322ebb53004707.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:11ef926b82a2b654b0cf4774c563552dd0ac84e683fad9ab7f37b67eb9eec342`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 548–551.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance ULift.instT1Space [T1Space X] : T1Space (ULift X) :=
  IsEmbedding.uliftDown.t1Space

-- see Note [lower instance priority]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant6a613ac5598acfbb56c978614e442734e1bf8b76ca9b24dcfb322ebb53004707.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant6a613ac5598acfbb56c978614e442734e1bf8b76ca9b24dcfb322ebb53004707.lean#L548).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c717452f9310dda1e60e8cbc0e58775814c1b268` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
