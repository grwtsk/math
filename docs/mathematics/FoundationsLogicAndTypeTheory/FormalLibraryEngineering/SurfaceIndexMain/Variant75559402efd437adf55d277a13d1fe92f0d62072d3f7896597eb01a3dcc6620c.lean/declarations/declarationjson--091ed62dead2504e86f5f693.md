# declarationJson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a9f60811cbdf02227fef4192adb983b8a013843ee2528a2354c36478d76f8ec3",
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
  "slug": "declarationjson--091ed62dead2504e86f5f693",
  "source": {
    "blob": "21493dd8477efd8acfb457b677c09f0e0a8e56d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 65,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceIndexMain/Variant75559402efd437adf55d277a13d1fe92f0d62072d3f7896597eb01a3dcc6620c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:091ed62dead2504e86f5f6933fe20e67caf6bfda35df9d8cf79f710eb5bb4187",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceIndexMain/Variant75559402efd437adf55d277a13d1fe92f0d62072d3f7896597eb01a3dcc6620c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a9f60811cbdf02227fef4192adb983b8a013843ee2528a2354c36478d76f8ec3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def declarationJson (env : Environment) (info : ConstantInfo) : String :=
  let name := info.name
  let typeText := toString info.type
  let proofStatus :=
    if info.isTheorem then "kernel_checked_theorem"
    else if info.isAxiom then "external_axiom"
    else "not_a_theorem"
  "{\"name\":" ++ jsonString name.toString ++
    ",\"module\":" ++ jsonString (declarationModule env name).toString ++
    ",\"kind\":" ++ jsonString (constantKind info) ++
    ",\"proof_status\":" ++ jsonString proofStatus ++
    ",\"type_hash\":" ++ jsonString (toString (digestString typeText)) ++
    ",\"classifications\":" ++ jsonStrings (classificationTags env name) ++ "}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceIndexMain/Variant75559402efd437adf55d277a13d1fe92f0d62072d3f7896597eb01a3dcc6620c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceIndexMain/Variant75559402efd437adf55d277a13d1fe92f0d62072d3f7896597eb01a3dcc6620c.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21493dd8477efd8acfb457b677c09f0e0a8e56d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
