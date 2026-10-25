# rwMatcher

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b88d4a712ea241e17f6c678e75f27bbf45f3598877c073d9bac11190a9502d9b",
  "kind": "def",
  "lexical_name": "rwMatcher",
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
  "slug": "rwmatcher--19b2c81fbaefd770e4b6d6ee",
  "source": {
    "blob": "abf51e233f5acbc835f106d2231f803828aa1ec2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 75,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantfa01c4d8523c1c673656b5d784e80f8389e32f345b431c76e997bb3c2d2c2738.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:19b2c81fbaefd770e4b6d6ee5bc609891767407670f201312f8e9cb8f3fe27f9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantfa01c4d8523c1c673656b5d784e80f8389e32f345b431c76e997bb3c2d2c2738.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b88d4a712ea241e17f6c678e75f27bbf45f3598877c073d9bac11190a9502d9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rwMatcher (altIdx : Nat) (e : Expr) : MetaM Simp.Result := do
  if e.isAppOf ``PSum.casesOn || e.isAppOf ``PSigma.casesOn then
    let mut e := e
    while true do
      if let some e' ← reduceRecMatcher? e then
          e := e'.headBeta
      else
        let e' := e.headBeta
        if e != e' then
          e := e'
        else
          break
    return { expr := e }
  else
    unless (← isMatcherApp e) do
      trace[Meta.Match.debug] "Not a matcher application:{indentExpr e}"
      return { expr := e }
    let matcherDeclName := e.getAppFn.constName!
    let eqns ← Match.genMatchCongrEqns matcherDeclName
    unless altIdx < eqns.size do
      trace[Meta.Match.debug] "When trying to reduce arm {altIdx}, only {eqns.size} equations for {.ofConstName matcherDeclName}"
      return { expr := e }
    let eqnThm := eqns[altIdx]!
    try
      withTraceNode `Meta.Match.debug (fun _ => pure m!"rewriting with {.ofConstName eqnThm} in{indentExpr e}") do
      let eqProof := mkAppN (mkConst eqnThm e.getAppFn.constLevels!) e.getAppArgs
      let (hyps, _, eqType) ← forallMetaTelescope (← inferType eqProof)
      trace[Meta.Match.debug] "eqProof has type{indentExpr eqType}"
      let proof := mkAppN eqProof hyps
      let hyps := hyps.map (·.mvarId!)
      let (isHeq, lhs, rhs) ← do
        if let some (_, lhs, _, rhs) := eqType.heq? then pure (true, lhs, rhs) else
        if let some (_, lhs, rhs) := eqType.eq? then pure (false, lhs, rhs) else
        throwError m!"Type of `{.ofConstName eqnThm}` is not an equality"
      if !(← isDefEq e lhs) then
        throwError m!"Left-hand side `{lhs}` of `{.ofConstName eqnThm}` does not apply to `{e}`"
      /-
      Here we instantiate the hypotheses of the congruence equation theorem
      There are two sets of hypotheses to instantiate:
      - `Eq` or `HEq` that relate the discriminants to the patterns
        Solving these should instantiate the pattern variables.
      - Overlap hypotheses (`isEqnThmHypothesis`)
      With more book keeping we could maybe do this very precisely, knowing exactly
      which facts provided by the splitter should go where, but it's tedious.
      So for now let's use heuristics and try `assumption` and `rfl`.
      -/
      for h in hyps do
        unless (← h.isAssigned) do
          let hType ← h.getType
          if Simp.isEqnThmHypothesis hType then
            -- Using unrestricted h.substVars here does not work well; it could
            -- even introduce a dependency on the `oldIH` we want to eliminate
            h.assumption <|> throwError "Failed to discharge `{h}`"
          else if hType.isEq then
            h.assumption <|> h.refl <|> throwError m!"Failed to resolve `{h}`"
          else if hType.isHEq then
            h.assumption <|> h.hrefl <|> throwError m!"Failed to resolve `{h}`"
      let unassignedHyps ← hyps.filterM fun h => return !(← h.isAssigned)
      unless unassignedHyps.isEmpty do
        throwError m!"Not all hypotheses of `{.ofConstName eqnThm}` could be discharged: {unassignedHyps}"
      let rhs ← instantiateMVars rhs
      let proof ← instantiateMVars proof
      let proof ← if isHeq then
          try mkEqOfHEq proof
          catch e => throwError m!"Could not un-HEq `{proof}`:{indentD e.toMessageData} "
        else
          pure proof
      return {
        expr := rhs
        proof? := proof
      }
    catch ex =>
      trace[Meta.Match.debug] "Failed to apply {.ofConstName eqnThm}:{indentD ex.toMessageData}"
      return { expr := e }
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantfa01c4d8523c1c673656b5d784e80f8389e32f345b431c76e997bb3c2d2c2738.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantfa01c4d8523c1c673656b5d784e80f8389e32f345b431c76e997bb3c2d2c2738.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abf51e233f5acbc835f106d2231f803828aa1ec2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
