# elabDoTry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c1baa513b6c0ee183954d30ca42ccd95a1c767a8698f65de7f4a30ff3893d0f3",
  "kind": "def",
  "lexical_name": "elabDoTry",
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
  "slug": "elabdotry--d6e283e96d2af7e19772a3b4",
  "source": {
    "blob": "d51be163905840afe79df51c87a66425ba9baeeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 53,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryCatch/Variant6bd50d4b6864dbd770abcf83f89debd440fbd59cf5652e633f3cade58159cef7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d6e283e96d2af7e19772a3b44baf245357ed6b61bc1b3e57510303fdc8877af1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryCatch/Variant6bd50d4b6864dbd770abcf83f89debd440fbd59cf5652e633f3cade58159cef7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c1baa513b6c0ee183954d30ca42ccd95a1c767a8698f65de7f4a30ff3893d0f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_doElem_elab Lean.Parser.Term.doTry] def elabDoTry : DoElab := fun stx dec => do
  let `(doTry| try $trySeq:doSeq $[$catches]* $[finally $finSeq?]?) := stx | throwUnsupportedSyntax
--  let `(doTry| try $trySeq:doSeq $[catch $xs $[: $eTypes?]? => $catchSeqs]* $[finally $finSeq?]?) := stx | throwUnsupportedSyntax
  checkMutVarsForShadowing <| catches.filterMap (fun | `(doCatch| catch $x:ident $[: $_]? => $_) => some x | _ => none)
  if catches.isEmpty && finSeq?.isNone then
    throwError "Invalid `try`. There must be a `catch` or `finally`."
  -- We cannot use join points because `tryCatch` and `tryFinally` are never tail-resumptive.
  -- (Proof: `do tryCatch e h; throw x ≠ tryCatch (do e; throw x) (fun e => do h e; throw x)`)
  -- This is also known as the "algebraicity property" in the algebraic effects and handlers
  -- community.
  --
  -- So we need to pack up our effects and unpack them after the `try`.
  -- We could optimize for the terminal action case by omitting the state tuple ... in the future.
  let mi := (← read).monadInfo
  let info ← inferControlInfoElem stx
  let lifter ← EffectForwarder.ofCont info dec
  let body ← do
    let body ← lifter.lift (elabDoSeq trySeq)
    let body ← catches.foldlM (init := body) fun body catch_ => do
      match catch_ with
      | `(doCatchMatch| catch $matchAlts) =>
        elabDoCatch lifter body (← `(doCatch| catch x => match x with $matchAlts))
      | `(doCatch| $catch_) =>
        elabDoCatch lifter body catch_
    match finSeq? with
      | none => pure body
      | some finSeq => do
        let β ← mkFreshResultType `β
        Term.registerMVarErrorHoleInfo β.mvarId! finSeq
        let fin ← enterFinally β <| elabDoSeq finSeq (← DoElemCont.mkPure β)
        let instMonadFinally ← Term.mkInstMVar <| mkApp (mkConst ``MonadFinally [mi.u, mi.v]) mi.m
        let instFunctor ← Term.mkInstMVar <| mkApp (mkConst ``Functor [mi.u, mi.v]) mi.m
        pure <| mkApp7 (mkConst ``tryFinally [mi.u, mi.v])
          mi.m lifter.liftedDoBlockResultType β instMonadFinally instFunctor body fin
  -- `info` already combines try and catch arms via `ControlInfo.alternative`,
  -- so its `noFallthrough` is the right liveness signal for the continuation.
  ((← lifter.restoreCont).withDeadCodeFromInfo info).mkBindUnlessPure body
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryCatch/Variant6bd50d4b6864dbd770abcf83f89debd440fbd59cf5652e633f3cade58159cef7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryCatch/Variant6bd50d4b6864dbd770abcf83f89debd440fbd59cf5652e633f3cade58159cef7.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d51be163905840afe79df51c87a66425ba9baeeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
