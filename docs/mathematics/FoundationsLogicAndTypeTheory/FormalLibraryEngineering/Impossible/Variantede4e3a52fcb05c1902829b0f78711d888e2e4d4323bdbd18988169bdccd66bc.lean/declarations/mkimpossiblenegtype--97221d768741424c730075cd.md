# mkImpossibleNegType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8dcaa18f0e121a5ac830a50911b91b49b6e999e7bd9958c9909c51c0eb48e14a",
  "kind": "def",
  "lexical_name": "mkImpossibleNegType",
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
  "slug": "mkimpossiblenegtype--97221d768741424c730075cd",
  "source": {
    "blob": "4bd486dbaf8450c4625dae3cc115aa57820769d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Impossible/Variantede4e3a52fcb05c1902829b0f78711d888e2e4d4323bdbd18988169bdccd66bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:97221d768741424c730075cd0c4675f31c039b1de3d2b0481199d8215cc3fb17",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Impossible/Variantede4e3a52fcb05c1902829b0f78711d888e2e4d4323bdbd18988169bdccd66bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8dcaa18f0e121a5ac830a50911b91b49b6e999e7bd9958c9909c51c0eb48e14a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkImpossibleNegType (mainGoal : MVarId) (goalType : Expr)
    (cfg : Parser.Tactic.ImpossibleConfig) :
    MetaM (Expr × Array Name) := mainGoal.withContext do
  let dummy ← mkFreshExprSyntheticOpaqueMVar goalType
  let reverted ← dummy.mvarId!.revertAll
  let revertedType ← reverted.getType
  let r ← Closure.mkValueTypeClosure revertedType (mkConst ``True)
    (zetaDelta := false)
  let rTypeLevels ←
    if cfg.levels then r.levelParams.mapM fun _ => mkFreshLevelMVar
    else pure r.levelArgs
  let rType := r.type.instantiateLevelParamsArray r.levelParams rTypeLevels
  let negType ← forallBoundedTelescope rType (some r.exprArgs.size) fun ms revBody => do
    let negBody ← if (← Meta.isProp revBody) then
      pure (mkNot revBody)
    else
      mkArrow revBody (mkConst ``False)
    mkForallFVars ms negBody
  let mvarNames ← r.exprArgs.mapM fun mvarExpr => do
    let .mvar mvarId := mvarExpr | return `x
    let n := (← mvarId.getDecl).userName
    return if n.isAnonymous then `x else n
  return (negType, mvarNames)

declare_config_elab elabImpossibleConfig Parser.Tactic.ImpossibleConfig

@[builtin_tactic Lean.Parser.Tactic.impossible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Impossible/Variantede4e3a52fcb05c1902829b0f78711d888e2e4d4323bdbd18988169bdccd66bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Impossible/Variantede4e3a52fcb05c1902829b0f78711d888e2e4d4323bdbd18988169bdccd66bc.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bd486dbaf8450c4625dae3cc115aa57820769d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
