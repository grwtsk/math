# structureAuditNameParts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2ca05f094ae8d851a25138cdd72ab567923a8b0e10de6bad9d43b718e6a02a60",
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
  "slug": "structureauditnameparts--8f04ae7eef804f645707e155",
  "source": {
    "blob": "16c7aefbad0b991869ffaa07d55e8ba4060f7db1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 13,
    "line": 7,
    "path": "GRWTSK/Topology/GeneralTopology/Bca27b09f9e1360773dd5f76c2369a199327d257cd2d581a70e6e70c4b645028RieszResidueAudi/Variantbca27b09f9e1360773dd5f76c2369a199327d257cd2d581a70e6e70c4b645028.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8f04ae7eef804f645707e155b442390244989e2a3d62c9a7e660894a00d8de31",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bca27b09f9e1360773dd5f76c2369a199327d257cd2d581a70e6e70c4b645028RieszResidueAudi/Variantbca27b09f9e1360773dd5f76c2369a199327d257cd2d581a70e6e70c4b645028.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2ca05f094ae8d851a25138cdd72ab567923a8b0e10de6bad9d43b718e6a02a60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 7–13.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bca27b09f9e1360773dd5f76c2369a199327d257cd2d581a70e6e70c4b645028RieszResidueAudi/Variantbca27b09f9e1360773dd5f76c2369a199327d257cd2d581a70e6e70c4b645028.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bca27b09f9e1360773dd5f76c2369a199327d257cd2d581a70e6e70c4b645028RieszResidueAudi/Variantbca27b09f9e1360773dd5f76c2369a199327d257cd2d581a70e6e70c4b645028.lean#L7).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16c7aefbad0b991869ffaa07d55e8ba4060f7db1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
