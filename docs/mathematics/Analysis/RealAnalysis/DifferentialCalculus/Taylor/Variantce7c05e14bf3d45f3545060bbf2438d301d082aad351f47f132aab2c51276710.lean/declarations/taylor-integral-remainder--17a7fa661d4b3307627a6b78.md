# taylor_integral_remainder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:094e75de-1ffc-2997-295c-0356ace6bf51",
  "kind": "theorem",
  "lexical_name": "taylor_integral_remainder",
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
  "slug": "taylor-integral-remainder--17a7fa661d4b3307627a6b78",
  "source": {
    "blob": "9dea21478fb0d66940ebb3a1d39bda7fd0f07ffc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 570,
    "line": 542,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantce7c05e14bf3d45f3545060bbf2438d301d082aad351f47f132aab2c51276710.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17a7fa661d4b3307627a6b7869f8581518faca76f94d536b94825a9f007d5a0c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantce7c05e14bf3d45f3545060bbf2438d301d082aad351f47f132aab2c51276710.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:094e75de-1ffc-2997-295c-0356ace6bf51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 542–570.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem taylor_integral_remainder [NormedAddCommGroup F] [NormedSpace ℝ F]
    [CompleteSpace F] {f : ℝ → F} {x x₀ : ℝ} {n : ℕ}
    (hf : ContDiffOn ℝ (n + 1 : ℕ) f (uIcc x₀ x)) :
    f x - taylorWithinEval f n (uIcc x₀ x) x₀ x =
      ∫ t in x₀..x, ((x - t) ^ n / n !) • iteratedDerivWithin (n + 1) f (uIcc x₀ x) t := by
  rcases eq_or_ne x₀ x with rfl | this
  · simp
  have : UniqueDiffOn ℝ [[x₀, x]] := uniqueDiffOn_uIcc this
  apply taylor_integral_remainder_aux
  intro k hk
  apply intervalIntegral.integral_smul_deriv_eq_deriv_smul_of_hasDerivAt
    (u := fun t ↦ (x - t) ^ k / k !) (v := fun t ↦ iteratedDerivWithin k f (uIcc x₀ x) t)
  · fun_prop
  · exact hf.continuousOn_iteratedDerivWithin (by norm_cast; omega) this
  · intro t ht
    apply DifferentiableAt.hasDerivAt
    fun_prop
  · intro t ht
    refine DifferentiableOn.hasDerivAt (s := uIoo x₀ x) ?_ (by grind [Ioo_mem_nhds, uIoo])
    exact hf.differentiableOn_iteratedDerivWithin (by norm_cast; omega) this
      |>.mono (by grind [uIoo, uIcc])
  · apply ContinuousOn.intervalIntegrable
    fun_prop
  · apply IntervalIntegrable.congr_ae (f := iteratedDerivWithin (k + 1) f [[x₀, x]])
    · exact hf.continuousOn_iteratedDerivWithin (by norm_cast; omega) this |>.intervalIntegrable
    · rw [Filter.EventuallyEq, MeasureTheory.ae_restrict_iff' (by measurability)]
      filter_upwards [MeasureTheory.volume.ae_ne x₀, MeasureTheory.volume.ae_ne x] with _ _ _ _
      rw [iteratedDerivWithin_succ]
      grind [derivWithin_of_mem_nhds, Icc_mem_nhds, uIcc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantce7c05e14bf3d45f3545060bbf2438d301d082aad351f47f132aab2c51276710.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantce7c05e14bf3d45f3545060bbf2438d301d082aad351f47f132aab2c51276710.lean#L542).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dea21478fb0d66940ebb3a1d39bda7fd0f07ffc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
