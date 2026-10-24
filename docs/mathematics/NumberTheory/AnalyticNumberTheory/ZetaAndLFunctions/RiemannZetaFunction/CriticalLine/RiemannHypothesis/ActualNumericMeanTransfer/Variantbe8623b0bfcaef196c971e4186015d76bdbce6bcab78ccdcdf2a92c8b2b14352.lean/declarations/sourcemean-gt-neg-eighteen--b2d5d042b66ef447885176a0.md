# sourceMean_gt_neg_eighteen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1da22c79-003f-994f-762b-989fd1035731",
  "kind": "theorem",
  "lexical_name": "sourceMean_gt_neg_eighteen",
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
  "slug": "sourcemean-gt-neg-eighteen--b2d5d042b66ef447885176a0",
  "source": {
    "blob": "0360985e54f48126881a527aa1d3d2affb664aca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 57,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualNumericMeanTransfer/Variantbe8623b0bfcaef196c971e4186015d76bdbce6bcab78ccdcdf2a92c8b2b14352.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2d5d042b66ef447885176a09207c76f5f9e7cdcf035ac5eab341141c472746b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualNumericMeanTransfer/Variantbe8623b0bfcaef196c971e4186015d76bdbce6bcab78ccdcdf2a92c8b2b14352.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1da22c79-003f-994f-762b-989fd1035731`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceMean_gt_neg_eighteen {A : ℝ} (hA : 10 ≤ A)
    (hF : -(1889/100:ℝ) ≤ squareRemovedRemainder A)
    (hS : 0 ≤ (normalizedZeroSquare A).re) : -18 < sourceMean A := by
  have hA1 : 1 ≤ A := by linarith
  have h := sourceMean_gt_paper_bound hA1 hF
  have hb : (206:ℝ)/A^2 ≤ 206/100 := by
    apply div_le_div_of_nonneg_left (by norm_num) (by norm_num : (0:ℝ)<100)
    nlinarith
  linarith

#print axioms commonMeanCenter_gt
#print axioms normalizationBudget_lt
#print axioms normalizationError_lt
#print axioms sourceMeanOffset_gt_paper_bound
#print axioms sourceMean_gt_paper_bound
#print axioms sourceMean_gt_of_zero_budget
#print axioms sourceMean_gt_neg_eighteen
end ContinuousResearch.ActualNumericMeanTransfer
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualNumericMeanTransfer/Variantbe8623b0bfcaef196c971e4186015d76bdbce6bcab78ccdcdf2a92c8b2b14352.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualNumericMeanTransfer/Variantbe8623b0bfcaef196c971e4186015d76bdbce6bcab78ccdcdf2a92c8b2b14352.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0360985e54f48126881a527aa1d3d2affb664aca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
