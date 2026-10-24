# affine_parameter_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43b7f054-c2f4-cf60-17db-c024fb3fb9f6",
  "kind": "theorem",
  "lexical_name": "affine_parameter_error",
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
  "slug": "affine-parameter-error--45c105b275f2b15284ab8fa5",
  "source": {
    "blob": "edba02e1a6c72fe2264645d0cac886ea56a5bf00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 36,
    "path": "GRWTSK/Analysis/Complex/TentKernelSensitivity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45c105b275f2b15284ab8fa50dc2733c29f3ff74c5cbac61b68dd8a0d4a20eab",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/TentKernelSensitivity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43b7f054-c2f4-cf60-17db-c024fb3fb9f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affine_parameter_error {c d b α β : ℝ} {z w : ℂ}
    (hc : 1 < c) (hcd : c ≤ d) (hdb : d ≤ b)
    (hz : z.re ≤ 1) (hw : w.re ≤ 1)
    (hweight : ∀ t ∈ Icc c d, 0 ≤ α * t + β) :
    ‖(∫ t in c..d, (α * t + β) • density z t) -
      (∫ t in c..d, (α * t + β) • density w t)‖ ≤
      affineMass α β c d * (Real.log b * ‖z - w‖) := by
  have hpoint (t : ℝ) (ht : t ∈ Icc c d) :
      ‖density z t - density w t‖ ≤ Real.log b * ‖z - w‖ := by
    apply (density_parameter_error (hc.trans_le ht.1) hz hw).trans
    exact mul_le_mul_of_nonneg_right
      (Real.log_le_log (by linarith [ht.1]) (ht.2.trans hdb)) (norm_nonneg _)
  have hi := intervalIntegral.norm_integral_le_of_norm_le
    (a := c) (b := d) (μ := volume) (f := fun t => (α * t + β) • (density z t - density w t))
    (g := fun t : ℝ => (α * t + β) * (Real.log b * ‖z - w‖)) hcd
    (Eventually.of_forall fun t ht => by
      have ht' : t ∈ Icc c d := ⟨ht.1.le, ht.2⟩
      simpa only [norm_smul, Real.norm_eq_abs, abs_of_nonneg (hweight t ht')] using
        mul_le_mul_of_nonneg_left (hpoint t ht') (hweight t ht'))
    ((((continuous_const.mul continuous_id).add continuous_const).mul
      continuous_const).intervalIntegrable c d)
  simp only [smul_sub] at hi
  rw [intervalIntegral.integral_sub
      (f := fun t : ℝ => (α*t+β) • density z t) (g := fun t : ℝ => (α*t+β) • density w t)
      (affine_density_integrable hc hcd α β z)
      (affine_density_integrable hc hcd α β w),
    intervalIntegral.integral_mul_const, integral_affine] at hi
  exact hi

/-- Reexpress the retained split integral using real scalar affine weights. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/TentKernelSensitivity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/TentKernelSensitivity.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edba02e1a6c72fe2264645d0cac886ea56a5bf00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
