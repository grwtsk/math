# T5Space

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:89bbec82642d695c41a777fd05a68af30f788380ad89e6c058be4c38bf6dc1ed",
  "kind": "class",
  "lexical_name": "T5Space",
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
  "slug": "t5space--2cf49fdbe9d1869ba22470fb",
  "source": {
    "blob": "a8b9bb6a7ff7df35d51aee4dba345015529b15de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 556,
    "line": 555,
    "path": "GRWTSK/Topology/GeneralTopology/Regular/Varianta8bbaa2d95360822b08dc82cd5928cdcb2159f9deb64b7347ad9440b5e12f6a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2cf49fdbe9d1869ba22470fb4ade5bf413aa289f00aa64e02c110ac5a95b3b6c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Regular/Varianta8bbaa2d95360822b08dc82cd5928cdcb2159f9deb64b7347ad9440b5e12f6a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:89bbec82642d695c41a777fd05a68af30f788380ad89e6c058be4c38bf6dc1ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 555–556.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class T5Space (X : Type u) [TopologicalSpace X] : Prop extends T1Space X, CompletelyNormalSpace X

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Regular/Varianta8bbaa2d95360822b08dc82cd5928cdcb2159f9deb64b7347ad9440b5e12f6a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Regular/Varianta8bbaa2d95360822b08dc82cd5928cdcb2159f9deb64b7347ad9440b5e12f6a0.lean#L555).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8b9bb6a7ff7df35d51aee4dba345015529b15de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
