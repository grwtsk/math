# tagUntaggedGoals

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0a72130294553b0d20884f658c5544f8b0c09904483dd40de24c1ea9d6b70e06",
  "kind": "def",
  "lexical_name": "tagUntaggedGoals",
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
  "slug": "taguntaggedgoals--2b9f06ff4fc53b1610ee3475",
  "source": {
    "blob": "f810761e2bc322b9e1e046154d3a2148a7436e1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 638,
    "line": 620,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantcff79a0a7e3577ab1a28b347ca2dc7a3836b4642ee501f3f89daf14c2389167e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b9f06ff4fc53b1610ee3475e6719df83e807565a480d9c7346ea50746266639",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantcff79a0a7e3577ab1a28b347ca2dc7a3836b4642ee501f3f89daf14c2389167e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0a72130294553b0d20884f658c5544f8b0c09904483dd40de24c1ea9d6b70e06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 620–638.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tagUntaggedGoals (parentTag : Name) (newSuffix : Name) (newGoals : List MVarId) : TacticM Unit := do
  let mctx ← getMCtx
  let mut numAnonymous := 0
  for g in newGoals do
    if mctx.isAnonymousMVar g then
      numAnonymous := numAnonymous + 1
  modifyMCtx fun mctx => Id.run do
    let mut mctx := mctx
    let mut idx  := 1
    for g in newGoals do
      if mctx.isAnonymousMVar g then
        if numAnonymous == 1 then
          mctx := mctx.setMVarUserName g parentTag
        else
          mctx := mctx.setMVarUserName g (parentTag ++ newSuffix.appendIndexAfter idx)
        idx := idx + 1
    pure mctx

/- Recall that `ident' := ident <|> Term.hole` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantcff79a0a7e3577ab1a28b347ca2dc7a3836b4642ee501f3f89daf14c2389167e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantcff79a0a7e3577ab1a28b347ca2dc7a3836b4642ee501f3f89daf14c2389167e.lean#L620).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f810761e2bc322b9e1e046154d3a2148a7436e1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
