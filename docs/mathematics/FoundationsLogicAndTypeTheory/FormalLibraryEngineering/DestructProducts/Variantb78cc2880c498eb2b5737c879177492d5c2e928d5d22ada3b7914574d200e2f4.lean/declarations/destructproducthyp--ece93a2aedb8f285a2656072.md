# destructProductHyp?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b40b98835de002596c66bd2da51f954363a3f95223b10ed24ab88f93fa9235f0",
  "kind": "def",
  "lexical_name": "destructProductHyp?",
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
  "slug": "destructproducthyp--ece93a2aedb8f285a2656072",
  "source": {
    "blob": "ca995ce96b6bfe0b433a85ceeb7dcac67f967353",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DestructProducts/Variantb78cc2880c498eb2b5737c879177492d5c2e928d5d22ada3b7914574d200e2f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ece93a2aedb8f285a26560723ce8085f5e397ffd03a25040b9a0057356c3bd8e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DestructProducts/Variantb78cc2880c498eb2b5737c879177492d5c2e928d5d22ada3b7914574d200e2f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b40b98835de002596c66bd2da51f954363a3f95223b10ed24ab88f93fa9235f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private meta def destructProductHyp? (goal : MVarId) (hyp : FVarId)
    (md : TransparencyMode) : MetaM (Option (LazyStep × MVarId)) :=
  goal.withContext do
    let hypType ← hyp.getType
    let (f, args) ← withTransparency md $ getAppUpToDefeq hypType
    match args with
    | #[α, β] =>
      match f with
      | (.const ``And _) =>
        go hypType (.const ``And.casesOn [← mkFreshLevelMVar]) α β
          ``And.intro `left `right
      | (.const ``Prod lvls) =>
        go hypType (.const ``Prod.casesOn  ((← mkFreshLevelMVar) :: lvls)) α β
          ``Prod.mk `fst `snd
      | (.const ``PProd lvls) =>
        go hypType (.const ``PProd.casesOn ((← mkFreshLevelMVar) :: lvls)) α β
          ``PProd.mk `fst `snd
      | (.const ``MProd lvls) =>
        go hypType (.const ``MProd.casesOn ((← mkFreshLevelMVar) :: lvls)) α β
          ``MProd.mk `fst `snd
      | (.const ``Exists lvls) =>
        go hypType (.const ``Exists.casesOn lvls) α β ``Exists.intro `w `h
      | (.const ``Subtype lvls) =>
        go hypType (.const ``Subtype.casesOn ((← mkFreshLevelMVar) :: lvls)) α β
          ``Subtype.mk `val `property
      | (.const ``Sigma lvls) =>
        go hypType (.const ``Sigma.casesOn ((← mkFreshLevelMVar) :: lvls)) α β
          ``Sigma.mk `fst `snd
      | (.const ``PSigma lvls) =>
        go hypType (.const ``PSigma.casesOn ((← mkFreshLevelMVar) :: lvls)) α β
          ``PSigma.mk `fst `snd
      | _ => return none
    | _ => return none
  where
    -- `rec` is the partially applied recursor. Missing arguments to `rec` are
    -- the motive, the hypothesis and the new proof.
    go (hypType rec lType rType : Expr) (ctor lName rName : Name) :
        MetaM (LazyStep × MVarId) := do
      let (step, mvarId, _) ← LazyStep.build goal {
        tac := tac hypType rec lType rType lName rName
        postGoals := (#[·.1])
        tacticBuilder := λ (_, lName, rName) =>
          TacticBuilder.obtain goal (.fvar hyp)
            { ctor, args := #[lName, rName], hasImplicitArg := false }
      }
      return (step, mvarId)

    tac (hypType rec lType rType : Expr) (lName rName : Name) :
        MetaM (MVarId × Name × Name) := do
      let (genHyps, goal) ← goal.revert #[hyp] (preserveOrder := true)
      let (hyp, goal) ← intro1Core goal (preserveBinderNames := true)
      let hypExpr := mkFVar hyp
      let tgt ← instantiateMVars (← goal.getType)
      let motive := mkLambda `h .default hypType $ tgt.abstract #[hypExpr]
      let prf := mkApp4 rec lType rType motive hypExpr
      goal.withContext $ check prf
      let [goal] ← goal.apply prf
        | throwError "destructProducts: apply did not return exactly one goal"
      let goal ← goal.clear hyp
      let lctx := (← goal.getDecl).lctx
      -- The following is only valid if `lName` and `rName` are distinct.
      -- Otherwise they could yield two identical unused names.
      let lName := lctx.getUnusedName lName
      let rName := lctx.getUnusedName rName
      let (_, goal) ← goal.introN 2 [lName, rName]
      let (_, goal) ← introNCore goal (genHyps.size - 1) []
        (preserveBinderNames := true) (useNamesForExplicitOnly := false)
      return (goal, lName, rName)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DestructProducts/Variantb78cc2880c498eb2b5737c879177492d5c2e928d5d22ada3b7914574d200e2f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DestructProducts/Variantb78cc2880c498eb2b5737c879177492d5c2e928d5d22ada3b7914574d200e2f4.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca995ce96b6bfe0b433a85ceeb7dcac67f967353` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
