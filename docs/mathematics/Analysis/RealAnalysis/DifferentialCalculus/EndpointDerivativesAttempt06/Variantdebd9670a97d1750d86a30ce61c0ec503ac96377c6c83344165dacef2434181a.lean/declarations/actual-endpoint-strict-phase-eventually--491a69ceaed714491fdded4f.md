# actual_endpoint_strict_phase_eventually

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a5a8727-71fe-b1fd-826f-c57bd731aff4",
  "kind": "theorem",
  "lexical_name": "actual_endpoint_strict_phase_eventually",
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
  "slug": "actual-endpoint-strict-phase-eventually--491a69ceaed714491fdded4f",
  "source": {
    "blob": "1457834c911f9c6a358a51c6abb90a4333a3c385",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 227,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variantdebd9670a97d1750d86a30ce61c0ec503ac96377c6c83344165dacef2434181a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:491a69ceaed714491fdded4fbc6141ded3497addff85e156b626dcc79c04bf0b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variantdebd9670a97d1750d86a30ce61c0ec503ac96377c6c83344165dacef2434181a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a5a8727-71fe-b1fd-826f-c57bd731aff4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_endpoint_strict_phase_eventually :
    ∀ᶠ A : ℝ in atTop, ∀ y∈Icc (1/2:ℝ) 1,
      deriv (criticalPrimeTest A) (2*A-y)<0 ∧
      0<deriv (deriv (criticalPrimeTest A)) (2*A-y) ∧
      ActualSecondAbel.pairedTailCurvature A (2*A-y)<0 := by
  filter_upwards [eventually_ge_atTop (1:ℝ),
    actual_endpoint_uniform_derivative_remainders (ε:=1) (by norm_num)] with A hA hR
  intro y hy
  have hy0 : y∈Icc (0:ℝ) 1 := ⟨by linarith [hy.1],hy.2⟩
  have hypos : 0<y := by linarith [hy.1]
  have hu : 2*A-y∈Ioo (0:ℝ) (2*A) := by constructor <;> linarith [hy.2]
  have hpow4 := pow_le_pow_left₀ (by norm_num : (0:ℝ)≤1/2) hy.1 4
  have hpow3 := pow_le_pow_left₀ (by norm_num : (0:ℝ)≤1/2) hy.1 3
  norm_num at hpow4 hpow3
  have hs0 := endpoint_leading_slope_upper hy0
  have hc0 := endpoint_leading_curvature_lower hy0
  have hsR := (abs_lt.mp (hR y hy).1).2
  have hcR := (abs_lt.mp (hR y hy).2).1
  have hs : endpointFullSlope A⁻¹ y<0 := by linarith
  have hc : 0<endpointFullCurvature A⁻¹ y := by linarith
  have hden : 0<A^9*sourceNormalization A :=
    mul_pos (pow_pos (by linarith : 0<A) _) (source_normalization_pos A hA)
  have hyid : 2*A-(2*A-y)=y := by ring
  have hg1 := (actual_endpoint_first_hasDerivAt hA hu).deriv
  have hg2 := (actual_endpoint_second_hasDerivAt hA hu).deriv
  rw [hyid] at hg1 hg2
  have hn : deriv (criticalPrimeTest A) (2*A-y)<0 := by
    rw [hg1]
    exact div_neg_of_neg_of_pos (mul_neg_of_pos_of_neg (Real.exp_pos _) hs) hden
  have hp : 0<deriv (deriv (criticalPrimeTest A)) (2*A-y) := by
    rw [hg2]
    exact div_pos (mul_pos (Real.exp_pos _) hc) hden
  exact ⟨hn,hp,actual_curvature_neg_of_negative_slope_positive_curvature hA hn hp⟩

end ContinuousResearch.EndpointDerivatives
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variantdebd9670a97d1750d86a30ce61c0ec503ac96377c6c83344165dacef2434181a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variantdebd9670a97d1750d86a30ce61c0ec503ac96377c6c83344165dacef2434181a.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1457834c911f9c6a358a51c6abb90a4333a3c385` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
