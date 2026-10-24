# hasDerivAt_circleAverage_herglotzRieszKernel_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:559042d3-f83f-6f0f-398a-7ea8a59625cb",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_circleAverage_herglotzRieszKernel_smul",
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
  "slug": "hasderivat-circleaverage-herglotzrieszkernel-smul--344b2246854d204f9ee2a54f",
  "source": {
    "blob": "0eaa5bbe40b6c8e441c9e1fbeb2b0a49f835fba0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 310,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variantbbd0c304fdaf245d5f1d08b2a94030d9badeb0470151208f86670120a68f267a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:344b2246854d204f9ee2a54fb18af83b9f59545b785ab3bedc1a2d4d834d143a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variantbbd0c304fdaf245d5f1d08b2a94030d9badeb0470151208f86670120a68f267a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:559042d3-f83f-6f0f-398a-7ea8a59625cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivAt_circleAverage_herglotzRieszKernel_smul (hg : CircleIntegrable f 0 R)
    (hw : w ∉ sphere 0 |R|) :
    HasDerivAt (fun w ↦ circleAverage (fun ζ ↦ herglotzRieszKernel 0 w ζ • f ζ) 0 R)
      (circleAverage (fun ζ ↦ (2 * ζ / (ζ - w) ^ 2) • f ζ) 0 R) w := by
  obtain ⟨d, hd, hdist⟩ := exists_ball_forall_le_norm_circleMap_sub hw
  have hgm : AEStronglyMeasurable (fun θ ↦ f (circleMap 0 R θ))
      (volume.restrict (uIoc 0 (2 * π))) := (intervalIntegrable_iff.1 hg).aestronglyMeasurable
  simp only [circleAverage_def]
  apply HasDerivAt.const_smul
  refine (intervalIntegral.hasDerivAt_integral_of_dominated_loc_of_deriv_le
    (F' := fun x θ ↦ (2 * circleMap 0 R θ / (circleMap 0 R θ - x) ^ 2) • f (circleMap 0 R θ))
    (bound := fun θ ↦ 2 * |R| * (d ^ 2)⁻¹ * ‖f (circleMap 0 R θ)‖)
    (ball_mem_nhds w hd) ?meas1 ?int ?meas2 ?bound ?int_bound ?diff).2
  -- Measurability of the integrand, for `x` near `w`
  case meas1 =>
    filter_upwards with x
    apply AEStronglyMeasurable.smul _ hgm
    simp only [herglotzRieszKernel_def, sub_zero]
    exact Measurable.aestronglyMeasurable (by fun_prop)
  -- Integrability of the integrand at `w`
  case int =>
    have h₁ : CircleIntegrable (herglotzRieszKernel 0 w • f) 0 R :=
      hg.continuousOn_smul (continuousOn_herglotzRieszKernel_sphere hw)
    simpa only [CircleIntegrable, Pi.smul_apply'] using h₁
  -- Measurability of the differentiated integrand
  case meas2 =>
    exact (Measurable.aestronglyMeasurable (by fun_prop)).smul hgm
  -- Uniform bound for the differentiated integrand near `w`
  case bound =>
    filter_upwards with θ _ x hx
    have h₁ : ‖(2 : ℂ)‖ = 2 := by norm_num
    rw [norm_smul, norm_div, norm_mul, norm_circleMap_zero, norm_pow, div_eq_mul_inv, h₁]
    gcongr
    exact hdist x hx θ
  -- Integrability of the bound
  case int_bound =>
    exact (IntervalIntegrable.norm hg).const_mul _
  -- Differentiability of the integrand in `x`, for `x` near `w`
  case diff =>
    filter_upwards with θ _ x hx
    have h₁ : circleMap 0 R θ - x ≠ 0 := norm_pos_iff.mp (hd.trans_le (hdist x hx θ))
    have h₂ : HasDerivAt (fun x ↦ herglotzRieszKernel 0 x (circleMap 0 R θ))
        (2 * circleMap 0 R θ / (circleMap 0 R θ - x) ^ 2) x := by
      have h₃ := ((hasDerivAt_id' x).const_add (circleMap 0 R θ)).div
        ((hasDerivAt_id' x).const_sub (circleMap 0 R θ)) h₁
      simpa [herglotzRieszKernel_def, sub_zero, sub_sub, ← two_mul, Pi.div_def] using h₃
    exact h₂.smul_const (f (circleMap 0 R θ))

/--
The Herglotz–Riesz kernel integral of a circle-integrable function is differentiable in the pole
parameter, throughout the complement of the circle.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variantbbd0c304fdaf245d5f1d08b2a94030d9badeb0470151208f86670120a68f267a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variantbbd0c304fdaf245d5f1d08b2a94030d9badeb0470151208f86670120a68f267a.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0eaa5bbe40b6c8e441c9e1fbeb2b0a49f835fba0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
