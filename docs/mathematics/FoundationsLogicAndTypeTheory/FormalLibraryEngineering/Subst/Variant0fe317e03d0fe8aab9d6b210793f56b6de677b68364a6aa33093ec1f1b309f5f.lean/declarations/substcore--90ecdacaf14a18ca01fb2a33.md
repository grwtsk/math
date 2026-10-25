# substCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b5bebbc993a04c4e80671dc60e2963084853bde09a7fb2df54a9f7c8ca9d6f10",
  "kind": "def",
  "lexical_name": "substCore",
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
  "slug": "substcore--90ecdacaf14a18ca01fb2a33",
  "source": {
    "blob": "6eb1bd574770be48d16b06b0e3048e9c0d3a6f48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 17,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Variant0fe317e03d0fe8aab9d6b210793f56b6de677b68364a6aa33093ec1f1b309f5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:90ecdacaf14a18ca01fb2a3341563c75a0423e866cf0238ac9e2dcafe5b89f02",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Variant0fe317e03d0fe8aab9d6b210793f56b6de677b68364a6aa33093ec1f1b309f5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b5bebbc993a04c4e80671dc60e2963084853bde09a7fb2df54a9f7c8ca9d6f10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def substCore (mvarId : MVarId) (hFVarId : FVarId) (symm := false) (fvarSubst : FVarSubst := {}) (clearH := true) (tryToSkip := false) : MetaM (FVarSubst × MVarId) :=
  mvarId.withContext do
    let tag ← mvarId.getTag
    mvarId.checkNotAssigned `subst
    let hFVarIdOriginal := hFVarId
    let hLocalDecl ← hFVarId.getDecl
    match (← matchEq? hLocalDecl.type) with
    | none => throwTacticEx `subst mvarId "argument must be an equality proof"
    | some (_, lhs, rhs) => do
      let a ← instantiateMVars <| if symm then rhs else lhs
      let b ← instantiateMVars <| if symm then lhs else rhs
      match a with
      | Expr.fvar aFVarId => do
        let aFVarIdOriginal := aFVarId
        trace[Meta.Tactic.subst] "substituting {a} (id: {aFVarId.name}) with {b}"
        if (← exprDependsOn b aFVarId) then
          throwTacticEx `subst mvarId m!"'{a}' occurs at{indentExpr b}"
        let (vars, mvarId) ← mvarId.revert #[aFVarId, hFVarId] true
        trace[Meta.Tactic.subst] "after revert {MessageData.ofGoal mvarId}"
        let (twoVars, mvarId) ← mvarId.introNP 2
        trace[Meta.Tactic.subst] "after intro2 {MessageData.ofGoal mvarId}"
        trace[Meta.Tactic.subst] "reverted variables {vars.map (·.name)}"
        let aFVarId := twoVars[0]!
        let a       := mkFVar aFVarId
        let hFVarId := twoVars[1]!
        let h       := mkFVar hFVarId
        /- Set skip to true if there is no local variable nor the target depend on the equality -/
        let skip ← if !tryToSkip || vars.size != 2 then
          pure false
        else
          let mvarType ← mvarId.getType
          if (← exprDependsOn mvarType aFVarId) then pure false
          else if (← exprDependsOn mvarType hFVarId) then pure false
          else pure true
        if skip then
          if clearH then
            let mvarId ← mvarId.clear hFVarId
            let mvarId ← mvarId.clear aFVarId
            pure (fvarSubst, mvarId)
          else
            pure (fvarSubst, mvarId)
        else
          mvarId.withContext do
            let mvarDecl   ← mvarId.getDecl
            let type   := mvarDecl.type
            let hLocalDecl ← hFVarId.getDecl
            match (← matchEq? hLocalDecl.type) with
            | none => unreachable!
            | some (_, lhs, rhs) => do
              let b        ← instantiateMVars <| if symm then lhs else rhs
              let depElim  ← exprDependsOn mvarDecl.type hFVarId
              let cont (motive : Expr) (newType : Expr) : MetaM (FVarSubst × MVarId) := do
                let major ← if symm then pure h else mkEqSymm h
                let newMVar ← mkFreshExprSyntheticOpaqueMVar newType tag
                let minor := newMVar
                let newVal  ← if depElim then mkEqRec motive minor major else mkEqNDRec motive minor major
                mvarId.assign newVal
                let mvarId := newMVar.mvarId!
                let mvarId ← if clearH then
                  let mvarId ← mvarId.clear hFVarId
                  mvarId.clear aFVarId
                else
                  pure mvarId
                let (newFVars, mvarId) ← mvarId.introNP (vars.size - 2)
                trace[Meta.Tactic.subst] "after intro rest {vars.size - 2} {MessageData.ofGoal mvarId}"
                let fvarSubst ← newFVars.size.foldM (init := fvarSubst) fun i _ (fvarSubst : FVarSubst) =>
                    let var     := vars[i+2]!
                    let newFVar := newFVars[i]
                    pure $ fvarSubst.insert var (mkFVar newFVar)
                let fvarSubst := fvarSubst.insert aFVarIdOriginal (if clearH then b else mkFVar aFVarId)
                let fvarSubst := fvarSubst.insert hFVarIdOriginal (mkFVar hFVarId)
                pure (fvarSubst, mvarId)
              if depElim then do
                let newType := type.replaceFVar a b
                let reflB ← mkEqRefl b
                let newType := newType.replaceFVar h reflB
                if symm then
                  let motive ← mkLambdaFVars #[a, h] type
                  cont motive newType
                else
                  /- `type` depends on (h : a = b). So, we use the following trick to avoid a type incorrect motive.
                     1- Create a new local (hAux : b = a)
                     2- Create newType := type [hAux.symm / h]
                        `newType` is type correct because `h` and `hAux.symm` are definitionally equal by proof irrelevance.
                     3- Create motive by abstracting `a` and `hAux` in `newType`. -/
                  let hAuxType ← mkEq b a
                  let motive ← withLocalDeclD `_h hAuxType fun hAux => do
                    let hAuxSymm ← mkEqSymm hAux
                    /- replace h in type with hAuxSymm -/
                    let newType := type.replaceFVar h hAuxSymm
                    mkLambdaFVars #[a, hAux] newType
                  cont motive newType
              else
                let motive ← mkLambdaFVars #[a] type
                let newType := type.replaceFVar a b
                cont motive newType
      | _ =>
        let eqMsg := if symm then "(t = x)" else "(x = t)"
        throwTacticEx `subst mvarId
          m!"invalid equality proof, it is not of the form {eqMsg}{indentExpr hLocalDecl.type}\nafter WHNF, variable expected, but obtained{indentExpr a}"

/--
  Given `h : @HEq α a α b` in the given goal, produce a new goal where `h : @Eq α a b`.
  If `h` is not of the give form, then just return `(h, mvarId)`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Variant0fe317e03d0fe8aab9d6b210793f56b6de677b68364a6aa33093ec1f1b309f5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Variant0fe317e03d0fe8aab9d6b210793f56b6de677b68364a6aa33093ec1f1b309f5f.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6eb1bd574770be48d16b06b0e3048e9c0d3a6f48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
