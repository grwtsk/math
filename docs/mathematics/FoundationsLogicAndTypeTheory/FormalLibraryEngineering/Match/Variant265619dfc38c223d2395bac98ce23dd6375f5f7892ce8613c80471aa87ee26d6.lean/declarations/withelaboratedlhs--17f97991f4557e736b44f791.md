# withElaboratedLHS

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:68f95207a7b8690045a7a1d8cdb4d11d3d28b49ec5a6c0cb8af65263d695c37f",
  "kind": "def",
  "lexical_name": "withElaboratedLHS",
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
  "slug": "withelaboratedlhs--17f97991f4557e736b44f791",
  "source": {
    "blob": "4df90954a89531a08e5cf1aac0d9095d7a7009ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 785,
    "line": 774,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant265619dfc38c223d2395bac98ce23dd6375f5f7892ce8613c80471aa87ee26d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:17f97991f4557e736b44f791da640b9c49ed981fdc9a84e5bf94c17ef8e95769",
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

Occurrence: `declaration:68f95207a7b8690045a7a1d8cdb4d11d3d28b49ec5a6c0cb8af65263d695c37f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 774–785.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def withElaboratedLHS {α} (patternVarDecls : Array PatternVarDecl) (patternStxs : Array Syntax) (lhsStx : Syntax) (numDiscrs : Nat) (matchType : Expr)
    (k : AltLHS → Expr → TermElabM α) : ExceptT PatternElabException TermElabM α := do
  let (patterns, matchType) ← withSynthesize <| withRef lhsStx <| elabPatterns patternStxs numDiscrs matchType
  id (α := TermElabM α) do
    trace[Elab.match] "patterns: {patterns}"
    withDepElimPatterns patternVarDecls patterns matchType fun localDecls patterns matchType => do
      k { ref := lhsStx, fvarDecls := localDecls.toList, patterns := patterns.toList } matchType

/--
  Try to clear the free variables in `toClear` and auxiliary discriminants, and then execute `k` in the updated local context.
  If `type` or another local variables depends on a free variable in `toClear`, then it is not cleared.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant265619dfc38c223d2395bac98ce23dd6375f5f7892ce8613c80471aa87ee26d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant265619dfc38c223d2395bac98ce23dd6375f5f7892ce8613c80471aa87ee26d6.lean#L774).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4df90954a89531a08e5cf1aac0d9095d7a7009ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
