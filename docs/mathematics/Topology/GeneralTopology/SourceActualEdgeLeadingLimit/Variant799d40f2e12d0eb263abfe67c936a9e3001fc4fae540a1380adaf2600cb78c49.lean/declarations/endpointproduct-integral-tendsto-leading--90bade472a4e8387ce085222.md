# endpointProduct_integral_tendsto_leading

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:192cdf8d-99c2-19bb-4b80-834b890df0e1",
  "kind": "theorem",
  "lexical_name": "endpointProduct_integral_tendsto_leading",
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
  "slug": "endpointproduct-integral-tendsto-leading--90bade472a4e8387ce085222",
  "source": {
    "blob": "1cfc5542dc8ee5e8e891915f20cd139b5036e32c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 71,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualEdgeLeadingLimit/Variant799d40f2e12d0eb263abfe67c936a9e3001fc4fae540a1380adaf2600cb78c49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90bade472a4e8387ce0852229d91d57e13d28402c3237b59948408a41c120cac",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualEdgeLeadingLimit/Variant799d40f2e12d0eb263abfe67c936a9e3001fc4fae540a1380adaf2600cb78c49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:192cdf8d-99c2-19bb-4b80-834b890df0e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem endpointProduct_integral_tendsto_leading {u : ℝ} (hu : 0 ≤ u) :
    Tendsto (fun A : ℝ => ∫ r in 0..u, endpointPolynomial A r * endpointPolynomial A (u - r))
      atTop (𝓝 (actualLeadingEdgeConvolution u)) := by
  let M : ℝ := 192 * u ^ 2 + 4 * u ^ 4
  have hmeas : ∀ᶠ A : ℝ in atTop, AEStronglyMeasurable
      (fun r : ℝ => endpointPolynomial A r * endpointPolynomial A (u - r))
      (volume.restrict (Ioc 0 u)) := by
    exact Eventually.of_forall (fun A =>
      ((endpointProduct_intervalIntegrable A u).1).aestronglyMeasurable)
  have hbound : ∀ᶠ A : ℝ in atTop, ∀ᵐ r ∂volume.restrict (Ioc 0 u),
      ‖endpointPolynomial A r * endpointPolynomial A (u - r)‖ ≤ M ^ 2 := by
    filter_upwards [eventually_ge_atTop (max 1 (u / 2))] with A hA
    have h1 : 1 ≤ A := (le_max_left _ _).trans hA
    have huA : u ≤ 2 * A := by have := (le_max_right (1 : ℝ) (u / 2)).trans hA; linarith
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with r hr
    have hb (v : ℝ) (hv : 0 ≤ v) (hvu : v ≤ u) : |endpointPolynomial A v| ≤ M := by
      refine (endpointPolynomial_abs_le A v h1 hv (hvu.trans huA)).trans ?_
      have h2 : v ^ 2 ≤ u ^ 2 := (sq_le_sq₀ hv hu).2 hvu
      have h4 : v ^ 4 ≤ u ^ 4 := by nlinarith [sq_nonneg (u ^ 2 - v ^ 2)]
      dsimp [M]
      nlinarith
    rw [Real.norm_eq_abs, abs_mul, pow_two]
    exact mul_le_mul (hb r hr.1.le hr.2)
      (hb (u - r) (by linarith [hr.2]) (by linarith [hr.1]))
      (abs_nonneg _) (by dsimp [M]; positivity)
  have hi : Integrable (fun _ : ℝ => M ^ 2) (volume.restrict (Ioc 0 u)) := by
    exact (intervalIntegrable_const : IntervalIntegrable (fun _ : ℝ => M ^ 2) volume 0 u).1
  have hlim : ∀ᵐ r ∂volume.restrict (Ioc 0 u),
      Tendsto (fun A : ℝ => endpointPolynomial A r * endpointPolynomial A (u - r))
      atTop (𝓝 (actualLeadingEndpointPolynomial r * actualLeadingEndpointPolynomial (u - r))) := by
    exact Eventually.of_forall (fun r =>
      (endpointPolynomial_tendsto_leading r).mul (endpointPolynomial_tendsto_leading (u - r)))
  have hh := tendsto_integral_filter_of_dominated_convergence
    (fun _ : ℝ => M ^ 2) hmeas hbound hi hlim
  simpa only [actualLeadingEdgeConvolution, intervalIntegral.integral_of_le hu] using hh

/-- The actual source correlation, with its exact ninth-power scale, has this fixed-edge limit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualEdgeLeadingLimit/Variant799d40f2e12d0eb263abfe67c936a9e3001fc4fae540a1380adaf2600cb78c49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualEdgeLeadingLimit/Variant799d40f2e12d0eb263abfe67c936a9e3001fc4fae540a1380adaf2600cb78c49.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cfc5542dc8ee5e8e891915f20cd139b5036e32c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
