# rawFourthDerivative_eq_fourthCumulantCovector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d2f513e-95a1-38b5-d02b-4bbf56e246af",
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
  "slug": "rawfourthderivative-eq-fourthcumulantcovector--82bc84ea671e579d58b86271",
  "source": {
    "blob": "7abb18b94188ed358e9bfc7cd516bf4a564db2a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 253,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantd78b1bde6cc1137e749e83e209406142741062bf48d5248ab40b24529f7ce3ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82bc84ea671e579d58b862715fe5a39cb784c082eed88f2736a6b256318503f8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantd78b1bde6cc1137e749e83e209406142741062bf48d5248ab40b24529f7ce3ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d2f513e-95a1-38b5-d02b-4bbf56e246af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–332.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantd78b1bde6cc1137e749e83e209406142741062bf48d5248ab40b24529f7ce3ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantd78b1bde6cc1137e749e83e209406142741062bf48d5248ab40b24529f7ce3ce.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7abb18b94188ed358e9bfc7cd516bf4a564db2a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
