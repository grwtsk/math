# bump_laplace_moment_has_deriv_at

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b86506c-56a4-ee3b-3077-a6b9fdfaadec",
  "kind": "theorem",
  "lexical_name": "bump_laplace_moment_has_deriv_at",
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
  "slug": "bump-laplace-moment-has-deriv-at--6bff33db49f96ccd102ba4df",
  "source": {
    "blob": "b68ce8b2791c958889ebad8f34616976f3abbf8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 106,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6bff33db49f96ccd102ba4dfd30a4e015003f4dde45f935e01fffa063d545c16",
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

Occurrence: `result:0b86506c-56a4-ee3b-3077-a6b9fdfaadec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bump_laplace_moment_has_deriv_at (k : ℕ) (z : ℂ) :
    HasDerivAt (bumpLaplaceMoment k) (bumpLaplaceMoment (k + 1) z) z := by
  let μ := volume.restrict (Ioc (-1 : ℝ) 1)
  have h := hasDerivAt_integral_of_dominated_loc_of_deriv_le
    (μ := μ)
    (F := fun w x ↦ (x : ℂ) ^ k * (((1 - x ^ 2) ^ 4 : ℝ) : ℂ) *
      Complex.exp (w * (x : ℂ)))
    (F' := fun w x ↦ (x : ℂ) ^ (k + 1) * (((1 - x ^ 2) ^ 4 : ℝ) : ℂ) *
      Complex.exp (w * (x : ℂ)))
    (bound := fun _ ↦ Real.exp (‖z‖ + 1)) (s := Metric.ball z 1)
    (Metric.ball_mem_nhds z (by norm_num))
    (Eventually.of_forall (fun _ ↦ (by fun_prop : Continuous _).aestronglyMeasurable))
    ((by fun_prop : Continuous _).integrableOn_Icc.mono_set Ioc_subset_Icc_self)
    (by fun_prop : Continuous _).aestronglyMeasurable
    (by
      filter_upwards [ae_restrict_mem measurableSet_Ioc] with x hx
      intro w hw
      have hwz : ‖w‖ ≤ ‖z‖ + 1 := by
        have hh := norm_add_le (w - z) z
        have hh' : ‖w - z‖ < 1 := by simpa only [Metric.mem_ball, dist_eq_norm] using hw
        rw [sub_add_cancel] at hh
        linarith
      have hx1 : ‖(x : ℂ)‖ ≤ 1 := by
        simpa only [Complex.norm_real, Real.norm_eq_abs] using abs_le.mpr ⟨hx.1.le, hx.2⟩
      have hre : (w * (x : ℂ)).re ≤ ‖z‖ + 1 :=
        (Complex.re_le_norm _).trans ((norm_mul_le _ _).trans
          ((mul_le_mul_of_nonneg_left hx1 (norm_nonneg w)).trans (by simpa using hwz)))
      rw [norm_mul, Complex.norm_exp]
      exact (mul_le_of_le_one_left (Real.exp_pos _).le
        (bump_moment_factor_norm_le_one (k + 1) x hx)).trans (Real.exp_le_exp.mpr hre))
    (integrableOn_const (by norm_num : volume (Ioc (-1 : ℝ) 1) ≠ ⊤))
    (by
      filter_upwards [] with x
      intro w _
      have hd := ((hasDerivAt_id w).mul_const (x : ℂ)).cexp.const_mul
        ((x : ℂ) ^ k * (((1 - x ^ 2) ^ 4 : ℝ) : ℂ))
      convert hd using 1 <;> try rfl
      simp only [id_eq, one_mul, pow_succ]
      ring)
  convert h.2 using 1 <;> try rfl
  · funext w
    unfold bumpLaplaceMoment
    rw [intervalIntegral.integral_of_le (by norm_num)]
  · unfold bumpLaplaceMoment
    rw [intervalIntegral.integral_of_le (by norm_num)]

/-- The genuine complex derivative makes every finite weighted moment continuous. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b68ce8b2791c958889ebad8f34616976f3abbf8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
