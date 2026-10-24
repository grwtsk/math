# logarithmic_profile_lower_price

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18d0b796-b6bd-eed8-582b-8b6aabdd6de2",
  "kind": "theorem",
  "lexical_name": "logarithmic_profile_lower_price",
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
  "slug": "logarithmic-profile-lower-price--cb93d34e796030bdc4175b85",
  "source": {
    "blob": "962017c6a7b76278922085084985d6444a906af2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 78,
    "path": "GRWTSK/Analysis/Inequalities/LogarithmicProfileIntegralPrices.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb93d34e796030bdc4175b854dcf051f0009e30689cd9b711f208863531b28c4",
  "verification": {
    "reference": "docs/verification/Analysis/Inequalities/LogarithmicProfileIntegralPrices.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18d0b796-b6bd-eed8-582b-8b6aabdd6de2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logarithmic_profile_lower_price {F : ℝ → ℝ} {t B : ℝ}
    (admitted : IntegrableOn (fun x : ℝ ↦ Real.log x / Real.sqrt x * F (t + Real.log x))
      (Ioi 0)) (price : ∀ u : ℝ, |F u| ≤ B) :
    |∫ x in (0 : ℝ)..1, Real.log x / Real.sqrt x * F (t + Real.log x)| ≤ 4 * B := by
  obtain ⟨weightL1, weightValue⟩ := LogarithmicProfileWeights.logarithmic_sqrt_lower_weight
  have admittedLower := admitted.mono_set
    (show Ioo (0 : ℝ) 1 ⊆ Ioi 0 from fun _ hx ↦ hx.1)
  have weightedL1 := weightL1.const_mul B
  have pointwise : ∀ x ∈ Ioo (0 : ℝ) 1,
      |Real.log x / Real.sqrt x * F (t + Real.log x)| ≤
        B * ((-Real.log x) / Real.sqrt x) := by
    intro x hx
    have logNonpos := Real.log_nonpos hx.1.le hx.2.le
    have weightNonneg : 0 ≤ (-Real.log x) / Real.sqrt x :=
      div_nonneg (neg_nonneg.mpr logNonpos) (Real.sqrt_nonneg x)
    rw [abs_mul, abs_div, abs_of_nonpos logNonpos, abs_of_pos (Real.sqrt_pos.mpr hx.1)]
    exact (mul_le_mul_of_nonneg_left (price (t + Real.log x)) weightNonneg).trans_eq
      (mul_comm _ _)
  rw [intervalIntegral.integral_of_le (by norm_num : (0 : ℝ) ≤ 1),
    integral_Ioc_eq_integral_Ioo]
  calc
    _ ≤ ∫ x in Ioo (0 : ℝ) 1, |Real.log x / Real.sqrt x * F (t + Real.log x)| :=
      abs_integral_le_integral_abs
    _ ≤ ∫ x in Ioo (0 : ℝ) 1, B * ((-Real.log x) / Real.sqrt x) :=
      setIntegral_mono_on admittedLower.abs weightedL1 measurableSet_Ioo pointwise
    _ = 4 * B := by rw [integral_const_mul, weightValue]; ring

end

end GRWTSK.Analysis.Inequalities.LogarithmicProfileIntegralPrices
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Inequalities/LogarithmicProfileIntegralPrices.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Inequalities/LogarithmicProfileIntegralPrices.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `962017c6a7b76278922085084985d6444a906af2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
