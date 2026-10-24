# rank_mul_le_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3167d25e-c28f-c945-1d1e-ce242ce7947b",
  "kind": "theorem",
  "lexical_name": "rank_mul_le_right",
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
  "slug": "rank-mul-le-right--2bf8444bbcb6b6a207ead079",
  "source": {
    "blob": "5c6a606660ac2905fd24a5c4103df7b4675afc89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 89,
    "path": "GRWTSK/Algebra/LinearAlgebra/Rank/Variant58d513f64aa216d9171c8a742c830873958d81f1aec2786407b46fa19913d2d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bf8444bbcb6b6a207ead079f836aee020080c131d7d29ccd69d329ea064ce85",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Rank/Variant58d513f64aa216d9171c8a742c830873958d81f1aec2786407b46fa19913d2d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3167d25e-c28f-c945-1d1e-ce242ce7947b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rank_mul_le_right [StrongRankCondition R] (A : Matrix l m R) (B : Matrix m n R) :
    (A * B).rank ≤ B.rank := by
  rw [rank, rank, mulVecLin_mul]
  exact
    finrank_le_finrank_of_rank_le_rank (LinearMap.lift_rank_comp_le_right _ _) (rank_lt_aleph0 _ _)
#align matrix.rank_mul_le_right Matrix.rank_mul_le_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Rank/Variant58d513f64aa216d9171c8a742c830873958d81f1aec2786407b46fa19913d2d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Rank/Variant58d513f64aa216d9171c8a742c830873958d81f1aec2786407b46fa19913d2d2.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c6a606660ac2905fd24a5c4103df7b4675afc89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
