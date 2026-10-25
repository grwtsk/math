# goToModuleOfDecls

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:add2c1e8942cfe8a71c0a979a5084783ad92fdbad24cbcf2c5f88d3511738faa",
  "kind": "def",
  "lexical_name": "goToModuleOfDecls",
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
  "slug": "gotomoduleofdecls--7caeb00d4c049597d5b2db75",
  "source": {
    "blob": "209b84bdcc7fe9bb639aa2abc4b720a0e4534e7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 161,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GoToModule/Variant5866d3ea91457f3d27dd6c585fff78f49ff7e47c33389507338b6eaad4201cf9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7caeb00d4c049597d5b2db7509c84740f02dcf5c7dafa18afad24e1a98d29458",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GoToModule/Variant5866d3ea91457f3d27dd6c585fff78f49ff7e47c33389507338b6eaad4201cf9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:add2c1e8942cfe8a71c0a979a5084783ad92fdbad24cbcf2c5f88d3511738faa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def goToModuleOfDecls (decls : Array Name) (location := RelativeRangeLocation.end)
    (fallbackModule : Option Name := none) (overrideText : Option String := none) :
    CoreM MessageData := do
  let env ← getEnv
  let some moduleIdx := decls.firstM env.getModuleIdxFor? <|> fallbackModule.bind env.getModuleIdx?
    | throwError "Could not find module when constructing go-to-module link."
  unless decls.all fun decl => (env.getModuleIdxFor? decl).all (· == moduleIdx) do
    throwError "Not all provided declarations come from the same module."
  let pos ← match location with
    | .end lineAfter => do
      let some range ← getMaxDeclarationRange? decls | pure pastEndOfFile
      let pos := range.toLspRange.end
      if lineAfter then pure { line := pos.line + 1, character := 0 } else pure pos
    | .start lineBefore => do
      let some range ← getMinDeclarationRange? decls | pure { line := 0, character := 0 }
      let pos := range.toLspRange.start
      if lineBefore then pure { line := pos.line - 1, character := 0 } else pure pos
  let mod := env.header.modules[moduleIdx]!.module
  goToModule mod pos overrideText

/--
Goes to either before or after the range of the provided `decl`. The location the cursor
ends up may be specified by setting `location`:

- `.end (lineAfter := true)` (the default): go the first character of the line of the declaration.
- `.end (lineAfter := false)`: place the cursor at the end of the range of the declaration.
- `.start (lineBefore := true)`: place the cursor on the line before the declaration.
- `.start (lineBefore := false)`: place the cursor at the beginning of the range of the declaration.

(We use the full range, including e.g. the body of the declaration.)

Errors if `decl` has no module.

If the declaration has a module but no range can be found, goes to the end or beginning of the
module, according to `location`.

Errors if not all declarations come from the same module.

By default, the link text is the name of `decl`'s module. The text can be overridden with
`overrideText`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GoToModule/Variant5866d3ea91457f3d27dd6c585fff78f49ff7e47c33389507338b6eaad4201cf9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GoToModule/Variant5866d3ea91457f3d27dd6c585fff78f49ff7e47c33389507338b6eaad4201cf9.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `209b84bdcc7fe9bb639aa2abc4b720a0e4534e7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
