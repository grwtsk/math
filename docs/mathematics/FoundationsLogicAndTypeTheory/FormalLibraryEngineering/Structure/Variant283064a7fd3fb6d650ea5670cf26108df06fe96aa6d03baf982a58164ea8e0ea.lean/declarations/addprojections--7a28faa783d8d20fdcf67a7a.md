# addProjections

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34c0c73f8341b2d00164fc10783a269e9de14f2dcf7ab3d38d506e6c88126060",
  "kind": "def",
  "lexical_name": "addProjections",
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
  "slug": "addprojections--7a28faa783d8d20fdcf67a7a",
  "source": {
    "blob": "a1c91bd6fe151224d413a2c083e3d0385d2386eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1289,
    "line": 1275,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant283064a7fd3fb6d650ea5670cf26108df06fe96aa6d03baf982a58164ea8e0ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a28faa783d8d20fdcf67a7affaca35a9c799f7483d7399778d70fb542f48e21",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant283064a7fd3fb6d650ea5670cf26108df06fe96aa6d03baf982a58164ea8e0ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34c0c73f8341b2d00164fc10783a269e9de14f2dcf7ab3d38d506e6c88126060`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1275–1289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def addProjections (params : Array Expr) (r : ElabHeaderResult) (fieldInfos : Array StructFieldInfo) : TermElabM Unit := do
  let projDecls : Array StructProjDecl ←
    fieldInfos
    |>.filter (·.kind.isInCtor)
    |>.mapM (fun info => do
      info.paramInfoOverrides.forM fun p (ref, _) => do
        unless params.contains p do
          throwErrorAt ref "Invalid parameter binder update: Not a parameter:{indentExpr p}"
      let paramInfoOverrides := params |>.map (fun param => info.paramInfoOverrides[param]?.map Prod.snd) |>.toList
      return { ref := info.ref, projName := info.declName, paramInfoOverrides })
  mkProjections r.view.declName projDecls r.view.isClass
  for fieldInfo in fieldInfos do
    if fieldInfo.kind.isSubobject then
      addDeclarationRangesFromSyntax fieldInfo.declName r.view.ref fieldInfo.ref

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant283064a7fd3fb6d650ea5670cf26108df06fe96aa6d03baf982a58164ea8e0ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant283064a7fd3fb6d650ea5670cf26108df06fe96aa6d03baf982a58164ea8e0ea.lean#L1275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1c91bd6fe151224d413a2c083e3d0385d2386eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
