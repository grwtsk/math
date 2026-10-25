# wfRecursion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d93a9ee45ae422dd87dc26267ce14593267ed2b42d942da514619f1fbbfc0c79",
  "kind": "def",
  "lexical_name": "wfRecursion",
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
  "slug": "wfrecursion--0d2881075e30d9fa4c2462ad",
  "source": {
    "blob": "b066ac285ee76cf41a76275750f26810af9ece78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 23,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantcc673e422dd83756dda6cfc04ea3a02f3aae04dc00b37d11e61e18b6cde0b01d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0d2881075e30d9fa4c2462adc65e1bc1aa22c862796c7a023b48a8588d3a63d1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantcc673e422dd83756dda6cfc04ea3a02f3aae04dc00b37d11e61e18b6cde0b01d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d93a9ee45ae422dd87dc26267ce14593267ed2b42d942da514619f1fbbfc0c79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def wfRecursion (docCtx : LocalContext × LocalInstances) (preDefs : Array PreDefinition) (termMeasure?s : Array (Option TerminationMeasure)) : TermElabM Unit := do
  let termMeasures? := termMeasure?s.mapM id -- Either all or none, checked by `elabTerminationByHints`
  let preDefs ← preDefs.mapM fun preDef =>
    return { preDef with value := (← floatRecApp preDef.value) }
  let (fixedParamPerms, argsPacker, unaryPreDef) ← withoutModifyingEnv do
    for preDef in preDefs do
      addAsAxiom preDef
    let fixedParamPerms ← getFixedParamPerms preDefs
    let varNamess ← preDefs.mapIdxM fun i preDef => varyingVarNames fixedParamPerms i preDef
    for varNames in varNamess, preDef in preDefs do
      if varNames.isEmpty then
        throwError "well-founded recursion cannot be used, `{preDef.declName}` does not take any (non-fixed) arguments"
    let argsPacker := { varNamess }
    let numSectionVars := preDefs[0]!.numSectionVars
    let preDefs' ← preDefs.mapM fun preDef => do
      return { preDef with value := (← unfoldIfArgIsAppOf (preDefs.map (·.declName)) numSectionVars preDef.value) }
    let unaryPreDef ← packMutual fixedParamPerms argsPacker preDefs'
    return (fixedParamPerms, argsPacker, unaryPreDef)
  trace[Elab.definition.wf] "unaryPreDef:{indentD unaryPreDef.value}"

  let (unaryPreDefProcessed, wfPreprocessProof) ← withoutModifyingEnv do
    addAsAxiom unaryPreDef
    let result ← preprocess unaryPreDef.value
    pure ({unaryPreDef with value := result.expr}, result)
  trace[Elab.definition.wf] "unaryPreDefProcessed:{indentD unaryPreDef.value}"

  let wf : TerminationMeasures ← do
    if let some tms := termMeasures? then pure tms else
    withoutExporting do  -- generating proof
    -- No termination_by here, so use GuessLex to infer one
    guessLex preDefs unaryPreDefProcessed fixedParamPerms argsPacker

  let preDefNonRec ← forallBoundedTelescope unaryPreDef.type fixedParamPerms.numFixed fun fixedArgs type => do
    let type ← whnfForall type
    unless type.isForall do
      throwError "wfRecursion: expected unary function type: {type}"
    let packedArgType := type.bindingDomain!
    elabWFRel (preDefs.map (·.declName)) unaryPreDef.declName fixedParamPerms fixedArgs argsPacker packedArgType wf fun wfRel => do
      trace[Elab.definition.wf] "wfRel: {wfRel}"
      let useNatRec := (← isNatLtWF wfRel).isSome
      -- Warn about likely unwanted reducibility attributes
      unless useNatRec do
        preDefs.forM fun preDef =>
          preDef.modifiers.attrs.forM fun a => do
            if a.name = `reducible || a.name = `semireducible then
              logWarningAt a.stx s!"marking functions defined by well-founded recursion as `{a.name}` is not effective"

      let (value, envNew) ← withoutModifyingEnv' do
        addAsAxiom unaryPreDef
        let value ← mkFix unaryPreDefProcessed fixedArgs argsPacker wfRel (preDefs.map (·.declName)) (preDefs.map (·.termination.decreasingBy?))
        eraseRecAppSyntaxExpr value
      /- `mkFix` invokes `decreasing_tactic` which may add auxiliary theorems to the environment. -/
      let value ← unfoldDeclsFrom envNew value
      -- Make sure we remember invoked tactics
      modifyEnv (copyExtraModUses envNew)
      return { unaryPreDefProcessed with value }

  trace[Elab.definition.wf] ">> {preDefNonRec.declName} :=\n{preDefNonRec.value}"
  let preDefsNonrec ← preDefsFromUnaryNonRec fixedParamPerms argsPacker preDefs preDefNonRec
  Mutual.addPreDefsFromUnary (cacheProofs := false) docCtx preDefs preDefsNonrec preDefNonRec
  addAndCompilePartialRec docCtx preDefs
  let unaryPreDef ← Mutual.cleanPreDef (cacheProofs := false) unaryPreDef
  let preDefs ← preDefs.mapM (Mutual.cleanPreDef (cacheProofs := false) ·)
  registerEqnsInfo preDefs preDefNonRec.declName fixedParamPerms argsPacker
  markAsRecursive unaryPreDef.declName
  unless (← isProp unaryPreDef.type) do
    WF.mkUnfoldEq unaryPreDef preDefNonRec.declName wfPreprocessProof
  for preDef in preDefs do
    unless preDef.declName = preDefNonRec.declName do
      unless preDef.kind.isTheorem do
        unless (← isProp preDef.type) do
          WF.mkBinaryUnfoldEq preDef preDefNonRec.declName
  -- must happen before `addPreDefAttributes` enables realizations for the top-level functions,
  -- which may need to use realizations on `preDefNonRec`
  enableRealizationsForConst preDefNonRec.declName
  Mutual.addPreDefAttributes preDefs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantcc673e422dd83756dda6cfc04ea3a02f3aae04dc00b37d11e61e18b6cde0b01d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantcc673e422dd83756dda6cfc04ea3a02f3aae04dc00b37d11e61e18b6cde0b01d.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b066ac285ee76cf41a76275750f26810af9ece78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
