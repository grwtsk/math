# elabShowBlueprintJson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c2a7392cf286036828ef5fffdbcf3b40d00c51244c7593d6eb44e8a6f2c367a",
  "kind": "def",
  "lexical_name": "elabShowBlueprintJson",
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
  "slug": "elabshowblueprintjson--42fd2ee7bedd623e06f43960",
  "source": {
    "blob": "17229d2dc36df2d75a13cdb161ad31da4a4e4ac4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 302,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Output/Variant18e1bd78e7fae2252f063733e6f138a38210877d8d98215cf7a4c144090b1045.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:42fd2ee7bedd623e06f4396044f0954b26f43889d50f4f528c3c563fac7cc0bb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Output/Variant18e1bd78e7fae2252f063733e6f138a38210877d8d98215cf7a4c144090b1045.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9c2a7392cf286036828ef5fffdbcf3b40d00c51244c7593d6eb44e8a6f2c367a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[command_elab show_blueprint_json] def elabShowBlueprintJson : CommandElab
  | `(command| #show_blueprint_json) => do
    let json ← liftCoreM mainModuleToJson
    logInfo m!"{json}"
  | `(command| #show_blueprint_json $id:ident) => do
    let name ← liftCoreM <| realizeGlobalConstNoOverloadWithInfo id
    let some node := blueprintExt.find? (← getEnv) name | throwError "{name} does not have @[blueprint] attribute"
    let json := (← liftCoreM node.toNodeWithPos).toJson
    logInfo m!"{json}"
  | `(command| #show_blueprint_json $label:str) => do
    let env ← getEnv
    let names := getLeanNamesOfLatexLabel env label.getString
    if names.isEmpty then throwError "no @[blueprint] nodes with label {label}"
    for name in names do
      elabCommand <| ← `(command| #show_blueprint_json $(mkIdent name))
  | _ => throwUnsupportedSyntax

end ToJson

open IO

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Output/Variant18e1bd78e7fae2252f063733e6f138a38210877d8d98215cf7a4c144090b1045.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Output/Variant18e1bd78e7fae2252f063733e6f138a38210877d8d98215cf7a4c144090b1045.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17229d2dc36df2d75a13cdb161ad31da4a4e4ac4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
