# broad_mean_tends_to_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:522a32fc-ca82-f716-e83a-3a5d0150d400",
  "kind": "theorem",
  "lexical_name": "broad_mean_tends_to_one",
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
  "slug": "broad-mean-tends-to-one--8d2cf54b0d1c09fb0d5ced38",
  "source": {
    "blob": "f3b865810fc6e9703769a2811d9764eb2f65395f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 105,
    "path": "GRWTSK/Analysis/MeasureTheory/NormalizedShapeCountermodels/Variantfc653803b39e25c6a47ce5f5e74fbe3217768e381ae29227dc449aa563b42177.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d2cf54b0d1c09fb0d5ced38691167ddc7ff440922609ca8f6e750cc42414bae",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/NormalizedShapeCountermodels/Variantfc653803b39e25c6a47ce5f5e74fbe3217768e381ae29227dc449aa563b42177.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:522a32fc-ca82-f716-e83a-3a5d0150d400`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem broad_mean_tends_to_one :
    Tendsto (fun k : ℕ => ∫ x in (0 : ℝ)..1, broad k x) atTop (𝓝 1) := by
  have hlim : ∀ᵐ x ∂volume.restrict (Set.Ioc (0 : ℝ) 1),
      Tendsto (fun k : ℕ => broad k x) atTop (𝓝 (1 : ℝ)) := by
    filter_upwards [self_mem_ae_restrict measurableSet_Ioc,
      (volume.restrict (Set.Ioc (0 : ℝ) 1)).ae_ne 1] with x hx hone
    have hstrict : (2 * x - 1) ^ 2 < 1 := by
      nlinarith [mul_pos hx.1 (sub_pos.mpr (lt_of_le_of_ne hx.2 hone))]
    have hpow := tendsto_pow_atTop_nhds_zero_of_lt_one (sq_nonneg (2 * x - 1)) hstrict
    simpa only [broad, pow_mul, sub_zero] using tendsto_const_nhds.sub hpow
  have h := tendsto_integral_of_dominated_convergence (μ := volume.restrict (Set.Ioc (0 : ℝ) 1))
    (fun _ => (1 : ℝ)) (fun k => (broad_continuous k).aestronglyMeasurable)
    panel_constant_integrable (fun k => ?_) hlim
  · have hone : (∫ x in Set.Ioc (0 : ℝ) 1, (1 : ℝ)) = 1 := by
      rw [← intervalIntegral.integral_of_le (by norm_num : (0 : ℝ) ≤ 1)]
      norm_num
    simpa only [intervalIntegral.integral_of_le (by norm_num : (0 : ℝ) ≤ 1), hone] using h
  · filter_upwards [self_mem_ae_restrict measurableSet_Ioc] with x hx
    have hb := broad_bounds k ⟨hx.1.le, hx.2⟩
    simpa only [Real.norm_eq_abs, abs_of_nonneg hb.1] using hb.2

end
end GRWTSK.RiemannHypothesis.Conversation.NormalizedShapeCountermodels
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/NormalizedShapeCountermodels/Variantfc653803b39e25c6a47ce5f5e74fbe3217768e381ae29227dc449aa563b42177.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/NormalizedShapeCountermodels/Variantfc653803b39e25c6a47ce5f5e74fbe3217768e381ae29227dc449aa563b42177.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3b865810fc6e9703769a2811d9764eb2f65395f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
