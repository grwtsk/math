# hasDerivAt_circleIntegral_sub_zpow_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aac86aa902e778812ce356a977d682cff3105b0f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 587,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/25/25c76fe24a2fcc04f6eadd8353f9be268611f8f8eeaf3f119dcaf7d140b7d33f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8774233f-1589-a93a-c8b5-85d43fa5c657",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:482ef655-9ac4-6a31-cd7d-f93146319ff1",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_circleIntegral_sub_zpow_smul",
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
  "slug": "hasderivat-circleintegral-sub-zpow-smul--a63b83e2a5dac911632d2199",
  "source": {
    "blob": "aac86aa902e778812ce356a977d682cff3105b0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 649,
    "line": 587,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant25c76fe24a2fcc04f6eadd8353f9be268611f8f8eeaf3f119dcaf7d140b7d33f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a63b83e2a5dac911632d219977c87efc0277688a06f389a6a9065dc969912bd4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant25c76fe24a2fcc04f6eadd8353f9be268611f8f8eeaf3f119dcaf7d140b7d33f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:482ef655-9ac4-6a31-cd7d-f93146319ff1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 587–649.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivAt_circleIntegral_sub_zpow_smul {f : ℂ → E} {R : ℝ} {c w : ℂ} {n : ℤ}
    (hf : CircleIntegrable f c R) (hw : w ∉ sphere c |R|) :
    HasDerivAt (fun w ↦ ∮ z in C(c, R), (z - w) ^ n • f z)
      ((-n : ℂ) • ∮ z in C(c, R), (z - w) ^ (n - 1) • f z) w := by
  obtain ⟨d, hd, hdist⟩ := exists_ball_forall_le_norm_circleMap_sub hw
  have hfm : AEStronglyMeasurable (fun θ ↦ f (circleMap c R θ))
      (volume.restrict (uIoc 0 (2 * π))) := (intervalIntegrable_iff.1 hf).aestronglyMeasurable
  simp only [circleIntegral, deriv_circleMap]
  rw [← intervalIntegral.integral_smul]
  refine (intervalIntegral.hasDerivAt_integral_of_dominated_loc_of_deriv_le
    (F' := fun x θ ↦ (-n : ℂ) • ((circleMap 0 R θ * I)
      • (circleMap c R θ - x) ^ (n - 1) • f (circleMap c R θ)))
    (bound := fun θ ↦ |(n : ℝ)| * |R| * max (d ^ (n - 1)) ((|R| + dist c w + d) ^ (n - 1)) *
      ‖f (circleMap c R θ)‖)
    (ball_mem_nhds w hd) ?_ ?_ ?_ ?_ ?_ ?_).2
  · -- Measurability of the integrand, for `x` near `w`
    filter_upwards with x
    exact (Continuous.aestronglyMeasurable (by fun_prop)).smul
      ((Measurable.aestronglyMeasurable (by fun_prop)).smul hfm)
  · -- Integrability of the integrand at `w`
    simpa only [deriv_circleMap] using (hf.sub_zpow_smul n hw).out
  · -- Measurability of the differentiated integrand
    exact ((Continuous.aestronglyMeasurable (by fun_prop)).smul
      ((Measurable.aestronglyMeasurable (by fun_prop)).smul hfm)).const_smul _
  · -- Uniform bound for the differentiated integrand near `w`
    filter_upwards with θ _ x hx
    have hlb := hdist x hx θ
    have hub : ‖circleMap c R θ - x‖ ≤ |R| + dist c w + d := by
      have := mem_ball.1 hx
      linarith [norm_circleMap_sub_le c R θ x, dist_triangle_right c x w]
    have key : ‖circleMap c R θ - x‖ ^ (n - 1)
        ≤ max (d ^ (n - 1)) ((|R| + dist c w + d) ^ (n - 1)) := by
      rcases le_or_gt 0 (n - 1) with h | h
      · exact le_max_of_le_right (zpow_le_zpow_left₀ h (norm_nonneg _) hub)
      · refine le_max_of_le_left ?_
        rw [show n - 1 = -(1 - n) by ring, zpow_neg, zpow_neg]
        exact inv_anti₀ (zpow_pos hd _) (zpow_le_zpow_left₀ (by omega) hd.le hlb)
    have norm_eq : ‖(-n : ℂ) • ((circleMap 0 R θ * I)
        • (circleMap c R θ - x) ^ (n - 1) • f (circleMap c R θ))‖
        = |(n : ℝ)| * |R| * ‖circleMap c R θ - x‖ ^ (n - 1) * ‖f (circleMap c R θ)‖ := by
      rw [norm_smul, norm_smul, norm_smul, norm_neg, Complex.norm_intCast, norm_zpow, norm_mul,
        Complex.norm_I, mul_one, norm_circleMap_zero]
      ring
    rw [norm_eq]
    exact mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left key (by positivity))
      (norm_nonneg _)
  · -- Integrability of the bound
    exact (IntervalIntegrable.norm hf).const_mul _
  · -- Differentiability of the integrand in `x`, for `x` near `w`
    filter_upwards with θ _ x hx
    have hne : circleMap c R θ - x ≠ 0 := norm_pos_iff.mp (hd.trans_le (hdist x hx θ))
    have h₁ : HasDerivAt (fun y : ℂ ↦ (circleMap c R θ - y) ^ n)
        (-((n : ℂ) * (circleMap c R θ - x) ^ (n - 1))) x :=
      (hasDerivAt_zpow n _ (Or.inl hne)).comp_const_sub (circleMap c R θ) x
    exact ((h₁.smul_const (f (circleMap c R θ))).const_smul (circleMap 0 R θ * I)).congr_deriv
      (by module)

omit [CompleteSpace E] in
/--
**Derivative of the Cauchy integral**: if `f` is circle integrable and `w` does not lie on the
circle, then the Cauchy-type integral `fun w ↦ ∮ z in C(c, R), (z - w)⁻¹ • f z` has derivative
`∮ z in C(c, R), (z - w) ^ (-2) • f z` at `w`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant25c76fe24a2fcc04f6eadd8353f9be268611f8f8eeaf3f119dcaf7d140b7d33f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant25c76fe24a2fcc04f6eadd8353f9be268611f8f8eeaf3f119dcaf7d140b7d33f.lean#L587).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aac86aa902e778812ce356a977d682cff3105b0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
