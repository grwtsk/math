# complete_tail_lower_of_exact_mean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94a45fbe-870c-dd73-e3d1-d94edc30a2ae",
  "kind": "theorem",
  "lexical_name": "complete_tail_lower_of_exact_mean",
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
  "slug": "complete-tail-lower-of-exact-mean--447d57785e8eb82e406a820f",
  "source": {
    "blob": "75340f996421109841d734ec1bf5362e4abefc9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 116,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt01Source/Variant6cab7db011932278c05d8d6071e671a414a233de7202485bd91cb89e845803ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:447d57785e8eb82e406a820f01d09353518ea238f27fc81130fa917c9c431fe1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt01Source/Variant6cab7db011932278c05d8d6071e671a414a233de7202485bd91cb89e845803ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94a45fbe-870c-dd73-e3d1-d94edc30a2ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_tail_lower_of_exact_mean (M1 R : ℝ) (hM1 : 0 ≤ M1)
    (hR : 40 ≤ R) (hmean : actualF7MeanBound M1 R) :
    ∀ A : ℝ, calibratedRadius R ≤ A → -exactMeanTailBudget M1 R ≤ completeXiTail A := by
  intro A hA
  have hm := complete_tail_abs_le_exact_mean M1 R A hR hA hmean
  have hd := div_le_div_of_nonneg_left
    (mul_nonneg (by norm_num : (0 : ℝ) ≤ 2)
      (tailEnergyCoefficient_pos (calibratedRadius R)).le) (calibratedRadius_pos R) hA
  have hb : |completeXiTail A| ≤ exactMeanTailBudget M1 R := by
    exact hm.trans (mul_le_mul_of_nonneg_right (add_le_add_left hd _) hM1)
  exact (neg_le_neg hb).trans (neg_abs_le _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt01Source/Variant6cab7db011932278c05d8d6071e671a414a233de7202485bd91cb89e845803ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt01Source/Variant6cab7db011932278c05d8d6071e671a414a233de7202485bd91cb89e845803ad.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75340f996421109841d734ec1bf5362e4abefc9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
