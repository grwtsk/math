# evalClearValue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a05e7bdc230461555f83c57bc94a1654a5cd71323d0471941376154b9d009d0",
  "kind": "def",
  "lexical_name": "evalClearValue",
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
  "slug": "evalclearvalue--48e63653a1b6bb8963e8aef7",
  "source": {
    "blob": "33b1ad92faeeedea2580823a3a9656fcec893769",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 491,
    "line": 427,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:48e63653a1b6bb8963e8aef7d723cfd71bee985eee32079d917106eeb4ca2219",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1a05e7bdc230461555f83c57bc94a1654a5cd71323d0471941376154b9d009d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 427–491.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_tactic Lean.Parser.Tactic.clearValue] def evalClearValue : Tactic := fun stx => do
  let args : TSyntaxArray ``Parser.Tactic.clearValueArg := TSyntaxArray.mk stx[1].getArgs
  withMainContext do
    -- Elaboration phase
    let mvarCounterSaved := (← getMCtx).mvarCounter
    let mut fvarIds : Array FVarId := #[]
    let mut hasStar := false
    let mut hypStxs : Array Syntax := #[]
    let mut hyps : Array Hypothesis := #[]
    let pushFVarId (fvarIds : Array FVarId) (x : Term) (fvarId : FVarId) : TacticM (Array FVarId) := do
      unless ← fvarId.isLetVar do
        throwErrorAt x "Hypothesis `{mkFVar fvarId}` is not a local definition."
      if fvarIds.contains fvarId then
        throwErrorAt x "Hypothesis `{mkFVar fvarId}` appears multiple times."
      return fvarIds.push fvarId
    for arg in args do
      match arg with
      | `(clearValueArg| *) =>
        if hasStar then
          throwErrorAt arg "Multiple `*` arguments provided."
        hasStar := true
      | `(clearValueArg| ($h : $x = $v)) =>
        let fvarId ← getFVarId x
        fvarIds ← pushFVarId fvarIds x fvarId
        let e := (← fvarId.getValue?).get!
        let e' ← Tactic.elabTermEnsuringType v (← fvarId.getType)
        unless ← withAssignableSyntheticOpaque <| isDefEq e e' do
          let (e, e') ← addPPExplicitToExposeDiff e e'
          throwErrorAt v "Provided term{indentExpr e'}\n\
            is not definitionally equal to{indentD m!"{Expr.fvar fvarId} := {e}"}"
        let mvars ← filterOldMVars (← getMVars e') mvarCounterSaved
        logUnassignedAndAbort mvars
        let userName ← match h with
          | `(binderIdent| $n:ident) => pure n.raw.getId
          | _ => mkFreshBinderNameForTactic `h
        let type ← mkEq (Expr.fvar fvarId) e'
        let value := mkExpectedPropHint (← mkEqRefl (Expr.fvar fvarId)) type
        hyps := hyps.push { userName, type, value }
        hypStxs := hypStxs.push h
      | `(clearValueArg| $x:term) =>
        let fvarId ← getFVarId x
        fvarIds ← pushFVarId fvarIds x fvarId
      | _ => throwUnsupportedSyntax
    -- Clearing phase
    let mut g ← popMainGoal
    let (hypFVarIds, g') ← g.assertHypotheses hyps
    g := g'
    g.withContext do
      for hypStx in hypStxs, hypFVarId in hypFVarIds do
        Term.addTermInfo' (isBinder := true) hypStx (Expr.fvar hypFVarId)
    let toClear ← g.withContext do
      if hasStar then pure <| (← getLocalHyps).map Expr.fvarId!
      else sortFVarIds fvarIds
    let mut succeeded := false
    for fvarId in toClear.reverse do
      try
        g ← g.clearValue fvarId
        succeeded := true
      catch _ =>
        if fvarIds.contains fvarId then
          g.withContext do throwError "Tactic `clear_value` failed, the value of `{Expr.fvar fvarId}` cannot be cleared.\n{g}"
    unless succeeded do
      g.withContext do throwError "Tactic `clear_value` failed to clear any values.\n{g}"
    pushGoal g

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean#L427).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33b1ad92faeeedea2580823a3a9656fcec893769` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
