# viewKAbstractSubExpr'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:84d07243fcaec8beab3f5edb60fb75ddf29970812159eee6e475ce9c2ecbc60b",
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
  "slug": "viewkabstractsubexpr--0577f588d1e345a1df789748",
  "source": {
    "blob": "db9c6b95faeb97605f593136cfe91d9ac90c28c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 65,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClickSuggestions/Variant434fec9d495f3a0e253b303dadd37331ad1a34912fbea13573208a8011ca60ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0577f588d1e345a1df789748e920a99612bec38750518266234d065bcc47fec4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClickSuggestions/Variant434fec9d495f3a0e253b303dadd37331ad1a34912fbea13573208a8011ca60ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:84d07243fcaec8beab3f5edb60fb75ddf29970812159eee6e475ce9c2ecbc60b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–74.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClickSuggestions/Variant434fec9d495f3a0e253b303dadd37331ad1a34912fbea13573208a8011ca60ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClickSuggestions/Variant434fec9d495f3a0e253b303dadd37331ad1a34912fbea13573208a8011ca60ff.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db9c6b95faeb97605f593136cfe91d9ac90c28c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
