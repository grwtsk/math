# rawFourthDerivative_eq_fourthCumulantCovector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2c4b42ac6e58ea2ac2f0a9a9d8d5e183800ba782",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 245,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/abdfe4140f3a1ad29cf3fb5871cdaece4271490daf25c534de28922c3b0358be.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fb1e057f-17bf-ce33-02e3-eb3d155cae8e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:250d0c2e-8488-980e-e092-90a45e1fdfd7",
  "kind": "theorem",
  "lexical_name": "rawFourthDerivative_eq_fourthCumulantCovector",
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
  "slug": "rawfourthderivative-eq-fourthcumulantcovector--9bc438a5cafd7b86c1d95504",
  "source": {
    "blob": "2c4b42ac6e58ea2ac2f0a9a9d8d5e183800ba782",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 245,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantabdfe4140f3a1ad29cf3fb5871cdaece4271490daf25c534de28922c3b0358be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9bc438a5cafd7b86c1d9550443b802aa9bcf9a25a8d247e50630f75adaa0145f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantabdfe4140f3a1ad29cf3fb5871cdaece4271490daf25c534de28922c3b0358be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:250d0c2e-8488-980e-e092-90a45e1fdfd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rawFourthDerivative_eq_fourthCumulantCovector
    (theta u v w : E) :
    F.rawFourthDerivative theta u v w =
      F.fourthCumulantCovector theta u v w := by
  apply ContinuousLinearMap.ext
  intro z
  rw [F.rawFourthDerivative_apply,
    F.fourthCumulantCovector_apply]
  calc
    (∑ i : I,
        (F.probability theta i *
            F.centeredStatistic theta i u *
            F.centeredStatistic theta i v *
            F.centeredStatistic theta i w *
            F.centeredStatistic theta i z
          -
        F.covarianceOperator theta z w *
            (F.probability theta i *
              F.centeredStatistic theta i u *
              F.centeredStatistic theta i v)
          -
        F.covarianceOperator theta z v *
            (F.probability theta i *
              F.centeredStatistic theta i u *
              F.centeredStatistic theta i w)
          -
        F.covarianceOperator theta z u *
            (F.probability theta i *
              F.centeredStatistic theta i v *
              F.centeredStatistic theta i w)))
        =
      (∑ i : I,
        F.probability theta i *
          F.centeredStatistic theta i u *
          F.centeredStatistic theta i v *
          F.centeredStatistic theta i w *
          F.centeredStatistic theta i z)
        -
      F.covarianceOperator theta z w *
        (∑ i : I,
          F.probability theta i *
            F.centeredStatistic theta i u *
            F.centeredStatistic theta i v)
        -
      F.covarianceOperator theta z v *
        (∑ i : I,
          F.probability theta i *
            F.centeredStatistic theta i u *
            F.centeredStatistic theta i w)
        -
      F.covarianceOperator theta z u *
        (∑ i : I,
          F.probability theta i *
            F.centeredStatistic theta i v *
            F.centeredStatistic theta i w) := by
        rw [Finset.sum_sub_distrib, Finset.sum_sub_distrib,
          Finset.sum_sub_distrib,
          ← Finset.mul_sum, ← Finset.mul_sum, ← Finset.mul_sum]
    _ =
      (∑ i : I,
        F.probability theta i *
          F.centeredStatistic theta i u *
          F.centeredStatistic theta i v *
          F.centeredStatistic theta i w *
          F.centeredStatistic theta i z)
        -
      F.covarianceOperator theta u v *
        F.covarianceOperator theta z w
        -
      F.covarianceOperator theta u w *
        F.covarianceOperator theta z v
        -
      F.covarianceOperator theta v w *
        F.covarianceOperator theta z u := by
        rw [F.weighted_centered_pair_sum_eq_covariance theta u v,
          F.weighted_centered_pair_sum_eq_covariance theta u w,
          F.weighted_centered_pair_sum_eq_covariance theta v w]
        ring

/-- Derivative of the third cumulant is the fourth cumulant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantabdfe4140f3a1ad29cf3fb5871cdaece4271490daf25c534de28922c3b0358be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantabdfe4140f3a1ad29cf3fb5871cdaece4271490daf25c534de28922c3b0358be.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c4b42ac6e58ea2ac2f0a9a9d8d5e183800ba782` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
