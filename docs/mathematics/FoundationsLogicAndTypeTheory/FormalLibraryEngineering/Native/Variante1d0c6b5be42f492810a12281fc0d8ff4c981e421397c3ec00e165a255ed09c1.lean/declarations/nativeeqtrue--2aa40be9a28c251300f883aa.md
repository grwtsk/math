# nativeEqTrue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0e6ada85c69073bd5ca9aba78efd4541d6938b1666f5d2c75809dcc59847b452",
  "kind": "def",
  "lexical_name": "nativeEqTrue",
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
  "slug": "nativeeqtrue--2aa40be9a28c251300f883aa",
  "source": {
    "blob": "890d6e446ffff269d98078b436b569134f172ae0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 37,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Native/Variante1d0c6b5be42f492810a12281fc0d8ff4c981e421397c3ec00e165a255ed09c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2aa40be9a28c251300f883aacf44ab68228d94d93188e30a71691c37ecf34f95",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Native/Variante1d0c6b5be42f492810a12281fc0d8ff4c981e421397c3ec00e165a255ed09c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0e6ada85c69073bd5ca9aba78efd4541d6938b1666f5d2c75809dcc59847b452`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def nativeEqTrue (tacticName : Name) (e : Expr) (axiomDeclRange? : Option Syntax := none) : MetaM NativeEqTrueResult  := do
  let e ← instantiateMVars e
  if e.hasFVar then
    throwError m!"Tactic `{tacticName}` failed: Cannot native decide proposition with free variables:{indentExpr e}"
  if e.hasMVar then
    throwError m!"Tactic `{tacticName}` failed: Cannot native decide proposition with metavariables:{indentExpr e}"
  let levels := (collectLevelParams {} e).params.toList
  let isTrue ← withoutModifyingEnv do
    let auxDeclName ← mkAuxDeclName <| `_native ++ tacticName ++ `decl
    let decl := Declaration.defnDecl {
      name := auxDeclName
      levelParams := levels
      type := mkConst ``Bool
      value := e
      hints := .abbrev
      safety := .safe
    }
    modifyEnv (markMeta · auxDeclName)
    try
      -- disable async/separate codegen so we can catch its exceptions; we don't want to report
      -- `evalConst` failures below when the actual reason was a codegen failure
      withOptions (Elab.async.set · false) do
      withOptions (Compiler.compiler.postponeCompile.set · false) do
      withOptions (Compiler.compiler.relaxedMetaCheck.set · true) do
        addAndCompile decl
    catch ex =>
      throwError m!"Tactic `{tacticName}` failed. Error: {ex.toMessageData}"

    -- Now evaluate the constant, and check that it is true.
    try
      unsafe evalConst Bool auxDeclName
    catch ex =>
      throwError m!"\
        Tactic `{tacticName}` failed: Could not evaluate decidable instance. \
        Error: {ex.toMessageData}"

  unless isTrue do return .notTrue

  let auxAxiomName ← mkAuxDeclName <| `_native ++ tacticName ++ `ax
  let axDecl := Declaration.axiomDecl {
    name := auxAxiomName
    levelParams := levels
    type := mkApp3 (mkConst ``Eq [1]) (mkConst ``Bool) e (mkConst ``Bool.true)
    isUnsafe := false
  }
  addDecl axDecl
  if let some ref := axiomDeclRange? then
    Elab.addDeclarationRangesFromSyntax auxAxiomName ref

  let levelParams := levels.map mkLevelParam
  return .success <| mkConst auxAxiomName levelParams
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Native/Variante1d0c6b5be42f492810a12281fc0d8ff4c981e421397c3ec00e165a255ed09c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Native/Variante1d0c6b5be42f492810a12281fc0d8ff4c981e421397c3ec00e165a255ed09c1.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `890d6e446ffff269d98078b436b569134f172ae0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
