# getProjectedAst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b79243032586a59d2c4761aef2bee38e67ac6dc9ada3408da35918241ab3a681",
  "kind": "def",
  "lexical_name": "getProjectedAst",
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
  "slug": "getprojectedast--63c1b518d854e6cbb6a84faa",
  "source": {
    "blob": "9dc2bda39121f0d390c23def9b62c9b3a1af91a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 255,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant2e7b445cd4f69ab7398282c3bf2e45230c20fd01a6fa74d2834304804147f510.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:63c1b518d854e6cbb6a84faa8d37289e85790032c5dda1bd7d8e62ac7ec7fbeb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant2e7b445cd4f69ab7398282c3bf2e45230c20fd01a6fa74d2834304804147f510.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b79243032586a59d2c4761aef2bee38e67ac6dc9ada3408da35918241ab3a681`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getProjectedAst (env : Environment) (request : BridgeRequest) : BridgeM Json := do
  let (declaration, declarationName, info) ←
    ExceptT.mk <| pure <| requireDeclaration env request
  let (normalizedType, axioms, ranges) ← inspectCore env declarationName info
  pure <| Json.mkObj [
    ("schemaVersion", toJson "surface.lean-projected-ast.v1"),
    ("declaration", toJson declaration),
    ("module", toJson (declarationModule env declarationName).toString),
    ("authority", toJson (if info.isTheorem then "leanKernelChecked" else "unavailable")),
    ("normalizedType", toJson normalizedType),
    ("declarationRange", declarationRangesJson ranges),
    ("axiomClosure", toJson (axioms.toList.map Name.toString)),
    ("root", exprJson info.type)
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant2e7b445cd4f69ab7398282c3bf2e45230c20fd01a6fa74d2834304804147f510.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant2e7b445cd4f69ab7398282c3bf2e45230c20fd01a6fa74d2834304804147f510.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dc2bda39121f0d390c23def9b62c9b3a1af91a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
