# evalExprCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8e1846a0804dc90bf0f09164a167df9c422f39b4770f21308644618f6264aa0d",
  "kind": "def",
  "lexical_name": "evalExprCore",
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
  "slug": "evalexprcore--864524c57ac5b7b04f4648e2",
  "source": {
    "blob": "28af8848e87fbf0472ef54d7f91c9610887fc98c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variantc7d9a3b9d3c3842028a093800564d0ea436761d5b44128d720e3bb17bf142c27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:864524c57ac5b7b04f4648e2e843170bff5bd94659a250f27ee6a25a65421502",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variantc7d9a3b9d3c3842028a093800564d0ea436761d5b44128d720e3bb17bf142c27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8e1846a0804dc90bf0f09164a167df9c422f39b4770f21308644618f6264aa0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
unsafe def evalExprCore (α) (value : Expr) (checkType : Expr → MetaM Unit)
    (safety := DefinitionSafety.safe) (checkMeta : Bool := true) : MetaM α :=
  withoutModifyingEnv do
    -- Avoid waiting for all prior compilation if only imported constants are referenced. This is a
    -- very common case for tactic configurations (`Lean.Elab.Tactic.Config`).
    if value.getUsedConstants.all (← getEnv).isImportedConst then
      modifyEnv fun env => env.importEnv?.getD env

    -- Private name to ensure we do not check for deps being imported publicly
    let name := mkPrivateName (← getEnv) (← mkFreshUserName `_tmp)
    let value ← instantiateMVars value
    let us := collectLevelParams {} value |>.params
    if value.hasMVar then
      throwError "failed to evaluate expression, it contains metavariables{indentExpr value}"
    let type ← inferType value
    checkType type
    let decl := Declaration.defnDecl {
       name, levelParams := us.toList, type
       value, hints := ReducibilityHints.opaque,
       safety
    }
    modifyEnv (markMeta · name)
    -- compilation will invariably wait on `checked`
    let _ ← traceBlock "compiler env" (← getEnv).checked
    -- now that we've already waited, async would just introduce (minor) overhead and trigger
    -- `Task.get` blocking debug code
    withOptions (Elab.async.set · false) do
    withOptions (Compiler.compiler.postponeCompile.set · false) do
    withOptions (Compiler.compiler.relaxedMetaCheck.set · true) do
      addAndCompile decl
      evalConst (checkMeta := checkMeta) α name

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variantc7d9a3b9d3c3842028a093800564d0ea436761d5b44128d720e3bb17bf142c27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variantc7d9a3b9d3c3842028a093800564d0ea436761d5b44128d720e3bb17bf142c27.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28af8848e87fbf0472ef54d7f91c9610887fc98c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
