# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdChangeLocalDeclPrime.Variante6cd5d277510a945132b5d942c25c8e2e28494446c11593a099d66fcbe38aaa7.Lean.MVarId.changeLocalDecl'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:36c9aeb22ee1d903bf887cedad82d86be990bb7d3fc0b2710ed7c7476d1c702e",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdChangeLocalDeclPrime.Variante6cd5d277510a945132b5d942c25c8e2e28494446c11593a099d66fcbe38aaa7.Lean.MVarId.changeLocalDecl'",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-rootl--367d251a79fc67f577065406",
  "source": {
    "blob": "b3eee29846a19de8e7282b94550f76b79f5a98e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqTransformations/Variant26a4506dd6902fe57ce69d9168ea550fd9ba42d78c5b5e5a9dfa3cd04b45c6f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:367d251a79fc67f57706540644a242230dea229f13b52db238ab18fd22886d16",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqTransformations/Variant26a4506dd6902fe57ce69d9168ea550fd9ba42d78c5b5e5a9dfa3cd04b45c6f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:36c9aeb22ee1d903bf887cedad82d86be990bb7d3fc0b2710ed7c7476d1c702e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdChangeLocalDeclPrime.Variante6cd5d277510a945132b5d942c25c8e2e28494446c11593a099d66fcbe38aaa7.Lean.MVarId.changeLocalDecl' (mvarId : MVarId) (fvarId : FVarId) (typeNew : Expr)
    (checkDefEq := true) : MetaM MVarId := do
  mvarId.checkNotAssigned `changeLocalDecl
  let lctx := (← mvarId.getDecl).lctx
  let some decl := lctx.find? fvarId | throwTacticEx `changeLocalDecl mvarId m!"\
    local variable {Expr.fvar fvarId} is not present in local context{mvarId}"
  let toRevert := lctx.foldl (init := #[]) fun arr decl' =>
    if decl.index ≤ decl'.index then arr.push decl'.fvarId else arr
  let (_, mvarId) ← mvarId.withReverted toRevert fun mvarId fvars => mvarId.withContext do
    let check (typeOld : Expr) : MetaM Unit := do
      if checkDefEq then
        unless ← isDefEq typeNew typeOld do
          throwTacticEx `changeLocalDecl mvarId
            m!"given type{indentExpr typeNew}\nis not definitionally equal to{indentExpr typeOld}"
    let finalize (targetNew : Expr) := do
      return ((), fvars.map .some, ← mvarId.replaceTargetDefEq targetNew)
    match ← mvarId.getType with
    | .forallE n d b bi => do check d; finalize (.forallE n typeNew b bi)
    | .letE n t v b ndep => do check t; finalize (.letE n typeNew v b ndep)
    | _ => throwTacticEx `changeLocalDecl mvarId "unexpected auxiliary target"
  return mvarId

/-- For the main goal, use `m` to transform the types of locations specified by `loc?`.
If `loc?` is none, then transforms the type of target. `m` is provided with an expression
with instantiated metavariables as well as, if the location is a local hypothesis, the fvar.

`m` *must* transform expressions to defeq expressions.
If `checkDefEq = true` (the default) then `runDefEqTactic` will throw an error
if the resulting expression is not definitionally equal to the original expression. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqTransformations/Variant26a4506dd6902fe57ce69d9168ea550fd9ba42d78c5b5e5a9dfa3cd04b45c6f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqTransformations/Variant26a4506dd6902fe57ce69d9168ea550fd9ba42d78c5b5e5a9dfa3cd04b45c6f1.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3eee29846a19de8e7282b94550f76b79f5a98e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
