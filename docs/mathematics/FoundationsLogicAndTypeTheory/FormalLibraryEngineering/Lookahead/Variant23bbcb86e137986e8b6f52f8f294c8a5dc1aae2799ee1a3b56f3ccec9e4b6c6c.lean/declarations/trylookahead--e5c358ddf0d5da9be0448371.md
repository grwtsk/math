# tryLookahead

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1b6853fc7b3a90d9ac947fb7a5e127edc424745776c5c287d250957d7e3bf04",
  "kind": "def",
  "lexical_name": "tryLookahead",
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
  "slug": "trylookahead--e5c358ddf0d5da9be0448371",
  "source": {
    "blob": "4cd6aae83aa1599728d161dbe5a010abe9c37a13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookahead/Variant23bbcb86e137986e8b6f52f8f294c8a5dc1aae2799ee1a3b56f3ccec9e4b6c6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e5c358ddf0d5da9be0448371ebafd613dacf7b66383313d0119dd4119d80b71d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookahead/Variant23bbcb86e137986e8b6f52f8f294c8a5dc1aae2799ee1a3b56f3ccec9e4b6c6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1b6853fc7b3a90d9ac947fb7a5e127edc424745776c5c287d250957d7e3bf04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def tryLookahead (e : Expr) : GoalM Bool :=
  withTheReader Grind.Context
    (fun ctx => { ctx with config.qlia := true, cheapCases := true }) do
  -- TODO: if `e` is an arithmetic expression, we can avoid creating an auxiliary goal.
  -- We can assert it directly to the arithmetic module.
  -- Remark: We can simplify this code because the lookahead only really worked for arithmetic.
  trace_goal[grind.lookahead.try] "{e}"
  let goal ← get
  let proof? ← withoutModifyingMCtx do
    let tag ← goal.mvarId.getTag
    let target ← mkArrow (mkNot e) (← getFalseExpr)
    let mvar ← mkFreshExprSyntheticOpaqueMVar target tag
    let goalAux := { goal with mvarId := mvar.mvarId!, newFacts := {} }
    let gen ← getGeneration e
    if (← solve goalAux gen).isNone then
      return some (← instantiateMVars mvar)
    else
      return none
  if let some proof := proof? then
    trace[grind.lookahead.assert] "{e}"
    pushEqTrue e <| mkApp2 (mkConst ``Grind.of_lookahead) e proof
    processNewFacts
    return true
  else
    return false

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookahead/Variant23bbcb86e137986e8b6f52f8f294c8a5dc1aae2799ee1a3b56f3ccec9e4b6c6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookahead/Variant23bbcb86e137986e8b6f52f8f294c8a5dc1aae2799ee1a3b56f3ccec9e4b6c6c.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cd6aae83aa1599728d161dbe5a010abe9c37a13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
