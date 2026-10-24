# normalized_negative_frequency_window

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68c89e84-c20a-29f2-2b13-fd21ace76350",
  "kind": "theorem",
  "lexical_name": "normalized_negative_frequency_window",
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
  "slug": "normalized-negative-frequency-window--87c64747ae000f5d5968c114",
  "source": {
    "blob": "b000438a5a0b3a1c559434fec0f6baff84e7a4a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 147,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/24c5cbd6f06dafdadf3fdacf975bb82596b65e6819683a3185bb641d67c1daffFullQuadraticObs/Variantc7b1aa99fae387b871b7ee95f236c04c700c79ffa31d8bae924e9da7b6b3c511.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87c64747ae000f5d5968c114361f882e58e21367ba719ae4515db0dab0a81e57",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/24c5cbd6f06dafdadf3fdacf975bb82596b65e6819683a3185bb641d67c1daffFullQuadraticObs/Variantc7b1aa99fae387b871b7ee95f236c04c700c79ffa31d8bae924e9da7b6b3c511.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68c89e84-c20a-29f2-2b13-fd21ace76350`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalized_negative_frequency_window (M : ℝ) :
    ∃ A : ℝ, 1 ≤ A ∧ ∃ f : ℝ → ℝ,
      MemLp f 2 volume ∧ Integrable (fun ξ ↦ f ξ ^ 2) ∧
      (∫ ξ, f ξ ^ 2) = 1 ∧
      Integrable (fun ξ ↦ archimedeanMultiplier ξ * f ξ ^ 2) ∧
      Integrable (fun ξ ↦ spectralMultiplier A ξ * f ξ ^ 2) ∧
      (∫ ξ, spectralMultiplier A ξ * f ξ ^ 2) < M := by
  obtain ⟨A, hA, ε, hε, hneg⟩ := full_multiplier_negative_interval (M - 1)
  let f : ℝ → ℝ := (Icc (-ε / 2) (ε / 2)).indicator
    (fun _ ↦ 1 / Real.sqrt ε)
  have horder : -ε / 2 ≤ ε / 2 := by linarith
  have hsqrt : Real.sqrt ε ≠ 0 := ne_of_gt (Real.sqrt_pos.mpr hε)
  have hsq : (fun ξ ↦ f ξ ^ 2) = (Icc (-ε / 2) (ε / 2)).indicator
      (fun _ ↦ (1 / Real.sqrt ε) ^ 2) := by
    funext ξ
    simp only [f, indicator_apply]
    split_ifs <;> simp
  have hnorm : (∫ ξ, f ξ ^ 2) = 1 := by
    rw [hsq, Realization.zeroExtension_integral _ _ _ horder,
      intervalIntegral.integral_const, smul_eq_mul]
    have hsquare : (1 / Real.sqrt ε) ^ 2 = 1 / ε := by
      rw [div_pow, one_pow, Real.sq_sqrt hε.le]
    rw [hsquare]
    field_simp
    ring
  have hGamma : (fun ξ ↦ archimedeanMultiplier ξ * f ξ ^ 2) =
      (Icc (-ε / 2) (ε / 2)).indicator
        (fun ξ ↦ archimedeanMultiplier ξ * (1 / Real.sqrt ε) ^ 2) := by
    funext ξ
    simp only [f, indicator_apply]
    split_ifs <;> simp
  have hfull : (fun ξ ↦ spectralMultiplier A ξ * f ξ ^ 2) =
      (Icc (-ε / 2) (ε / 2)).indicator
        (fun ξ ↦ spectralMultiplier A ξ * (1 / Real.sqrt ε) ^ 2) := by
    funext ξ
    simp only [f, indicator_apply]
    split_ifs <;> simp
  refine ⟨A, hA, f, ?_, ?_, hnorm, ?_, ?_, ?_⟩
  · exact memLp_indicator_const 2 measurableSet_Icc _
      (Or.inr (measure_Icc_lt_top.ne))
  · rw [hsq]
    exact Realization.integrable_zeroExtension _ continuous_const _ _
  · rw [hGamma]
    exact Realization.integrable_zeroExtension _
      (AdmissionDirect.actual_multiplier_continuous.mul continuous_const) _ _
  · rw [hfull]
    exact Realization.integrable_zeroExtension _
      ((spectral_multiplier_continuous A).mul continuous_const) _ _
  · rw [hfull, Realization.zeroExtension_integral _ _ _ horder]
    have hb := intervalIntegral.integral_mono_on (μ := volume) horder
      (((spectral_multiplier_continuous A).mul continuous_const).intervalIntegrable _ _)
      (continuous_const.intervalIntegrable _ _)
      (fun ξ hξ ↦ show spectralMultiplier A ξ * (1 / Real.sqrt ε) ^ 2 ≤
        (M - 1) * (1 / Real.sqrt ε) ^ 2 from
        mul_le_mul_of_nonneg_right (hneg ξ (by
          have habs : |ξ| ≤ ε / 2 := abs_le.mpr ⟨by linarith [hξ.1], hξ.2⟩
          linarith)).le (sq_nonneg _))
    have heq : (∫ _ in (-ε / 2)..(ε / 2),
        (M - 1) * (1 / Real.sqrt ε) ^ 2) = M - 1 := by
      rw [intervalIntegral.integral_const, smul_eq_mul,
        div_pow, one_pow, Real.sq_sqrt hε.le]
      field_simp
      ring
    rw [heq] at hb
    change (∫ ξ in (-ε / 2)..(ε / 2),
      spectralMultiplier A ξ * (1 / Real.sqrt ε) ^ 2) ≤ M - 1 at hb
    exact hb.trans_lt (by linarith)

/-- On the actual common Gamma form domain, unit Hilbert vectors have arbitrarily negative
complete form values as the radius varies. These vectors need not belong to the source orbit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/24c5cbd6f06dafdadf3fdacf975bb82596b65e6819683a3185bb641d67c1daffFullQuadraticObs/Variantc7b1aa99fae387b871b7ee95f236c04c700c79ffa31d8bae924e9da7b6b3c511.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/24c5cbd6f06dafdadf3fdacf975bb82596b65e6819683a3185bb641d67c1daffFullQuadraticObs/Variantc7b1aa99fae387b871b7ee95f236c04c700c79ffa31d8bae924e9da7b6b3c511.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b000438a5a0b3a1c559434fec0f6baff84e7a4a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
