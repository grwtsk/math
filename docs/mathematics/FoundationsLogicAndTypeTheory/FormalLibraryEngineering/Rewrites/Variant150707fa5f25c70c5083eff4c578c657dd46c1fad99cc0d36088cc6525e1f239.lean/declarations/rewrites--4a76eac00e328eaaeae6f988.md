# rewrites

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64a37225facfa799f7b027d2daf5eceadab4c1f1adf13b3a19b0ff7c54fa1490",
  "kind": "def",
  "lexical_name": "rewrites",
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
  "slug": "rewrites--4a76eac00e328eaaeae6f988",
  "source": {
    "blob": "a3a16b14d71ff1cfe2d002be266de87cb60fe680",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 225,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrites/Variant150707fa5f25c70c5083eff4c578c657dd46c1fad99cc0d36088cc6525e1f239.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a76eac00e328eaaeae6f9886db44852839c5fb95a75eea021e17bb3cd7beb78",
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

Occurrence: `declaration:64a37225facfa799f7b027d2daf5eceadab4c1f1adf13b3a19b0ff7c54fa1490`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rewrites (hyps : Array (Expr × Bool × Nat))
    (lemmas : DiscrTree (Name × Bool × Nat) s × DiscrTree (Name × Bool × Nat) s)
    (goal : MVarId) (target : Expr) (stopAtRfl : Bool := false) (max : Nat := 20)
    (leavePercentHeartbeats : Nat := 10) : MetaM (List RewriteResult) := do
  let results ← rewritesCore hyps lemmas (← getMCtx) goal target
    -- Don't report duplicate results.
    -- (TODO: we later pretty print results; save them here?)
    -- (TODO: a config flag to disable this,
    -- if distinct-but-pretty-print-the-same results are desirable?)
    |>.dedupBy (fun r => do pure <| (← ppExpr r.result.eNew).pretty)
    -- Stop if we find a rewrite after which `with_reducible rfl` would succeed.
    |>.mapM RewriteResult.computeRfl -- TODO could simply not compute this if `stopAtRfl` is False
    |>.takeUpToFirst (fun r => stopAtRfl && r.rfl? = some true)
    -- Don't use too many heartbeats.
    |>.whileAtLeastHeartbeatsPercent leavePercentHeartbeats
    -- Bound the number of results.
    |>.takeAsList max
  return match results.filter (fun r => stopAtRfl && r.rfl? = some true) with
  | [] =>
    -- TODO consider sorting the results,
    -- e.g. if we use solveByElim to fill arguments,
    -- prefer results using local hypotheses.
    results
  | results => results

open Lean.Parser.Tactic

/--
`rw?` tries to find a lemma which can rewrite the goal.

`rw?` should not be left in proofs; it is a search tool, like `apply?`.

Suggestions are printed as `rw [h]` or `rw [←h]`.
`rw?!` is the "I'm feeling lucky" mode, and will run the first rewrite it finds.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrites/Variant150707fa5f25c70c5083eff4c578c657dd46c1fad99cc0d36088cc6525e1f239.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrites/Variant150707fa5f25c70c5083eff4c578c657dd46c1fad99cc0d36088cc6525e1f239.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3a16b14d71ff1cfe2d002be266de87cb60fe680` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
