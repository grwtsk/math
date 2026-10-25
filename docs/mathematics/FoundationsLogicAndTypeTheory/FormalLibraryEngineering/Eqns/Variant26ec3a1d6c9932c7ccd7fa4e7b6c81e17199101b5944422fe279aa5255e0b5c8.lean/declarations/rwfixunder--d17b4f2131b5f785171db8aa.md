# rwFixUnder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:84a1fb4a2e48d5a4eb8d6572c90718e152a4ed7bd00878f6d974deb055cb4496",
  "kind": "def",
  "lexical_name": "rwFixUnder",
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
  "slug": "rwfixunder--d17b4f2131b5f785171db8aa",
  "source": {
    "blob": "e01bfbfb38c6650600e024c32d3eabdaeb8fb988",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant26ec3a1d6c9932c7ccd7fa4e7b6c81e17199101b5944422fe279aa5255e0b5c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d17b4f2131b5f785171db8aa131fd221ffa3d1f6955e4ff536ac5170cbde276d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant26ec3a1d6c9932c7ccd7fa4e7b6c81e17199101b5944422fe279aa5255e0b5c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:84a1fb4a2e48d5a4eb8d6572c90718e152a4ed7bd00878f6d974deb055cb4496`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def rwFixUnder (lhs : Expr) : MetaM Expr := do
  if lhs.isAppOfArity ``Order.fix 4 then
    return mkAppN (mkConst ``Order.fix_eq lhs.getAppFn.constLevels!) lhs.getAppArgs
  else if lhs.isAppOfArity ``Order.lfp_monotone 4 then
    return mkAppN (mkConst ``Order.lfp_monotone_fix lhs.getAppFn.constLevels!) lhs.getAppArgs
  else if lhs.isApp then
    let h ← rwFixUnder lhs.appFn!
    mkAppM ``congrFun #[h, lhs.appArg!]
  else if lhs.isProj then
    let f := mkLambda `p .default (← inferType lhs.projExpr!) (lhs.updateProj! (.bvar 0))
    let h ← rwFixUnder lhs.projExpr!
    mkAppM ``congrArg #[f, h]
  else
    throwError "rwFixUnder: unexpected expression {lhs}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant26ec3a1d6c9932c7ccd7fa4e7b6c81e17199101b5944422fe279aa5255e0b5c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant26ec3a1d6c9932c7ccd7fa4e7b6c81e17199101b5944422fe279aa5255e0b5c8.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e01bfbfb38c6650600e024c32d3eabdaeb8fb988` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
