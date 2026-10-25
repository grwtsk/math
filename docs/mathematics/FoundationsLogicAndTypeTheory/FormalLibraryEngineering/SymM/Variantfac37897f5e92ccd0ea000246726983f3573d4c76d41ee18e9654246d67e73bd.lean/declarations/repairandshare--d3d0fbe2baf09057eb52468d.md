# repairAndShare

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cfedb1eb4ba7acb1907cd9bca9372ba22335a2a3b5b0955af4004a6ad1f1548f",
  "kind": "def",
  "lexical_name": "repairAndShare",
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
  "slug": "repairandshare--d3d0fbe2baf09057eb52468d",
  "source": {
    "blob": "b5a2419a382a996d35f885238be16f8c9e136608",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 433,
    "line": 414,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variantfac37897f5e92ccd0ea000246726983f3573d4c76d41ee18e9654246d67e73bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d3d0fbe2baf09057eb52468d44b6632c74b316508873f6228d24e323cd2eafcf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variantfac37897f5e92ccd0ea000246726983f3573d4c76d41ee18e9654246d67e73bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cfedb1eb4ba7acb1907cd9bca9372ba22335a2a3b5b0955af4004a6ad1f1548f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 414–433.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def repairAndShare (e : Expr) (cache : AlphaShareCommon.Cache) : SymM Expr := do
  -- `unfoldReducible` and `foldProjs` enter binders using `Meta.transform`, which
  -- requires a closed term. Open terms are admitted without repair.
  -- assert! !e.hasLooseBVars
  if e.hasLooseBVars then throwError "internal error, expression has loose bound variables at `shareCommon`{indentExpr e}"
  let e ← repairShareViolation e
  -- The repair only rebuilds the violating parts of the term, so the subterms visited
  -- by the interrupted run still occur in `e` and their cached results remain valid.
  shareCommonWithoutChecks e cache

/--
Applies hash-consing to `e`. Recall that all expressions in a `grind` goal have
been hash-consed. We perform this step before we internalize expressions.

Depending on the current configuration, this function also maintains the `SymM`
invariants that reducible constants have been unfolded and kernel projections folded.
The checks are node-local and are only performed on terms that have not been
hash-consed before, so already-shared subterms cost nothing. When a violation is
found, the term is repaired using `unfoldReducible`/`foldProjs` and re-processed.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variantfac37897f5e92ccd0ea000246726983f3573d4c76d41ee18e9654246d67e73bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variantfac37897f5e92ccd0ea000246726983f3573d4c76d41ee18e9654246d67e73bd.lean#L414).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5a2419a382a996d35f885238be16f8c9e136608` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
