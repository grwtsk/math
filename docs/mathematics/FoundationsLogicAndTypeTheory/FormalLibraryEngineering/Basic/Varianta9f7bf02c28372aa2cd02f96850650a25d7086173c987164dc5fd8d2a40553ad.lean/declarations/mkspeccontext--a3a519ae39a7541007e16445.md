# mkSpecContext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:36db3d94b1848248e560603e8729a15aba9e2ad0b957ec22f8dffa7be12bad7a",
  "kind": "def",
  "lexical_name": "mkSpecContext",
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
  "slug": "mkspeccontext--a3a519ae39a7541007e16445",
  "source": {
    "blob": "738bc790b874d8751503613d80fe18a8654a339a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 209,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta9f7bf02c28372aa2cd02f96850650a25d7086173c987164dc5fd8d2a40553ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a3a519ae39a7541007e1644519c3b207251a6c207e15e4eb33a2c07de38742fa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta9f7bf02c28372aa2cd02f96850650a25d7086173c987164dc5fd8d2a40553ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:36db3d94b1848248e560603e8729a15aba9e2ad0b957ec22f8dffa7be12bad7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkSpecContext (optConfig : Syntax) (lemmas : Syntax) (ignoreStarArg := false) : TacticM Context := do
  let config ← elabConfig optConfig
  let mut specThms ← getSpecTheorems
  let mut simpStuff := #[]
  let mut starArg := false
  for arg in lemmas[1].getSepArgs do
    if arg.getKind == ``simpErase then
      try
        -- Try and build SpecTheorems for the lemma to erase to see if it's
        -- meant to be interpreted by SpecTheorems. Otherwise fall back to SimpTheorems.
        let specThm ←
          if let some fvar ← Term.isLocalIdent? arg[1] then
            mkSpecTheoremFromLocal fvar.fvarId!
          else
            let id := arg[1]
            if let .ok declName ← observing (realizeGlobalConstNoOverloadWithInfo id) then
              mkSpecTheoremFromConst declName
            else
              withRef id <| throwUnknownConstant id.getId.eraseMacroScopes
        specThms := specThms.erase specThm.proof
      catch _ =>
        simpStuff := simpStuff.push ⟨arg⟩ -- simp tracks its own erase stuff
    else if arg.getKind == ``simpLemma then
      unless arg[0].isNone && arg[1].isNone do
        -- When there is ←, →, ↑ or ↓ then this is for simp
        simpStuff := simpStuff.push ⟨arg⟩
        continue
      let term := arg[2]
      match ← Term.resolveId? term (withInfo := true) <|> Term.elabCDotFunctionAlias? ⟨term⟩ with
      | some (.const declName _) =>
        let info ← getConstInfo declName
        try
          let thm ← mkSpecTheoremFromConst declName
          specThms := specThms.insert thm
        catch _ =>
          simpStuff := simpStuff.push ⟨arg⟩
      | some (.fvar fvar) =>
        let decl ← getFVarLocalDecl (.fvar fvar)
        try
          let thm ← mkSpecTheoremFromLocal fvar
          specThms := specThms.insert thm
        catch _ =>
          simpStuff := simpStuff.push ⟨arg⟩
      | _ => withRef term <| throwError "Could not resolve spec theorem `{term}`"
    else if arg.getKind == ``simpStar then
      starArg := true
      simpStuff := simpStuff.push ⟨arg⟩
    else
      throwUnsupportedSyntax
  -- Build a mock simp call to build a simp context that corresponds to `simp [simpStuff]`
  let stx ← `(tactic| simp +unfoldPartialApp -zeta [$(Syntax.TSepArray.ofElems simpStuff),*])
  -- logInfo s!"{stx}"
  let res ← mkSimpContext stx.raw
    (eraseLocal := false)
    (simpTheorems := getSpecSimpTheorems)
    (ignoreStarArg := ignoreStarArg)
  -- logInfo m!"{res.ctx.simpTheorems.map (·.toUnfold.toList)}"
  if starArg && !ignoreStarArg then
    let fvars ← getPropHyps
    for fvar in fvars do
      unless specThms.isErased (.local fvar) do
        try
          let thm ← mkSpecTheoremFromLocal fvar
          specThms := specThms.insert thm
        catch _ => continue
  return {
    config,
    specThms,
    simpCtx := res.ctx,
    simprocs := res.simprocs
    initialCtxSize := (← getLCtx).numIndices
  }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta9f7bf02c28372aa2cd02f96850650a25d7086173c987164dc5fd8d2a40553ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta9f7bf02c28372aa2cd02f96850650a25d7086173c987164dc5fd8d2a40553ad.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `738bc790b874d8751503613d80fe18a8654a339a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
