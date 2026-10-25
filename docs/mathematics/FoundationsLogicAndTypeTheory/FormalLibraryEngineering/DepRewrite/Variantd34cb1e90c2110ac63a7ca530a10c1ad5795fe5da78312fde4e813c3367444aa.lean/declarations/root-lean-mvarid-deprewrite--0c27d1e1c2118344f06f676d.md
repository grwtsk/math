# _root_.Lean.MVarId.depRewrite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff601fc06a6dc6feba479785a39dd649bbf351a689b798af5a29dc8678a62ff7",
  "kind": "def",
  "lexical_name": "_root_.Lean.MVarId.depRewrite",
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
  "slug": "root-lean-mvarid-deprewrite--0c27d1e1c2118344f06f676d",
  "source": {
    "blob": "e4dc03eb2cfa05a889ed6ca7220294b6cc436019",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 517,
    "line": 419,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DepRewrite/Variantd34cb1e90c2110ac63a7ca530a10c1ad5795fe5da78312fde4e813c3367444aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c27d1e1c2118344f06f676d80c7c5f7296a46948985d5658f7e47bbab2898c9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DepRewrite/Variantd34cb1e90c2110ac63a7ca530a10c1ad5795fe5da78312fde4e813c3367444aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ff601fc06a6dc6feba479785a39dd649bbf351a689b798af5a29dc8678a62ff7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 419–517.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.Lean.MVarId.depRewrite (mvarId : MVarId) (e : Expr) (heq : Expr)
    (symm : Bool := false) (config := { : DepRewrite.Config }) : MetaM RewriteResult :=
  mvarId.withContext do
    mvarId.checkNotAssigned `depRewrite
    let heqIn := heq
    let heqType ← instantiateMVars (← inferType heq)
    let (newMVars, binderInfos, heqType) ← forallMetaTelescopeReducing heqType
    let heq := mkAppN heq newMVars
    let cont (heq heqType : Expr) : MetaM RewriteResult := do
      match (← matchEq? heqType) with
      | none => throwTacticEx `depRewrite mvarId
                  m!"equality or iff proof expected{indentExpr heqType}"
      | some (α, lhs, rhs) =>
        let cont (heq lhs rhs : Expr) : MetaM RewriteResult := do
          if lhs.getAppFn.isMVar then
            throwTacticEx `depRewrite mvarId
              m!"pattern is a metavariable{indentExpr lhs}\nfrom equation{indentExpr heqType}"
          let e ← instantiateMVars e
          let eAbst ← withConfig (fun oldConfig => { config, oldConfig with }) <|
            dabstract e lhs config
          let .lam _ _ (.lam _ _ eBody _) _ := eAbst |
            throwTacticEx `depRewrite mvarId
              m!"internal error: output{indentExpr eAbst}\nof dabstract is not a lambda"
          /-
          This error message may not show up in cases that it could reasonably be expected
          to show up in while using `rw!`.
          In the case that the `depRewrite` step finds an
          instance of the pattern to rewrite with, and it does the rewrite, but then the
          `cleanupCasts` step happens and the result of the `cleanupCasts` step is
          syntactically equal to the original expression.
          Then the error message would be skipped, because `depRewrite` found instances
          of the pattern to rewrite, even though the final result of the `rw!` call
          is the same as the original expression.
          -/
          if !eBody.hasLooseBVars then
            throwTacticEx `depRewrite mvarId
              m!"did not find instance of the pattern in the target expression{indentExpr lhs}"
          try
            check eAbst
          catch e : Lean.Exception =>
            throwTacticEx `depRewrite mvarId <| m!"\
              motive{indentExpr eAbst}\nis not type correct:{indentD e.toMessageData}\n\
              unlike with rw/rewrite, this error should NOT happen in rw!/rewrite!: \
              please report it on the Lean Zulip"
          -- construct rewrite proof
          let eType ← inferType e
          -- `eNew ≡ eAbst rhs heq`
          let eNew := eBody.instantiateRev #[rhs, heq]
          -- Has the type of the term that we rewrote changed?
          -- (Checking whether the motive depends on `x` is overly conservative:
          -- when rewriting by a definitional equality,
          -- the motive may use `x` while the type remains the same.)
          let isDep ← withNewMCtxDepth <| not <$> (inferType eNew >>= isDefEq eType)
          let u1 ← getLevel α
          let u2 ← getLevel eType
          -- `eqPrf : eAbst lhs rfl = eNew`
          -- `eAbst lhs rfl ≡ e`
          let (eNew, eqPrf) ← do
            lambdaBoundedTelescope eAbst 2 fun xs eBody => do
              let #[x, h] := xs | throwError
                "internal error: expected 2 arguments in{indentExpr eAbst}"
              let eBodyTyp ← inferType eBody
              let motive ← mkLambdaFVars xs eBodyTyp
              if isDep then
                checkCastAllowed eBody eBodyTyp config.castMode
                let some eBody ← castBack? eBody eBodyTyp x h ∅ ∅ | throwError
                  "internal error: body{indentExpr eBody}\nshould mention '{x}' or '{h}'"
                pure (
                  eBody.replaceFVars #[x, h] #[rhs, heq],
                  mkApp6 (.const ``dcongrArg [u1, u2]) α lhs rhs motive heq eAbst)
              else
                let heqPrf := mkApp6 (.const ``hdcongrArg [u1, u2]) α lhs rhs motive heq eAbst
                pure (eNew, mkApp4 (.const ``eq_of_heq [u2]) eType e eNew heqPrf)
          postprocessAppMVars `depRewrite mvarId newMVars binderInfos
            (synthAssignedInstances := !tactic.skipAssignedInstances.get (← getOptions))
          let newMVarIds ← newMVars.map Expr.mvarId! |>.filterM fun mvarId =>
            not <$> mvarId.isAssigned
          let otherMVarIds ← getMVarsNoDelayed heqIn
          let otherMVarIds := otherMVarIds.filter (!newMVarIds.contains ·)
          let newMVarIds := newMVarIds ++ otherMVarIds
          pure { eNew := eNew, eqProof := eqPrf, mvarIds := newMVarIds.toList }
        match symm with
        | false => cont heq lhs rhs
        | true  => do
          cont (← mkEqSymm heq) rhs lhs
    match heqType.iff? with
    | some (lhs, rhs) =>
      let heqType ← mkEq lhs rhs
      let heq := mkApp3 (mkConst ``propext) lhs rhs heq
      cont heq heqType
    | none => match heqType.heq? with
      | some (α, lhs, β, rhs) =>
        let heq ← mkAppOptM (if symm then ``heqR else ``heqL) #[α, β, lhs, rhs, heq]
        cont heq (← inferType heq)
      | none =>
        cont heq heqType

/-- Cleanup casts introduced by `rewrite!` in `e`.
The result is expected to be defeq to the original expression. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DepRewrite/Variantd34cb1e90c2110ac63a7ca530a10c1ad5795fe5da78312fde4e813c3367444aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DepRewrite/Variantd34cb1e90c2110ac63a7ca530a10c1ad5795fe5da78312fde4e813c3367444aa.lean#L419).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4dc03eb2cfa05a889ed6ca7220294b6cc436019` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
