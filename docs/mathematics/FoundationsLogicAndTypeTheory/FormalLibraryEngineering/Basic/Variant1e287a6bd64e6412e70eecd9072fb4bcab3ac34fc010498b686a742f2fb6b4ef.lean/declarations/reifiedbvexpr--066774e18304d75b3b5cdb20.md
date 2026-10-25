# ReifiedBVExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2d185f6b5dce3aa98f712057bd73753ff43d6dfe4bb3abfe638b15e786c5fec",
  "kind": "structure",
  "lexical_name": "ReifiedBVExpr",
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
  "slug": "reifiedbvexpr--066774e18304d75b3b5cdb20",
  "source": {
    "blob": "87524fa8fdb455f158b506c759ddeca942305c5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 164,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1e287a6bd64e6412e70eecd9072fb4bcab3ac34fc010498b686a742f2fb6b4ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:066774e18304d75b3b5cdb20a4096ea0204f28ab06bdfc1664faf9cf44873cbd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1e287a6bd64e6412e70eecd9072fb4bcab3ac34fc010498b686a742f2fb6b4ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2d185f6b5dce3aa98f712057bd73753ff43d6dfe4bb3abfe638b15e786c5fec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ReifiedBVExpr where
  width : Nat
  /--
  The reified expression.
  -/
  bvExpr : BVExpr width
  /--
  The expression that was reflected, used for caching of `evalsAtAtoms`.
  -/
  originalExpr : Expr
  /--
  A proof that `bvExpr.eval atomsAssignment = originalExpr`, none if it holds by `rfl`.
  -/
  evalsAtAtoms' : M (Option Expr)
  /--
  A cache for `toExpr bvExpr`.
  -/
  expr : Expr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1e287a6bd64e6412e70eecd9072fb4bcab3ac34fc010498b686a742f2fb6b4ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1e287a6bd64e6412e70eecd9072fb4bcab3ac34fc010498b686a742f2fb6b4ef.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87524fa8fdb455f158b506c759ddeca942305c5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
