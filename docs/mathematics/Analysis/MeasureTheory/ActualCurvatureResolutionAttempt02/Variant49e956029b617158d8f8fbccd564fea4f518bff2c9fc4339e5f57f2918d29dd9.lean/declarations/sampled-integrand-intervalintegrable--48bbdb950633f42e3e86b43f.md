# sampled_integrand_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c314067-534a-0e74-ebad-f5e2afaedf34",
  "kind": "theorem",
  "lexical_name": "sampled_integrand_intervalIntegrable",
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
  "slug": "sampled-integrand-intervalintegrable--48bbdb950633f42e3e86b43f",
  "source": {
    "blob": "df28628fd85ff8bfa88b501544ddc1421c565cea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 27,
    "path": "GRWTSK/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt02/Variant49e956029b617158d8f8fbccd564fea4f518bff2c9fc4339e5f57f2918d29dd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48bbdb950633f42e3e86b43fcfdf762006ffbf01b77597b0ba64b2d883339b05",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt02/Variant49e956029b617158d8f8fbccd564fea4f518bff2c9fc4339e5f57f2918d29dd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c314067-534a-0e74-ebad-f5e2afaedf34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sampled_integrand_intervalIntegrable {A : ℝ} {s : ℝ → ℝ}
    (hA : 1≤A) (hs : Measurable s)
    (hrange : ∀ u∈Icc (0:ℝ) (2*A),s u∈Icc (0:ℝ) (2*A)) :
    IntervalIntegrable (fun u => criticalDiscrepancyBridge A (s u)*pairedTailCurvature A u)
      volume 0 (2*A) := by
  have hi := pairedTailCurvature_intervalIntegrable hA 0 (2*A)
  have hm := ((criticalDiscrepancyBridge_continuous A).measurable.comp hs).aestronglyMeasurable
    (μ:=volume.restrict (uIoc (0:ℝ) (2*A)))
  apply (hi.abs.const_mul ((389/80:ℝ)*A)).mono_fun' (hm.mul hi.aestronglyMeasurable_restrict_uIoc)
  filter_upwards [ae_restrict_mem (measurableSet_uIoc)] with u hu
  have huc : u∈Icc (0:ℝ) (2*A) := by
    rw [uIoc_of_le (by linarith : (0:ℝ)≤2*A)] at hu
    exact Ioc_subset_Icc_self hu
  dsimp only [Pi.mul_apply,Function.comp_def]
  rw [Real.norm_eq_abs,abs_mul]
  exact mul_le_mul_of_nonneg_right
    (actual_bridge_abs_le_scale (by linarith : 0<A) (hrange u huc).1 (hrange u huc).2)
    (abs_nonneg _)

/-- A measurable coordinate sampler carries an explicit weighted-error contract. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt02/Variant49e956029b617158d8f8fbccd564fea4f518bff2c9fc4339e5f57f2918d29dd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt02/Variant49e956029b617158d8f8fbccd564fea4f518bff2c9fc4339e5f57f2918d29dd9.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df28628fd85ff8bfa88b501544ddc1421c565cea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
