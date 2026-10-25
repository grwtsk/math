# invalidUpdateObservationJson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8429c54d7ee7c41cba11c698b64787b11fd53cae0dfd861aa5f95c6857d6540d",
  "kind": "def",
  "lexical_name": "invalidUpdateObservationJson",
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
  "slug": "invalidupdateobservationjson--68b0bc85a08db04609ac0bab",
  "source": {
    "blob": "d8548b385e255c354a146e9a375fdd0109612f44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 281,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceXYZConformanceMain/Variant91b29654b42735cdaeec0c1515cd6293e212dda71e28076e62cda1fae5c28ae0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68b0bc85a08db04609ac0bab3856248a53f3a4d786e56c1cccf44bd7aa116c94",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceXYZConformanceMain/Variant91b29654b42735cdaeec0c1515cd6293e212dda71e28076e62cda1fae5c28ae0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8429c54d7ee7c41cba11c698b64787b11fd53cae0dfd861aa5f95c6857d6540d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def invalidUpdateObservationJson
    (name : String) (wire : WireRevisionedXYZ) : Json :=
  let computed := expectedUpdateJson wire
  let (classification, output) := match computed with
    | .ok result =>
        (result.getObjValD "classification", result.getObjValD "output")
    | .error _ => (toJson (rawClassification wire), Json.null)
  Json.mkObj [
    ("name", toJson name),
    ("revision", toJson (toString wire.revision)),
    ("xRaw", toJson (toString wire.xRaw)),
    ("yRaw", toJson (toString wire.yRaw)),
    ("zRaw", toJson (toString wire.zRaw)),
    ("classification", classification),
    ("output", output),
    ("certificateConforms", toJson false)
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceXYZConformanceMain/Variant91b29654b42735cdaeec0c1515cd6293e212dda71e28076e62cda1fae5c28ae0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceXYZConformanceMain/Variant91b29654b42735cdaeec0c1515cd6293e212dda71e28076e62cda1fae5c28ae0.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8548b385e255c354a146e9a375fdd0109612f44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
