# evalSymVCGen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ec87be1b208f565f3699c223e1ebff51427bdfcb21ed7e844936b95de00f2524",
  "kind": "def",
  "lexical_name": "evalSymVCGen",
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
  "slug": "evalsymvcgen--c9d73c06f42dbfb98c45b6bf",
  "source": {
    "blob": "494f36ec6c9300d22a88632a31ac279aa14715a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 430,
    "line": 408,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc4e0fe30f55c3d3d1e68f6e0c376f8b0d10ecad17c9c26a0cb68cb1adcca8933.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c9d73c06f42dbfb98c45b6bff54bcb2d012b5a625eea9d49d57cba615989d29b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc4e0fe30f55c3d3d1e68f6e0c376f8b0d10ecad17c9c26a0cb68cb1adcca8933.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ec87be1b208f565f3699c223e1ebff51427bdfcb21ed7e844936b95de00f2524`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 408–430.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalSymVCGen : Lean.Elab.Tactic.Grind.GrindTactic := fun stx => do
  let goal ← Lean.Elab.Tactic.Grind.getMainGoal
  let args ← parseArgs stx goal.mvarId
  let result ← Lean.Elab.Tactic.Grind.liftGrindM do
    let result ← VCGen.run goal args.ctx args.scope args.config.stepLimit (frameDB := args.frameDB)
    if let some alts := args.invariantAlts? then
      elabRemainingInvariants alts result.invariants result.inlineHandledInvariants
    return result
  if let some frameStx := result.unmatchedFrames[0]? then
    throwErrorAt frameStx "`frames` alternative matched no program in the goal"
  if args.invariantAlts?.isNone then
    runTacticM (goals := result.invariants.toList) <|
      elabInvariants stx[5] result.invariants (suggestInvariant (result.vcs.map (·.mvarId)))
  let invariants ← result.invariants.filterM (not <$> ·.isAssigned)
  let newGoals ← Lean.Elab.Tactic.Grind.liftGrindM do
    let invGoals ← invariants.toList.mapM Grind.mkGoalCore
    return invGoals ++ result.vcs.toList
  Lean.Elab.Tactic.Grind.replaceMainGoal newGoals

/-- Validate the optional `with` clause of `vcgen`. It must be a `grind`-mode step so it can share
`vcgen`'s internalised E-graph; the `vcgenDischarge` category's `tactic` alternative is a catch-all
that exists only so a non-`grind` step is reported here with a helpful error rather than a raw
`expected grind` parser error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc4e0fe30f55c3d3d1e68f6e0c376f8b0d10ecad17c9c26a0cb68cb1adcca8933.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc4e0fe30f55c3d3d1e68f6e0c376f8b0d10ecad17c9c26a0cb68cb1adcca8933.lean#L408).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `494f36ec6c9300d22a88632a31ac279aa14715a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
