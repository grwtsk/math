# residual_norm_le_delta_add_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "21630135358a7e81c299af94af1f85514d3c2caa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6f8cde57b5118490ac7b25889400dc95c89c76f2e6f3a177b9c7d42e5dcd6fb8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d015ac03-f76a-63a4-666a-424329c500ad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b80053a5-2364-75b2-1f8e-2baba69009ec",
  "kind": "theorem",
  "lexical_name": "residual_norm_le_delta_add_error",
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
  "slug": "residual-norm-le-delta-add-error--9f262f8c463d2594b30b3308",
  "source": {
    "blob": "21630135358a7e81c299af94af1f85514d3c2caa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 72,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateResidual/Variant6f8cde57b5118490ac7b25889400dc95c89c76f2e6f3a177b9c7d42e5dcd6fb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f262f8c463d2594b30b3308ee66409d3d4eaaba107b331939b64583f99c3884",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CandidateResidual/Variant6f8cde57b5118490ac7b25889400dc95c89c76f2e6f3a177b9c7d42e5dcd6fb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b80053a5-2364-75b2-1f8e-2baba69009ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_norm_le_delta_add_error (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 < h) (hh1 : h ≤ 1) :
    ‖referenceVector - sourceOperator (controller X hX ε h hε hh hh1)‖ ≤
      delta ε h + Real.sqrt (arithmeticErrorSq X ε h) := by
  let a : ℝ → ℂ := fun t => (1 + (t : ℂ) * Complex.I)⁻¹ - boundaryFilter ε h t
  let b : ℝ → ℂ := fun t => boundaryFilter ε h t -
    actualLaplace ((t : ℂ) * Complex.I) * candidate X ε h ((t : ℂ) * Complex.I)
  have hH : Measurable (boundaryFilter ε h) := by
    unfold boundaryFilter
    have hw : Continuous MobiusSourceFilterQuotient.W :=
      (Complex.continuous_exp.comp continuous_neg).mul FixedLaplaceBoundary.V_continuous
    fun_prop
  have hQ : Continuous (fun t : ℝ => candidate X ε h ((t : ℂ) * Complex.I)) := by
    apply continuous_iff_continuousAt.mpr
    intro t
    exact (candidate_differentiableAt X ε h hε hh.le _ (by simp)).continuousAt.comp
      (by fun_prop)
  have hK : Continuous (fun t : ℝ => actualLaplace ((t : ℂ) * Complex.I)) :=
    FixedLaplaceBoundary.actualLaplace_continuousOn_closed.comp_continuous
      (by fun_prop) (fun t => by simp)
  have ha : MemLp a 2 volume :=
    (memLp_two_iff_integrable_sq_norm
      ((by fun_prop : Measurable (fun t : ℝ => (1 + (t : ℂ) * Complex.I)⁻¹)).sub
        hH).aestronglyMeasurable).mpr
      (boundaryFilter_error_integrable ε h hε hsmall hh.le)
  have hb_eq (t : ℝ) : b t = boundaryFilter ε h t *
      (1 - riemannZeta (1 / 2 + (t : ℂ) * Complex.I) *
        correctedNumerator X ((ε : ℂ) + (t : ℂ) * Complex.I)) := by
    dsimp [b]
    rw [actual_boundary_product X ε h t hε (by linarith)]
    ring
  have hb : MemLp b 2 volume := by
    apply (memLp_two_iff_integrable_sq_norm
      (hH.sub (hK.mul hQ).measurable).aestronglyMeasurable).mpr
    change Integrable (fun t : ℝ => ‖b t‖ ^ 2)
    simpa only [hb_eq] using
      arithmetic_error_sq_integrable X hX ε h hε hsmall hh hh1
  have he : ‖referenceVector - sourceOperator (controller X hX ε h hε hh hh1)‖ =
      Real.sqrt ((1 / (2 * Real.pi)) * ∫ t : ℝ, ‖a t + b t‖ ^ 2) := by
    have headd (t : ℝ) : a t + b t =
        1 / (1 + (t : ℂ) * Complex.I) - actualLaplace ((t : ℂ) * Complex.I) *
          candidate X ε h ((t : ℂ) * Complex.I) := by
      dsimp only [a, b]
      simp only [one_div, sub_add_sub_cancel]
    simp_rw [headd]
    rw [← (residual_norm_sq X hX ε h hε hh hh1).2, Real.sqrt_sq (norm_nonneg _)]
  calc
    _ = _ := he
    _ ≤ Real.sqrt ((1 / (2 * Real.pi)) * ∫ t : ℝ, ‖a t‖ ^ 2) +
        Real.sqrt ((1 / (2 * Real.pi)) * ∫ t : ℝ, ‖b t‖ ^ 2) :=
      sqrt_normalized_integral_add_le a b ha hb
    _ = _ := by simp only [a, hb_eq, delta, deltaSq, arithmeticErrorSq]

end
end CandidateResidualScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CandidateResidual/Variant6f8cde57b5118490ac7b25889400dc95c89c76f2e6f3a177b9c7d42e5dcd6fb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CandidateResidual/Variant6f8cde57b5118490ac7b25889400dc95c89c76f2e6f3a177b9c7d42e5dcd6fb8.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21630135358a7e81c299af94af1f85514d3c2caa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
