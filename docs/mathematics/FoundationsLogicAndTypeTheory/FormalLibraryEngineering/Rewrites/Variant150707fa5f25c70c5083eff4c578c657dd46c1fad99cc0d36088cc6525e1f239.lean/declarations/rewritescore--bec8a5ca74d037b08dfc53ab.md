# rewritesCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2f07b4ec8332c5bd02c7859379b7f3c11fc8d267493d460dde3dc28c80a562d",
  "kind": "def",
  "lexical_name": "rewritesCore",
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
  "slug": "rewritescore--bec8a5ca74d037b08dfc53ab",
  "source": {
    "blob": "a3a16b14d71ff1cfe2d002be266de87cb60fe680",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 177,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrites/Variant150707fa5f25c70c5083eff4c578c657dd46c1fad99cc0d36088cc6525e1f239.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bec8a5ca74d037b08dfc53abfdb80201e84188186bbaaab4ac80115351a48bbe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrites/Variant150707fa5f25c70c5083eff4c578c657dd46c1fad99cc0d36088cc6525e1f239.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2f07b4ec8332c5bd02c7859379b7f3c11fc8d267493d460dde3dc28c80a562d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rewritesCore (hyps : Array (Expr × Bool × Nat))
    (lemmas : DiscrTree (Name × Bool × Nat) s × DiscrTree (Name × Bool × Nat) s)
    (ctx : MetavarContext) (goal : MVarId) (target : Expr) :
    MLList MetaM RewriteResult := MLList.squash fun _ => do
  -- Get all lemmas which could match some subexpression
  let candidates := (← lemmas.1.getSubexpressionMatches target)
    ++ (← lemmas.2.getSubexpressionMatches target)

  -- Sort them by our preferring weighting
  -- (length of discriminant key, doubled for the forward implication)
  let candidates := candidates.insertionSort fun r s => r.2.2 > s.2.2

  -- Now deduplicate. We can't use `Array.deduplicateSorted` as we haven't completely sorted,
  -- and in fact want to keep some of the residual ordering from the discrimination tree.
  let mut forward : NameSet := ∅
  let mut backward : NameSet := ∅
  let mut deduped := #[]
  for (l, s, w) in candidates do
    if s then
      if ¬ backward.contains l then
        deduped := deduped.push (l, s, w)
        backward := backward.insert l
    else
      if ¬ forward.contains l then
        deduped := deduped.push (l, s, w)
        forward := forward.insert l

  trace[Tactic.rewrites.lemmas] m!"Candidate rewrite lemmas:\n{deduped}"

  -- Lift to a monadic list, so the caller can decide how much of the computation to run.
  let hyps := MLList.ofArray <| hyps.map fun ⟨hyp, symm, weight⟩ => (Sum.inl hyp, symm, weight)
  let lemmas := MLList.ofArray <| deduped.map fun ⟨lem, symm, weight⟩ => (Sum.inr lem, symm, weight)

  pure <| (hyps |>.append fun _ => lemmas).filterMapM fun ⟨lem, symm, weight⟩ => withMCtx ctx do
    let some expr ← (match lem with
    | .inl hyp => pure (some hyp)
    | .inr lem => try? <| mkConstWithFreshMVarLevels lem) | return none
    trace[Tactic.rewrites] m!"considering {if symm then "←" else ""}{expr}"
    let some result ← try? do goal.rewrite target expr symm
      | return none
    return if result.mvarIds.isEmpty then
      some ⟨expr, symm, weight, result, none, ← getMCtx⟩
    else
      -- TODO Perhaps allow new goals? Try closing them with solveByElim?
      -- A challenge is knowing what suggestions to print if we do so!
      none

/-- Find lemmas which can rewrite the goal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrites/Variant150707fa5f25c70c5083eff4c578c657dd46c1fad99cc0d36088cc6525e1f239.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrites/Variant150707fa5f25c70c5083eff4c578c657dd46c1fad99cc0d36088cc6525e1f239.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3a16b14d71ff1cfe2d002be266de87cb60fe680` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
