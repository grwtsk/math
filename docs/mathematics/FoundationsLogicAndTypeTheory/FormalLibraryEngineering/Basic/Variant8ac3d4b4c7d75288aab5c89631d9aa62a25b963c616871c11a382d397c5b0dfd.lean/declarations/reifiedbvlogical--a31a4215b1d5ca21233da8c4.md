# ReifiedBVLogical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cc1a19f3bd551dbe8c0c662578becd6d2b390ef3ef4f668a022ff33193205325",
  "kind": "structure",
  "lexical_name": "ReifiedBVLogical",
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
  "slug": "reifiedbvlogical--a31a4215b1d5ca21233da8c4",
  "source": {
    "blob": "00d3c31424a58116a6ffef8dcbe5eec10e830a17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 231,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8ac3d4b4c7d75288aab5c89631d9aa62a25b963c616871c11a382d397c5b0dfd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a31a4215b1d5ca21233da8c44219632f3003d5aff620f16f98f208beb3812ce4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8ac3d4b4c7d75288aab5c89631d9aa62a25b963c616871c11a382d397c5b0dfd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cc1a19f3bd551dbe8c0c662578becd6d2b390ef3ef4f668a022ff33193205325`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ReifiedBVLogical where
  /--
  The reified expression.
  -/
  bvExpr : BVLogicalExpr
  /--
  The expression that was reflected, usef for caching of `evalsAtAtoms`.
  -/
  originalExpr : Expr
  /--
  A proof that `bvExpr.eval atomsAssignment = originalExpr`, none if it holds by `rfl`.
  -/
  evalsAtAtoms' : M (Option Expr)
  /--
  A cache for `toExpr bvExpr`
  -/
  expr : Expr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8ac3d4b4c7d75288aab5c89631d9aa62a25b963c616871c11a382d397c5b0dfd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8ac3d4b4c7d75288aab5c89631d9aa62a25b963c616871c11a382d397c5b0dfd.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00d3c31424a58116a6ffef8dcbe5eec10e830a17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
