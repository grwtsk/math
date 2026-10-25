# deriveCases

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4ab4cf6a8d564f2771cfd866d4b1c1ee4eaa5c4a514ebf849177173907953c46",
  "kind": "def",
  "lexical_name": "deriveCases",
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
  "slug": "derivecases--8836037b30e00e1ba03e176b",
  "source": {
    "blob": "20587c35412e3313846c39603df036e01503a5eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1486,
    "line": 1400,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8836037b30e00e1ba03e176b8f93078199d8da11bcd215399c6f63fea993b853",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4ab4cf6a8d564f2771cfd866d4b1c1ee4eaa5c4a514ebf849177173907953c46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1400–1486.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def deriveCases (unfolding : Bool) (name : Name) : MetaM Unit := do
  let casesName := getFunCasesName (unfolding := unfolding) name
  realizeConst name casesName do
  prependError m!"Cannot derive functional cases principle (please report this issue)" do
    let info ← getConstInfo name
    let some unfoldEqnName ← getUnfoldEqnFor? (nonRec := true) name
      | throwError "`{name}` has neither an unfold theorem nor a value"
    let value ← do
      let eqInfo ← getConstInfo unfoldEqnName
      forallTelescope eqInfo.type fun xs body => do
        let some (_, _, rhs) := body.eq?
          | throwError "Type of `{unfoldEqnName}` not an equality:{inlineExprTrailing body}"
        mkLambdaFVars xs rhs
    let targetMask ← refinedArguments value
    trace[Meta.FunInd] "targetMask: {targetMask}"

    let (paramsMask, e') ← lambdaTelescope value fun xs _ => do
      let params := Array.mask (targetMask.map not) xs
      let targets := Array.mask targetMask xs
      let motiveType ←
        if unfolding then
          withLocalDeclD `r (← instantiateForall info.type xs) fun r =>
            mkForallFVars (targets.push r) (.sort 0)
        else
          mkForallFVars targets (.sort 0)
      -- Remove targets from local context, we want to bring them into scope after the motive
      -- so that the index passed to `abstractIndependentMVars` works.
      withErasedFVars (targets.map (·.fvarId!)) do
        withLocalDeclD `motive motiveType fun motive => do
          -- Bring targets freshly into scope again
          forallBoundedTelescope motiveType targets.size fun targets _ => do
            let (e', mvars) ← M2.run do
              let args := Array.zipMasked targetMask params targets
              let body := value.beta args
              let goal := mkAppN motive targets
              let goal ← if unfolding then
                pure <| mkApp goal (mkAppN (← mkConstWithLevelParams name) args)
              else
                pure goal
              withRewrittenMotiveArg goal (rwFun #[name]) fun goal => do
                -- We bring an unused FVars into scope to pass as `oldIH` and `newIH`. These do not appear anywhere
                -- so `buildInductionBody` should just do the right thing
                withLocalDeclD `fakeIH (mkConst ``Unit) fun fakeIH =>
                  let isRecCall := fun _ => none
                  buildInductionBody #[fakeIH.fvarId!] #[] goal fakeIH.fvarId! fakeIH.fvarId! isRecCall body
            let e' ← mkLambdaFVars targets e'
            let e' ← abstractIndependentMVars mvars (← motive.fvarId!.getDecl).index e'
            let e' ← mkLambdaFVars #[motive] e'
            mkLambdaFVarsMasked params e'

    let eTyp ← inferType e'
    let eTyp ← elimTypeAnnotations eTyp
    let eTyp ← letToHave eTyp
    -- logInfo m!"eTyp: {eTyp}"
    let levelParams := (collectLevelParams {} eTyp).params
    -- Prune unused level parameters, preserving the original order
    let funUs := info.levelParams.toArray
    let usMask := funUs.map (levelParams.contains ·)
    let us := Array.mask usMask funUs |>.toList

    addDecl <| Declaration.thmDecl
      { name := casesName, levelParams := us, type := eTyp, value := e' }

    -- Calculate paramsKind from targetMask (length = arity) and paramsMask (length = params)
    let mut paramKinds := #[]
    let mut j := 0
    for isTarget in targetMask do
      if isTarget then
        paramKinds := paramKinds.push .target
      else
        assert! j < paramsMask.size
        if paramsMask[j]! then
          paramKinds := paramKinds.push .param
        else
          paramKinds := paramKinds.push .dropped
        j := j + 1

    setFunIndInfo {
      funName := name
      funIndName := casesName
      levelMask := usMask
      params := paramKinds
    }

/--
Given a recursively defined function `foo`, derives `foo.induct`. See the module doc for details.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean#L1400).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20587c35412e3313846c39603df036e01503a5eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
