# not_analyticAt_of_finite_convergence_boundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb8c4915-4e72-cb7e-2c88-6c74c6e97cb8",
  "kind": "theorem",
  "lexical_name": "not_analyticAt_of_finite_convergence_boundary",
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
  "slug": "not-analyticat-of-finite-convergence-boundary--54f88c3a90d10b3915cff3cf",
  "source": {
    "blob": "fa1e6fbb41ce2aabcdf8ec6c4d001cf52eb33312",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 147,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Positivity/Variant731fc76392aeaa60a3e588e8884c90a229906e366ad8f2cd45ecfdda957de4a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54f88c3a90d10b3915cff3cfb5d7ff42a796bb66ec91c9649fe8495a7d95d17b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Positivity/Variant731fc76392aeaa60a3e588e8884c90a229906e366ad8f2cd45ecfdda957de4a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb8c4915-4e72-cb7e-2c88-6c74c6e97cb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_analyticAt_of_finite_convergence_boundary (β : ℝ)
    (hX : ∀ᵐ ω ∂μ, 0 ≤ X ω)
    (hleft : ∀ t : ℝ, t < β → Integrable (fun ω ↦ Real.exp (t * X ω)) μ)
    (hright : ∀ t : ℝ, β < t → ¬ Integrable (fun ω ↦ Real.exp (t * X ω)) μ)
    (F : ℂ → ℂ)
    (heq : F =ᶠ[𝓝[{z : ℂ | z.re < β}] (β : ℂ)]
      ProbabilityTheory.complexMGF X μ) :
    ¬ AnalyticAt ℂ F (β : ℂ) := by
  intro han
  obtain ⟨R, hR, hF⟩ := han.exists_ball_analyticOnNhd
  obtain ⟨ε, hε, hmatch⟩ := Metric.mem_nhdsWithin_iff.mp heq
  let δ : ℝ := min R ε / 4
  have hδ : 0 < δ := div_pos (lt_min hR hε) (by norm_num)
  have hδR : 4 * δ ≤ R := by
    dsimp [δ]
    linarith [min_le_left R ε]
  have hδε : 4 * δ ≤ ε := by
    dsimp [δ]
    linarith [min_le_right R ε]
  let v : ℝ := β - δ
  have hvlt : v < β := by dsimp [v]; linarith
  have hv : v ∈ interior (ProbabilityTheory.integrableExpSet X μ) := by
    have hs : Set.Iio β ⊆ ProbabilityTheory.integrableExpSet X μ := hleft
    apply interior_mono hs
    simpa using hvlt
  have hdist : dist (v : ℂ) (β : ℂ) = δ := by
    simp [v, dist_eq_norm, ← Complex.ofReal_sub, Real.norm_eq_abs,
      abs_of_nonneg hδ.le]
  have hball : Metric.ball (v : ℂ) (2 * δ) ⊆ Metric.ball (β : ℂ) R := by
    apply Metric.ball_subset_ball'
    rw [hdist]
    linarith
  have hvε : (v : ℂ) ∈ Metric.ball (β : ℂ) ε := by
    rw [Metric.mem_ball, hdist]
    linarith
  have hlocal : F =ᶠ[𝓝 (v : ℂ)] ProbabilityTheory.complexMGF X μ := by
    have hopen : IsOpen (Metric.ball (β : ℂ) ε ∩ {z : ℂ | z.re < β}) :=
      Metric.isOpen_ball.inter (isOpen_lt Complex.continuous_re continuous_const)
    have hmem : (v : ℂ) ∈ Metric.ball (β : ℂ) ε ∩ {z : ℂ | z.re < β} :=
      ⟨hvε, by simpa using hvlt⟩
    exact Filter.mem_of_superset (hopen.mem_nhds hmem) hmatch
  have hint := integrable_exp_add_of_holomorphic_extension v (3 * δ / 2) (2 * δ)
    (by positivity) (by linarith) hX hv F (hF.differentiableOn.mono hball) hlocal
  exact hright (v + 3 * δ / 2) (by dsimp [v]; linarith) hint


/-- Laplace-sign version of the finite-abscissa singularity theorem. The real
abscissa is finite and is specified by genuine integrability and nonintegrability
on its two sides; agreement is only required on a complex right neighborhood. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Positivity/Variant731fc76392aeaa60a3e588e8884c90a229906e366ad8f2cd45ecfdda957de4a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Positivity/Variant731fc76392aeaa60a3e588e8884c90a229906e366ad8f2cd45ecfdda957de4a3.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa1e6fbb41ce2aabcdf8ec6c4d001cf52eb33312` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
