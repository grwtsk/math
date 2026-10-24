# rawFourth_eq_fourthCumulant_add_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94f75016-47c0-ad09-fae3-24d875ed032e",
  "kind": "theorem",
  "lexical_name": "rawFourth_eq_fourthCumulant_add_lower",
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
  "slug": "rawfourth-eq-fourthcumulant-add-lower--db6268ed5e339dba9a5ce191",
  "source": {
    "blob": "97cfa883eb91f8a8c1a43bca23046008cbd0769f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 959,
    "line": 814,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Bdc4daf9e895848738ab26142b3a1ae917c66e36d0d77ce2203e90b87b605464OrderFourEnumera/Variantc9c51bce04fe572646728ad00ee0f2d034a032478b8e3339a659fc0311581a21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db6268ed5e339dba9a5ce19106b094de5148a2b481cba692b8cffc214794a319",
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

Occurrence: `result:94f75016-47c0-ad09-fae3-24d875ed032e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 814–959.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rawFourth_eq_fourthCumulant_add_lower
    (theta u v w z : E) :
    (∑ i : I,
      F.probability theta i *
        F.statistic i u *
        F.statistic i v *
        F.statistic i w *
        F.statistic i z)
      =
    F.fourthCumulantCovector theta u v w z
      +
    F.thirdCumulantOperator theta u v w * F.centroid theta z
      +
    F.thirdCumulantOperator theta u v z * F.centroid theta w
      +
    F.thirdCumulantOperator theta u w z * F.centroid theta v
      +
    F.thirdCumulantOperator theta v w z * F.centroid theta u
      +
    F.covarianceOperator theta u v * F.covarianceOperator theta w z
      +
    F.covarianceOperator theta u w * F.covarianceOperator theta v z
      +
    F.covarianceOperator theta u z * F.covarianceOperator theta v w
      +
    F.covarianceOperator theta u v * F.centroid theta w * F.centroid theta z
      +
    F.covarianceOperator theta u w * F.centroid theta v * F.centroid theta z
      +
    F.covarianceOperator theta u z * F.centroid theta v * F.centroid theta w
      +
    F.covarianceOperator theta v w * F.centroid theta u * F.centroid theta z
      +
    F.covarianceOperator theta v z * F.centroid theta u * F.centroid theta w
      +
    F.covarianceOperator theta w z * F.centroid theta u * F.centroid theta v
      +
    F.centroid theta u * F.centroid theta v *
      F.centroid theta w * F.centroid theta z := by
  have hcentral :=
    F.fourthCentralMomentOperator_eq_raw_expansion theta u v w z
  have hfour :=
    F.fourthCumulant_eq_centeredFourth_sub_pairings theta u v w z
  have r3uvw :
      (∑ i : I,
        F.probability theta i *
          F.statistic i u * F.statistic i v * F.statistic i w) =
        F.thirdCumulantOperator theta u v w +
          F.covarianceOperator theta u v * F.centroid theta w +
          F.covarianceOperator theta u w * F.centroid theta v +
          F.covarianceOperator theta v w * F.centroid theta u +
          F.centroid theta u * F.centroid theta v * F.centroid theta w := by
    have h := F.thirdCumulantOperator_eq_rawThird_sub_lower theta u v w
    ring_nf at h ⊢
    linarith
  have r3uvz :
      (∑ i : I,
        F.probability theta i *
          F.statistic i u * F.statistic i v * F.statistic i z) =
        F.thirdCumulantOperator theta u v z +
          F.covarianceOperator theta u v * F.centroid theta z +
          F.covarianceOperator theta u z * F.centroid theta v +
          F.covarianceOperator theta v z * F.centroid theta u +
          F.centroid theta u * F.centroid theta v * F.centroid theta z := by
    have h := F.thirdCumulantOperator_eq_rawThird_sub_lower theta u v z
    ring_nf at h ⊢
    linarith
  have r3uwz :
      (∑ i : I,
        F.probability theta i *
          F.statistic i u * F.statistic i w * F.statistic i z) =
        F.thirdCumulantOperator theta u w z +
          F.covarianceOperator theta u w * F.centroid theta z +
          F.covarianceOperator theta u z * F.centroid theta w +
          F.covarianceOperator theta w z * F.centroid theta u +
          F.centroid theta u * F.centroid theta w * F.centroid theta z := by
    have h := F.thirdCumulantOperator_eq_rawThird_sub_lower theta u w z
    ring_nf at h ⊢
    linarith
  have r3vwz :
      (∑ i : I,
        F.probability theta i *
          F.statistic i v * F.statistic i w * F.statistic i z) =
        F.thirdCumulantOperator theta v w z +
          F.covarianceOperator theta v w * F.centroid theta z +
          F.covarianceOperator theta v z * F.centroid theta w +
          F.covarianceOperator theta w z * F.centroid theta v +
          F.centroid theta v * F.centroid theta w * F.centroid theta z := by
    have h := F.thirdCumulantOperator_eq_rawThird_sub_lower theta v w z
    ring_nf at h ⊢
    linarith
  have r2uv :
      (∑ i : I,
        F.probability theta i * F.statistic i u * F.statistic i v) =
        F.covarianceOperator theta u v +
          F.centroid theta u * F.centroid theta v := by
    have h := F.covarianceOperator_eq_rawSecond_sub_centroid_mul theta u v
    ring_nf at h ⊢
    linarith
  have r2uw :
      (∑ i : I,
        F.probability theta i * F.statistic i u * F.statistic i w) =
        F.covarianceOperator theta u w +
          F.centroid theta u * F.centroid theta w := by
    have h := F.covarianceOperator_eq_rawSecond_sub_centroid_mul theta u w
    ring_nf at h ⊢
    linarith
  have r2uz :
      (∑ i : I,
        F.probability theta i * F.statistic i u * F.statistic i z) =
        F.covarianceOperator theta u z +
          F.centroid theta u * F.centroid theta z := by
    have h := F.covarianceOperator_eq_rawSecond_sub_centroid_mul theta u z
    ring_nf at h ⊢
    linarith
  have r2vw :
      (∑ i : I,
        F.probability theta i * F.statistic i v * F.statistic i w) =
        F.covarianceOperator theta v w +
          F.centroid theta v * F.centroid theta w := by
    have h := F.covarianceOperator_eq_rawSecond_sub_centroid_mul theta v w
    ring_nf at h ⊢
    linarith
  have r2vz :
      (∑ i : I,
        F.probability theta i * F.statistic i v * F.statistic i z) =
        F.covarianceOperator theta v z +
          F.centroid theta v * F.centroid theta z := by
    have h := F.covarianceOperator_eq_rawSecond_sub_centroid_mul theta v z
    ring_nf at h ⊢
    linarith
  have r2wz :
      (∑ i : I,
        F.probability theta i * F.statistic i w * F.statistic i z) =
        F.covarianceOperator theta w z +
          F.centroid theta w * F.centroid theta z := by
    have h := F.covarianceOperator_eq_rawSecond_sub_centroid_mul theta w z
    ring_nf at h ⊢
    linarith
  rw [r3uvw, r3uvz, r3uwz, r3vwz,
    r2uv, r2uw, r2uz, r2vw, r2vz, r2wz] at hcentral
  ring_nf at hcentral hfour ⊢
  linarith

/-- The raw fourth hierarchy equals the verified fourth cumulant plus the
complete lower-order partition correction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Bdc4daf9e895848738ab26142b3a1ae917c66e36d0d77ce2203e90b87b605464OrderFourEnumera/Variantc9c51bce04fe572646728ad00ee0f2d034a032478b8e3339a659fc0311581a21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Bdc4daf9e895848738ab26142b3a1ae917c66e36d0d77ce2203e90b87b605464OrderFourEnumera/Variantc9c51bce04fe572646728ad00ee0f2d034a032478b8e3339a659fc0311581a21.lean#L814).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97cfa883eb91f8a8c1a43bca23046008cbd0769f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
