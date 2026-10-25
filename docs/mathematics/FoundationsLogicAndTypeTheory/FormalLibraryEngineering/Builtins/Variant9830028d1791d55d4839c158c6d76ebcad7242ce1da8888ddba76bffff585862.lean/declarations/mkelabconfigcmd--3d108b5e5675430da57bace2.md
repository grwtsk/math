# mkElabConfigCmd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:36f9900fd27aad367b62e84c85885a10754300bd95141b8def0ca61333622e74",
  "kind": "def",
  "lexical_name": "mkElabConfigCmd",
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
  "slug": "mkelabconfigcmd--3d108b5e5675430da57bace2",
  "source": {
    "blob": "ed5fbcda75aa5cb912d17020af9211471db82a1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 108,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variant9830028d1791d55d4839c158c6d76ebcad7242ce1da8888ddba76bffff585862.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3d108b5e5675430da57bace20c5908ad6bfcffdef628c5f01f5eb4c2ac325249",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variant9830028d1791d55d4839c158c6d76ebcad7242ce1da8888ddba76bffff585862.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:36f9900fd27aad367b62e84c85885a10754300bd95141b8def0ca61333622e74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkElabConfigCmd
    (monad : Ident)
    (mkMonadAdapt : Term → MacroM Term)
    (logExceptionsDefault : Term)
    (mkLogExceptionsTerm : Term → MacroM Term)
    (doc? : Option (TSyntax ``Parser.Command.docComment))
    (vis? : Option (TSyntax ``Parser.Command.visibility))
    (tk : Syntax)
    (elabName type : Ident)
    (binders : TSyntaxArray ``Parser.Term.bracketedBinder)
    (entries? : Option (TSyntax ``configEntries)) :
    MacroM Command := do
  let fnName := mkIdentFrom elabName (elabName.getId ++ `evalConfigItem)
  let binderArgs ← binders.foldlM (init := #[]) fun args binder => do
    pure <| args ++ (← getBracketedBinderArgs binder)
  let cfgIdent := mkIdent `cfg
  let initIdent := mkIdent `init
  let logExceptionsIdent := mkIdent `logExceptions
  let logExceptionsTerm ← mkLogExceptionsTerm logExceptionsIdent
  let go ← mkMonadAdapt =<< `(EvalConfigItem.setConfig' eval $initIdent $cfgIdent (onErr := onErr) (logExceptions := $logExceptionsTerm))
  withRef (mkNullNode #[tk, elabName, type]) do
    `(private local def_eval_config_item $fnName $[$binders]* for $type $[$entries?:configEntries]?
      $[$doc?:docComment]?
      $[$vis?:visibility]? def $elabName $[$binders]* ($cfgIdent : Lean.Syntax) ($initIdent : $type := {}) ($logExceptionsIdent : Bool := $logExceptionsDefault) : $monad $type := do
        let eval : EvalConfigItem $type := @$fnName $binderArgs*
        let onErr := EvalConfigItem.defaultOnErr (cfgType? := mkConst ``$type)
        $go:term)

@[builtin_macro declareCoreConfigElab]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variant9830028d1791d55d4839c158c6d76ebcad7242ce1da8888ddba76bffff585862.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variant9830028d1791d55d4839c158c6d76ebcad7242ce1da8888ddba76bffff585862.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed5fbcda75aa5cb912d17020af9211471db82a1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
