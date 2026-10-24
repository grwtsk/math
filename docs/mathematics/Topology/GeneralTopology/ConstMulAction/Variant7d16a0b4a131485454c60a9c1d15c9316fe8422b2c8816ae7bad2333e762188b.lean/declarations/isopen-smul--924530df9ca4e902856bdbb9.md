# IsOpen.smul₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49efe40b-afd6-b826-d674-7e545aa769f1",
  "kind": "theorem",
  "lexical_name": "IsOpen.smul₀",
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
  "slug": "isopen-smul--924530df9ca4e902856bdbb9",
  "source": {
    "blob": "05b1fb90ce2c8759e7841b11e51ceaf211b96e95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 346,
    "path": "GRWTSK/Topology/GeneralTopology/ConstMulAction/Variant7d16a0b4a131485454c60a9c1d15c9316fe8422b2c8816ae7bad2333e762188b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:924530df9ca4e902856bdbb93ba2d225f75d3f563bc0317b144cb9f8ec0851e0",
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

Occurrence: `result:49efe40b-afd6-b826-d674-7e545aa769f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsOpen.smul₀ {c : G₀} {s : Set α} (hs : IsOpen s) (hc : c ≠ 0) : IsOpen (c • s) :=
  isOpenMap_smul₀ hc s hs
#align is_open.smul₀ IsOpen.smul₀

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConstMulAction/Variant7d16a0b4a131485454c60a9c1d15c9316fe8422b2c8816ae7bad2333e762188b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConstMulAction/Variant7d16a0b4a131485454c60a9c1d15c9316fe8422b2c8816ae7bad2333e762188b.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05b1fb90ce2c8759e7841b11e51ceaf211b96e95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
