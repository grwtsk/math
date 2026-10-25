# elabMVCGen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c52f6ee15592e358bbe91733cb4088250649fb493b8df44e995982b36c52b3ce",
  "kind": "def",
  "lexical_name": "elabMVCGen",
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
  "slug": "elabmvcgen--9a4007d0ebb25514b6b1c2e2",
  "source": {
    "blob": "964b9a3545181fb2bd21a38d7eac3761854f7eb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 498,
    "line": 462,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variante207f6e703628b9da8f7d751ddf3a4d588803983c65b2c416b363020629bb6bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9a4007d0ebb25514b6b1c2e2a54ee6b5ff11369830a6954463bf050f09bf5826",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variante207f6e703628b9da8f7d751ddf3a4d588803983c65b2c416b363020629bb6bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c52f6ee15592e358bbe91733cb4088250649fb493b8df44e995982b36c52b3ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 462–498.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabMVCGen : Tactic := fun stx => withMainContext do
  if mvcgen.warning.get (← getOptions) then
    logWarningAt stx "The `mvcgen` tactic is experimental and still under development. Avoid using it in production projects."
  let ctx ← mkSpecContext stx[1] stx[2]
  let fuel := match ctx.config.stepLimit with
    | some n => .limited n
    | none => .unlimited
  let goal ← getMainGoal
  let goal ← if ctx.config.elimLets then elimLets goal else pure goal
  let { invariants, vcs } ← VCGen.genVCs goal ctx fuel
  trace[Elab.Tactic.Do.vcgen] "after genVCs {← (invariants ++ vcs).mapM fun m => m.getTag}"
  let runOnVCs (tac : TSyntax `tactic) (extraMsg : MessageData) (vcs : Array MVarId) : TermElabM (Array MVarId) :=
    vcs.flatMapM fun vc =>
      tryCatchRuntimeEx
        (List.toArray <$> Term.withSynthesize do
          Tactic.run vc (Tactic.evalTactic tac *> Tactic.pruneSolvedGoals))
        (fun ex => throwError "Error while running {tac} on {vc}Message: {indentD ex.toMessageData}\n{extraMsg}")
  let invariants ←
    if ctx.config.leave then runOnVCs (← `(tactic| try mleave)) "Try again with -leave." invariants else pure invariants
  trace[Elab.Tactic.Do.vcgen] "before elabInvariants {← (invariants ++ vcs).mapM fun m => m.getTag}"
  elabInvariants stx[3] invariants (suggestInvariant vcs)
  let invariants ← invariants.filterM (not <$> ·.isAssigned)
  trace[Elab.Tactic.Do.vcgen] "before trying trivial VCs {← (invariants ++ vcs).mapM fun m => m.getTag}"
  let vcs ← do
    let vcs ← if ctx.config.trivial then runOnVCs (← `(tactic| try mvcgen_trivial)) "Try again with -trivial." vcs else pure vcs
    let vcs ← if ctx.config.leave then runOnVCs (← `(tactic| try mleave)) "Try again with -leave." vcs else pure vcs
    pure vcs
  -- Eliminating lets here causes some metavariables in `mkFreshPair_triple` to become nonassignable
  -- so we don't do it. Presumably some weird delayed assignment thing is going on.
  -- let vcs ← if ctx.config.elimLets then liftMetaM <| vcs.mapM elimLets else pure vcs
  trace[Elab.Tactic.Do.vcgen] "before elabVCs {← (invariants ++ vcs).mapM fun m => m.getTag}"
  let vcs ← elabVCs stx[4] vcs
  trace[Elab.Tactic.Do.vcgen] "before replacing main goal {← (invariants ++ vcs).mapM fun m => m.getTag}"
  replaceMainGoal (invariants ++ vcs).toList
  -- trace[Elab.Tactic.Do.vcgen] "replaced main goal, new: {← getGoals}"

@[builtin_tactic Lean.Parser.Tactic.mvcgenHint]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variante207f6e703628b9da8f7d751ddf3a4d588803983c65b2c416b363020629bb6bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variante207f6e703628b9da8f7d751ddf3a4d588803983c65b2c416b363020629bb6bc.lean#L462).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `964b9a3545181fb2bd21a38d7eac3761854f7eb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
