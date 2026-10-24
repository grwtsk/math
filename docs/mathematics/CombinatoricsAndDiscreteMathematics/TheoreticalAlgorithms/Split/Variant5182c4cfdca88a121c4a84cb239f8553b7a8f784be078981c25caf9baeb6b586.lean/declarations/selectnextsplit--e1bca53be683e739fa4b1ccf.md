# selectNextSplit?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2901795f4e554f1fa7cd509174b34fc6b1e5cfff7a90b927e5774fc590070a02",
  "kind": "def",
  "lexical_name": "selectNextSplit?",
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
  "slug": "selectnextsplit--e1bca53be683e739fa4b1ccf",
  "source": {
    "blob": "b43ce3f054bf56f72211b5d290ec1e7fce59a9bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 182,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variant5182c4cfdca88a121c4a84cb239f8553b7a8f784be078981c25caf9baeb6b586.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e1bca53be683e739fa4b1ccfe56434dbfe0399541a52477b33cf8e3b9f6ba4fd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variant5182c4cfdca88a121c4a84cb239f8553b7a8f784be078981c25caf9baeb6b586.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2901795f4e554f1fa7cd509174b34fc6b1e5cfff7a90b927e5774fc590070a02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectNextSplit? : GoalM SplitCandidate := do
  if (← isInconsistent) then return .none
  if (← checkMaxCaseSplit) then return .none
  go (← get).split.candidates .none []
where
  go (cs : List SplitInfo) (c? : SplitCandidate) (cs' : List SplitInfo) : GoalM SplitCandidate := do
    match cs with
    | [] =>
      modify fun s => { s with split.candidates := cs'.reverse }
      if let .some .. := c? then
        -- Remark: we reset `numEmatch` after each case split.
        -- We should consider other strategies in the future.
        modify fun s => { s with ematch.num := 0 }
      return c?
    | c::cs =>
    if !(← checkAnchorRefs c) then
      /-
      **Note**: `grind`s context contains anchor references restricting the
      case-splits that can be performed, and `c` does not matches any of
      the references provided.
      -/
      go cs c? cs'
    else
      trace_goal[grind.debug.split] "checking: {c.getExpr}"
      match (← checkSplitStatus c) with
      | .notReady => go cs c? (c::cs')
      | .resolved => go cs c? cs'
      | .ready numCases isRec tryPostpone =>
      if (← cheapCasesOnly) && numCases > 1 then
        go cs c? (c::cs')
      else match c? with
      | .none => go cs (.some c numCases isRec tryPostpone) cs'
      | .some c' numCases' _ tryPostpone' =>
      let isBetter : GoalM Bool := do
        if tryPostpone' && !tryPostpone then
          return true
        else if tryPostpone && !tryPostpone' then
          return false
        else if numCases == 1 && !isRec && numCases' > 1 then
          return true
        /-
        **Note**: We used to use `getGeneration c.getExpr` instead of `c.getGeneration`.
        This was incorrect. The expression returned by `c.getExpr` may have not been internalized yet.
        -/
        else if (← c.getGeneration) < (← c'.getGeneration) then
          return true
        return numCases < numCases'
      if (← isBetter) then
          go cs (.some c numCases isRec tryPostpone) (c'::cs')
        else
          go cs c? (c::cs')

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variant5182c4cfdca88a121c4a84cb239f8553b7a8f784be078981c25caf9baeb6b586.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variant5182c4cfdca88a121c4a84cb239f8553b7a8f784be078981c25caf9baeb6b586.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b43ce3f054bf56f72211b5d290ec1e7fce59a9bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
