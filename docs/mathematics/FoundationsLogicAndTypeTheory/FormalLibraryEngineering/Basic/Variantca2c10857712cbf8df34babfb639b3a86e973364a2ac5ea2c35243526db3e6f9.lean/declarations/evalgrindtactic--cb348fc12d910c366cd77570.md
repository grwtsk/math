# evalGrindTactic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe2dd3dea44a226b189ee1554b7bafe4a9adde622e42f2588d041b423bc6b72c",
  "kind": "def",
  "lexical_name": "evalGrindTactic",
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
  "slug": "evalgrindtactic--cb348fc12d910c366cd77570",
  "source": {
    "blob": "613179b28721a82743286336c81bbbea45f64052",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 150,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantca2c10857712cbf8df34babfb639b3a86e973364a2ac5ea2c35243526db3e6f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cb348fc12d910c366cd77570020cce667b5b980c0d4cac166d69f70c31ea7fb1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantca2c10857712cbf8df34babfb639b3a86e973364a2ac5ea2c35243526db3e6f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fe2dd3dea44a226b189ee1554b7bafe4a9adde622e42f2588d041b423bc6b72c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def evalGrindTactic (stx : Syntax) : GrindTacticM Unit := do
  checkSystem "grind tactic execution"
  profileitM Exception "grind tactic execution" (decl := stx.getKind) (← getOptions) <|
  withRef stx <| withIncRecDepth <| withFreshMacroScope <| match stx with
    | .node _ k _    =>
      if k == nullKind then
        Term.withoutTacticIncrementality true <| withTacticInfoContext stx do
          stx.getArgs.forM evalGrindTactic
      else withTraceNode `Elab.step (fun _ => return stx) (tag := stx.getKind.toString) do
        let evalFns := grindTacElabAttribute.getEntries (← getEnv) stx.getKind
        let macros  := macroAttribute.getEntries (← getEnv) stx.getKind
        if evalFns.isEmpty && macros.isEmpty then
          throwErrorAt stx "Grind tactic `{stx.getKind}` has not been implemented"
        let s ← Grind.saveState
        expandEval s macros evalFns #[]
    | .missing => pure ()
    | _ => throwError m!"Unexpected grind tactic{indentD stx}"
where
    throwExs (failures : Array EvalTacticFailure) : GrindTacticM Unit := do
     if h : 0 < failures.size  then
       -- For macros we want to report the error from the first registered / last tried rule (#3770)
       let fail := failures[failures.size - 1]
       fail.state.restore (restoreInfo := true)
       throw fail.exception
     else
       throwErrorAt stx "Unexpected syntax{indentD stx}"

    @[inline] handleEx (s : SavedState) (failures : Array EvalTacticFailure) (ex : Exception) (k : Array EvalTacticFailure → GrindTacticM Unit) := do
      match ex with
      | .error .. =>
        trace[Elab.tactic.backtrack] ex.toMessageData
        let failures := failures.push ⟨ex, ← Grind.saveState⟩
        s.restore (restoreInfo := true); k failures
      | .internal id _ =>
        if id == unsupportedSyntaxExceptionId then
          -- We do not store `unsupportedSyntaxExceptionId`, see throwExs
          s.restore (restoreInfo := true); k failures
        else if id == abortTacticExceptionId then
          for msg in (← Core.getMessageLog).toList do
            trace[Elab.tactic.backtrack] msg.data
          let failures := failures.push ⟨ex, ← Grind.saveState⟩
          s.restore (restoreInfo := true); k failures
        else
          throw ex -- (*)

    expandEval (s : SavedState) (macros : List _) (evalFns : List _)
        (failures : Array EvalTacticFailure) : GrindTacticM Unit :=
      match macros with
      | [] => eval s evalFns failures
      | m :: ms =>
        try
          withReader ({ · with elaborator := m.declName }) do
            withTacticInfoContext stx do
              let stx' ← adaptMacro m.value stx
              evalGrindTactic stx'
        catch ex => handleEx s failures ex (expandEval s ms evalFns)

    eval (s : SavedState) (evalFns : List _) (failures : Array EvalTacticFailure) : GrindTacticM Unit := do
      match evalFns with
      | []              => throwExs failures
      | evalFn::evalFns => do
        try
          Term.withoutTacticIncrementality true do
          withReader ({ · with elaborator := evalFn.declName }) do
          withTacticInfoContext stx do
            evalFn.value stx
        catch ex => handleEx s failures ex (eval s evalFns)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantca2c10857712cbf8df34babfb639b3a86e973364a2ac5ea2c35243526db3e6f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantca2c10857712cbf8df34babfb639b3a86e973364a2ac5ea2c35243526db3e6f9.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `613179b28721a82743286336c81bbbea45f64052` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
