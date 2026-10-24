# covarianceOperator_eq_rawSecond_sub_centroid_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d387222618792ab4e97ba17e310c70ded68b8bfd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/7680c2a97b17137e636d1aeb81776d034b4469fdefb99f8037eb3023e43e2568.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f8c32dd3-9733-89b8-be16-702e1474e37d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:74e0bf7d-d573-6822-3b78-daf8bc2866c6",
  "kind": "theorem",
  "lexical_name": "covarianceOperator_eq_rawSecond_sub_centroid_mul",
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
  "slug": "covarianceoperator-eq-rawsecond-sub-centroid-mul--1972971cc8b0cea1d8df4327",
  "source": {
    "blob": "d387222618792ab4e97ba17e310c70ded68b8bfd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 97,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant7680c2a97b17137e636d1aeb81776d034b4469fdefb99f8037eb3023e43e2568.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1972971cc8b0cea1d8df43274ff41b5348307b4aa469651543c7542d8767a83e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant7680c2a97b17137e636d1aeb81776d034b4469fdefb99f8037eb3023e43e2568.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74e0bf7d-d573-6822-3b78-daf8bc2866c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem covarianceOperator_eq_rawSecond_sub_centroid_mul
    (theta u v : E) :
    F.covarianceOperator theta u v =
      (∑ i : I,
        F.probability theta i *
          F.statistic i u *
          F.statistic i v)
        -
      F.centroid theta u * F.centroid theta v := by
  classical
  rw [F.covarianceOperator_apply]
  simp_rw [F.centeredStatistic_apply]
  calc
    (∑ i : I,
        F.probability theta i *
          (F.statistic i u - F.centroid theta u) *
          (F.statistic i v - F.centroid theta v))
        =
      ∑ i : I,
        (F.probability theta i *
            F.statistic i u *
            F.statistic i v
          -
          (F.probability theta i *
            F.statistic i u) *
            F.centroid theta v
          -
          F.centroid theta u *
            (F.probability theta i *
              F.statistic i v)
          +
          (F.centroid theta u *
            F.centroid theta v) *
            F.probability theta i) := by
      apply Finset.sum_congr rfl
      intro i hi
      ring
    _ =
      (∑ i : I,
        F.probability theta i *
          F.statistic i u *
          F.statistic i v)
        -
      (∑ i : I,
        F.probability theta i *
          F.statistic i u) *
        F.centroid theta v
        -
      F.centroid theta u *
        (∑ i : I,
          F.probability theta i *
            F.statistic i v)
        +
      (F.centroid theta u *
        F.centroid theta v) *
        (∑ i : I, F.probability theta i) := by
      rw [Finset.sum_add_distrib,
        Finset.sum_sub_distrib,
        Finset.sum_sub_distrib,
        Finset.sum_mul,
        Finset.mul_sum,
        Finset.mul_sum]
    _ =
      (∑ i : I,
        F.probability theta i *
          F.statistic i u *
          F.statistic i v)
        -
      F.centroid theta u * F.centroid theta v := by
      rw [← F.centroid_apply theta u,
        ← F.centroid_apply theta v,
        F.probability_sum]
      ring

/-- The second raw moment is covariance plus the product of first moments. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant7680c2a97b17137e636d1aeb81776d034b4469fdefb99f8037eb3023e43e2568.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant7680c2a97b17137e636d1aeb81776d034b4469fdefb99f8037eb3023e43e2568.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d387222618792ab4e97ba17e310c70ded68b8bfd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
