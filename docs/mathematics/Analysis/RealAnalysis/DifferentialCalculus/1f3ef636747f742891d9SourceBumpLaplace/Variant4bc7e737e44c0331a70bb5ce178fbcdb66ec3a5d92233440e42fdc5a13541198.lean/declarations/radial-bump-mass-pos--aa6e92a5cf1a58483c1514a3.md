# radial_bump_mass_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1f27b1b-a4a7-2237-fbec-a89444b86e5b",
  "kind": "theorem",
  "lexical_name": "radial_bump_mass_pos",
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
  "slug": "radial-bump-mass-pos--aa6e92a5cf1a58483c1514a3",
  "source": {
    "blob": "b68ce8b2791c958889ebad8f34616976f3abbf8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 279,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa6e92a5cf1a58483c1514a3207feb62d5f9ab4307a3ad7d4c0f87c33a604eca",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1f27b1b-a4a7-2237-fbec-a89444b86e5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem radial_bump_mass_pos (z : ℂ) : 0 < radialBumpMass z := by
  have hu0 : radialBump z 0 ≠ 0 := by simpa [radialBump] using bump_laplace_zero_ne_zero
  have he := (radial_bump_continuous z).continuousAt.eventually_ne hu0
  obtain ⟨δ, hδ, hb⟩ := Metric.mem_nhds_iff.mp he
  let c : ℝ := min (δ / 2) (1 / 2)
  have hc0 : 0 < c := lt_min (by positivity) (by norm_num)
  have hcδ : c < δ := (min_le_left _ _).trans_lt (by linarith)
  have hc1 : c ≤ 1 := (min_le_right _ _).trans (by norm_num)
  have hu : radialBump z c ≠ 0 := hb (by
    rw [Metric.mem_ball, dist_zero_right, Real.norm_eq_abs, abs_of_pos hc0]
    exact hcδ)
  have hp : 0 < c ^ 10 * Complex.normSq (radialBump z c) :=
    mul_pos (pow_pos hc0 10) (Complex.normSq_pos.mpr hu)
  have hcont : Continuous (fun r : ℝ ↦ r ^ 10 * Complex.normSq (radialBump z r)) :=
    (continuous_id.pow 10).mul (Complex.continuous_normSq.comp (radial_bump_continuous z))
  have hi := intervalIntegral.integral_lt_integral_of_continuousOn_of_le_of_exists_lt
    (f := fun _ : ℝ ↦ (0 : ℝ)) (g := fun r ↦ r ^ 10 * Complex.normSq (radialBump z r))
    (by norm_num : (0 : ℝ) < 1) continuous_const.continuousOn hcont.continuousOn
    (fun r hr ↦ mul_nonneg (pow_nonneg hr.1.le 10) (Complex.normSq_nonneg _))
    ⟨c, ⟨hc0.le, hc1⟩, hp⟩
  simpa only [intervalIntegral.integral_zero, radialBumpMass] using hi

/-- The weighted complex energy identity retains both actual radial endpoint values. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b68ce8b2791c958889ebad8f34616976f3abbf8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
