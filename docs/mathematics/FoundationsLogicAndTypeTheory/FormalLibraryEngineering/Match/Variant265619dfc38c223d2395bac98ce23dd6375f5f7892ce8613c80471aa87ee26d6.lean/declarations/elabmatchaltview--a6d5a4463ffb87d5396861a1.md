# elabMatchAltView

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b99b925e490aa9663e5a1bf2865a862bded70d7a128b0d746b922b900aee5d0",
  "kind": "def",
  "lexical_name": "elabMatchAltView",
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
  "slug": "elabmatchaltview--a6d5a4463ffb87d5396861a1",
  "source": {
    "blob": "4df90954a89531a08e5cf1aac0d9095d7a7009ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 856,
    "line": 828,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant265619dfc38c223d2395bac98ce23dd6375f5f7892ce8613c80471aa87ee26d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a6d5a4463ffb87d5396861a1fa03d074e22f065d63c0db26e990f5adb3cde15f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant265619dfc38c223d2395bac98ce23dd6375f5f7892ce8613c80471aa87ee26d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b99b925e490aa9663e5a1bf2865a862bded70d7a128b0d746b922b900aee5d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 828–856.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def elabMatchAltView (discrs : Array Discr) (alt : TermMatchAltView) (matchType : Expr) (toClear : Array FVarId) : ExceptT PatternElabException TermElabM (AltLHS × Expr) := withRef alt.ref do
    let (patternVars, alt) ← collectPatternVars alt
    trace[Elab.match] "patternVars: {patternVars}"
    withPatternVars patternVars fun patternVarDecls => do
      withElaboratedLHS patternVarDecls alt.patterns alt.lhs discrs.size matchType fun altLHS matchType =>
        withEqs discrs altLHS.patterns fun eqs =>
          withLocalInstances altLHS.fvarDecls do
            trace[Elab.match] "elabMatchAltView: {matchType}"
            -- connect match-generalized pattern fvars, which are a suffix of `latLHS.fvarDecls`,
            -- to their original fvars (independently of whether they were cleared successfully) in the info tree
            for (fvar, baseId) in altLHS.fvarDecls.toArray.reverse.zip toClear.reverse do
              pushInfoLeaf <| .ofFVarAliasInfo { id := fvar.fvarId, baseId, userName := fvar.userName }
            let matchType ← instantiateMVars matchType
            -- If `matchType` is of the form `@m ...`, we create a new metavariable with the current scope.
            -- This improves the effectiveness of the `isDefEq` default approximations
            let matchType' ← if matchType.getAppFn.isMVar then mkFreshTypeMVar else pure matchType
            withToClear toClear matchType' do
              let rhs ← elabTermEnsuringType alt.rhs matchType'
              -- We use all approximations to ensure the auxiliary type is defeq to the original one.
              unless (← fullApproxDefEq <| isDefEq matchType' matchType) do
                throwError "Type mismatch: Alternative {← mkHasTypeButIsExpectedMsg matchType' matchType}"
              let xs := altLHS.fvarDecls.toArray.map LocalDecl.toExpr ++ eqs
              let rhs ← if xs.isEmpty then pure <| mkSimpleThunk rhs else mkLambdaFVars xs rhs
              trace[Elab.match] "rhs: {rhs}"
              return (altLHS, rhs)

/--
  Collect problematic index for the "discriminant refinement feature". This method is invoked
  when we detect a type mismatch at a pattern #`idx` of some alternative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant265619dfc38c223d2395bac98ce23dd6375f5f7892ce8613c80471aa87ee26d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant265619dfc38c223d2395bac98ce23dd6375f5f7892ce8613c80471aa87ee26d6.lean#L828).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4df90954a89531a08e5cf1aac0d9095d7a7009ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
