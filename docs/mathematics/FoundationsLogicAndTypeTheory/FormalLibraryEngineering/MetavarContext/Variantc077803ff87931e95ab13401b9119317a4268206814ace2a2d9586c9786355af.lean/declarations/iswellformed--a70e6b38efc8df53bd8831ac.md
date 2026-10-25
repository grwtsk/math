# isWellFormed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1d91c8d210c533c8f44c01f48b2695382be6603a14ecc828999846c613d6f82d",
  "kind": "def",
  "lexical_name": "isWellFormed",
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
  "slug": "iswellformed--a70e6b38efc8df53bd8831ac",
  "source": {
    "blob": "3ad97d82016c98fecf071011eac4662b21b2dbf2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1404,
    "line": 1383,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetavarContext/Variantc077803ff87931e95ab13401b9119317a4268206814ace2a2d9586c9786355af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a70e6b38efc8df53bd8831ac8a7e14bcd8fd3cc99c88579525d026267e7362b7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetavarContext/Variantc077803ff87931e95ab13401b9119317a4268206814ace2a2d9586c9786355af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1d91c8d210c533c8f44c01f48b2695382be6603a14ecc828999846c613d6f82d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1383–1404.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def isWellFormed [Monad m] [MonadMCtx m] (lctx : LocalContext) : Expr → m Bool
  | .mdata _ e           => isWellFormed lctx e
  | .proj _ _ e          => isWellFormed lctx e
  | e@(.app f a)         => pure (!e.hasExprMVar && !e.hasFVar) <||> (isWellFormed lctx f <&&> isWellFormed lctx a)
  | e@(.lam _ d b _)     => pure (!e.hasExprMVar && !e.hasFVar) <||> (isWellFormed lctx d <&&> isWellFormed lctx b)
  | e@(.forallE _ d b _) => pure (!e.hasExprMVar && !e.hasFVar) <||> (isWellFormed lctx d <&&> isWellFormed lctx b)
  | e@(.letE _ t v b _)  => pure (!e.hasExprMVar && !e.hasFVar) <||> (isWellFormed lctx t <&&> isWellFormed lctx v <&&> isWellFormed lctx b)
  | .const ..            => return true
  | .bvar ..             => return true
  | .sort ..             => return true
  | .lit ..              => return true
  | .mvar mvarId         => do
    let mvarDecl := (← getMCtx).getDecl mvarId;
    if mvarDecl.lctx.isSubPrefixOf lctx then
      return true
    else match (← getExprMVarAssignment? mvarId) with
      | none   => return false
      | some v => isWellFormed lctx v
  | .fvar fvarId         => return lctx.contains fvarId

namespace LevelMVarToParam

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetavarContext/Variantc077803ff87931e95ab13401b9119317a4268206814ace2a2d9586c9786355af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetavarContext/Variantc077803ff87931e95ab13401b9119317a4268206814ace2a2d9586c9786355af.lean#L1383).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ad97d82016c98fecf071011eac4662b21b2dbf2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
