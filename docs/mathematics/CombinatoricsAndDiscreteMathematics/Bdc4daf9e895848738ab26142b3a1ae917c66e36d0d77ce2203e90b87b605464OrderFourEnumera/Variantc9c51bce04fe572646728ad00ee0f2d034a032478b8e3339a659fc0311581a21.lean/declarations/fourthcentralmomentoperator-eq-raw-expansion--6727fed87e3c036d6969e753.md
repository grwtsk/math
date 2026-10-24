# fourthCentralMomentOperator_eq_raw_expansion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ccad934e-77fd-16ec-25a9-bd0a3c7f7a2b",
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
  "slug": "fourthcentralmomentoperator-eq-raw-expansion--6727fed87e3c036d6969e753",
  "source": {
    "blob": "97cfa883eb91f8a8c1a43bca23046008cbd0769f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 813,
    "line": 658,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Bdc4daf9e895848738ab26142b3a1ae917c66e36d0d77ce2203e90b87b605464OrderFourEnumera/Variantc9c51bce04fe572646728ad00ee0f2d034a032478b8e3339a659fc0311581a21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6727fed87e3c036d6969e7538b216ceb2b1fa2a4238c587602c307b19d1fac66",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Bdc4daf9e895848738ab26142b3a1ae917c66e36d0d77ce2203e90b87b605464OrderFourEnumera/Variantc9c51bce04fe572646728ad00ee0f2d034a032478b8e3339a659fc0311581a21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ccad934e-77fd-16ec-25a9-bd0a3c7f7a2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 658–813.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Bdc4daf9e895848738ab26142b3a1ae917c66e36d0d77ce2203e90b87b605464OrderFourEnumera/Variantc9c51bce04fe572646728ad00ee0f2d034a032478b8e3339a659fc0311581a21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Bdc4daf9e895848738ab26142b3a1ae917c66e36d0d77ce2203e90b87b605464OrderFourEnumera/Variantc9c51bce04fe572646728ad00ee0f2d034a032478b8e3339a659fc0311581a21.lean#L658).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97cfa883eb91f8a8c1a43bca23046008cbd0769f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
