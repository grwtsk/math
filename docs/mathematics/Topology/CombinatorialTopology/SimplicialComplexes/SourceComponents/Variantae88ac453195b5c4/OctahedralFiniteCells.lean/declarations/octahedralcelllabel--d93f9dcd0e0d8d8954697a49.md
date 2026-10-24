# octahedralCellLabel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d9973de66f6edd29634a8c9f3311866f79a97944c47e5a507a673d195ea39ae",
  "kind": "def",
  "lexical_name": "octahedralCellLabel",
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
  "slug": "octahedralcelllabel--d93f9dcd0e0d8d8954697a49",
  "source": {
    "blob": "6e25ffe8adc0e95958f5aee2b15de482a341dddf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 159,
    "path": "GRWTSK/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variantae88ac453195b5c4/OctahedralFiniteCells.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d93f9dcd0e0d8d8954697a49613c0e49ee050c767150a809ed0b31f7f642c31c",
  "verification": {
    "reference": "docs/verification/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variantae88ac453195b5c4/OctahedralFiniteCells.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d9973de66f6edd29634a8c9f3311866f79a97944c47e5a507a673d195ea39ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def octahedralCellLabel :
    (k : Nat) → OctahedralCell k → String
  | 0, cell => octahedralVertexId cell
  | 1, cell => octahedralEdgeId cell
  | 2, cell => octahedralFaceId cell
  | .succ (.succ (.succ _)), cell => nomatch cell

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variantae88ac453195b5c4/OctahedralFiniteCells.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variantae88ac453195b5c4/OctahedralFiniteCells.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e25ffe8adc0e95958f5aee2b15de482a341dddf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
