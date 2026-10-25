# declarationJson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9225839da5b1d9e460a2223928068b195105c9552de84cf258f42568f8c3ef50",
  "kind": "def",
  "lexical_name": "declarationJson",
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
  "slug": "declarationjson--0f8ca5dbc7751988d10a8b1e",
  "source": {
    "blob": "c99c00d233ae94a7be533a121998039832a190a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 353,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/SurfaceSyntaxExportMain/Variant822ff102ea04ae8b5db368c9897a7fbcd50019dfff0bd9424c659c3b8264ff8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f8ca5dbc7751988d10a8b1e1c09f2b852aa0a53c525218c50409f6264e71238",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/SurfaceSyntaxExportMain/Variant822ff102ea04ae8b5db368c9897a7fbcd50019dfff0bd9424c659c3b8264ff8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9225839da5b1d9e460a2223928068b195105c9552de84cf258f42568f8c3ef50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 353–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
unsafe def declarationJson (environment : Environment) (strings : List String)
    (nodes : Array FlatNode) (fileMap : FileMap) (sourceBytes : Nat)
    (index : Nat) (info : ConstantInfo) : Json :=
  let sourceSpan := declarationSourceSpan environment fileMap sourceBytes info.name
  Json.mkObj [
    ("declarationId", toJson index),
    ("kind", toJson (15 : Nat)),
    ("flags", toJson
      (environmentDeclarationFlags info + declarationFlags environment info.name)),
    ("nodeIndex", toJson (containingNodeIndex nodes sourceSpan)),
    ("nameIndex", toJson (stringIndex strings info.name.toString)),
    ("moduleIndex", Json.null),
    ("sourceSpan", spanJson sourceSpan),
    ("attributeStart", toJson (0 : Nat)),
    ("attributeCount", toJson (0 : Nat))
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/SurfaceSyntaxExportMain/Variant822ff102ea04ae8b5db368c9897a7fbcd50019dfff0bd9424c659c3b8264ff8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/SurfaceSyntaxExportMain/Variant822ff102ea04ae8b5db368c9897a7fbcd50019dfff0bd9424c659c3b8264ff8d.lean#L353).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c99c00d233ae94a7be533a121998039832a190a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
