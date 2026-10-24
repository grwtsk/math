# abs_arsinh_le_abs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "28b572b0cc4a3448c2243660b9aca79c59b34ff8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 227,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9913345f-8a7c-aff9-e92d-ecca139d760e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:24abad1f-2130-7505-b014-5dd6c63a281a",
  "kind": "theorem",
  "lexical_name": "abs_arsinh_le_abs",
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
  "slug": "abs-arsinh-le-abs--b2dd062d0fae90ed4cb3d8e5",
  "source": {
    "blob": "28b572b0cc4a3448c2243660b9aca79c59b34ff8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 227,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2dd062d0fae90ed4cb3d8e5d4277cec3aab38f0d0561789378232e15cb3d126",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24abad1f-2130-7505-b014-5dd6c63a281a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_arsinh_le_abs (x : ℝ) : |Real.arsinh x| ≤ |x| := by
  rcases le_or_gt 0 x with hx | hx
  · -- Case x ≥ 0: arsinh x ≥ 0 by monotonicity of arsinh
    rcases eq_or_lt_of_le hx with rfl | hx_pos
    · -- x = 0
      simp [Real.arsinh_zero]
    · -- x > 0
      have harsinh_nonneg : 0 ≤ Real.arsinh x := Real.arsinh_nonneg_iff.mpr (le_of_lt hx_pos)
      have hcont : ContinuousOn Real.arsinh (Set.Icc 0 x) :=
        Real.continuous_arsinh.continuousOn
      have hdiff : DifferentiableOn ℝ Real.arsinh (Set.Ioo 0 x) :=
        Real.differentiable_arsinh.differentiableOn
      obtain ⟨c, ⟨_, _⟩, hc_eq⟩ := exists_deriv_eq_slope Real.arsinh hx_pos hcont hdiff
      simp only [Real.arsinh_zero, sub_zero] at hc_eq
      have hderiv_bound : |deriv Real.arsinh c| ≤ 1 := arsinh_deriv_abs_le_one c
      rw [abs_of_nonneg harsinh_nonneg, abs_of_pos hx_pos]
      have heq : Real.arsinh x = deriv Real.arsinh c * x := by rw [hc_eq]; field_simp
      calc Real.arsinh x = deriv Real.arsinh c * x := heq
        _ ≤ |deriv Real.arsinh c * x| := le_abs_self _
        _ = |deriv Real.arsinh c| * |x| := abs_mul _ _
        _ ≤ 1 * x := by rw [abs_of_pos hx_pos]; nlinarith [abs_nonneg x, hderiv_bound]
        _ = x := one_mul _
  · -- Case x < 0: use oddness arsinh(-x) = -arsinh(x)
    have hx_neg : -x > 0 := by linarith
    -- For x < 0, arsinh x < 0 (arsinh is strictly increasing, arsinh 0 = 0)
    have harsinh_neg : Real.arsinh x < 0 := Real.arsinh_neg_iff.mpr hx
    have harsinh_neg_nonneg : 0 ≤ Real.arsinh (-x) := Real.arsinh_nonneg_iff.mpr (by linarith)
    -- Use the positive case on -x
    have hcont : ContinuousOn Real.arsinh (Set.Icc 0 (-x)) :=
      Real.continuous_arsinh.continuousOn
    have hdiff : DifferentiableOn ℝ Real.arsinh (Set.Ioo 0 (-x)) :=
      Real.differentiable_arsinh.differentiableOn
    obtain ⟨c, ⟨_, _⟩, hc_eq⟩ := exists_deriv_eq_slope Real.arsinh hx_neg hcont hdiff
    simp only [Real.arsinh_zero, sub_zero] at hc_eq
    have hderiv_bound : |deriv Real.arsinh c| ≤ 1 := arsinh_deriv_abs_le_one c
    rw [abs_of_neg harsinh_neg, abs_of_neg hx]
    have heq : Real.arsinh (-x) = deriv Real.arsinh c * (-x) := by
      have hne : (-x) ≠ 0 := ne_of_gt hx_neg
      have : deriv Real.arsinh c * (-x) = (Real.arsinh (-x) / (-x)) * (-x) := by rw [hc_eq]
      rw [this, div_mul_cancel₀ _ hne]
    calc -Real.arsinh x = Real.arsinh (-x) := by rw [Real.arsinh_neg]
      _ = deriv Real.arsinh c * (-x) := heq
      _ ≤ |deriv Real.arsinh c * (-x)| := le_abs_self _
      _ = |deriv Real.arsinh c| * |-x| := abs_mul _ _
      _ ≤ 1 * (-x) := by rw [abs_of_pos hx_neg]; nlinarith [abs_nonneg (-x), hderiv_bound]
      _ = -x := one_mul _

/-- Interval bound for arsinh. Uses a conservative bound based on input interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28b572b0cc4a3448c2243660b9aca79c59b34ff8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
