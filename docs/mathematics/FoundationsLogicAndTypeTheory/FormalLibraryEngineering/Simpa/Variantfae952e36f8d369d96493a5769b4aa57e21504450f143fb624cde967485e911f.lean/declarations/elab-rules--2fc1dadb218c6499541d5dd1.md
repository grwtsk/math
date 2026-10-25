# Anonymous elab_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:81ecf07d5236fe5aad352f0035ad00528664fc0e2a17c8ef4b98c150d9463986",
  "kind": "elab_rules",
  "lexical_name": null,
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
  "slug": "elab-rules--2fc1dadb218c6499541d5dd1",
  "source": {
    "blob": "0ae674f872f399ca787016a020270af02e864607",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 116,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simpa/Variantfae952e36f8d369d96493a5769b4aa57e21504450f143fb624cde967485e911f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2fc1dadb218c6499541d5dd1b58d49f0d8171315e29f495829d36a5bbd82b479",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simpa/Variantfae952e36f8d369d96493a5769b4aa57e21504450f143fb624cde967485e911f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:81ecf07d5236fe5aad352f0035ad00528664fc0e2a17c8ef4b98c150d9463986`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab_rules : tactic
| `(tactic| simpa%$tk $[?%$squeeze]? $[!%$unfold]? $(cfg)? $(disch)? $[only%$only]?
      $[[$args,*]]? $[using $usingArg]?) => Elab.Tactic.focus do
  let stx ← `(tactic| simp $(cfg)? $(disch)? $[only%$only]? $[[$args,*]]?)
  let { ctx, dischargeWrapper } ← withMainContext <| mkSimpContext stx (eraseLocal := false)
  let ctx := if unfold.isSome then { ctx with config.autoUnfold := true } else ctx
  -- TODO: have `simpa` fail if it doesn't use `simp`.
  let ctx := { ctx with config := { ctx.config with failIfUnchanged := false } }
  dischargeWrapper.with fun discharge? => do
    let (some (_, g), usedSimps) ←
        simpGoal (← getMainGoal) ctx (simplifyTarget := true) (discharge? := discharge?)
      | if getLinterUnnecessarySimpa (← getOptions) then
          logLint linter.unnecessarySimpa (← getRef) "try 'simp' instead of 'simpa'"
    g.withContext do
    let usedSimps ← if let some stx := usingArg then
      setGoals [g]
      g.withContext do
      let e ← Tactic.elabTerm stx none (mayPostpone := true)
      let (h, g) ← if let .fvar h ← instantiateMVars e then
        pure (h, g)
      else
        (← g.assert `h (← inferType e) e).intro1
      let (result?, usedSimps) ← simpGoal g ctx (fvarIdsToSimp := #[h])
        (simplifyTarget := false) (usedSimps := usedSimps) (discharge? := discharge?)
      match result? with
      | some (xs, g) =>
        let h := match xs with | #[h] | #[] => h | _ => unreachable!
        let name ← mkFreshBinderNameForTactic `h
        let g ← g.rename h name
        g.assign <|← g.withContext do
          Tactic.elabTermEnsuringType (mkIdent name) (← g.getType)
      | none =>
        if getLinterUnnecessarySimpa (← getOptions) then
          if (← getLCtx).getRoundtrippingUserName? h |>.isSome then
            logLint linter.unnecessarySimpa (← getRef)
              m!"try 'simp at {Expr.fvar h}' instead of 'simpa using {Expr.fvar h}'"
      pure usedSimps
    else if let some ldecl := (← getLCtx).findFromUserName? `this then
      if let (some (_, g), usedSimps) ← simpGoal g ctx (fvarIdsToSimp := #[ldecl.fvarId])
          (simplifyTarget := false) (usedSimps := usedSimps) (discharge? := discharge?) then
        g.assumption; pure usedSimps
      else
        pure usedSimps
    else
      g.assumption; pure usedSimps
    if tactic.simp.trace.get (← getOptions) || squeeze.isSome then
      let stx ← match ← mkSimpOnly stx usedSimps with
        | `(tactic| simp $(cfg)? $(disch)? $[only%$only]? $[[$args,*]]?) =>
          if unfold.isSome then
            `(tactic| simpa! $(cfg)? $(disch)? $[only%$only]? $[[$args,*]]? $[using $usingArg]?)
          else
            `(tactic| simpa $(cfg)? $(disch)? $[only%$only]? $[[$args,*]]? $[using $usingArg]?)
        | _ => unreachable!
      TryThis.addSuggestion tk stx (origSpan? := ← getRef)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simpa/Variantfae952e36f8d369d96493a5769b4aa57e21504450f143fb624cde967485e911f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simpa/Variantfae952e36f8d369d96493a5769b4aa57e21504450f143fb624cde967485e911f.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ae674f872f399ca787016a020270af02e864607` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
