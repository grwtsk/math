# introNext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9f1c2628bc0bb2d6eb9095dcf1b881b8da095c787f868cefee93ace0960b1453",
  "kind": "def",
  "lexical_name": "introNext",
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
  "slug": "intronext--638df62743e27bd7cf19b21a",
  "source": {
    "blob": "1404303db3caa3372d545f0f09d038ec4bfa5c94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 117,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variant9f2ee48d9890a69d546019087522feb484161ea9883a737830bd38f405377eaf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:638df62743e27bd7cf19b21abb506fa2b7c4ae71a103e31c140c899d41f749b5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variant9f2ee48d9890a69d546019087522feb484161ea9883a737830bd38f405377eaf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9f1c2628bc0bb2d6eb9095dcf1b881b8da095c787f868cefee93ace0960b1453`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def introNext (goal : Goal) (generation : Nat) : GrindM IntroResult := do
  Prod.fst <$> GoalM.run goal do
    let target ← (← get).mvarId.getType
    if target.isForall then
      let p := target.bindingDomain!
      if !(← isProp p) then
        let fvarId ← intro1
        return .newLocal fvarId (← get)
      else
        let mvarId := (← get).mvarId
        let tag ← mvarId.getTag
        let qBase := target.bindingBody!
        let fvarId ← mkFreshFVarId
        let fvar := mkFVar fvarId
        let r ← preprocessHypothesis p
        let lctx := (← getLCtx).mkLocalDecl fvarId (← mkCleanName target.bindingName! r.expr) r.expr target.bindingInfo!
        let mut localInsts ← getLocalInstances
        if let some className ← isClass? r.expr then
          localInsts := localInsts.push { className, fvar }
        match r.proof? with
        | some he =>
          if target.isArrow then
            let q := qBase
            let u ← getLevel q
            let mvarNew ← mkFreshExprMVarAt lctx localInsts q .syntheticOpaque tag
            let mvarIdNew := mvarNew.mvarId!
            mvarIdNew.withContext do
              let h ← mkLambdaFVars #[fvar] mvarNew
              let hNew := mkAppN (mkConst ``Lean.Grind.intro_with_eq [u]) #[p, r.expr, q, he, h]
              mvarId.assign hNew
              return .newHyp fvarId { (← get) with mvarId := mvarIdNew }
          else
            let q := mkLambda target.bindingName! target.bindingInfo! p qBase
            let q' := qBase.instantiate1 (mkApp4 (mkConst ``Eq.mpr_prop) p r.expr he fvar)
            let u ← getLevel q'
            let mvarNew ← mkFreshExprMVarAt lctx localInsts q' .syntheticOpaque tag
            let mvarIdNew := mvarNew.mvarId!
            mvarIdNew.withContext do
              let h ← mkLambdaFVars #[fvar] mvarNew
              let hNew := mkAppN (mkConst ``Lean.Grind.intro_with_eq' [u]) #[p, r.expr, q, he, h]
              mvarId.assign hNew
              return .newHyp fvarId { (← get) with mvarId := mvarIdNew }
        | none =>
          -- `p` and `p'` are definitionally equal
          let q := if target.isArrow then qBase else qBase.instantiate1 (mkFVar fvarId)
          let mvarNew ← mkFreshExprMVarAt lctx localInsts q .syntheticOpaque tag
          let mvarIdNew := mvarNew.mvarId!
          mvarIdNew.withContext do
            let h ← mkLambdaFVars #[mkFVar fvarId] mvarNew
            mvarId.assign h
            return .newHyp fvarId { (← get) with mvarId := mvarIdNew }
    else if target.isLet then
      if (← getConfig).zetaDelta then
        let targetNew := expandLet target #[]
        let mvarId := (← get).mvarId
        mvarId.withContext do
          let mvarNew ← mkFreshExprSyntheticOpaqueMVar targetNew (← mvarId.getTag)
          mvarId.assign mvarNew
          introNext { (← get) with mvarId := mvarNew.mvarId! } generation
      else
        let fvarId ← intro1
        (← get).mvarId.withContext do
          let localDecl ← fvarId.getDecl
          if (← isProp localDecl.type) then
            -- Add a non-dependent copy
            let mvarId ← (← get).mvarId.assert (← mkCleanName `h localDecl.type) localDecl.type (mkFVar fvarId)
            return .newDepHyp { (← get) with mvarId }
          else
            let v := (← fvarId.getDecl).value
            let r ← preprocessHypothesis v
            let x ← shareCommon (mkFVar fvarId)
            addNewEq x r.expr (← r.getProof) generation
            return .newLocal fvarId (← get)
    else
      return .done goal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variant9f2ee48d9890a69d546019087522feb484161ea9883a737830bd38f405377eaf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variant9f2ee48d9890a69d546019087522feb484161ea9883a737830bd38f405377eaf.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1404303db3caa3372d545f0f09d038ec4bfa5c94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
