# structureAuditNameParts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c9719e51a0161c56b33fec6309d9ab7e0cfc506ecf9aeac8d2673f1e3f3641a5",
  "kind": "def",
  "lexical_name": "structureAuditNameParts",
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
  "slug": "structureauditnameparts--c3d4493bf602ee9b6d862ca8",
  "source": {
    "blob": "09d80bb5d3b840b81ad6074933783cdf595d9d0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 13,
    "line": 7,
    "path": "GRWTSK/Topology/GeneralTopology/A39c0c121c69eb5c7df2682aa8364d3868139c088c322e62de38a0107955a9b7RieszZeroSummabi/Varianta39c0c121c69eb5c7df2682aa8364d3868139c088c322e62de38a0107955a9b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c3d4493bf602ee9b6d862ca89d2ab51cb69d255e7f95214c13b7151346b9ea40",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/A39c0c121c69eb5c7df2682aa8364d3868139c088c322e62de38a0107955a9b7RieszZeroSummabi/Varianta39c0c121c69eb5c7df2682aa8364d3868139c088c322e62de38a0107955a9b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c9719e51a0161c56b33fec6309d9ab7e0cfc506ecf9aeac8d2673f1e3f3641a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 7–13.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def structureAuditNameParts : Name → List Json
  | .anonymous => []
  | .str parent component => structureAuditNameParts parent ++
      [Json.mkObj [("kind", toJson "str"), ("value", toJson component)]]
  | .num parent component => structureAuditNameParts parent ++
      [Json.mkObj [("kind", toJson "num"), ("value", toJson component)]]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/A39c0c121c69eb5c7df2682aa8364d3868139c088c322e62de38a0107955a9b7RieszZeroSummabi/Varianta39c0c121c69eb5c7df2682aa8364d3868139c088c322e62de38a0107955a9b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/A39c0c121c69eb5c7df2682aa8364d3868139c088c322e62de38a0107955a9b7RieszZeroSummabi/Varianta39c0c121c69eb5c7df2682aa8364d3868139c088c322e62de38a0107955a9b7.lean#L7).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09d80bb5d3b840b81ad6074933783cdf595d9d0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
