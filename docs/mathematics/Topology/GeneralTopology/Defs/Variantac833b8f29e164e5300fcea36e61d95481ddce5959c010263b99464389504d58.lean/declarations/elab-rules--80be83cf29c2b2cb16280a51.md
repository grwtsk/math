# Anonymous elab_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5f2279c330d4427493f11302f6bb4ce53c3e24a0aeec41f74261fd3f93fce900",
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
  "slug": "elab-rules--80be83cf29c2b2cb16280a51",
  "source": {
    "blob": "e54f4871a5be021db66b117afb5aa8489669a342",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 439,
    "line": 420,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:80be83cf29c2b2cb16280a51b9c592bcae79f75f5d9a3c98a775a2f6c8acda2b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5f2279c330d4427493f11302f6bb4ce53c3e24a0aeec41f74261fd3f93fce900`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 420–439.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab_rules : tactic
| `(tactic| filter_upwards $[[$[$args],*]]? $[with $wth*]? $[using $usingArg]?) => do
  let config : ApplyConfig := {newGoals := ApplyNewGoals.nonDependentOnly}
  for e in args.getD #[] |>.reverse do
    let goal ← getMainGoal
    replaceMainGoal <| ← goal.withContext <| runTermElab do
      let m ← mkFreshExprMVar none
      let lem ← Term.elabTermEnsuringType
        (← ``(Filter.mp_mem $e $(← Term.exprToSyntax m))) (← goal.getType)
      goal.assign lem
      return [m.mvarId!]
  liftMetaTactic fun goal => do
    goal.apply (← mkConstWithFreshMVarLevels ``Filter.univ_mem') config
  evalTactic <|← `(tactic| dsimp -zeta only [Set.mem_setOf_eq])
  if let some l := wth then
    evalTactic <|← `(tactic| intro $[$l]*)
  if let some e := usingArg then
    evalTactic <|← `(tactic| exact $e)

end Mathlib.Tactic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean#L420).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e54f4871a5be021db66b117afb5aa8489669a342` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
