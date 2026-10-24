# RioSlice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b0f1d6a68420803d613e62ed916c6f280b25c3107d3be5c9a89c5eddc3d2b410",
  "kind": "abbrev",
  "lexical_name": "RioSlice",
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
  "slug": "rioslice--9f5e94f7aeddd8c65d1a9ef7",
  "source": {
    "blob": "217d12380e966e0d49c510bbfe6785f0b6ba63d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 842,
    "line": 841,
    "path": "GRWTSK/Topology/GeneralTopology/Zipper/Variant8565af4f9368da621fa266f5dad9fc6dee619f61d05bec76785c8eb6fd6f10c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f5e94f7aeddd8c65d1a9ef78bf8cca4b79105ed4738e046f782b5f620af38ff",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Zipper/Variant8565af4f9368da621fa266f5dad9fc6dee619f61d05bec76785c8eb6fd6f10c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b0f1d6a68420803d613e62ed916c6f280b25c3107d3be5c9a89c5eddc3d2b410`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 841–842.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public abbrev RioSlice α β [Ord α] := Slice (RioSliceData α β)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Zipper/Variant8565af4f9368da621fa266f5dad9fc6dee619f61d05bec76785c8eb6fd6f10c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Zipper/Variant8565af4f9368da621fa266f5dad9fc6dee619f61d05bec76785c8eb6fd6f10c3.lean#L841).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `217d12380e966e0d49c510bbfe6785f0b6ba63d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
