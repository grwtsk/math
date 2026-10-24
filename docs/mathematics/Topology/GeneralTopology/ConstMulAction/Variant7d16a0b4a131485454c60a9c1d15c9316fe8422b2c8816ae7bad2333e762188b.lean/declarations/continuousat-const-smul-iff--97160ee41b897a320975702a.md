# continuousAt_const_smul_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e45c149d-57fa-aa36-b50e-8803fb88c31a",
  "kind": "theorem",
  "lexical_name": "continuousAt_const_smul_iff",
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
  "slug": "continuousat-const-smul-iff--97160ee41b897a320975702a",
  "source": {
    "blob": "05b1fb90ce2c8759e7841b11e51ceaf211b96e95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 229,
    "path": "GRWTSK/Topology/GeneralTopology/ConstMulAction/Variant7d16a0b4a131485454c60a9c1d15c9316fe8422b2c8816ae7bad2333e762188b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97160ee41b897a320975702a4ecb93062685d98f43a740ccad302487c654ac3b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ConstMulAction/Variant7d16a0b4a131485454c60a9c1d15c9316fe8422b2c8816ae7bad2333e762188b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e45c149d-57fa-aa36-b50e-8803fb88c31a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousAt_const_smul_iff (c : G) :
    ContinuousAt (fun x => c • f x) b ↔ ContinuousAt f b :=
  tendsto_const_smul_iff c
#align continuous_at_const_smul_iff continuousAt_const_smul_iff
#align continuous_at_const_vadd_iff continuousAt_const_vadd_iff

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConstMulAction/Variant7d16a0b4a131485454c60a9c1d15c9316fe8422b2c8816ae7bad2333e762188b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConstMulAction/Variant7d16a0b4a131485454c60a9c1d15c9316fe8422b2c8816ae7bad2333e762188b.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05b1fb90ce2c8759e7841b11e51ceaf211b96e95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
