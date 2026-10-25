# replaceEPostHeadBot?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c470f50d700af3554dc4369a0bf10b82b1f3cbf7b22d1263dbac964e1b5d858",
  "kind": "def",
  "lexical_name": "replaceEPostHeadBot?",
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
  "slug": "replaceepostheadbot--88322d3f130309234665835d",
  "source": {
    "blob": "d2222d798abec9ad92c01563e7f7d4f8807d8801",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 65,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EPost/Variant80388cf7ef47ff4b9d23a9a6191771450274239b6c0cc3f61f13cfcd4168d1ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:88322d3f130309234665835dfbab790135a15e257fb15c702c4fa93825e213ca",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EPost/Variant80388cf7ef47ff4b9d23a9a6191771450274239b6c0cc3f61f13cfcd4168d1ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2c470f50d700af3554dc4369a0bf10b82b1f3cbf7b22d1263dbac964e1b5d858`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def replaceEPostHeadBot? (goal : MVarId) (target head : Expr) (args : Array Expr) :
    SymM (Option MVarId) := do
  let some eh := args[0]? | return none
  let some et := args[1]? | return none
  let some epostArg := args[2]? | return none
  -- `epostArg = @bot (EPost.Cons eh et) (scopedCCPO (instCompleteLattice eh et chInst ctInst))`
  let_expr Lean.Order.bot _ botCCPOInst := epostArg | return none
  unless botCCPOInst.isApp do return none
  let clArgs := botCCPOInst.appArg!.getAppArgs
  unless clArgs.size ≥ 2 do return none
  let chInst := clArgs[clArgs.size - 2]!
  let ctInst := clArgs[clArgs.size - 1]!
  let [u, v] := head.constLevels! | return none
  -- `p0 : EPost.Cons.head ⊥ = (⊥ : eh)`
  let headBot := mkApp3 head eh et epostArg
  let p0 := mkApp4 (mkConst ``EPost.Cons.head_bot [u, v]) eh et chInst ctInst
  let some (_, _, b0) := (← Sym.inferType p0).eq? | return none
  -- Fold `bot_apply` over the excess arguments: `acc : EPost.Cons.head ⊥ x₁ … xᵢ = ⊥`.
  let mut acc := p0
  let mut curHead := headBot
  let mut curBot := b0
  let mut curTy := eh
  let mut curCL := chInst
  for x in args.extract 3 args.size do
    let .forallE _ σ τ _ := curTy | return none
    if τ.hasLooseBVars then return none
    unless curCL.isAppOf ``Lean.Order.instCompleteLatticePi do return none
    let .lam _ _ τCL _ := curCL.appArg! | return none
    let uσ ← Sym.getLevel σ
    let uτ ← Sym.getLevel τ
    -- `bfa : (⊥ : σ → τ) x = (⊥ : τ)`
    let bfa := mkApp4 (mkConst ``Lean.Order.bot_apply [← decLevel uσ, ← decLevel uτ]) σ τ τCL x
    let some (_, _, newBot) := (← Sym.inferType bfa).eq? | return none
    -- `Eq.trans (congrFun acc x) bfa : curHead x = ⊥`
    let cf := mkApp6 (mkConst ``congrFun [uσ, uτ]) σ (.lam `x σ τ .default) curHead curBot acc x
    acc := mkApp6 (mkConst ``Eq.trans [uτ]) τ (mkApp curHead x) (mkApp curBot x) newBot cf bfa
    curHead := mkApp curHead x
    curBot := newBot
    curTy := τ
    curCL := τCL
  -- `acc : rhs = ⊥`; lift through `pre ⊑ ·` and replace the target.
  let relArgs := target.getAppArgs
  let some α := relArgs[0]? | return none
  let some inst := relArgs[1]? | return none
  let some pre := relArgs[2]? | return none
  let relPre := mkApp3 target.getAppFn α inst pre
  let uα ← Sym.getLevel α
  let eqProof :=
    mkApp6 (mkConst ``congrArg [uα, .succ .zero]) α (mkSort .zero) (mkAppN head args) curBot relPre acc
  return some (← goal.replaceTargetEq (mkApp relPre curBot) eqProof)

end VCGen

end Lean.Elab.Tactic.Do.Internal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EPost/Variant80388cf7ef47ff4b9d23a9a6191771450274239b6c0cc3f61f13cfcd4168d1ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EPost/Variant80388cf7ef47ff4b9d23a9a6191771450274239b6c0cc3f61f13cfcd4168d1ac.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2222d798abec9ad92c01563e7f7d4f8807d8801` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
