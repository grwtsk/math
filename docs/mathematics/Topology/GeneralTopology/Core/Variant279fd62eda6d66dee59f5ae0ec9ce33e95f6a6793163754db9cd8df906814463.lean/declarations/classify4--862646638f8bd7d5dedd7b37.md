# classify4

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b0257c34233c4dfabf3d92eb14c610e3d6377aaec8138440da0f51cbbb97c876",
  "kind": "def",
  "lexical_name": "classify4",
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
  "slug": "classify4--862646638f8bd7d5dedd7b37",
  "source": {
    "blob": "57c1be65952837b79ac88396b074ef1d5381a6db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 52,
    "path": "GRWTSK/Topology/GeneralTopology/Core/Variant279fd62eda6d66dee59f5ae0ec9ce33e95f6a6793163754db9cd8df906814463.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:862646638f8bd7d5dedd7b37db21c171aac8e70b225336b5f4c858e5cbe3c914",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Core/Variant279fd62eda6d66dee59f5ae0ec9ce33e95f6a6793163754db9cd8df906814463.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b0257c34233c4dfabf3d92eb14c610e3d6377aaec8138440da0f51cbbb97c876`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def classify4 (block : FourBlock) : BitSiteValue :=
  if block = zero4 then
    .Zero
  else if block = one4 then
    .One
  else
    .HalfSite

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Core/Variant279fd62eda6d66dee59f5ae0ec9ce33e95f6a6793163754db9cd8df906814463.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Core/Variant279fd62eda6d66dee59f5ae0ec9ce33e95f6a6793163754db9cd8df906814463.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57c1be65952837b79ac88396b074ef1d5381a6db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
