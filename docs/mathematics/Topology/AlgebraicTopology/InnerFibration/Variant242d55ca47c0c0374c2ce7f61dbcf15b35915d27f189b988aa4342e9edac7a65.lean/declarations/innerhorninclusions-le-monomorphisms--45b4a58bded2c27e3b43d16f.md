# innerHornInclusions_le_monomorphisms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f80d5be9-f015-7a81-d475-f7df353a76ad",
  "kind": "lemma",
  "lexical_name": "innerHornInclusions_le_monomorphisms",
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
  "slug": "innerhorninclusions-le-monomorphisms--45b4a58bded2c27e3b43d16f",
  "source": {
    "blob": "b1c1f9382d74e9fc3d43a706c05683569b38f7e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 67,
    "path": "GRWTSK/Topology/AlgebraicTopology/InnerFibration/Variant242d55ca47c0c0374c2ce7f61dbcf15b35915d27f189b988aa4342e9edac7a65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45b4a58bded2c27e3b43d16f380a2d9f75fdebd002a433d9c6be277071a1c435",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/InnerFibration/Variant242d55ca47c0c0374c2ce7f61dbcf15b35915d27f189b988aa4342e9edac7a65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f80d5be9-f015-7a81-d475-f7df353a76ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma innerHornInclusions_le_monomorphisms :
    innerHornInclusions.{u} ≤ monomorphisms SSet :=
  innerHornInclusions_le_J.trans modelCategoryQuillen.J_le_monomorphisms

/-- The inner fibrations are the morphisms which have the right lifting property
with respect to inner horn inclusions. -/
@[expose, kerodon 01BA]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/InnerFibration/Variant242d55ca47c0c0374c2ce7f61dbcf15b35915d27f189b988aa4342e9edac7a65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/InnerFibration/Variant242d55ca47c0c0374c2ce7f61dbcf15b35915d27f189b988aa4342e9edac7a65.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1c1f9382d74e9fc3d43a706c05683569b38f7e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
