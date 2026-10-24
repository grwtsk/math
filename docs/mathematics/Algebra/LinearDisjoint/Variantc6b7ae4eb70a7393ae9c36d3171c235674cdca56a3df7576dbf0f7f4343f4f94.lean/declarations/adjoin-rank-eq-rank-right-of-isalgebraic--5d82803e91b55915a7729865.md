# adjoin_rank_eq_rank_right_of_isAlgebraic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f381e398-0d9c-326c-aab1-824d159b2f13",
  "kind": "theorem",
  "lexical_name": "adjoin_rank_eq_rank_right_of_isAlgebraic",
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
  "slug": "adjoin-rank-eq-rank-right-of-isalgebraic--5d82803e91b55915a7729865",
  "source": {
    "blob": "b21c2ede7cb426821bfb942a8f1415ae13fe9e66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 479,
    "line": 474,
    "path": "GRWTSK/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d82803e91b55915a772986536b0bcd43fa463f49a9f707b148cc8ccd80d5d80",
  "verification": {
    "reference": "docs/verification/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f381e398-0d9c-326c-aab1-824d159b2f13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 474–479.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjoin_rank_eq_rank_right_of_isAlgebraic (H : A.LinearDisjoint L)
    (halg : Algebra.IsAlgebraic F A ∨ Algebra.IsAlgebraic F L) :
    Module.rank A (extendScalars (show A ≤ (adjoin L (A : Set E)).restrictScalars F from
      subset_adjoin L (A : Set E))) = Module.rank F L := by
  simpa only [Cardinal.lift_id] using H.lift_adjoin_rank_eq_lift_rank_right_of_isAlgebraic halg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean#L474).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b21c2ede7cb426821bfb942a8f1415ae13fe9e66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
