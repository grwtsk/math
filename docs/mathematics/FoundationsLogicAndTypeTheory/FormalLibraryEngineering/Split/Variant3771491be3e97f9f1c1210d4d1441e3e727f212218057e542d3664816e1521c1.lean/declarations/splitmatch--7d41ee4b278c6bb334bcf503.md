# splitMatch

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:75a1570ae171d559732f1672aefaa9d0a005f77b1aa5c32acc7902ca69262806",
  "kind": "def",
  "lexical_name": "splitMatch",
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
  "slug": "splitmatch--7d41ee4b278c6bb334bcf503",
  "source": {
    "blob": "58a23e2bf9d941430528ccb8251751f3f5565078",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 320,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant3771491be3e97f9f1c1210d4d1441e3e727f212218057e542d3664816e1521c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d41ee4b278c6bb334bcf503c351699476063f346bbe4c35f93a6ff0e4d41f83",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant3771491be3e97f9f1c1210d4d1441e3e727f212218057e542d3664816e1521c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:75a1570ae171d559732f1672aefaa9d0a005f77b1aa5c32acc7902ca69262806`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def splitMatch (mvarId : MVarId) (e : Expr) : MetaM (List MVarId) := mvarId.withContext do
  let some app ← matchMatcherApp? e | throwInternalMisuseError m!"Internal error in `split` tactic: Match application expected{indentExpr e}"
  let matchEqns ← Match.getEquationsFor app.matcherName
  let mvarIds ← applyMatchSplitter mvarId app.matcherName app.matcherLevels app.params app.discrs
  let (_, mvarIds) ← mvarIds.foldlM (init := (0, [])) fun (i, mvarIds) mvarId => do
    let mvarId ← simpMatchTargetCore mvarId app.matcherName matchEqns.eqnNames[i]!
    return (i+1, mvarId::mvarIds)
  return mvarIds.reverse

end Split

open Split

/--
Splits an `if-then-else` of `match`-expression in the goal target.
If `useNewSemantics` is `true`, the flag `backward.split` is ignored. Recall this flag only affects the split of `if-then-else` expressions.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant3771491be3e97f9f1c1210d4d1441e3e727f212218057e542d3664816e1521c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant3771491be3e97f9f1c1210d4d1441e3e727f212218057e542d3664816e1521c1.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58a23e2bf9d941430528ccb8251751f3f5565078` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
