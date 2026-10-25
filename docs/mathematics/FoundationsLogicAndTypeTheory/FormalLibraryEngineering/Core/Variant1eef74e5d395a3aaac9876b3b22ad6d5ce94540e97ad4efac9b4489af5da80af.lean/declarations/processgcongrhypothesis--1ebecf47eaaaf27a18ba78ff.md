# processGCongrHypothesis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a095771486d142a4b4c9c53b91433651ee9d341056ec89a202820fbf68204dd7",
  "kind": "def",
  "lexical_name": "processGCongrHypothesis",
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
  "slug": "processgcongrhypothesis--1ebecf47eaaaf27a18ba78ff",
  "source": {
    "blob": "ab49a281dea040b7acb0241da450ca4b497e2c57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 232,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1eef74e5d395a3aaac9876b3b22ad6d5ce94540e97ad4efac9b4489af5da80af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1ebecf47eaaaf27a18ba78ff4ff5ae220774261731b9a507c21be295fcb91ce4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1eef74e5d395a3aaac9876b3b22ad6d5ce94540e97ad4efac9b4489af5da80af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a095771486d142a4b4c9c53b91433651ee9d341056ec89a202820fbf68204dd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def processGCongrHypothesis (goal : MVarId) (forward : Bool)
    (config : Config) : GRewriteM Bool := do
  -- If the local context was not changed, we don't need to modify the local contexts.
  if (← goal.getDecl).lctx.numIndices == (← getLCtx).numIndices then
    processGCongrHypothesisAux goal forward config
  else
  let outerLCtx ← getLCtx
  goal.withContext do
  -- We can only modify the metavariable local contexts if no match has happened yet.
  if (← get).progress matches .noMatch then
    let mctx ← getMCtx
    let lctx ← getLCtx
    setMCtx <| (← read).mvarIds.foldl (init := mctx) fun mctx (mvarId, decls) ↦
      -- Create a local context for `mvarId` by adding `decls` to the current local context.
      let lctx := decls.foldl (·.addDecl ·) lctx
      { mctx with decls := mctx.decls.insert mvarId { mctx.getDecl mvarId with lctx } }
    let result ← processGCongrHypothesisAux goal forward config
    if (← get).progress matches .noMatch then
      -- If we still don't have a match, then revert the changes to the metavariable local contexts.
      setMCtx mctx
    else
      -- If we did get a match, then we might be exiting the scope where this rewrite makes sense,
      -- in which case we should not rewrite any more.
      let validInOuterLCtx ← (← read).mvarIds.allM fun (mvarId, _) ↦ do
        let some val ← getExprMVarAssignment? mvarId | return false
        return (Lean.collectFVars {} val).fvarIds.all outerLCtx.contains
      unless validInOuterLCtx do
        modify ({ · with progress := .matchedOutOfScope (← getLCtx) })
    return result
  else
    processGCongrHypothesisAux goal forward config

/-- Apply the `gcongr` lemma to the goal. The main subgoals are visited for rewriting in,
and otherwise closed `by rfl`. If at least one rewrite has happened, we commit to this lemma,
and we try to discharge the side goals.

Returns whether we have done a rewrite in this subgoal, in which case it has been closed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1eef74e5d395a3aaac9876b3b22ad6d5ce94540e97ad4efac9b4489af5da80af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1eef74e5d395a3aaac9876b3b22ad6d5ce94540e97ad4efac9b4489af5da80af.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab49a281dea040b7acb0241da450ca4b497e2c57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
