# delabAppMatch

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:de4c1fde89c8104096f5c2591b0f03419db2e0701f38fbbaf16f108451bec12e",
  "kind": "def",
  "lexical_name": "delabAppMatch",
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
  "slug": "delabappmatch--520ae473596add6679b68581",
  "source": {
    "blob": "b0a25944216f1812aa0ff7d4d4685bb89f89dde9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 867,
    "line": 767,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variantb2e0356eed2079d1fa78aac1fc4f927ff0038440505d0793807eef6bf4ed687c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:520ae473596add6679b685818f70317d6af1afbfd8919b0e9a851b067824dafc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variantb2e0356eed2079d1fa78aac1fc4f927ff0038440505d0793807eef6bf4ed687c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:de4c1fde89c8104096f5c2591b0f03419db2e0701f38fbbaf16f108451bec12e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 767–867.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def delabAppMatch : Delab := whenNotPPOption getPPExplicit <| whenPPOption getPPNotation <| whenPPOption getPPMatch do
  -- Check that this is a matcher, and then set up overapplication.
  let Expr.const c us := (← getExpr).getAppFn | failure
  let some info ← getMatcherInfo? c | failure
  withOverApp info.arity do
    -- First pass visiting the match application. Incrementally fills `AppMatchState`,
    -- collecting information needed to delaborate the patterns and RHSs.
    -- No need to visit the parameters themselves.
    let st : AppMatchState ← withBoundedAppFnArgs (1 + info.numDiscrs + info.numAlts)
      (do
        let params := (← getExpr).getAppArgs
        let matcherTy : SubExpr :=
          { expr := ← instantiateForall (← instantiateTypeLevelParams (← getConstVal c) us) params
            pos := (← getPos).pushType }
        guard <| ← isDefEq matcherTy.expr (← inferType (← getExpr))
        return { info, matcherTy })
      (fun st => do
        if st.motive.isNone then
          -- A motive for match notation is a type, so need to delaborate the lambda motive as a pi type.
          let lamMotive ← getExpr
          let piMotive ← lambdaTelescope lamMotive fun xs body => mkForallFVars xs body
          -- TODO: pp.analyze has not analyzed `piMotive`, only `lamMotive`
          -- Thus the binder types won't have any annotations.
          -- Though, by using the same position we can use the body annotations
          let piStx ← withTheReader SubExpr (fun cfg => { cfg with expr := piMotive }) delab
          let named ← getPPOption getPPAnalysisNamedArg
          return { st with motive := (piStx, lamMotive), motiveNamed := named }
        else if st.discrs.size < st.info.numDiscrs then
          return { st with discrs := st.discrs.push (← delab) }
        else if st.alts.size < st.info.numAlts then
          return { st with alts := st.alts.push (← readThe SubExpr) }
        else
          panic! "impossible, number of arguments does not match arity")

    -- Second pass, create names for the h parameters, come up with pattern variable names,
    -- and delaborate the RHSs.
    -- We need to create dummy variables for the `h :` annotation variables first because they
    -- come *last* in each alternative.
    let st ← withDummyBinders (st.info.discrInfos.map (·.hName?)) (← getExpr) fun hNames? => do
      let hNames := hNames?.filterMap id
      let mut st := {st with hNames? := hNames?}
      for i in *...st.alts.size do
        st ← withTheReader SubExpr (fun _ => st.alts[i]!) do
          -- We save the variables names here to be able to implement safe shadowing.
          -- The pattern delaboration must use the names saved here.
          skippingBinders st.info.altNumParams[i]! hNames fun varNames => do
            let rhs ← delab
            return { st with rhss := st.rhss.push rhs, varNames := st.varNames.push varNames }
      return st

    if st.rhss.isEmpty then
      `(nomatch $(st.discrs),*)
    else
      -- Third pass, delaborate patterns.
      -- Extracts arguments of motive applications from the matcher type.
      -- For the example in the docstring, yields `#[#[([])], #[(a::as)]]`.
      let pats ← withReader (fun ctx => { ctx with inPattern := true, subExpr := st.matcherTy }) do
        -- Need to reduce since there can be `let`s that are lifted into the matcher type
        forallTelescopeReducing (← getExpr) fun afterParams _ => do
          -- Skip motive and discriminators
          let alts := Array.ofSubarray afterParams[(1 + st.discrs.size)...*]
          -- Visit minor premises
          alts.mapIdxM fun idx alt => do
            let altTy ← inferType alt
            withTheReader SubExpr (fun ctx =>
                { ctx with expr := altTy, pos := ctx.pos.pushNthBindingDomain (1 + st.discrs.size + idx) }) do
              usingNames st.varNames[idx]! <|
                withAppFnArgs (pure #[]) fun pats => return pats.push (← delab)
      -- Finally, assemble
      let discrs ← st.hNames?.zipWithM (bs := st.discrs) fun hName? discr =>
        match hName? with
        | none => `(matchDiscr| $discr:term)
        | some hName => `(matchDiscr| $(mkIdent hName) : $discr)
      let (piStx, lamMotive) := st.motive.get!
      let opts ← getOptions
      -- TODO: disable the match if other implicits are needed?
      if ← pure st.motiveNamed <||> shouldShowMotive lamMotive opts then
        `(match (motive := $piStx) $[$discrs:matchDiscr],* with $[| $pats,* => $st.rhss]*)
      else
        `(match $[$discrs:matchDiscr],* with $[| $pats,* => $st.rhss]*)
where
  /-- Adds hNames to the local context to reserve their names and runs `m` in that context. -/
  withDummyBinders {α : Type} (hNames? : Array (Option Name)) (body : Expr)
      (m : Array (Option Name) → DelabM α) (acc : Array (Option Name) := #[]) : DelabM α := do
    let i := acc.size
    if i < hNames?.size then
      if let some name := hNames?[i]! then
        let n' ← getUnusedName name body
        withLocalDecl n' .default (.sort Level.zero) (kind := .implDetail) fun _ =>
          withDummyBinders hNames? body m (acc.push n')
      else
        withDummyBinders hNames? body m (acc.push none)
    else
      m acc

  usingNames {α} (varNames : Array Name) (x : DelabM α) (i : Nat := 0) : DelabM α :=
    if h : i < varNames.size then
      withBindingBody varNames[i] <| usingNames varNames x (i+1)
    else
      x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variantb2e0356eed2079d1fa78aac1fc4f927ff0038440505d0793807eef6bf4ed687c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variantb2e0356eed2079d1fa78aac1fc4f927ff0038440505d0793807eef6bf4ed687c.lean#L767).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0a25944216f1812aa0ff7d4d4685bb89f89dde9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
