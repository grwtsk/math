# viewKAbstractSubExpr'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:75c9ed4d7f3340eab2dfa3b0fcecfa42049eae0e136fbc6de912129b57f3858f",
  "kind": "def",
  "lexical_name": "viewKAbstractSubExpr'",
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
  "slug": "viewkabstractsubexpr--9d6b2ee25a1a4fc3625ebee4",
  "source": {
    "blob": "d3187fc2e147e9bc67de90ecf8b05f29e1e11abd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 73,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClickSuggestions/Variante9922abd67bdc34e19cffac8461dc4924cbbbb5406794943cc49daf040f29922.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9d6b2ee25a1a4fc3625ebee4a215634a862a4d1a0db7babf1a6b94bf280ab376",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClickSuggestions/Variante9922abd67bdc34e19cffac8461dc4924cbbbb5406794943cc49daf040f29922.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:75c9ed4d7f3340eab2dfa3b0fcecfa42049eae0e136fbc6de912129b57f3858f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def viewKAbstractSubExpr' {m α}
    [Monad m] [MonadLiftT MetaM m] [MonadControlT MetaM m] [MonadError m]
    (e : Expr) (pos : SubExpr.Pos) (k : Expr → RwKind → m α) : m α := do
  if let some (subExpr, occ) ← viewKAbstractSubExpr e pos then
    let tpCorrect ← kabstractIsTypeCorrect e subExpr pos
    k subExpr (.valid tpCorrect occ)
  else
    Meta.viewSubexpr (fun _ e ↦ k e .hasBVars) pos e

/-- Compute the suggestions. Use `token` for the output. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClickSuggestions/Variante9922abd67bdc34e19cffac8461dc4924cbbbb5406794943cc49daf040f29922.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClickSuggestions/Variante9922abd67bdc34e19cffac8461dc4924cbbbb5406794943cc49daf040f29922.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3187fc2e147e9bc67de90ecf8b05f29e1e11abd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
