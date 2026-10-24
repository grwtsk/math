# NoncompactSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:61d74b2e7da101c70d4e5449f02da30eefa3389ca491f88e33751e733a756628",
  "kind": "class",
  "lexical_name": "NoncompactSpace",
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
  "slug": "noncompactspace--37b93f507017981422b5dd9a",
  "source": {
    "blob": "23a8a44fa96f4fac102eb9280b03f0afff7c1789",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 311,
    "path": "GRWTSK/Topology/GeneralTopology/Filter/Variant05877202f48a927e9471ecf73fd2f17a18033a21f1afb34dec58253f8c21aafe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:37b93f507017981422b5dd9abb3b45be0dd870ced429031f5af8e363ffc264e7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Filter/Variant05877202f48a927e9471ecf73fd2f17a18033a21f1afb34dec58253f8c21aafe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:61d74b2e7da101c70d4e5449f02da30eefa3389ca491f88e33751e733a756628`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class NoncompactSpace : Prop where
  /-- In a noncompact space, `Set.univ` is not a compact set. -/
  noncompact_univ : ¬IsCompact (Set.univ : Set X)

/-- We say that a topological space is a *weakly locally compact space*,
if each point of this space admits a compact neighborhood. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Filter/Variant05877202f48a927e9471ecf73fd2f17a18033a21f1afb34dec58253f8c21aafe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Filter/Variant05877202f48a927e9471ecf73fd2f17a18033a21f1afb34dec58253f8c21aafe.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23a8a44fa96f4fac102eb9280b03f0afff7c1789` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
