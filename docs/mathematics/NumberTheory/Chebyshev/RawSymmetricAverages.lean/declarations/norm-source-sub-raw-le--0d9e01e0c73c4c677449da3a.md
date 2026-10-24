# norm_source_sub_raw_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8902a639-2279-1655-36fe-2466cf7a08d8",
  "kind": "theorem",
  "lexical_name": "norm_source_sub_raw_le",
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
  "slug": "norm-source-sub-raw-le--0d9e01e0c73c4c677449da3a",
  "source": {
    "blob": "a273cee76da0009cdd60eb0d7f166683085d4d4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 87,
    "path": "GRWTSK/NumberTheory/Chebyshev/RawSymmetricAverages.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d9e01e0c73c4c677449da3ab4181beb467c6eb9cd09400e43f3db9ed65839d8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/RawSymmetricAverages.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8902a639-2279-1655-36fe-2466cf7a08d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_source_sub_raw_le (M : ℕ) (hM : 2 ≤ M) (h T : ℝ)
    (hh : 0 < h) (hsmall : h ≤ 1) (ha : 1 < (M:ℝ)-h) (hT : 2 ≤ T) :
    ‖(psiHalf (M:ℝ):ℂ)-rawClassicalHead M T‖ ≤
      rawAverageTailBudget M h T+rawMeanOscillation M h T := by
  exact (norm_sub_le_norm_sub_add_norm_sub _ (rawAverage M h T) _).trans
    (add_le_add (norm_source_sub_average_le M hM h T hh hsmall ha hT)
      (norm_average_sub_point_le M h T hh ha))
/-- The additional local oscillation estimate is sufficient to remove averaging
along the actual reconstruction heights. Its decay is not assumed proved. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/RawSymmetricAverages.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/RawSymmetricAverages.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a273cee76da0009cdd60eb0d7f166683085d4d4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
