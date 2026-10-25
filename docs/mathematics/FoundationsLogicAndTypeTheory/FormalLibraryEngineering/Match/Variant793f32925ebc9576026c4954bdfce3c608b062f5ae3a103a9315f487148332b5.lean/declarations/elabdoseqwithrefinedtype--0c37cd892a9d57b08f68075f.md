# elabDoSeqWithRefinedType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2dbd63501cf25c1488b13f56e2f800224317d07c9ce0a562650dd0b0c6ca1658",
  "kind": "def",
  "lexical_name": "elabDoSeqWithRefinedType",
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
  "slug": "elabdoseqwithrefinedtype--0c37cd892a9d57b08f68075f",
  "source": {
    "blob": "e886f99c2cf72d229581e08e0db6507439b52d5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 34,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant793f32925ebc9576026c4954bdfce3c608b062f5ae3a103a9315f487148332b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c37cd892a9d57b08f68075fd6fcef5cea1545b7c253a0c6c7e2c58f852516bf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant793f32925ebc9576026c4954bdfce3c608b062f5ae3a103a9315f487148332b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2dbd63501cf25c1488b13f56e2f800224317d07c9ce0a562650dd0b0c6ca1658`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def elabDoSeqWithRefinedType (type : Expr) (doSeq : DoSeq) (dec : DoElemCont) : DoElabM Expr := do
  let newDoBlockResultType ← withNewMCtxDepth do
    let γ ← mkFreshExprMVar (mkSort (← read).monadInfo.u.succ)
    unless ← isDefEqGuarded type (← mkMonadApp γ) do
      throwError "Could not determine dependently-refined result type of `do` block.\n
        Expected type {type} was not def eq to {← mkMonadApp γ}"
    instantiateMVars γ
  trace[Elab.do.match] "newDoBlockResultType: {newDoBlockResultType}"
  -- The `doBlockResultType` *is* the continuation's return type, since it is duplicable.
  let dec := { dec with resultType := newDoBlockResultType }
  withRefinedResultType newDoBlockResultType (elabDoSeq doSeq dec)

/--
Expand a `doMatch` into a term-level `match`. We do this for `match_syntax` and
`match (dependent := true)`. For the latter, the functionality is very restricted to effectively
ban join points.
Reason: In case of a dependent match, it is hard to guarantee that generalization of join points and
`mut` vars will succeed.
The rest of the code in this file is concerned with providing the default, non-dependent `match` in
`do` notation.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant793f32925ebc9576026c4954bdfce3c608b062f5ae3a103a9315f487148332b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant793f32925ebc9576026c4954bdfce3c608b062f5ae3a103a9315f487148332b5.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e886f99c2cf72d229581e08e0db6507439b52d5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
