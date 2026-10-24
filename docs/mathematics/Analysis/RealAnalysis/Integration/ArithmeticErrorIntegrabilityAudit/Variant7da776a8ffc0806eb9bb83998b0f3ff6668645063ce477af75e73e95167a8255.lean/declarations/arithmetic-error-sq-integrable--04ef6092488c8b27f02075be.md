# arithmetic_error_sq_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b83af5b73ea76868130e99a82cd5bf551aba1da8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 616,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7d/7da776a8ffc0806eb9bb83998b0f3ff6668645063ce477af75e73e95167a8255.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:092bd228-0508-cbc5-23c8-f3fe22d960a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e6f68c9f-e9ce-2095-6d52-8c86f0d9d391",
  "kind": "theorem",
  "lexical_name": "arithmetic_error_sq_integrable",
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
  "slug": "arithmetic-error-sq-integrable--04ef6092488c8b27f02075be",
  "source": {
    "blob": "b83af5b73ea76868130e99a82cd5bf551aba1da8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 689,
    "line": 616,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ArithmeticErrorIntegrabilityAudit/Variant7da776a8ffc0806eb9bb83998b0f3ff6668645063ce477af75e73e95167a8255.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04ef6092488c8b27f02075be67fe0905e180c920f989344723ea9523e26b5699",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ArithmeticErrorIntegrabilityAudit/Variant7da776a8ffc0806eb9bb83998b0f3ff6668645063ce477af75e73e95167a8255.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6f68c9f-e9ce-2095-6d52-8c86f0d9d391`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 616–689.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arithmetic_error_sq_integrable (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hsmall : ε ≤ 1/4) (hh : 0 < h) (hh1 : h ≤ 1) :
    Integrable (fun t : ℝ =>
      ‖boundaryFilter ε h t * (1-riemannZeta (1/2+(t : ℂ)*Complex.I) *
        correctedNumerator X ((ε : ℂ)+(t : ℂ)*Complex.I))‖^2) := by
  let Q : ℝ → ℂ := fun t => candidate X ε h ((t : ℂ)*Complex.I)
  let L : ℝ → ℂ := fun t => actualLaplace ((t : ℂ)*Complex.I)
  let H : ℝ → ℂ := fun t => boundaryFilter ε h t
  let M : ℝ := ∫ u : ℝ in Ioi 0, |fixedKernel u|
  have hM : 0 ≤ M := integral_nonneg (fun _ => abs_nonneg _)
  have hL : Continuous L := actualLaplace_continuousOn_closed.comp_continuous
    (by fun_prop) (fun t => by simp)
  have hQ : Continuous Q := by
    apply continuous_iff_continuousAt.mpr
    intro t
    exact (candidate_differentiableAt X ε h hε hh.le _ (by simp)).continuousAt.comp
      (by fun_prop)
  have hH : Measurable H := by
    dsimp [H, boundaryFilter]
    have hw : Continuous W := (Complex.continuous_exp.comp continuous_neg).mul V_continuous
    fun_prop
  have hHsq : Integrable (fun t : ℝ => ‖H t‖^2) := by
    apply (integrable_inv_one_add_sq.const_mul ((2*Real.exp 1)^2)).mono'
      (hH.norm.pow_const 2).aestronglyMeasurable
    filter_upwards with t
    change |‖H t‖^2| ≤ _
    rw [abs_of_nonneg (sq_nonneg _)]
    have hn := boundaryFilter_norm_le ε h t hε hsmall hh.le
    have hsq := pow_le_pow_left₀ (norm_nonneg _) hn 2
    have hden : ‖1+(t : ℂ)*Complex.I‖^2 = 1+t^2 := by
      rw [← Complex.normSq_eq_norm_sq]
      simp [Complex.normSq_apply, pow_two]
    simpa only [H, div_eq_mul_inv, mul_pow, inv_pow, hden] using hsq
  obtain ⟨C, _, hc⟩ := candidate_line_square_integrable_bound ε hε
  have hQsq : Integrable (fun t : ℝ => ‖Q t‖^2) := by
    simpa only [Q, Complex.ofReal_zero, zero_add] using (hc X hX h hh hh1 0 le_rfl).1
  have hLQsq : Integrable (fun t : ℝ => ‖L t * Q t‖^2) := by
    apply (hQsq.const_mul (M^2)).mono' ((hL.mul hQ).norm.pow 2).aestronglyMeasurable
    filter_upwards with t
    change |‖L t * Q t‖^2| ≤ _
    rw [abs_of_nonneg (sq_nonneg _), norm_mul, mul_pow]
    apply mul_le_mul_of_nonneg_right _ (sq_nonneg _)
    exact pow_le_pow_left₀ (norm_nonneg _) (actualLaplace_boundary_norm_le t) 2
  have hmemH : MemLp H 2 volume := (memLp_two_iff_integrable_sq_norm
    hH.aestronglyMeasurable).mpr hHsq
  have hmemLQ : MemLp (fun t => L t * Q t) 2 volume :=
    (memLp_two_iff_integrable_sq_norm (hL.mul hQ).aestronglyMeasurable).mpr hLQsq
  have hi : Integrable (fun t : ℝ => ‖H t - L t * Q t‖^2) :=
    (memLp_two_iff_integrable_sq_norm (hmemH.sub hmemLQ).aestronglyMeasurable).mp
      (hmemH.sub hmemLQ)
  have heq (t : ℝ) :
      boundaryFilter ε h t * (1-riemannZeta (1/2+(t : ℂ)*Complex.I) *
        correctedNumerator X ((ε : ℂ)+(t : ℂ)*Complex.I)) = H t - L t * Q t := by
    dsimp [H, L, Q]
    rw [actual_boundary_product X ε h t hε (by linarith)]
    ring
  simpa only [heq] using hi

end
end ArithmeticErrorIntegrabilityScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @ArithmeticErrorIntegrabilityScratch.actualLaplace_boundary_norm_le
#print ArithmeticErrorIntegrabilityScratch.actualLaplace_boundary_norm_le
#print axioms ArithmeticErrorIntegrabilityScratch.actualLaplace_boundary_norm_le
#check @ArithmeticErrorIntegrabilityScratch.arithmeticErrorSq
#print ArithmeticErrorIntegrabilityScratch.arithmeticErrorSq
#print axioms ArithmeticErrorIntegrabilityScratch.arithmeticErrorSq
#check @ArithmeticErrorIntegrabilityScratch.arithmetic_error_sq_integrable
#print ArithmeticErrorIntegrabilityScratch.arithmetic_error_sq_integrable
#print axioms ArithmeticErrorIntegrabilityScratch.arithmetic_error_sq_integrable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ArithmeticErrorIntegrabilityAudit/Variant7da776a8ffc0806eb9bb83998b0f3ff6668645063ce477af75e73e95167a8255.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ArithmeticErrorIntegrabilityAudit/Variant7da776a8ffc0806eb9bb83998b0f3ff6668645063ce477af75e73e95167a8255.lean#L616).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b83af5b73ea76868130e99a82cd5bf551aba1da8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
