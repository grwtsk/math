# actual_mixed_curvature_finite_cross_eq_neg_products

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "28c703637e96daa3d11fdc7438a506bf87dea703",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c4ac008d7b2ab2af296214eccb2561a17a1c687cd20498468995b5dd03946ad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2b3b7a55-6e7d-6265-a2ae-418f6446e0c1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7c4fbf82-46be-2897-5b42-198a2dca0bf3",
  "kind": "theorem",
  "lexical_name": "actual_mixed_curvature_finite_cross_eq_neg_products",
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
  "slug": "actual-mixed-curvature-finite-cross-eq-neg-products--370f56ac7a76c70c586f987a",
  "source": {
    "blob": "28c703637e96daa3d11fdc7438a506bf87dea703",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 83,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceMixedCurvatureCross/Variant7c4ac008d7b2ab2af296214eccb2561a17a1c687cd20498468995b5dd03946ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:370f56ac7a76c70c586f987a4d0de28b015e59bc72ea1d2d2c0c54d75f1099f4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceMixedCurvatureCross/Variant7c4ac008d7b2ab2af296214eccb2561a17a1c687cd20498468995b5dd03946ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c4fbf82-46be-2897-5b42-198a2dca0bf3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_mixed_curvature_finite_cross_eq_neg_products
    {ι κ : Type*} (s : Finset ι) (t : Finset κ) (a x : ι → ℝ) (b y : κ → ℝ)
    {A : ℝ} (hA : 0 < A) :
    (∑ i ∈ s, ∑ j ∈ t, a i * b j *
      (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (x i - y j) -
        sourceCorrelation explicitSecondDerivative A (x i - y j) / 4)) =
      -(∫ v : ℝ,
        (∑ i ∈ s, a i * deriv (normalizedTest explicitSecondDerivative A) (v + x i)) *
          (∑ j ∈ t, b j * deriv (normalizedTest explicitSecondDerivative A) (v + y j))) -
        (1 / 4 : ℝ) * (∫ v : ℝ,
          (∑ i ∈ s, a i * normalizedTest explicitSecondDerivative A (v + x i)) *
            (∑ j ∈ t, b j * normalizedTest explicitSecondDerivative A (v + y j))) := by
  have hfinite (p : ι → ℝ → ℝ) (q : κ → ℝ → ℝ)
      (hprod : ∀ i ∈ s, ∀ j ∈ t, Integrable (fun v : ℝ => p i v * q j v)) :
      (∫ v : ℝ, (∑ i ∈ s, a i * p i v) * (∑ j ∈ t, b j * q j v)) =
        ∑ i ∈ s, ∑ j ∈ t, a i * b j * (∫ v : ℝ, p i v * q j v) := by
    have hexpand :
        (fun v : ℝ => (∑ i ∈ s, a i * p i v) * (∑ j ∈ t, b j * q j v)) =
        (fun v : ℝ => ∑ i ∈ s, ∑ j ∈ t, a i * b j * (p i v * q j v)) := by
      funext v
      rw [Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro i _
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro j _
      ring
    rw [hexpand, integral_finsetSum s]
    · apply Finset.sum_congr rfl
      intro i hi
      rw [integral_finsetSum t]
      · apply Finset.sum_congr rfl
        intro j hj
        exact integral_const_mul (a i * b j) _
      · intro j hj
        exact (hprod i hi j hj).const_mul (a i * b j)
    · intro i hi
      exact integrable_finsetSum t (fun j hj =>
        (hprod i hi j hj).const_mul (a i * b j))
  have hp := hfinite
    (fun i v => normalizedTest explicitSecondDerivative A (v + x i))
    (fun j v => normalizedTest explicitSecondDerivative A (v + y j))
    (fun i _ j _ => source_shift_cross_integrable hA (x i) (y j))
  have hd := hfinite
    (fun i v => deriv (normalizedTest explicitSecondDerivative A) (v + x i))
    (fun j v => deriv (normalizedTest explicitSecondDerivative A) (v + y j))
    (fun i _ j _ => deriv_shift_cross_integrable hA (x i) (y j))
  rw [hd, hp]
  simp only [curvature_at_shift_difference hA, correlation_at_shift_difference,
    mul_sub, mul_neg, mul_div, Finset.sum_sub_distrib, Finset.sum_neg_distrib,
    Finset.sum_div]
  ring

end
end FormalResearch.RiemannHypothesis.SourceMixedCurvatureCross
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceMixedCurvatureCross/Variant7c4ac008d7b2ab2af296214eccb2561a17a1c687cd20498468995b5dd03946ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceMixedCurvatureCross/Variant7c4ac008d7b2ab2af296214eccb2561a17a1c687cd20498468995b5dd03946ad.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28c703637e96daa3d11fdc7438a506bf87dea703` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
