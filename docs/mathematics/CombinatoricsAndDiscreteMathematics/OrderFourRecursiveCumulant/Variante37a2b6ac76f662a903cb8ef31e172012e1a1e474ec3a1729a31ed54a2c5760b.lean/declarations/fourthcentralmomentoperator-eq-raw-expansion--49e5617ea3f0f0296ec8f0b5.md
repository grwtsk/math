# fourthCentralMomentOperator_eq_raw_expansion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "22927ac6394b40e2555b84edddb743a9af80b540",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 780,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e37a2b6ac76f662a903cb8ef31e172012e1a1e474ec3a1729a31ed54a2c5760b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:965cba43-cefa-4f2c-48ef-3be874ef56c2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ab22e8e9-a441-ade6-fc6d-d17f088c3c12",
  "kind": "theorem",
  "lexical_name": "fourthCentralMomentOperator_eq_raw_expansion",
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
  "slug": "fourthcentralmomentoperator-eq-raw-expansion--49e5617ea3f0f0296ec8f0b5",
  "source": {
    "blob": "22927ac6394b40e2555b84edddb743a9af80b540",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 935,
    "line": 780,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderFourRecursiveCumulant/Variante37a2b6ac76f662a903cb8ef31e172012e1a1e474ec3a1729a31ed54a2c5760b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49e5617ea3f0f0296ec8f0b5c7a3107e37d6276f224fedcb3b441e34c70103a4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderFourRecursiveCumulant/Variante37a2b6ac76f662a903cb8ef31e172012e1a1e474ec3a1729a31ed54a2c5760b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab22e8e9-a441-ade6-fc6d-d17f088c3c12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 780–935.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourthCentralMomentOperator_eq_raw_expansion
    (theta u v w z : E) :
    F.fourthCentralMomentOperator theta u v w z =
      (∑ i : I,
        F.probability theta i *
          F.statistic i u *
          F.statistic i v *
          F.statistic i w *
          F.statistic i z)
      -
      (∑ i : I,
        F.probability theta i *
          F.statistic i u *
          F.statistic i v *
          F.statistic i w) * F.centroid theta z
      -
      (∑ i : I,
        F.probability theta i *
          F.statistic i u *
          F.statistic i v *
          F.statistic i z) * F.centroid theta w
      -
      (∑ i : I,
        F.probability theta i *
          F.statistic i u *
          F.statistic i w *
          F.statistic i z) * F.centroid theta v
      -
      (∑ i : I,
        F.probability theta i *
          F.statistic i v *
          F.statistic i w *
          F.statistic i z) * F.centroid theta u
      +
      (∑ i : I,
        F.probability theta i *
          F.statistic i u *
          F.statistic i v) *
          F.centroid theta w * F.centroid theta z
      +
      (∑ i : I,
        F.probability theta i *
          F.statistic i u *
          F.statistic i w) *
          F.centroid theta v * F.centroid theta z
      +
      (∑ i : I,
        F.probability theta i *
          F.statistic i u *
          F.statistic i z) *
          F.centroid theta v * F.centroid theta w
      +
      (∑ i : I,
        F.probability theta i *
          F.statistic i v *
          F.statistic i w) *
          F.centroid theta u * F.centroid theta z
      +
      (∑ i : I,
        F.probability theta i *
          F.statistic i v *
          F.statistic i z) *
          F.centroid theta u * F.centroid theta w
      +
      (∑ i : I,
        F.probability theta i *
          F.statistic i w *
          F.statistic i z) *
          F.centroid theta u * F.centroid theta v
      -
      3 * (F.centroid theta u * F.centroid theta v *
        F.centroid theta w * F.centroid theta z) := by
  classical
  rw [F.fourthCentralMomentOperator_apply]
  simp_rw [F.centeredStatistic_apply]
  calc
    (∑ i : I,
      F.probability theta i *
        (F.statistic i u - F.centroid theta u) *
        (F.statistic i v - F.centroid theta v) *
        (F.statistic i w - F.centroid theta w) *
        (F.statistic i z - F.centroid theta z))
        =
      ∑ i : I,
        (F.probability theta i *
            F.statistic i u * F.statistic i v *
            F.statistic i w * F.statistic i z
        -
        (F.probability theta i *
            F.statistic i u * F.statistic i v *
            F.statistic i w) * F.centroid theta z
        -
        (F.probability theta i *
            F.statistic i u * F.statistic i v *
            F.statistic i z) * F.centroid theta w
        -
        (F.probability theta i *
            F.statistic i u * F.statistic i w *
            F.statistic i z) * F.centroid theta v
        -
        (F.probability theta i *
            F.statistic i v * F.statistic i w *
            F.statistic i z) * F.centroid theta u
        +
        (F.probability theta i *
            F.statistic i u * F.statistic i v) *
            F.centroid theta w * F.centroid theta z
        +
        (F.probability theta i *
            F.statistic i u * F.statistic i w) *
            F.centroid theta v * F.centroid theta z
        +
        (F.probability theta i *
            F.statistic i u * F.statistic i z) *
            F.centroid theta v * F.centroid theta w
        +
        (F.probability theta i *
            F.statistic i v * F.statistic i w) *
            F.centroid theta u * F.centroid theta z
        +
        (F.probability theta i *
            F.statistic i v * F.statistic i z) *
            F.centroid theta u * F.centroid theta w
        +
        (F.probability theta i *
            F.statistic i w * F.statistic i z) *
            F.centroid theta u * F.centroid theta v
        -
        (F.probability theta i * F.statistic i u) *
            F.centroid theta v * F.centroid theta w * F.centroid theta z
        -
        (F.probability theta i * F.statistic i v) *
            F.centroid theta u * F.centroid theta w * F.centroid theta z
        -
        (F.probability theta i * F.statistic i w) *
            F.centroid theta u * F.centroid theta v * F.centroid theta z
        -
        (F.probability theta i * F.statistic i z) *
            F.centroid theta u * F.centroid theta v * F.centroid theta w
        +
        F.probability theta i *
            F.centroid theta u * F.centroid theta v *
            F.centroid theta w * F.centroid theta z) := by
      apply Finset.sum_congr rfl
      intro i hi
      ring
    _ = _ := by
      simp only [Finset.sum_sub_distrib, Finset.sum_add_distrib, ← Finset.sum_mul]
      rw [← F.centroid_apply theta u,
        ← F.centroid_apply theta v,
        ← F.centroid_apply theta w,
        ← F.centroid_apply theta z,
        F.probability_sum]
      ring

/-- Raw fourth moment in the standard cumulant expansion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderFourRecursiveCumulant/Variante37a2b6ac76f662a903cb8ef31e172012e1a1e474ec3a1729a31ed54a2c5760b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderFourRecursiveCumulant/Variante37a2b6ac76f662a903cb8ef31e172012e1a1e474ec3a1729a31ed54a2c5760b.lean#L780).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22927ac6394b40e2555b84edddb743a9af80b540` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
