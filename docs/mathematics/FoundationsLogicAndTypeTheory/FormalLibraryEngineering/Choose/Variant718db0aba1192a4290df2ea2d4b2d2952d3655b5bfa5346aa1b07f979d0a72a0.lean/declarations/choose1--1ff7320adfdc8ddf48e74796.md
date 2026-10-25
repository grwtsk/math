# choose1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e4218ef382985035f5003ae872fb4f8d9fd4144965ecde6884bf228ad1211cf5",
  "kind": "def",
  "lexical_name": "choose1",
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
  "slug": "choose1--1ff7320adfdc8ddf48e74796",
  "source": {
    "blob": "de67e31d8f8d7874b0b9383a21cc17babccc3708",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 87,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variant718db0aba1192a4290df2ea2d4b2d2952d3655b5bfa5346aa1b07f979d0a72a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1ff7320adfdc8ddf48e7479685fe089d6ad0bdd2bfb42fe4424ddf676faa9669",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variant718db0aba1192a4290df2ea2d4b2d2952d3655b5bfa5346aa1b07f979d0a72a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e4218ef382985035f5003ae872fb4f8d9fd4144965ecde6884bf228ad1211cf5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def choose1 (g : MVarId) (nondep : Bool) (h : Option Expr) (data : Name) :
  MetaM (ElimStatus × Expr × MVarId) := do
  let (g, h) ← match h with
  | some e => pure (g, e)
  | none   => do
    let (e, g) ← g.intro1P
    pure (g, .fvar e)
  g.withContext do
    let h ← instantiateMVars h
    let t ← inferType h
    forallTelescopeReducing t fun ctx t ↦ do
      (← withTransparency .all (whnf t)).withApp fun
      | .const ``Exists [u], #[α, p] => do
        let data ← mkFreshNameFrom data ((← p.getBinderName).getD `h)
        let ((neFail : ElimStatus), (nonemp : Option Expr)) ← if nondep then
          let ne := (Expr.const ``Nonempty [u]).app α
          let m ← mkFreshExprMVar ne
          let mut g' := m.mvarId!
          for e in ctx do
            if (← isProof e) then continue
            let ty ← whnf (← inferType e)
            let nety := (Expr.const ``Nonempty [u]).app ty
            let neval := mkApp2 (Expr.const ``Nonempty.intro [u]) ty e
            g' ← g'.assert .anonymous nety neval
          (_, g') ← g'.intros
          g'.withContext do
            match ← synthInstance? (← g'.getType) with
            | some e => do
              g'.assign e
              let m ← instantiateMVars m
              pure (.success, some m)
            | none => pure (.failure [ne], none)
        else pure (.failure [], none)
        let ctx' ← if nonemp.isSome then ctx.filterM (not <$> isProof ·) else pure ctx
        let dataTy ← mkForallFVars ctx' α
        let mut dataVal := mkApp3 (.const ``Classical.choose [u]) α p (mkAppN h ctx)
        let mut specVal := mkApp3 (.const ``Classical.choose_spec [u]) α p (mkAppN h ctx)
        if let some nonemp := nonemp then
          (dataVal, specVal) ← mk_sometimes u α nonemp p ctx.toList (dataVal, specVal)
        dataVal ← mkLambdaFVars ctx' dataVal
        specVal ← mkLambdaFVars ctx specVal
        let (fvar, g) ← withLocalDeclD .anonymous dataTy fun d ↦ do
          let specTy ← mkForallFVars ctx (p.app (mkAppN d ctx')).headBeta
          g.withContext <| withLocalDeclD data dataTy fun d' ↦ do
            let mvarTy ← mkArrow (specTy.replaceFVar d d') (← g.getType)
            let newMVar ← mkFreshExprSyntheticOpaqueMVar mvarTy (← g.getTag)
            g.assign <| mkApp2 (← mkLambdaFVars #[d'] newMVar) dataVal specVal
            pure (d', newMVar.mvarId!)
        let g ← match h with
        | .fvar v => g.clear v
        | _ => pure g
        return (neFail, fvar, g)
      | .const ``And _, #[p, q] => do
        let data ← mkFreshNameFrom data `h
        let e1 ← mkLambdaFVars ctx $ mkApp3 (.const ``And.left  []) p q (mkAppN h ctx)
        let e2 ← mkLambdaFVars ctx $ mkApp3 (.const ``And.right []) p q (mkAppN h ctx)
        let t1 ← inferType e1
        let t2 ← inferType e2
        let (fvar, g) ← (← (← g.assert .anonymous t2 e2).assert data t1 e1).intro1P
        let g ← match h with
        | .fvar v => g.clear v
        | _ => pure g
        return (.success, .fvar fvar, g)
      -- TODO: support Σ, ×, or even any inductive type with 1 constructor ?
      | _, _ => throwError "expected a term of the shape `∀xs, ∃a, p xs a` or `∀xs, p xs ∧ q xs`"

/-- A wrapper around `choose1` that parses identifiers and adds variable info to new variables. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variant718db0aba1192a4290df2ea2d4b2d2952d3655b5bfa5346aa1b07f979d0a72a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variant718db0aba1192a4290df2ea2d4b2d2952d3655b5bfa5346aa1b07f979d0a72a0.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de67e31d8f8d7874b0b9383a21cc17babccc3708` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
