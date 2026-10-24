# rawFourthDerivative_eq_fourthCumulantCovector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9640606c4deca2edf568c65cb20b9a96bcc50dfe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 245,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b1bf2b2ddff4f0a85ef421186b777ee5f285cadba5e28e3b29b590c5d0f99409.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6349f771-6e3e-c190-08b2-7c750ce0e68c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:de1a404c-8245-542b-8ddc-1a91ebdbb3a5",
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
  "slug": "rawfourthderivative-eq-fourthcumulantcovector--20e60e600f9eedbcf6896aa3",
  "source": {
    "blob": "9640606c4deca2edf568c65cb20b9a96bcc50dfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 245,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantb1bf2b2ddff4f0a85ef421186b777ee5f285cadba5e28e3b29b590c5d0f99409.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20e60e600f9eedbcf6896aa3e195c7191d2b94a54dc42affa2143df140833fa7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantb1bf2b2ddff4f0a85ef421186b777ee5f285cadba5e28e3b29b590c5d0f99409.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de1a404c-8245-542b-8ddc-1a91ebdbb3a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–324.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantb1bf2b2ddff4f0a85ef421186b777ee5f285cadba5e28e3b29b590c5d0f99409.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantb1bf2b2ddff4f0a85ef421186b777ee5f285cadba5e28e3b29b590c5d0f99409.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9640606c4deca2edf568c65cb20b9a96bcc50dfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
