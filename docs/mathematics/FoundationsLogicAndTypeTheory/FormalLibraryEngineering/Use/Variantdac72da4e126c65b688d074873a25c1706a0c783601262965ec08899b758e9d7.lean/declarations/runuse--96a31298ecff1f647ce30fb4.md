# runUse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:31001264d8f1645928ec484c60b0da46931f2608e0c03b8a359643a8b5a0c6b4",
  "kind": "def",
  "lexical_name": "runUse",
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
  "slug": "runuse--96a31298ecff1f647ce30fb4",
  "source": {
    "blob": "82fee93d123f268e392bed728b3f2b47b282021f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 125,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Use/Variantdac72da4e126c65b688d074873a25c1706a0c783601262965ec08899b758e9d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96a31298ecff1f647ce30fb40205fb3aa11aab91cde23c2841c6837d8546282f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Use/Variantdac72da4e126c65b688d074873a25c1706a0c783601262965ec08899b758e9d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:31001264d8f1645928ec484c60b0da46931f2608e0c03b8a359643a8b5a0c6b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def runUse (eager : Bool) (discharger : TacticM Unit) (args : List Term) : TacticM Unit := do
  let egoals ← focus do
    let (egoals, acc, insts) ← useLoop eager (← getGoals) args [] []
    -- Try synthesizing instance arguments
    for inst in insts do
      if !(← inst.isAssigned) then
        discard <| observing? do inst.assign (← synthInstance (← inst.getType))
    -- Set the goals.
    setGoals (egoals ++ acc)
    pruneSolvedGoals
    pure egoals
  -- Run the discharger on non-assigned proposition metavariables
  -- (`trivial` uses `assumption`, which isn't great for non-propositions)
  for g in egoals do
    if !(← g.isAssigned) then
      if ← isProp (← g.getType) then
        trace[tactic.use] "running discharger on {g}"
        discard <| run g discharger

/-- Default discharger to try to use for the `use` and `use!` tactics.
This is similar to the `trivial` tactic but doesn't do things like `contradiction` or `decide`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Use/Variantdac72da4e126c65b688d074873a25c1706a0c783601262965ec08899b758e9d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Use/Variantdac72da4e126c65b688d074873a25c1706a0c783601262965ec08899b758e9d7.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82fee93d123f268e392bed728b3f2b47b282021f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
