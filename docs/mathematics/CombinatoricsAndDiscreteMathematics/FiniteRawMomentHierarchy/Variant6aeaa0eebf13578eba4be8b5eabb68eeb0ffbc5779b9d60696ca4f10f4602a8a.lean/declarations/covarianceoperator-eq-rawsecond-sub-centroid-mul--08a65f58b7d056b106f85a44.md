# covarianceOperator_eq_rawSecond_sub_centroid_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9cfb14e89f4b6a319e7f5b54e6798029adc9c6c4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6aeaa0eebf13578eba4be8b5eabb68eeb0ffbc5779b9d60696ca4f10f4602a8a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d9cf2b48-64e5-a7d3-963a-27fe58ba6678",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d85e4020-358a-a83a-4e03-aa4863923e6f",
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
  "slug": "covarianceoperator-eq-rawsecond-sub-centroid-mul--08a65f58b7d056b106f85a44",
  "source": {
    "blob": "9cfb14e89f4b6a319e7f5b54e6798029adc9c6c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 96,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant6aeaa0eebf13578eba4be8b5eabb68eeb0ffbc5779b9d60696ca4f10f4602a8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08a65f58b7d056b106f85a44590e5016b1868641475ea8289b704336ba50e4a0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant6aeaa0eebf13578eba4be8b5eabb68eeb0ffbc5779b9d60696ca4f10f4602a8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d85e4020-358a-a83a-4e03-aa4863923e6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–170.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant6aeaa0eebf13578eba4be8b5eabb68eeb0ffbc5779b9d60696ca4f10f4602a8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant6aeaa0eebf13578eba4be8b5eabb68eeb0ffbc5779b9d60696ca4f10f4602a8a.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cfb14e89f4b6a319e7f5b54e6798029adc9c6c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
