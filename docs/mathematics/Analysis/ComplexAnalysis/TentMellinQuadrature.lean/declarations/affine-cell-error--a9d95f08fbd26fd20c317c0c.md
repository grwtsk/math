# affine_cell_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4334533f-75c5-fc00-6331-a85eeb030397",
  "kind": "theorem",
  "lexical_name": "affine_cell_error",
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
  "slug": "affine-cell-error--a9d95f08fbd26fd20c317c0c",
  "source": {
    "blob": "a22d196a5aaf22cc7ef2665eda3f005f7ab2ef4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 54,
    "path": "GRWTSK/Analysis/Complex/TentMellinQuadrature.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9d95f08fbd26fd20c317c0cda98a59dac5ee32c8a613fe7849546739d3f2cd0",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/TentMellinQuadrature.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4334533f-75c5-fc00-6331-a85eeb030397`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affine_cell_error {c d α β e : ℝ} {z v : ℂ}
    (hc : 1 < c) (hcd : c ≤ d) (hz : z.re ≤ 2)
    (hw : ∀ t ∈ Icc c d, 0 ≤ α * t + β)
    (hv : ‖density z ((c + d) / 2) - v‖ ≤ e) :
    ‖(∫ t in c..d, (α * t + β) • density z t) - affineMass α β c d • v‖ ≤
      affineMass α β c d * (componentBound (z - 1) * (d - c) / 2 + e) := by
  let q := componentBound (z - 1)
  let R := q * (d - c) / 2 + e
  have hm : (c + d) / 2 ∈ Icc c d := ⟨by linarith, by linarith⟩
  have hf : ∀ t ∈ Icc c d, ‖density z t - v‖ ≤ R := by
    intro t ht
    have hd := density_spatial_lipschitz hc hm ht hz
    have hD : spatialSlopeBound c d 2 z ≤ q := by
      norm_num [spatialSlopeBound, densityBound, q]
      exact norm_le_componentBound (z - 1)
    have hl : ‖density z t - density z ((c + d) / 2)‖ ≤ q * (d - c) / 2 := by
      apply hd.trans
      calc
        _ ≤ q * |t - (c + d) / 2| :=
          mul_le_mul_of_nonneg_right hD (abs_nonneg _)
        _ ≤ q * ((d - c) / 2) :=
          mul_le_mul_of_nonneg_left (midpoint_distance hcd ht) (componentBound_nonneg _)
        _ = _ := by ring
    calc
      _ = ‖(density z t - density z ((c + d) / 2)) +
        (density z ((c + d) / 2) - v)‖ := by congr 1; abel
      _ ≤ _ := norm_add_le _ _
      _ ≤ R := add_le_add hl hv
  have hbound := intervalIntegral.norm_integral_le_of_norm_le
    (a := c) (b := d) (μ := volume) (f := fun t => (α * t + β) • (density z t - v))
    (g := fun t : ℝ => (α * t + β) * R) hcd
    (Eventually.of_forall fun t ht => by
      have ht' : t ∈ Icc c d := ⟨ht.1.le, ht.2⟩
      simpa only [norm_smul, Real.norm_eq_abs, abs_of_nonneg (hw t ht')] using
        mul_le_mul_of_nonneg_left (hf t ht') (hw t ht'))
    ((((continuous_const.mul continuous_id).add continuous_const).mul
      continuous_const).intervalIntegrable c d)
  have hid : (∫ t in c..d, (α * t + β) • (density z t - v)) =
      (∫ t in c..d, (α * t + β) • density z t) - affineMass α β c d • v := by
    simp only [smul_sub]
    rw [intervalIntegral.integral_sub
      (f := fun t : ℝ => (α*t+β) • density z t) (g := fun t : ℝ => (α*t+β) • v)
      (affine_density_integrable hc hcd α β z)
      ((((continuous_const.mul continuous_id).add continuous_const).smul
        continuous_const).intervalIntegrable c d),
      intervalIntegral.integral_smul_const, integral_affine]
  rw [hid, intervalIntegral.integral_mul_const, integral_affine] at hbound
  exact hbound

/-- Finite cell coverage and each positive affine mass are retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/TentMellinQuadrature.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/TentMellinQuadrature.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a22d196a5aaf22cc7ef2665eda3f005f7ab2ef4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
