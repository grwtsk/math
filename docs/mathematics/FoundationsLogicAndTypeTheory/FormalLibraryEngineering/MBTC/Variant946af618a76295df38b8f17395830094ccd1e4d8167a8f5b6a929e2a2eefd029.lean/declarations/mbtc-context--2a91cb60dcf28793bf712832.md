# MBTC.Context

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bcfc6776834f0a743393259b89fafe6b802c06d0ebd8d2ec55d64a1f275b02a4",
  "kind": "structure",
  "lexical_name": "MBTC.Context",
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
  "slug": "mbtc-context--2a91cb60dcf28793bf712832",
  "source": {
    "blob": "73b7286e404bcb09b9716e847988264a0e583b11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Variant946af618a76295df38b8f17395830094ccd1e4d8167a8f5b6a929e2a2eefd029.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2a91cb60dcf28793bf712832e89f0255a21f1419f4e63dc2af9b9a674b60ade7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Variant946af618a76295df38b8f17395830094ccd1e4d8167a8f5b6a929e2a2eefd029.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bcfc6776834f0a743393259b89fafe6b802c06d0ebd8d2ec55d64a1f275b02a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MBTC.Context where
  /--
  `isInterpreted e` returns `true` if `e` is an interpreted symbol in the target theory.
  Example: `+` for cutsat
  -/
  isInterpreted : Expr → GoalM Bool
  /--
  `hasTheoryVar e` returns `true` if `e` has a theory variable in the target theory.
  For example, suppose we have the constraint `x + y ≤ 0`, then `x` and `y` have theory
  vars in the cutsat procedure.
  -/
  hasTheoryVar : Expr → GoalM Bool
  /--
  `eqAssignment x y` returns `true` it the theory variables for `x` and `y` have the same
  interpretation/assignment in the target theory. For example, suppose we have the
  constraint `x + y ≤ 0`, and cutsat satisfied it by assigning both `x` and `y` to
  `0`. Then, `eqAssignment x y` must return `true`.
  -/
  eqAssignment : Expr → Expr → GoalM Bool

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Variant946af618a76295df38b8f17395830094ccd1e4d8167a8f5b6a929e2a2eefd029.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Variant946af618a76295df38b8f17395830094ccd1e4d8167a8f5b6a929e2a2eefd029.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73b7286e404bcb09b9716e847988264a0e583b11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
