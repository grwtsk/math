# structureAuditNameParts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3dbacfa6c223f80c1cf0e4b6d79c6ae26de9a334502b847bee07d6c182d01e8",
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
  "slug": "structureauditnameparts--8b2ed44fc4cef0e376f939fd",
  "source": {
    "blob": "0b4e3281d76b467b7272bc3570e2aa83c44e50bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 13,
    "line": 7,
    "path": "GRWTSK/Topology/GeneralTopology/Cd6ffa1ee7a6222a0ed2b8695caa1f2ad3c17e847aa244bc5ae7f094425e683eSourceScaledKern/Variantcd6ffa1ee7a6222a0ed2b8695caa1f2ad3c17e847aa244bc5ae7f094425e683e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8b2ed44fc4cef0e376f939fddf0d7494f8cf142c314bad24e38d8c18d2324a11",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Cd6ffa1ee7a6222a0ed2b8695caa1f2ad3c17e847aa244bc5ae7f094425e683eSourceScaledKern/Variantcd6ffa1ee7a6222a0ed2b8695caa1f2ad3c17e847aa244bc5ae7f094425e683e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3dbacfa6c223f80c1cf0e4b6d79c6ae26de9a334502b847bee07d6c182d01e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 7–13.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Cd6ffa1ee7a6222a0ed2b8695caa1f2ad3c17e847aa244bc5ae7f094425e683eSourceScaledKern/Variantcd6ffa1ee7a6222a0ed2b8695caa1f2ad3c17e847aa244bc5ae7f094425e683e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Cd6ffa1ee7a6222a0ed2b8695caa1f2ad3c17e847aa244bc5ae7f094425e683eSourceScaledKern/Variantcd6ffa1ee7a6222a0ed2b8695caa1f2ad3c17e847aa244bc5ae7f094425e683e.lean#L7).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b4e3281d76b467b7272bc3570e2aa83c44e50bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
