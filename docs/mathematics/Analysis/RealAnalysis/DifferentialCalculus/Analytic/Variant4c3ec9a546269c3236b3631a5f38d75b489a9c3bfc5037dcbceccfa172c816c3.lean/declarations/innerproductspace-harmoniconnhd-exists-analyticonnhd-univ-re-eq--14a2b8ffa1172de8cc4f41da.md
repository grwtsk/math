# InnerProductSpace.HarmonicOnNhd.exists_analyticOnNhd_univ_re_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9045ccb1-13a9-f4a8-d9e5-a05e137fada9",
  "kind": "theorem",
  "lexical_name": "InnerProductSpace.HarmonicOnNhd.exists_analyticOnNhd_univ_re_eq",
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
  "slug": "innerproductspace-harmoniconnhd-exists-analyticonnhd-univ-re-eq--14a2b8ffa1172de8cc4f41da",
  "source": {
    "blob": "d6c015f40373865b625a8039ff05b0833b82d5a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 117,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant4c3ec9a546269c3236b3631a5f38d75b489a9c3bfc5037dcbceccfa172c816c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14a2b8ffa1172de8cc4f41dac8929afb20940d2351c95786b6adb683aa9dc950",
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

Occurrence: `result:9045ccb1-13a9-f4a8-d9e5-a05e137fada9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem InnerProductSpace.HarmonicOnNhd.exists_analyticOnNhd_univ_re_eq {f : ℂ → ℝ}
    (hf : HarmonicOnNhd f univ) :
    ∃ F : ℂ → ℂ, (AnalyticOnNhd ℂ F univ) ∧ ((fun z ↦ (F z).re) = f) := by
  let g := ofRealCLM ∘ (fderiv ℝ f · 1) - I • ofRealCLM ∘ (fderiv ℝ f · I)
  have hg : Differentiable ℂ g :=
    fun x ↦ (HarmonicAt.differentiableAt_complex_partial (hf x (mem_univ x)))
  obtain ⟨F, hF⟩ := hg.isExactOn_univ.with_val_at 0 (f 0)
  have h₁F : ∀ z₁, HasDerivAt F (g z₁) z₁ := by simp_all
  have h₂F : Differentiable ℂ F := fun x ↦ (h₁F x).differentiableAt
  have h₃F : Differentiable ℝ F := h₂F.restrictScalars (𝕜 := ℝ)
  use F, (h₂F.differentiableOn).analyticOnNhd isOpen_univ
  ext x
  rw [← Complex.reCLM_apply, ← Function.comp_apply (f := reCLM)]
  refine (convex_univ).eqOn_of_fderivWithin_eq (𝕜 := ℝ) (x := 0) (by fun_prop) ?hd ?_ ?heq ?_ ?_ ?_
  case hd => exact hf.contDiffOn.differentiableOn two_ne_zero
  case heq =>
    intro y hy
    simp only [fderivWithin_univ]
    rw [fderiv_comp y (by fun_prop) (by fun_prop)]
    ext x
    trans fderiv ℝ f y (x.re • (1 : ℂ) + x.im • (I : ℂ))
    · simp only [map_smul, map_add]
      simp [(h₁F y).hasFDerivAt.restrictScalars ℝ |>.fderiv, g]
    · simp
  all_goals simp_all

@[deprecated (since := "2026-03-03")]
alias InnerProductSpace.harmonic_is_realOfHolomorphic_univ :=
  InnerProductSpace.HarmonicOnNhd.exists_analyticOnNhd_univ_re_eq

/-
Harmonic functions are real analytic.
TODO: Prove this for harmonic functions on an arbitrary f.d. inner product space (not just on `ℂ`).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant4c3ec9a546269c3236b3631a5f38d75b489a9c3bfc5037dcbceccfa172c816c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant4c3ec9a546269c3236b3631a5f38d75b489a9c3bfc5037dcbceccfa172c816c3.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6c015f40373865b625a8039ff05b0833b82d5a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
