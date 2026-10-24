# InnerProductSpace.HarmonicOnNhd.exists_analyticOnNhd_ball_re_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "43db4fc7c9572c234a16bc40da498deb176dfbd3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/65/652730c7ba5321ee62a8ba5bf43d19ab2ee3700e173a6da0b39761b37a1adbe3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:231cf472-1ebe-30b9-8feb-3aeb90652769",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6780daa5-5da6-7312-a57a-11aeb159cab2",
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
  "slug": "innerproductspace-harmoniconnhd-exists-analyticonnhd-ball-re-eq--9bb82ec4c504953de2e3d2ec",
  "source": {
    "blob": "43db4fc7c9572c234a16bc40da498deb176dfbd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 70,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant652730c7ba5321ee62a8ba5bf43d19ab2ee3700e173a6da0b39761b37a1adbe3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9bb82ec4c504953de2e3d2ec2e4c592cea11fba95904731c850ef7810a9b4a3f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant652730c7ba5321ee62a8ba5bf43d19ab2ee3700e173a6da0b39761b37a1adbe3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6780daa5-5da6-7312-a57a-11aeb159cab2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–108.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant652730c7ba5321ee62a8ba5bf43d19ab2ee3700e173a6da0b39761b37a1adbe3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant652730c7ba5321ee62a8ba5bf43d19ab2ee3700e173a6da0b39761b37a1adbe3.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43db4fc7c9572c234a16bc40da498deb176dfbd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
