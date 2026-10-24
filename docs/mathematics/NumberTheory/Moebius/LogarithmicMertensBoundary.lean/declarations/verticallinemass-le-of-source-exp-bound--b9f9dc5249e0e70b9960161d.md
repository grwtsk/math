# verticalLineMass_le_of_source_exp_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:342f661c-6193-d626-7373-270ddc36cba2",
  "kind": "theorem",
  "lexical_name": "verticalLineMass_le_of_source_exp_bound",
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
  "slug": "verticallinemass-le-of-source-exp-bound--b9f9dc5249e0e70b9960161d",
  "source": {
    "blob": "4b4a5f2f8bb5f822f55f3d75083c8da8ac214c22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 174,
    "path": "GRWTSK/NumberTheory/Moebius/LogarithmicMertensBoundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9f9dc5249e0e70b9960161dcac2e0f8232f39d6d0eca51e4d923ed596aef13e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/LogarithmicMertensBoundary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:342f661c-6193-d626-7373-270ddc36cba2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verticalLineMass_le_of_source_exp_bound {C a σ T : ℝ}
    (hC : 0 ≤ C) (ha : 0 < a) (hσ : 0 < σ)
    (hsource : ∀ {u : ℝ}, 0 ≤ u →
      |dampedMertensSource σ u| ≤ C * Real.exp (-a * u))
    (hT : 0 ≤ T) :
    verticalLineMass σ T ≤ C ^ 2 / (2 * σ ^ 2 * a) := by
  have hsourceSq : ∀ {u : ℝ}, 0 ≤ u →
      dampedMertensSource σ u ^ 2 ≤
        C ^ 2 * Real.exp ((-2 * a) * u) := by
    intro u hu
    have habs := hsource hu
    have hright : 0 ≤ C * Real.exp (-a * u) :=
      mul_nonneg hC (Real.exp_pos _).le
    have hsq := (sq_le_sq₀ (abs_nonneg _) hright).2 habs
    rw [sq_abs] at hsq
    calc
      dampedMertensSource σ u ^ 2 ≤
          (C * Real.exp (-a * u)) ^ 2 := hsq
      _ = C ^ 2 * Real.exp ((-2 * a) * u) := by
        rw [mul_pow]
        congr 1
        rw [pow_two, ← Real.exp_add]
        congr 1
        ring
  have hmeas :
      Measurable (fun u : ℝ => dampedMertensSource σ u ^ 2) := by
    exact (((Real.continuous_exp.comp
      (continuous_const.mul continuous_id)).measurable.mul
        pickupVelocity_measurable).pow_const 2)
  have hg : IntervalIntegrable
      (fun u : ℝ => C ^ 2 * Real.exp ((-2 * a) * u))
      volume 0 T := by
    apply Continuous.intervalIntegrable
    fun_prop
  have hF2 : IntervalIntegrable
      (fun u : ℝ => dampedMertensSource σ u ^ 2) volume 0 T := by
    apply hg.mono_fun' hmeas.aestronglyMeasurable
    filter_upwards [ae_restrict_mem measurableSet_uIoc] with u hu
    rw [uIoc_of_le hT] at hu
    rw [Real.norm_eq_abs, abs_of_nonneg (sq_nonneg _)]
    exact hsourceSq hu.1.le
  have hfinite :
      (∫ u in (0 : ℝ)..T, dampedMertensSource σ u ^ 2) ≤
        ∫ u in (0 : ℝ)..T,
          C ^ 2 * Real.exp ((-2 * a) * u) := by
    apply intervalIntegral.integral_mono_on hT hF2 hg
    intro u hu
    exact hsourceSq hu.1
  have hgIoi : IntegrableOn
      (fun u : ℝ => C ^ 2 * Real.exp ((-2 * a) * u)) (Ioi 0) :=
    (integrableOn_exp_mul_Ioi (by linarith : -2 * a < 0) 0).const_mul
      (C ^ 2)
  have htail :
      (∫ u in (0 : ℝ)..T, C ^ 2 * Real.exp ((-2 * a) * u)) ≤
        ∫ u in Ioi (0 : ℝ),
          C ^ 2 * Real.exp ((-2 * a) * u) := by
    rw [intervalIntegral.integral_of_le hT]
    apply setIntegral_mono_set hgIoi
    · exact ae_of_all _ (fun u =>
        mul_nonneg (sq_nonneg C) (Real.exp_pos _).le)
    · exact ae_of_all _ (fun _ hu => hu.1)
  have htailValue :
      (∫ u in Ioi (0 : ℝ),
        C ^ 2 * Real.exp ((-2 * a) * u)) = C ^ 2 / (2 * a) := by
    rw [integral_const_mul,
      integral_exp_mul_Ioi (by linarith : -2 * a < 0) 0]
    simp only [mul_zero, Real.exp_zero]
    field_simp [ha.ne']
  have hsourceIntegral :
      (∫ u in (0 : ℝ)..T, dampedMertensSource σ u ^ 2) ≤
        C ^ 2 / (2 * a) := by
    rw [← htailValue]
    exact hfinite.trans htail
  have hV := verticalLineMass_le_dampedSource hσ hT hF2
  calc
    verticalLineMass σ T ≤
        (∫ u in (0 : ℝ)..T, dampedMertensSource σ u ^ 2) / σ ^ 2 := hV
    _ ≤ (C ^ 2 / (2 * a)) / σ ^ 2 :=
      div_le_div_of_nonneg_right hsourceIntegral (sq_nonneg σ)
    _ = C ^ 2 / (2 * σ ^ 2 * a) := by
      field_simp [hσ.ne', ha.ne']

/-- A real-cutoff Mertens power estimate transfers to every damping whose
shifted rate exceeds the supplied exponent.  This theorem transfers the
arithmetic exponent; it does not prove one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/LogarithmicMertensBoundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/LogarithmicMertensBoundary.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b4a5f2f8bb5f822f55f3d75083c8da8ac214c22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
