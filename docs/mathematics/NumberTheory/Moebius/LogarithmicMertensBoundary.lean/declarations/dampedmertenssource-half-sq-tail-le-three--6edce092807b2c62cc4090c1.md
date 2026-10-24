# dampedMertensSource_half_sq_tail_le_three

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9502bda3-6b85-0f17-6356-c53450da1367",
  "kind": "theorem",
  "lexical_name": "dampedMertensSource_half_sq_tail_le_three",
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
  "slug": "dampedmertenssource-half-sq-tail-le-three--6edce092807b2c62cc4090c1",
  "source": {
    "blob": "4b4a5f2f8bb5f822f55f3d75083c8da8ac214c22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 410,
    "line": 376,
    "path": "GRWTSK/NumberTheory/Moebius/LogarithmicMertensBoundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6edce092807b2c62cc4090c18e908c2a4b742070745da4a54590049229d8e0ed",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/LogarithmicMertensBoundary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9502bda3-6b85-0f17-6356-c53450da1367`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 376–410.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dampedMertensSource_half_sq_tail_le_three
    (hM : MertensLogSquareBound) {T : ℝ} (hT : 1 ≤ T) :
    (∫ u in (1 : ℝ)..T, dampedMertensSource (1 / 2) u ^ 2) ≤ 3 := by
  have hF2 := dampedMertensSource_half_sq_intervalIntegrable 1 T
  have hg : IntervalIntegrable (fun u : ℝ => 9 * u ^ (-(4 : ℝ))) volume 1 T := by
    apply ContinuousOn.intervalIntegrable_of_Icc hT
    intro u hu
    exact (continuousAt_const.mul
      (Real.continuousAt_rpow_const u (-(4 : ℝ))
        (Or.inl (by linarith [hu.1] : u ≠ 0)))).continuousWithinAt
  have hfinite :
      (∫ u in (1 : ℝ)..T, dampedMertensSource (1 / 2) u ^ 2) ≤
        ∫ u in (1 : ℝ)..T, 9 * u ^ (-(4 : ℝ)) := by
    apply intervalIntegral.integral_mono_on hT hF2 hg
    intro u hu
    exact dampedMertensSource_half_sq_le_tail hM hu.1
  have htailInt : IntegrableOn (fun u : ℝ => 9 * u ^ (-(4 : ℝ))) (Ioi 1) :=
    (integrableOn_Ioi_rpow_of_lt (by norm_num) (by norm_num)).const_mul 9
  have htail : (∫ u in (1 : ℝ)..T, 9 * u ^ (-(4 : ℝ))) ≤
      ∫ u in Ioi (1 : ℝ), 9 * u ^ (-(4 : ℝ)) := by
    rw [intervalIntegral.integral_of_le hT]
    apply setIntegral_mono_set htailInt
    · filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
      exact mul_nonneg (by norm_num)
        (Real.rpow_nonneg (zero_lt_one.trans hu).le _)
    exact ae_of_all _ (fun _ hu => hu.1)
  calc
    (∫ u in (1 : ℝ)..T, dampedMertensSource (1 / 2) u ^ 2) ≤
        ∫ u in (1 : ℝ)..T, 9 * u ^ (-(4 : ℝ)) := hfinite
    _ ≤ ∫ u in Ioi (1 : ℝ), 9 * u ^ (-(4 : ℝ)) := htail
    _ = 3 := by
      rw [integral_const_mul, integral_Ioi_rpow_of_lt (by norm_num) (by norm_num)]
      norm_num

/-- The complete finite boundary source has uniform squared mass at most four. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/LogarithmicMertensBoundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/LogarithmicMertensBoundary.lean#L376).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b4a5f2f8bb5f822f55f3d75083c8da8ac214c22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
