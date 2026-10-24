# structureAuditNameParts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ec5aa15548a23cdcf59b80d90381f81f70ff51846938f2101004b0b9b54ca57",
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
  "slug": "structureauditnameparts--01c86d044c09d7e6784ca0df",
  "source": {
    "blob": "8647dbd7ec6ebe880855c0aa9c7d94056af220e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 21,
    "line": 15,
    "path": "GRWTSK/Topology/GeneralTopology/Fb4a547a491b683e57202ebcdf47eed440828995c7027a6df06d553f37a1acc2WholeMaintainedA/Variant448552ea37a07b00f45f64ffab194c21f9b30029cf4393eab10fd122d229ddc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:01c86d044c09d7e6784ca0df27f09bb04d695e0d64678efc295308661fdac4e8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Fb4a547a491b683e57202ebcdf47eed440828995c7027a6df06d553f37a1acc2WholeMaintainedA/Variant448552ea37a07b00f45f64ffab194c21f9b30029cf4393eab10fd122d229ddc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ec5aa15548a23cdcf59b80d90381f81f70ff51846938f2101004b0b9b54ca57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–21.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Fb4a547a491b683e57202ebcdf47eed440828995c7027a6df06d553f37a1acc2WholeMaintainedA/Variant448552ea37a07b00f45f64ffab194c21f9b30029cf4393eab10fd122d229ddc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Fb4a547a491b683e57202ebcdf47eed440828995c7027a6df06d553f37a1acc2WholeMaintainedA/Variant448552ea37a07b00f45f64ffab194c21f9b30029cf4393eab10fd122d229ddc0.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8647dbd7ec6ebe880855c0aa9c7d94056af220e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
