# genMatchCongrEqnsImpl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d965a811717c3a23799036378e3fadc4470dd2fcf84a8e41a62e21edcc72898",
  "kind": "def",
  "lexical_name": "genMatchCongrEqnsImpl",
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
  "slug": "genmatchcongreqnsimpl--9bdcce8f7fbc9b2ab5ba40f9",
  "source": {
    "blob": "767b8cc72abcb3028eed78ea04d7fcdb23eb0766",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 263,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqs/Variant69923ec1ee92377a50634c752d5c57129207136379406127edc14087dc5dd116.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9bdcce8f7fbc9b2ab5ba40f950c8f0b4fb60b25b9ae7cbeceede80e413a6c47c",
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

Occurrence: `declaration:7d965a811717c3a23799036378e3fadc4470dd2fcf84a8e41a62e21edcc72898`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def genMatchCongrEqnsImpl (matchDeclName : Name) : MetaM (Array Name) := do
  let firstEqnName := matchDeclName.str congrEqn1ThmSuffix
  realizeConst matchDeclName firstEqnName go
  let some matchInfo ← getMatcherInfo? matchDeclName | throwError "`{matchDeclName}` is not a matcher function"
  let mut thmNames := #[]
  for i in *...matchInfo.numAlts do
    thmNames := thmNames.push <|(matchDeclName.str congrEqnThmSuffixBase).appendIndexAfter (i+1)
  return thmNames
where go := withConfig (fun c => { c with etaStruct := .none }) do
  withConfig (fun c => { c with etaStruct := .none }) do
  let constInfo ← getConstInfo matchDeclName
  let us := constInfo.levelParams.map mkLevelParam
  let some matchInfo ← getMatcherInfo? matchDeclName | throwError "`{matchDeclName}` is not a matcher function"
  let numDiscrEqs := matchInfo.getNumDiscrEqs
  forallTelescopeReducing constInfo.type fun xs _matchResultType => do
    let mut eqnNames := #[]
    let params := xs[*...matchInfo.numParams]
    let motive := xs[matchInfo.getMotivePos]!
    let alts   := xs[(xs.size - matchInfo.numAlts)...*]
    let firstDiscrIdx := matchInfo.numParams + 1
    let discrs := xs[firstDiscrIdx...(firstDiscrIdx + matchInfo.numDiscrs)]
    let mut notAlts := #[]
    let mut idx := 1
    for i in *...alts.size do
      let altInfo := matchInfo.altInfos[i]!
      let thmName := (Name.str matchDeclName congrEqnThmSuffixBase).appendIndexAfter idx
      eqnNames := eqnNames.push thmName
      let notAlt ← do
        let alt := alts[i]!
        Match.forallAltVarsTelescope (← inferType alt) altInfo fun altVars args _mask altResultType => do
        let patterns ← forallTelescope altResultType fun _ t => pure t.getAppArgs
        let mut heqsTypes := #[]
        assert! patterns.size == discrs.size
        for discr in discrs, pattern in patterns do
          let heqType ← mkEqHEq discr pattern
          heqsTypes := heqsTypes.push ((`heq).appendIndexAfter (heqsTypes.size + 1), heqType)
        withLocalDeclsDND heqsTypes fun heqs => do
          let rhs ← Match.mkAppDiscrEqs (mkAppN alt args) heqs numDiscrEqs
          let mut hs := #[]
          for overlappedBy in matchInfo.overlaps.overlapping i do
            let notAlt := notAlts[overlappedBy]!
            let h ← instantiateForall notAlt patterns
            if let some h ← simpH? h patterns.size then
              hs := hs.push h
          trace[Meta.Match.matchEqs] "hs: {hs}"
          let mut notAlt := mkConst ``False
          for discr in discrs.toArray.reverse, pattern in patterns.reverse do
            notAlt ← mkArrow (← mkEqHEq discr pattern) notAlt
          notAlt ← mkForallFVars (discrs ++ altVars) notAlt
          let lhs := mkAppN (mkConst constInfo.name us) (params ++ #[motive] ++ discrs ++ alts)
          let thmType ← mkHEq lhs rhs
          let thmType ← mkArrowN hs thmType
          let thmType ← mkForallFVars (params ++ #[motive] ++ discrs ++ alts ++ altVars ++ heqs) thmType
          let thmType ← Match.unfoldNamedPattern thmType
          -- Here we prove the theorem from scratch. One could likely also use the (non-generalized)
          -- match equation theorem after subst'ing the `heqs`.
          let thmVal ← Match.proveCondEqThm matchDeclName thmType
            (heqPos := params.size + 1 + discrs.size + alts.size + altVars.size) (heqNum := heqs.size)
          unless (← getEnv).contains thmName do
            addDecl <| Declaration.thmDecl {
              name        := thmName
              levelParams := constInfo.levelParams
              type        := thmType
              value       := thmVal
            }
          return notAlt
      notAlts := notAlts.push notAlt
      idx := idx + 1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqs/Variant69923ec1ee92377a50634c752d5c57129207136379406127edc14087dc5dd116.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqs/Variant69923ec1ee92377a50634c752d5c57129207136379406127edc14087dc5dd116.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `767b8cc72abcb3028eed78ea04d7fcdb23eb0766` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
