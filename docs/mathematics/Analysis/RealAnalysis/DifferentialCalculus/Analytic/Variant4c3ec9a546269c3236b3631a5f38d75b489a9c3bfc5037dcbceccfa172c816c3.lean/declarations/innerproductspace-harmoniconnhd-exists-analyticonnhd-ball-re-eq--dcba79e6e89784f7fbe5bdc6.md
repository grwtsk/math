# InnerProductSpace.HarmonicOnNhd.exists_analyticOnNhd_ball_re_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c159797e-39cb-bc03-94b6-af4ccf8b31b0",
  "kind": "theorem",
  "lexical_name": "InnerProductSpace.HarmonicOnNhd.exists_analyticOnNhd_ball_re_eq",
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
  "slug": "innerproductspace-harmoniconnhd-exists-analyticonnhd-ball-re-eq--dcba79e6e89784f7fbe5bdc6",
  "source": {
    "blob": "d6c015f40373865b625a8039ff05b0833b82d5a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 78,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant4c3ec9a546269c3236b3631a5f38d75b489a9c3bfc5037dcbceccfa172c816c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcba79e6e89784f7fbe5bdc6a1ee7c41ad88cab85ec2cb7946ab843df828e774",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant4c3ec9a546269c3236b3631a5f38d75b489a9c3bfc5037dcbceccfa172c816c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c159797e-39cb-bc03-94b6-af4ccf8b31b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem InnerProductSpace.HarmonicOnNhd.exists_analyticOnNhd_ball_re_eq {z : ℂ} {R : ℝ}
    (hf : HarmonicOnNhd f (ball z R)) :
    ∃ F : ℂ → ℂ, (AnalyticOnNhd ℂ F (ball z R)) ∧ ((ball z R).EqOn (fun z ↦ (F z).re) f) := by
  by_cases hR : R ≤ 0
  · simp [ball_eq_empty.2 hR]
  let g := ofRealCLM ∘ (fderiv ℝ f · 1) - I • ofRealCLM ∘ (fderiv ℝ f · I)
  have hg : DifferentiableOn ℂ g (ball z R) :=
    fun x hx ↦ (HarmonicAt.differentiableAt_complex_partial (hf x hx)).differentiableWithinAt
  obtain ⟨F, hF⟩ := hg.isExactOn_ball.with_val_at z (f z)
  have h₁F : DifferentiableOn ℂ F (ball z R) :=
    fun x hx ↦ (hF.2 x hx).differentiableAt.differentiableWithinAt
  have h₂F : DifferentiableOn ℝ F (ball z R) := h₁F.restrictScalars (𝕜 := ℝ) (𝕜' := ℂ)
  use F, h₁F.analyticOnNhd isOpen_ball
  rw [(by aesop : (fun z ↦ (F z).re) = Complex.reCLM ∘ F)]
  intro x hx
  apply (convex_ball z R).eqOn_of_fderivWithin_eq (𝕜 := ℝ) (x := z)
  · exact reCLM.differentiable.comp_differentiableOn h₂F
  · exact fun y hy ↦ (ContDiffAt.differentiableAt (hf y hy).1 two_ne_zero).differentiableWithinAt
  · exact isOpen_ball.uniqueDiffOn
  · intro y hy
    have h₄F := (hF.2 y hy).differentiableAt
    have h₅F := h₄F.restrictScalars (𝕜 := ℝ) (𝕜' := ℂ)
    rw [fderivWithin_eq_fderiv (isOpen_ball.uniqueDiffWithinAt hy)
      (reCLM.differentiableAt.comp y h₅F), fderivWithin_eq_fderiv
      (isOpen_ball.uniqueDiffWithinAt hy) ((hf y hy).1.differentiableAt two_ne_zero), fderiv_comp y
      (by fun_prop) h₅F, ContinuousLinearMap.fderiv, h₄F.fderiv_restrictScalars (𝕜 := ℝ)]
    ext a
    nth_rw 2 [(by simp : a = a.re • (1 : ℂ) + a.im • (I : ℂ))]
    rw [map_add, map_smul, map_smul]
    simp [HasDerivAt.deriv (hF.2 y hy), g]
  all_goals simp_all

@[deprecated (since := "2026-03-03")]
alias harmonic_is_realOfHolomorphic :=
  InnerProductSpace.HarmonicOnNhd.exists_analyticOnNhd_ball_re_eq

/--
If a function `f : ℂ → ℝ` is harmonic, then `f` is the real part of a holomorphic function.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant4c3ec9a546269c3236b3631a5f38d75b489a9c3bfc5037dcbceccfa172c816c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant4c3ec9a546269c3236b3631a5f38d75b489a9c3bfc5037dcbceccfa172c816c3.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6c015f40373865b625a8039ff05b0833b82d5a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
