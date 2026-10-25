# elim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e0ce16bdbed28718347882022aab5424d8cea93e31cfa4862112e6d572bca00",
  "kind": "def",
  "lexical_name": "elim",
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
  "slug": "elim--10ef302e644defc79739facd",
  "source": {
    "blob": "40375ef5a0984029128389749da32edd18675dc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 59,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contradiction/Variantf3a692210f565fccf9f83e27653b9ba4bd94dfc186fa1fae1104df9be9c57c6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:10ef302e644defc79739facd072fc15276117bdac43dbe4a62b57c12aeb135c2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contradiction/Variantf3a692210f565fccf9f83e27653b9ba4bd94dfc186fa1fae1104df9be9c57c6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e0ce16bdbed28718347882022aab5424d8cea93e31cfa4862112e6d572bca00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def elim (mvarId : MVarId) (fvarId : FVarId) : M Bool := do
  if (← get) == 0 then
    trace[Meta.Tactic.contradiction] "elimEmptyInductive out-of-fuel"
    return false
  modify (· - 1)
  -- We only consider inductives with no constructors and indexed families
  commitWhen do
    let subgoals ← try mvarId.cases fvarId catch ex => trace[Meta.Tactic.contradiction] "{ex.toMessageData}"; return false
    trace[Meta.Tactic.contradiction] "elimEmptyInductive, number subgoals: {subgoals.size}"
    for subgoal in subgoals do
      -- If one of the fields is uninhabited, then we are done
      let found ← subgoal.mvarId.withContext do
        for field in subgoal.fields do
          let field := subgoal.subst.apply field
          if field.isFVar then
            if (← isElimEmptyInductiveCandidate field.fvarId!) then
              if (← elim subgoal.mvarId field.fvarId!) then
                return true
        return false
      unless found do
        return false
    return true

end ElimEmptyInductive

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contradiction/Variantf3a692210f565fccf9f83e27653b9ba4bd94dfc186fa1fae1104df9be9c57c6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contradiction/Variantf3a692210f565fccf9f83e27653b9ba4bd94dfc186fa1fae1104df9be9c57c6f.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40375ef5a0984029128389749da32edd18675dc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
