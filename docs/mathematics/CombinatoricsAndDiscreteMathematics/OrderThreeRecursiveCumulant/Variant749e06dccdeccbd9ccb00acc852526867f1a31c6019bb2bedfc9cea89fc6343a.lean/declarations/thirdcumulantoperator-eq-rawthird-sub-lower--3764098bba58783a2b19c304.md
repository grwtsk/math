# thirdCumulantOperator_eq_rawThird_sub_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71135fbf-1649-be5e-93ea-afa3b25dc393",
  "kind": "theorem",
  "lexical_name": "thirdCumulantOperator_eq_rawThird_sub_lower",
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
  "slug": "thirdcumulantoperator-eq-rawthird-sub-lower--3764098bba58783a2b19c304",
  "source": {
    "blob": "b43fa466f0b04b409e6b38a392ded858076abf54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 559,
    "line": 359,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant749e06dccdeccbd9ccb00acc852526867f1a31c6019bb2bedfc9cea89fc6343a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3764098bba58783a2b19c304a4891db7d5b7f9c606f375c6cf6658e208b177b3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant749e06dccdeccbd9ccb00acc852526867f1a31c6019bb2bedfc9cea89fc6343a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71135fbf-1649-be5e-93ea-afa3b25dc393`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 359–559.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thirdCumulantOperator_eq_rawThird_sub_lower
    (theta u v w : E) :
    F.thirdCumulantOperator theta u v w =
      (∑ i : I,
        F.probability theta i *
          F.statistic i u *
          F.statistic i v *
          F.statistic i w)
        -
      F.covarianceOperator theta u v * F.centroid theta w
        -
      F.covarianceOperator theta u w * F.centroid theta v
        -
      F.covarianceOperator theta v w * F.centroid theta u
        -
      F.centroid theta u *
        F.centroid theta v *
        F.centroid theta w := by
  classical
  rw [F.thirdCumulantOperator_apply]
  simp_rw [F.centeredStatistic_apply]
  have huv :
      (∑ i : I,
        F.probability theta i *
          F.statistic i u *
          F.statistic i v) =
        F.covarianceOperator theta u v +
          F.centroid theta u * F.centroid theta v := by
    calc
      (∑ i : I,
        F.probability theta i *
          F.statistic i u *
          F.statistic i v)
          =
        ((∑ i : I,
          F.probability theta i *
            F.statistic i u *
            F.statistic i v)
          - F.centroid theta u * F.centroid theta v)
          + F.centroid theta u * F.centroid theta v := by
            ring
      _ =
        F.covarianceOperator theta u v +
          F.centroid theta u * F.centroid theta v := by
            rw [← F.covarianceOperator_eq_rawSecond_sub_centroid_mul]
  have huw :
      (∑ i : I,
        F.probability theta i *
          F.statistic i u *
          F.statistic i w) =
        F.covarianceOperator theta u w +
          F.centroid theta u * F.centroid theta w := by
    calc
      (∑ i : I,
        F.probability theta i *
          F.statistic i u *
          F.statistic i w)
          =
        ((∑ i : I,
          F.probability theta i *
            F.statistic i u *
            F.statistic i w)
          - F.centroid theta u * F.centroid theta w)
          + F.centroid theta u * F.centroid theta w := by
            ring
      _ =
        F.covarianceOperator theta u w +
          F.centroid theta u * F.centroid theta w := by
            rw [← F.covarianceOperator_eq_rawSecond_sub_centroid_mul]
  have hvw :
      (∑ i : I,
        F.probability theta i *
          F.statistic i v *
          F.statistic i w) =
        F.covarianceOperator theta v w +
          F.centroid theta v * F.centroid theta w := by
    calc
      (∑ i : I,
        F.probability theta i *
          F.statistic i v *
          F.statistic i w)
          =
        ((∑ i : I,
          F.probability theta i *
            F.statistic i v *
            F.statistic i w)
          - F.centroid theta v * F.centroid theta w)
          + F.centroid theta v * F.centroid theta w := by
            ring
      _ =
        F.covarianceOperator theta v w +
          F.centroid theta v * F.centroid theta w := by
            rw [← F.covarianceOperator_eq_rawSecond_sub_centroid_mul]
  calc
    (∑ i : I,
      F.probability theta i *
        (F.statistic i u - F.centroid theta u) *
        (F.statistic i v - F.centroid theta v) *
        (F.statistic i w - F.centroid theta w))
        =
      ∑ i : I,
        (F.probability theta i *
            F.statistic i u *
            F.statistic i v *
            F.statistic i w
          -
          (F.probability theta i *
            F.statistic i u *
            F.statistic i v) *
            F.centroid theta w
          -
          (F.probability theta i *
            F.statistic i u *
            F.statistic i w) *
            F.centroid theta v
          -
          (F.probability theta i *
            F.statistic i v *
            F.statistic i w) *
            F.centroid theta u
          +
          (F.probability theta i *
            F.statistic i u) *
            F.centroid theta v *
            F.centroid theta w
          +
          (F.probability theta i *
            F.statistic i v) *
            F.centroid theta u *
            F.centroid theta w
          +
          (F.probability theta i *
            F.statistic i w) *
            F.centroid theta u *
            F.centroid theta v
          -
          F.probability theta i *
            F.centroid theta u *
            F.centroid theta v *
            F.centroid theta w) := by
      apply Finset.sum_congr rfl
      intro i hi
      ring
    _ =
      (∑ i : I,
        F.probability theta i *
          F.statistic i u *
          F.statistic i v *
          F.statistic i w)
        -
      (∑ i : I,
        F.probability theta i *
          F.statistic i u *
          F.statistic i v) *
          F.centroid theta w
        -
      (∑ i : I,
        F.probability theta i *
          F.statistic i u *
          F.statistic i w) *
          F.centroid theta v
        -
      (∑ i : I,
        F.probability theta i *
          F.statistic i v *
          F.statistic i w) *
          F.centroid theta u
        +
      2 *
        (F.centroid theta u *
          F.centroid theta v *
          F.centroid theta w) := by
      simp only [Finset.sum_sub_distrib,
        Finset.sum_add_distrib,
        ← Finset.sum_mul]
      rw [← F.centroid_apply theta u,
        ← F.centroid_apply theta v,
        ← F.centroid_apply theta w,
        F.probability_sum]
      ring
    _ =
      (∑ i : I,
        F.probability theta i *
          F.statistic i u *
          F.statistic i v *
          F.statistic i w)
        -
      F.covarianceOperator theta u v * F.centroid theta w
        -
      F.covarianceOperator theta u w * F.centroid theta v
        -
      F.covarianceOperator theta v w * F.centroid theta u
        -
      F.centroid theta u *
        F.centroid theta v *
        F.centroid theta w := by
      rw [huv, huw, hvw]
      ring

/-- The raw third moment is the third cumulant plus all proper-partition lower
terms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant749e06dccdeccbd9ccb00acc852526867f1a31c6019bb2bedfc9cea89fc6343a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant749e06dccdeccbd9ccb00acc852526867f1a31c6019bb2bedfc9cea89fc6343a.lean#L359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b43fa466f0b04b409e6b38a392ded858076abf54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
