# complexMeasures

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:415fc71eeef665019a991b6606f31e33960edd3db2e3b43c8d5bb9352283e262",
  "kind": "def",
  "lexical_name": "complexMeasures",
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
  "slug": "complexmeasures--2c0e5a19cf706701cf48e6a3",
  "source": {
    "blob": "8655cf0708eda72c2b5d9dd51524ab5abee9098b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 430,
    "line": 394,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2c0e5a19cf706701cf48e6a351a0f7ad0a565fd163f05bfec0cbac4f0f3f7315",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:415fc71eeef665019a991b6606f31e33960edd3db2e3b43c8d5bb9352283e262`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 394–430.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def complexMeasures (preDefs : Array PreDefinition) (fixedParamPerms : FixedParamPerms)
    (userVarNamess : Array (Array Name)) (recCalls : Array RecCallWithContext) :
    MetaM (Array (Array BasicMeasure)) := do
  preDefs.mapIdxM fun funIdx _preDef => do
    let mut measures := #[]
    for rc in recCalls do
      -- Only look at calls from the current function
      unless rc.caller = funIdx do continue
      -- Only look at calls where the parameters have not been refined
      unless rc.params.all (·.isFVar) do continue
      let varyingParams := fixedParamPerms.perms[funIdx]!.pickVarying rc.params
      let varyingFVars := varyingParams.map (·.fvarId!)
      let params := rc.params.map (·.fvarId!)
      measures ← rc.ctxt.run do
        withUserNames varyingParams userVarNamess[funIdx]! do
        trace[Elab.definition.wf] "rc: {rc.caller} ({rc.params}) → {rc.callee} ({rc.args})"
        let mut measures := measures
        for ldecl in ← getLCtx do
          if let some (e₁, e₂) ← isNatCmp ldecl.type then
            -- We only want to consider these expressions if they depend only on the function's
            -- immediate arguments, so check that
            if e₁.hasAnyFVar (! params.contains ·) then continue
            if e₂.hasAnyFVar (! params.contains ·) then continue
            -- If e₁ does not depend on any varying parameters, simply ignore it
            let e₁_is_const := ! e₁.hasAnyFVar (varyingFVars.contains ·)
            let body := if e₁_is_const then e₂ else mkNatSub e₂ e₁
            -- Avoid adding simple measures
            unless body.isFVar do
              let fn ← mkLambdaFVars rc.params body
              -- Avoid duplicates
              unless ← measures.anyM (isDefEq ·.fn fn) do
                measures := measures.push { ref := .missing, structural := false,  fn, natFn := fn }
        return measures
    return measures

/-- A `GuessLexRel` described how a recursive call affects a measure; whether it
decreases strictly, non-strictly, is equal, or else.  -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean#L394).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8655cf0708eda72c2b5d9dd51524ab5abee9098b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
