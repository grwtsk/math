# tryElabForwardApp?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:87dc64208ef83b203237cc73a35383b01af7ef66d4fd9adb48341c36fd0f71b1",
  "kind": "def",
  "lexical_name": "tryElabForwardApp?",
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
  "slug": "tryelabforwardapp--cf4d11993e54888985267459",
  "source": {
    "blob": "da465511cdea040574e33b7394801bdcdebc7a81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 73,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant38cb99286641fbab0fa638216de52a7b99226024d86e6e9a1b55961fd38ed72d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf4d11993e54888985267459fbfc41264cb1eb5af65fb98b4f6891dcaad7e6ca",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant38cb99286641fbab0fa638216de52a7b99226024d86e6e9a1b55961fd38ed72d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:87dc64208ef83b203237cc73a35383b01af7ef66d4fd9adb48341c36fd0f71b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def tryElabForwardApp? (e : Term) (dec : DoElemCont) : DoElabM (Option Expr) := do
  let some (headApp, arg) := Forward.matchApp? e | return none
  let (forwarded, probeExpr) ← controlAtTermElabM fun _ => withFreshMacroScope do
    let forwardedStx ← `(?forwarded)
    let forwarded ← Term.elabTerm forwardedStx none
    let probeExpr ← Term.elabTerm (← `($headApp $forwardedStx)) none
    pure (forwarded, probeExpr)
  validateForwarder headApp forwarded probeExpr
  let bodyInfo ← InferControlInfo.ofSeq arg.body
  let forwarder ← EffectForwarder.ofCont bodyInfo dec
  let liftedBody ← controlAtTermElabM fun runInBase => do
    Term.elabFunBinders (arg.binders.map (·.raw)) none fun bsExpr _ => runInBase do
      mkLambdaFVars bsExpr (← forwarder.lift (elabDoSeq arg.body))
  unless ← forwarded.mvarId!.checkedAssign liftedBody do
    throwError "the lifted body's type does not match the wrapper's body slot type"
  -- NB: No `withDeadCode` wrap on `restoreCont`'s result, because it is unclear whether `body` is
  --     even called.
  return some (← (← forwarder.restoreCont).mkBindUnlessPure probeExpr)

end Lean.Elab.Do
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant38cb99286641fbab0fa638216de52a7b99226024d86e6e9a1b55961fd38ed72d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant38cb99286641fbab0fa638216de52a7b99226024d86e6e9a1b55961fd38ed72d.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da465511cdea040574e33b7394801bdcdebc7a81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
