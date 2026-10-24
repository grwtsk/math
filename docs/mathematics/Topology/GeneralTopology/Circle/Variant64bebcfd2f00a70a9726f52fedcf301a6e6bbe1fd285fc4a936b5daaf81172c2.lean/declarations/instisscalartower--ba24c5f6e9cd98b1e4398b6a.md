# instIsScalarTower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:629825f6558b8b858cd15989337141fd8547920ee2b4326782bf88ba6b7daf74",
  "kind": "instance",
  "lexical_name": "instIsScalarTower",
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
  "slug": "instisscalartower--ba24c5f6e9cd98b1e4398b6a",
  "source": {
    "blob": "9a14ca26f5701113b966c51eb5a931b4d7d3bdef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 193,
    "path": "GRWTSK/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba24c5f6e9cd98b1e4398b6ab30f00b3d833a5a9aa4a17b788e5dc89cdd934b4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:629825f6558b8b858cd15989337141fd8547920ee2b4326782bf88ba6b7daf74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instIsScalarTower [SMul ℂ α] [SMul ℂ β] [SMul α β] [IsScalarTower ℂ α β] :
    IsScalarTower Circle α β :=
  inferInstanceAs <| IsScalarTower (Submonoid.unitSphere _) α β

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Circle/Variant64bebcfd2f00a70a9726f52fedcf301a6e6bbe1fd285fc4a936b5daaf81172c2.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a14ca26f5701113b966c51eb5a931b4d7d3bdef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
