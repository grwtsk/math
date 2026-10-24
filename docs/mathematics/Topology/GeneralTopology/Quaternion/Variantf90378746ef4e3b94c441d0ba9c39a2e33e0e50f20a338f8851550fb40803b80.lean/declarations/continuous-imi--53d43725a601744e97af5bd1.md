# continuous_imI

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af1c4516-cc2a-5cba-a8b1-b5e3f15e39ce",
  "kind": "theorem",
  "lexical_name": "continuous_imI",
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
  "slug": "continuous-imi--53d43725a601744e97af5bd1",
  "source": {
    "blob": "b14be2f442df729d22b19620a3e31075592cc6c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 190,
    "path": "GRWTSK/Topology/GeneralTopology/Quaternion/Variantf90378746ef4e3b94c441d0ba9c39a2e33e0e50f20a338f8851550fb40803b80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53d43725a601744e97af5bd12576a9c92093989f3529b4c2e993e9a4184bc688",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Quaternion/Variantf90378746ef4e3b94c441d0ba9c39a2e33e0e50f20a338f8851550fb40803b80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af1c4516-cc2a-5cba-a8b1-b5e3f15e39ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_imI : Continuous fun q : ℍ => q.imI :=
  (PiLp.continuous_apply 2 _ 1).comp linearIsometryEquivTuple.continuous

@[continuity]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Quaternion/Variantf90378746ef4e3b94c441d0ba9c39a2e33e0e50f20a338f8851550fb40803b80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Quaternion/Variantf90378746ef4e3b94c441d0ba9c39a2e33e0e50f20a338f8851550fb40803b80.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b14be2f442df729d22b19620a3e31075592cc6c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
