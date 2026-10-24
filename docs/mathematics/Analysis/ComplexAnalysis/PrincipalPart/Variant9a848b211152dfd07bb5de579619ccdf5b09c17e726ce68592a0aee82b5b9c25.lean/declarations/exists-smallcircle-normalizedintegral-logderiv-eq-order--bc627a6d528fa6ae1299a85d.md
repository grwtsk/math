# exists_smallCircle_normalizedIntegral_logDeriv_eq_order

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3b3a54b-df1e-41ec-9380-211c22e9d3fc",
  "kind": "theorem",
  "lexical_name": "exists_smallCircle_normalizedIntegral_logDeriv_eq_order",
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
  "slug": "exists-smallcircle-normalizedintegral-logderiv-eq-order--bc627a6d528fa6ae1299a85d",
  "source": {
    "blob": "26cea7ab8ef95dd8302d097b63d74b05f087f2a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 49,
    "path": "GRWTSK/Analysis/ComplexAnalysis/PrincipalPart/Variant9a848b211152dfd07bb5de579619ccdf5b09c17e726ce68592a0aee82b5b9c25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc627a6d528fa6ae1299a85d890dbc37856fa75a94be0c3642cc14fa5459419d",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/PrincipalPart/Variant9a848b211152dfd07bb5de579619ccdf5b09c17e726ce68592a0aee82b5b9c25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3b3a54b-df1e-41ec-9380-211c22e9d3fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_smallCircle_normalizedIntegral_logDeriv_eq_order
    {f : ℂ → ℂ} {z : ℂ}
    (hf : AnalyticAt ℂ f z)
    {n : ℕ}
    (hn : analyticOrderAt f z = n) :
    ∃ R : ℝ, 0 < R ∧
      ∀ r : ℝ, 0 < r → r < R →
        normalizedResidueCircleIntegral (logDeriv f) z r = (n : ℂ) := by
  obtain ⟨g, hg, hg0, hlog⟩ :=
    logDeriv_eventuallyEq_principalPart hf hn

  have hg_ne : ∀ᶠ w in 𝓝 z, g w ≠ 0 :=
    (hg.continuousAt.ne_iff_eventually_ne continuousAt_const).mp hg0

  have hlogN :
      ∀ᶠ w in 𝓝 z, w ≠ z →
        logDeriv f w =
          (n : ℂ) / (w - z) + logDeriv g w := by
    have h :=
      (eventually_nhdsWithin_iff
        (s := ({z} : Set ℂ)ᶜ)).mp hlog
    filter_upwards [h] with w hw
    intro hwne
    exact hw (by simpa using hwne)

  have hlocal :
      ∀ᶠ w in 𝓝 z,
        AnalyticAt ℂ g w ∧
        g w ≠ 0 ∧
        (w ≠ z →
          logDeriv f w =
            (n : ℂ) / (w - z) + logDeriv g w) := by
    filter_upwards [hg.eventually_analyticAt, hg_ne, hlogN]
      with w hga hgne hlogw
    exact ⟨hga, hgne, hlogw⟩

  obtain ⟨R, hR, hlocalR⟩ :=
    Metric.eventually_nhds_iff.mp hlocal

  refine ⟨R, hR, ?_⟩
  intro r hr hrR

  have hregAt :
      ∀ w ∈ Metric.closedBall z r,
        AnalyticAt ℂ (logDeriv g) w := by
    intro w hw
    obtain ⟨hga, hgne, -⟩ :=
      hlocalR
        (lt_of_le_of_lt (Metric.mem_closedBall.mp hw) hrR)
    simpa only [logDeriv] using hga.deriv.div hga hgne

  have hregContinuous :
      ContinuousOn (logDeriv g) (Metric.closedBall z r) :=
    fun w hw ↦ (hregAt w hw).continuousAt.continuousWithinAt

  have hregDiff :
      ∀ w ∈ Metric.ball z r \ (∅ : Set ℂ),
        DifferentiableAt ℂ (logDeriv g) w := by
    intro w hw
    exact
      (hregAt w (Metric.ball_subset_closedBall hw.1)).differentiableAt

  have hregIntegral : circleIntegral (logDeriv g) z r = 0 :=
    Complex.circleIntegral_eq_zero_of_differentiable_on_off_countable
      hr.le Set.countable_empty hregContinuous hregDiff

  have hregCI : CircleIntegrable (logDeriv g) z r :=
    (hregContinuous.mono
      Metric.sphere_subset_closedBall).circleIntegrable hr.le

  have hpoleContinuous :
      ContinuousOn
        (fun w : ℂ ↦ (n : ℂ) / (w - z))
        (Metric.sphere z r) := by
    apply continuousOn_const.div
      (continuousOn_id.sub continuousOn_const)
    intro w hw
    have hdist : dist w z = r := Metric.mem_sphere.mp hw
    apply sub_ne_zero.mpr
    intro hwz
    have hweq : w = z := by simpa only [id_eq] using hwz
    have hzero : (0 : ℝ) = r := by simpa [hweq] using hdist
    exact hr.ne' hzero.symm

  have hpoleCI :
      CircleIntegrable
        (fun w : ℂ ↦ (n : ℂ) / (w - z)) z r :=
    hpoleContinuous.circleIntegrable hr.le

  have hcircleEq :
      EqOn (logDeriv f)
        (fun w : ℂ ↦
          (n : ℂ) / (w - z) + logDeriv g w)
        (Metric.sphere z r) := by
    intro w hw
    have hdist : dist w z = r := Metric.mem_sphere.mp hw
    obtain ⟨-, -, hEq⟩ :=
      hlocalR (y := w) (by simpa only [hdist] using hrR)
    apply hEq
    intro hwz
    have hzero : (0 : ℝ) = r := by simpa [hwz] using hdist
    exact hr.ne' hzero.symm

  unfold normalizedResidueCircleIntegral
  rw [circleIntegral.integral_congr hr.le hcircleEq]
  rw [circleIntegral.integral_add hpoleCI hregCI,
    hregIntegral, add_zero]

  have hpole :
      circleIntegral
          (fun w : ℂ ↦ (n : ℂ) / (w - z)) z r =
        (n : ℂ) * (2 * Real.pi * Complex.I) := by
    simp only [div_eq_mul_inv]
    rw [circleIntegral.integral_const_mul,
      circleIntegral.integral_sub_center_inv z hr.ne']

  rw [hpole]
  simp only [smul_eq_mul]
  field_simp [Real.pi_ne_zero, Complex.I_ne_zero]

end AnalyticAt

end

end Surface.Core.ComplexAnalysis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/PrincipalPart/Variant9a848b211152dfd07bb5de579619ccdf5b09c17e726ce68592a0aee82b5b9c25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/PrincipalPart/Variant9a848b211152dfd07bb5de579619ccdf5b09c17e726ce68592a0aee82b5b9c25.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26cea7ab8ef95dd8302d097b63d74b05f087f2a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
