# checkDeprecatedImports

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:408d9e928ce64445406ee149c754c1e95bfe3eff391ef82724f7e933bc450648",
  "kind": "def",
  "lexical_name": "checkDeprecatedImports",
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
  "slug": "checkdeprecatedimports--3bbb6851781f2f232bc87544",
  "source": {
    "blob": "8a61a128c6776e9e4a45dcd160e7ab85b12e210c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 69,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Import/Variant0c3cd690fa35aedac1c8c2fdeef65962941fd96059557a715cebf5784a7ec0ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3bbb6851781f2f232bc8754404ab9016bc9a4f2607365a644479011348fa412b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Import/Variant0c3cd690fa35aedac1c8c2fdeef65962941fd96059557a715cebf5784a7ec0ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:408d9e928ce64445406ee149c754c1e95bfe3eff391ef82724f7e933bc450648`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkDeprecatedImports
    (env : Environment) (imports : Array Import) (opts : Options)
    (inputCtx : Parser.InputContext) (startPos : String.Pos.Raw) (messages : MessageLog)
    (headerStx? : Option HeaderSyntax := none)
    (origHeaderStx? : Option HeaderSyntax := none)
    : MessageLog := Id.run do
  let mut opts := opts
  let mut ignoreDeprecatedImports : NameSet := {}
  if let some headerStx := origHeaderStx? <|> headerStx? then
    match headerStx with
    | `(Parser.Module.header| $[module%$moduleTk]? $[prelude%$_]? $importsStx*) =>
      if moduleTk.any (·.getTrailing?.any (·.toString.contains "deprecated_module: ignore")) then
        opts := linter.deprecated.module.set opts false
      for impStx in importsStx do
        if impStx.raw.getTrailing?.any (·.toString.contains "deprecated_module: ignore") then
          match impStx with
          | `(Parser.Module.import| $[public%$_]? $[meta%$_]? import $[all%$_]? $n) =>
            ignoreDeprecatedImports := ignoreDeprecatedImports.insert n.getId
          | _ => pure ()
    | _ => pure ()
  if !linter.deprecated.module.get opts then
    return messages
  imports.foldl (init := messages) fun messages imp =>
    if ignoreDeprecatedImports.contains imp.module then
      messages
    else
    match env.getModuleIdx? imp.module with
    | some idx =>
      match env.getDeprecatedModuleByIdx? idx with
      | some entry =>
        let pos := inputCtx.fileMap.toPosition startPos
        messages.add {
          fileName := inputCtx.fileName
          pos := pos
          severity := .warning
          data := .tagged ``deprecatedModuleExt <| formatDeprecatedModuleWarning env idx imp.module entry
        }
      | none => messages
    | none => messages

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Import/Variant0c3cd690fa35aedac1c8c2fdeef65962941fd96059557a715cebf5784a7ec0ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Import/Variant0c3cd690fa35aedac1c8c2fdeef65962941fd96059557a715cebf5784a7ec0ea.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a61a128c6776e9e4a45dcd160e7ab85b12e210c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
