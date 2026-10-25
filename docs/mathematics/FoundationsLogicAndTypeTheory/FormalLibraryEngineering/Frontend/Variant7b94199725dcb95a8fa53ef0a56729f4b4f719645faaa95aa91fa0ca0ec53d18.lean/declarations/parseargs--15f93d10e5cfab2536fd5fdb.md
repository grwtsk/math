# parseArgs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c52539e3b56eef33b6a41ab84c90bdf9ac46bf9229be15f906d12d26cd5691ca",
  "kind": "def",
  "lexical_name": "parseArgs",
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
  "slug": "parseargs--15f93d10e5cfab2536fd5fdb",
  "source": {
    "blob": "50d694f071c8cecb8605609eb094a9ad12520edd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 362,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant7b94199725dcb95a8fa53ef0a56729f4b4f719645faaa95aa91fa0ca0ec53d18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:15f93d10e5cfab2536fd5fdb539b41386a9ad611d4a3170633ea4a743a3095c4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant7b94199725dcb95a8fa53ef0a56729f4b4f719645faaa95aa91fa0ca0ec53d18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c52539e3b56eef33b6a41ab84c90bdf9ac46bf9229be15f906d12d26cd5691ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 362–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def parseArgs (stx : Syntax) (goal : MVarId) : TermElabM ParsedArgs := goal.withContext do
  if mvcgen.warning.get (← getOptions) then
    logWarningAt stx "The `vcgen` tactic is an experimental drop-in replacement for `mvcgen` \
      that will eventually replace it. Avoid using it in production projects."
  let config ← runTacticM <| elabConfig stx[1]
  warnIgnoredConfig config
  -- `elimLets` defaults to `false` in `vcgen` (vs. `true` in upstream `mvcgen`):
  -- existing tests rely on let-bindings being preserved in VC local contexts so that
  -- `case vcN bs* =>` patterns line up. Re-enabling on opt-in would require detecting
  -- explicit `(elimLets := true)` at the syntax level (upstream `Config` can't
  -- distinguish "default true" from "user-set true"); not yet wired.
  let (ctx, scope) ← VCGen.mkContext stx[2] goal
  -- The program type, inferred once from the goal, is the expected type for the `frames`/`until`
  -- program patterns (so overloaded heads resolve). A goal with no program cannot be a `vcgen` goal.
  let some progTy ← VCGen.inferProgType? (← goal.getType)
    | throwError "vcgen: could not determine the program type of the goal"
  let frameProcs ← VCGen.getFrameProcs
  let untilPat? ← if stx[3].isNone then pure none
    else some <$> elabUntilPattern progTy ⟨stx[3][1]⟩
  let frameDB ← if stx[4].isNone then pure ({} : FrameDB)
    else elabFrameDB progTy stx[4][1].getArgs
  let invariantAlts? ← parseInvariantMap stx[5]
  let hypSimpMethods ← elabSimplifyingAssumptions stx[6]
  let ctx := { ctx with
    hypSimpMethods,
    frameProcs,
    latticeOps := VCGen.mkLatticeOpTable frameProcs.latticeOps,
    trivial := config.trivial,
    useJP := config.jp,
    errorOnMissingSpec := config.errorOnMissingSpec,
    debug := config.debug,
    internalize := config.internalize,
    invariantAlts := invariantAlts?.getD {},
    untilPat? }
  return { config, ctx, scope, invariantAlts?, frameDB }

/-- `vcgen` step inside `sym => …` blocks. -/
@[builtin_grind_tactic Lean.Parser.Tactic.Grind.vcgen]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant7b94199725dcb95a8fa53ef0a56729f4b4f719645faaa95aa91fa0ca0ec53d18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant7b94199725dcb95a8fa53ef0a56729f4b4f719645faaa95aa91fa0ca0ec53d18.lean#L362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50d694f071c8cecb8605609eb094a9ad12520edd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
