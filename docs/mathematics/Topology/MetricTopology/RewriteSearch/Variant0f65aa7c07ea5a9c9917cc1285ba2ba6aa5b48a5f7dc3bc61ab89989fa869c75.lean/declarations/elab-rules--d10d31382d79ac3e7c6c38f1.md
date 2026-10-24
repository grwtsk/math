# Anonymous elab_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4541f5a534d42b1d3eb4cb80f51f6f9c17ccab7d0e5ac5f9a34139f38355d926",
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
  "slug": "elab-rules--d10d31382d79ac3e7c6c38f1",
  "source": {
    "blob": "b82f207e7111d1043404195a3fea09cd64293172",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 317,
    "path": "GRWTSK/Topology/MetricTopology/RewriteSearch/Variant0f65aa7c07ea5a9c9917cc1285ba2ba6aa5b48a5f7dc3bc61ab89989fa869c75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d10d31382d79ac3e7c6c38f187436003f4e56da7e11cdffdfb99522f736fe6ee",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/RewriteSearch/Variant0f65aa7c07ea5a9c9917cc1285ba2ba6aa5b48a5f7dc3bc61ab89989fa869c75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4541f5a534d42b1d3eb4cb80f51f6f9c17ccab7d0e5ac5f9a34139f38355d926`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab_rules : tactic |
    `(tactic| rw_search%$tk $[[ $[-$forbidden],* ]]?) => withMainContext do
  let forbidden : NameSet :=
    ((forbidden.getD #[]).map Syntax.getId).foldl (init := ∅) fun s n => s.insert n
  let .some init ← SearchNode.init (← getMainGoal) | throwError "Goal is not an equality."
  let results := init.search (forbidden := forbidden) |>.whileAtLeastHeartbeatsPercent 20
  let results ← results.force
  let min ← match results with
  | [] => failure
  | h :: t =>
      pure <| t.foldl (init := h) fun r₁ r₂ =>
        if r₁.rfl? = some true then r₁
        else if r₂.rfl? = some true then r₂
        else if r₁.dist?.getD 0 ≤ r₂.dist?.getD 0 then r₁ else r₂
  let state ← saveState
  setMCtx min.mctx
  replaceMainGoal [min.goal]
  let type? ← if min.rfl? = some true then pure none else do pure <| some (← min.goal.getType)
  addRewriteSuggestion tk (min.history.toList.map (·.2))
    type?.toLOption (origSpan? := ← getRef) (checkState? := state)

end RewriteSearch

end Mathlib.Tactic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/RewriteSearch/Variant0f65aa7c07ea5a9c9917cc1285ba2ba6aa5b48a5f7dc3bc61ab89989fa869c75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/RewriteSearch/Variant0f65aa7c07ea5a9c9917cc1285ba2ba6aa5b48a5f7dc3bc61ab89989fa869c75.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b82f207e7111d1043404195a3fea09cd64293172` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
