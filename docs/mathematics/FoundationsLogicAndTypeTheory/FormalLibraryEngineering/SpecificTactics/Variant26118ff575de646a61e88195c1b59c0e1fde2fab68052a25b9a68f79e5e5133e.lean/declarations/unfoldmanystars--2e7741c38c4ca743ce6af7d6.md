# unfoldManyStarS

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0656266fbf9904220ab90b625ccf5a1e2179a0485dd225a17c0a2adeb903e8bf",
  "kind": "def",
  "lexical_name": "unfoldManyStarS",
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
  "slug": "unfoldmanystars--2e7741c38c4ca743ce6af7d6",
  "source": {
    "blob": "0ca53b0f315c2a00b100c90a0cac0c7a65d935d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 334,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e7741c38c4ca743ce6af7d66c2b969cb45d2f3bf89def13375a62ea59c3873e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0656266fbf9904220ab90b625ccf5a1e2179a0485dd225a17c0a2adeb903e8bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unfoldManyStarS (goal : MVarId) (unfold? : Name → Option (Option Name))  :
    ScriptM (Option MVarId) :=
  goal.withContext do
    let initialGoal := goal
    let mut goal := goal
    if let some (goal', _) ← unfoldManyTargetS unfold? goal then
      goal := goal'
    for ldecl in (← goal.getDecl).lctx do
      if ldecl.isImplementationDetail then
        continue
      if let some (goal', _) ← unfoldManyAtS unfold? goal ldecl.fvarId then
        goal := goal'
    if goal == initialGoal then
      return none
    else
      return some goal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ca53b0f315c2a00b100c90a0cac0c7a65d935d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
