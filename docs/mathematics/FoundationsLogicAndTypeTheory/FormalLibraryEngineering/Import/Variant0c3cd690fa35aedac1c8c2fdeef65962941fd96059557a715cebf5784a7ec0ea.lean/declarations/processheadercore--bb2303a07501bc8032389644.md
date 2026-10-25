# processHeaderCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f3940b8362838bd18de50c0a201998e289ebaf42ec146d4104b665445a488843",
  "kind": "def",
  "lexical_name": "processHeaderCore",
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
  "slug": "processheadercore--bb2303a07501bc8032389644",
  "source": {
    "blob": "8a61a128c6776e9e4a45dcd160e7ab85b12e210c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 146,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Import/Variant0c3cd690fa35aedac1c8c2fdeef65962941fd96059557a715cebf5784a7ec0ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bb2303a07501bc80323896446c1114a788ce9674153e85ff0c0ea6b504f428e0",
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

Occurrence: `declaration:f3940b8362838bd18de50c0a201998e289ebaf42ec146d4104b665445a488843`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def processHeaderCore
    (startPos : String.Pos.Raw) (imports : Array Import) (isModule : Bool)
    (opts : Options) (messages : MessageLog) (inputCtx : Parser.InputContext)
    (trustLevel : UInt32 := 0) (plugins : Array Plugin := #[]) (leakEnv := false)
    (mainModule := Name.anonymous) (package? : Option PkgId := none)
    (arts : NameMap ImportArtifacts := {})
    (headerStx? : Option HeaderSyntax := none)
    (origHeaderStx? : Option HeaderSyntax := none)
    : IO (Environment × MessageLog) := do
  let level := if isModule then
    if Elab.inServer.get opts then
      .server
    else
      .exported
  else
    .private
  let (env, messages) ← try
    let env ←
      importModules (leakEnv := leakEnv) (loadExts := true) (level := level)
        imports opts trustLevel plugins arts
    pure (env, messages)
  catch e =>
    let env ← mkEmptyEnvironment
    let pos := inputCtx.fileMap.toPosition startPos
    pure (env, messages.add { fileName := inputCtx.fileName, data := toString e, pos := pos })
  let env := env.setMainModule mainModule |>.setModulePackage package?
  let messages := checkDeprecatedImports env imports opts inputCtx startPos messages headerStx? origHeaderStx?
  let messages := checkModuleNamePortability mainModule inputCtx startPos messages
  return (env, messages)

/--
Elaborates the given header syntax into an environment.

If `mainModule` is not given, `Environment.setMainModule` should be called manually. This is a
backwards compatibility measure not compatible with the module system.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Import/Variant0c3cd690fa35aedac1c8c2fdeef65962941fd96059557a715cebf5784a7ec0ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Import/Variant0c3cd690fa35aedac1c8c2fdeef65962941fd96059557a715cebf5784a7ec0ea.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a61a128c6776e9e4a45dcd160e7ab85b12e210c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
