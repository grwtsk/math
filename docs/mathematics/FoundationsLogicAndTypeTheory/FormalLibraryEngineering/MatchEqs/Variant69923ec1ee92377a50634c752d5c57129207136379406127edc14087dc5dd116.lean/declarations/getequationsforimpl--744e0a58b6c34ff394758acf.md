# getEquationsForImpl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:449c8082c867486c0d1aedc197cb851492bad67158bb837bf03d6318cf72fc35",
  "kind": "def",
  "lexical_name": "getEquationsForImpl",
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
  "slug": "getequationsforimpl--744e0a58b6c34ff394758acf",
  "source": {
    "blob": "767b8cc72abcb3028eed78ea04d7fcdb23eb0766",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 143,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqs/Variant69923ec1ee92377a50634c752d5c57129207136379406127edc14087dc5dd116.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:744e0a58b6c34ff394758acf208be75a6c2327eb60f8cfec4d32905acb0db670",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqs/Variant69923ec1ee92377a50634c752d5c57129207136379406127edc14087dc5dd116.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:449c8082c867486c0d1aedc197cb851492bad67158bb837bf03d6318cf72fc35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getEquationsForImpl (matchDeclName : Name) : MetaM MatchEqns := do
  /-
  Remark: users have requested the `split` tactic to be available for writing code.
  Thus, the `splitter` declaration must be a definition instead of a theorem.
  Moreover, the `splitter` is generated on demand, and we currently
  can't import the same definition from different modules. Thus, we must
  keep `splitter` as a private declaration to prevent import failures.
  -/
  let baseName := mkPrivateName (← getEnv) matchDeclName
  let splitterName := baseName ++ `splitter
  -- NOTE: `go` will generate both splitter and equations but we use the splitter as the "key" for
  -- `realizeConst` as well as for looking up the resultant environment extension state via
  -- `getState`.
  realizeConst matchDeclName splitterName (go baseName splitterName)
  match matchEqnsExt.getState (asyncMode := .async .asyncEnv) (asyncDecl := splitterName) (← getEnv) |>.map.find? matchDeclName with
  | some eqns => return eqns
  | none      => throwError "failed to retrieve match equations for `{matchDeclName}` after realization"
where go baseName splitterName := withConfig (fun c => { c with etaStruct := .none }) do
  let constInfo ← getConstInfo matchDeclName
  let us := constInfo.levelParams.map mkLevelParam
  let some matchInfo ← getMatcherInfo? matchDeclName | throwError "`{matchDeclName}` is not a matcher function"
  let numDiscrEqs := getNumEqsFromDiscrInfos matchInfo.discrInfos
  forallTelescopeReducing constInfo.type fun xs _matchResultType => do
    let mut eqnNames := #[]
    let params := xs[*...matchInfo.numParams]
    let motive := xs[matchInfo.getMotivePos]!
    let alts   := xs[(xs.size - matchInfo.numAlts)...*]
    let firstDiscrIdx := matchInfo.numParams + 1
    let discrs := xs[firstDiscrIdx...(firstDiscrIdx + matchInfo.numDiscrs)]
    let mut notAlts := #[]
    let mut idx := 1
    let mut splitterAltInfos := #[]
    let mut altArgMasks := #[] -- masks produced by `forallAltTelescope`
    for i in *...alts.size do
      let altInfo := matchInfo.altInfos[i]!
      let thmName := Name.str baseName eqnThmSuffixBase |>.appendIndexAfter idx
      eqnNames := eqnNames.push thmName
      let (notAlt, splitterAltInfo, argMask) ←
          forallAltTelescope (← inferType alts[i]!) altInfo numDiscrEqs
          fun ys _eqs rhsArgs argMask altResultType => do
        let patterns := altResultType.getAppArgs
        let mut hs := #[]
        for overlappedBy in matchInfo.overlaps.overlapping i do
          let notAlt := notAlts[overlappedBy]!
          let h ← instantiateForall notAlt patterns
          if let some h ← simpH? h patterns.size then
            hs := hs.push h
        trace[Meta.Match.matchEqs] "hs: {hs}"
        let hasUnitThunk := ys.isEmpty && hs.isEmpty && numDiscrEqs = 0
        let splitterAltInfo := { numFields := ys.size, numOverlaps := hs.size, hasUnitThunk }
        -- Create a proposition for representing terms that do not match `patterns`
        let mut notAlt := mkConst ``False
        for discr in discrs.toArray.reverse, pattern in patterns.reverse do
          notAlt ← mkArrow (← mkEqHEq discr pattern) notAlt
        notAlt ← mkForallFVars (discrs ++ ys) notAlt
        /- Recall that when we use the `h : discr`, the alternative type depends on the discriminant.
           Thus, we need to create new `alts`. -/
        withNewAlts numDiscrEqs discrs patterns alts fun alts => do
          let alt := alts[i]!
          let lhs := mkAppN (mkConst constInfo.name us) (params ++ #[motive] ++ patterns ++ alts)
          let rhs := mkAppN alt rhsArgs
          let thmType ← mkEq lhs rhs
          let thmType ← mkArrowN hs thmType
          let thmType ← mkForallFVars (params ++ #[motive] ++ ys ++ alts) thmType
          let thmType ← unfoldNamedPattern thmType
          let thmVal ← proveCondEqThm matchDeclName thmType
          addDecl <| Declaration.thmDecl {
            name        := thmName
            levelParams := constInfo.levelParams
            type        := thmType
            value       := thmVal
          }
          return (notAlt, splitterAltInfo, argMask)
      notAlts := notAlts.push notAlt
      splitterAltInfos := splitterAltInfos.push splitterAltInfo
      altArgMasks := altArgMasks.push argMask
      idx := idx + 1
    let splitterMatchInfo : MatcherInfo := { matchInfo with altInfos := splitterAltInfos }

    let needsSplitter := !matchInfo.overlaps.isEmpty || (constInfo.type.find? (isNamedPattern )).isSome

    if needsSplitter then
      withMkMatcherInput matchDeclName (unfoldNamed := true) fun matcherInput => do
        let matcherInput := { matcherInput with
          matcherName := splitterName
          isSplitter := some matchInfo.overlaps
        }
        let res ← Match.mkMatcher matcherInput
        res.addMatcher -- TODO: Do not set matcherinfo for the splitter!
    else
      assert! matchInfo.altInfos == splitterAltInfos
      -- This match statement does not need a splitter, we can use itself for that.
      -- (We still have to generate a declaration to satisfy the realizable constant)
      let decl := Declaration.defnDecl {
        name        := splitterName
        levelParams := constInfo.levelParams
        type        := constInfo.type
        value       := mkConst matchDeclName us
        hints       := .abbrev
        safety      := .safe
      }
      addDecl decl
      setInlineAttribute splitterName
      compileDecl (logErrors := false) decl
    let result := { eqnNames, splitterName, splitterMatchInfo }
    registerMatchEqns matchDeclName result

set_option compiler.ignoreBorrowAnnotation true in
/--
Generate the congruence equations for the given match auxiliary declaration.
The congruence equations have a completely unrestricted left-hand side (arbitrary discriminants),
and take propositional equations relating the discriminants to the patterns as arguments. In this
sense they combine a congruence lemma with the regular equation lemma.
Since the motive depends on the discriminants, they are `HEq` equations.

The code duplicates a fair bit of the logic above, and has to repeat the calculation of the
`notAlts`. One could avoid that and generate the generalized equations eagerly above, but they are
not always needed, so for now we live with the code duplication.
-/
@[export lean_get_congr_match_equations_for]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqs/Variant69923ec1ee92377a50634c752d5c57129207136379406127edc14087dc5dd116.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqs/Variant69923ec1ee92377a50634c752d5c57129207136379406127edc14087dc5dd116.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `767b8cc72abcb3028eed78ea04d7fcdb23eb0766` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
