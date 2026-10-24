# HarmonicAt.differentiableAt_complex_partial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:798b8d7b-baf4-1dbe-c2ae-911fc8c78f3b",
  "kind": "theorem",
  "lexical_name": "HarmonicAt.differentiableAt_complex_partial",
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
  "slug": "harmonicat-differentiableat-complex-partial--5cda5f6eb0419ffdb193aa43",
  "source": {
    "blob": "d6c015f40373865b625a8039ff05b0833b82d5a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 39,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant4c3ec9a546269c3236b3631a5f38d75b489a9c3bfc5037dcbceccfa172c816c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cda5f6eb0419ffdb193aa43bf72cc2b527a567c6c14d48fc863c5493c861422",
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

Occurrence: `result:798b8d7b-baf4-1dbe-c2ae-911fc8c78f3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HarmonicAt.differentiableAt_complex_partial (hf : HarmonicAt f x) :
    DifferentiableAt ℂ (fun z ↦ fderiv ℝ f z 1 - I * fderiv ℝ f z I) x := by
  have : (fun z ↦ fderiv ℝ f z 1 - I * fderiv ℝ f z I) =
      (ofRealCLM ∘ (fderiv ℝ f · 1) - I • ofRealCLM ∘ (fderiv ℝ f · I)) := by
    ext; simp
  rw [this]
  have h₁f := hf.1
  refine differentiableAt_complex_iff_differentiableAt_real.2 ⟨by fun_prop, ?_⟩
  rw [fderiv_sub (by fun_prop) (by fun_prop), fderiv_const_smul (by fun_prop)]
  repeat rw [fderiv_comp]; all_goals try fun_prop
  simp only [ContinuousLinearMap.fderiv, sub_apply, ContinuousLinearMap.comp_apply, ofRealCLM_apply,
    smul_apply, smul_eq_mul]
  ring_nf
  rw [fderiv_clm_apply (by fun_prop) (by fun_prop), fderiv_clm_apply (by fun_prop) (by fun_prop)]
  simp only [fderiv_fun_const, Pi.zero_apply, ContinuousLinearMap.comp_zero, zero_add,
    ContinuousLinearMap.flip_apply, I_sq, neg_mul, one_mul, sub_neg_eq_add]
  rw [add_comm, sub_eq_add_neg]
  congr 1
  · norm_cast
    apply h₁f.isSymmSndFDerivAt (by simp)
  · have h₂f := hf.2.eq_of_nhds
    simp only [laplacian_eq_iteratedFDeriv_complexPlane, iteratedFDeriv_two_apply, Fin.isValue,
      Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_fin_one, Pi.zero_apply,
      add_eq_zero_iff_eq_neg] at h₂f
    simp [h₂f]

/--
If `f : ℂ → ℝ` is harmonic at `x`, then `∂f/∂1 - I • ∂f/∂I` is complex analytic at `x`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant4c3ec9a546269c3236b3631a5f38d75b489a9c3bfc5037dcbceccfa172c816c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant4c3ec9a546269c3236b3631a5f38d75b489a9c3bfc5037dcbceccfa172c816c3.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6c015f40373865b625a8039ff05b0833b82d5a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
