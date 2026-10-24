# ext_of_integral_prod_mul_prod_boundedContinuousFunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b963c3e0766328db4efb132ae80a03157e47480f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/107724f6c8b762c5a2bb9428d029b13f6e9d1180752e2a6d7044997f3d66b9fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:67849fd0-83b9-0f72-1a55-a0119c50ed0c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:216ffb09-6511-cefb-2dbf-f8194c0ed946",
  "kind": "lemma",
  "lexical_name": "ext_of_integral_prod_mul_prod_boundedContinuousFunction",
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
  "slug": "ext-of-integral-prod-mul-prod-boundedcontinuousfunction--d38e3febb579a528a0366a08",
  "source": {
    "blob": "b963c3e0766328db4efb132ae80a03157e47480f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 160,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HasOuterApproxClosedProd/Variant107724f6c8b762c5a2bb9428d029b13f6e9d1180752e2a6d7044997f3d66b9fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d38e3febb579a528a0366a082b63160cbc5e12e5af9f261a2f7272e3c7b371f0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HasOuterApproxClosedProd/Variant107724f6c8b762c5a2bb9428d029b13f6e9d1180752e2a6d7044997f3d66b9fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:216ffb09-6511-cefb-2dbf-f8194c0ed946`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ext_of_integral_prod_mul_prod_boundedContinuousFunction
    {μ ν : Measure ((Π i, X i) × (Π j, Y j))} [IsFiniteMeasure μ] [IsFiniteMeasure ν]
    (h : ∀ (f : (i : ι) → X i →ᵇ ℝ) (g : (j : κ) → Y j →ᵇ ℝ),
      ∫ p, (∏ i, f i (p.1 i)) * ∏ j, g j (p.2 j) ∂μ =
      ∫ p, (∏ i, f i (p.1 i)) * ∏ j, g j (p.2 j) ∂ν) :
    μ = ν := by
  refine ext_of_lintegral_prod_mul_prod_boundedContinuousFunction fun f g ↦ ?_
  rw [← toReal_eq_toReal_iff']
  · simp only [ofNNReal_finsetProd]
    have {μ : Measure ((Π i, X i) × Π j, Y j)} :
        (∫⁻ p, (∏ i, (f i (p.1 i) : ℝ≥0∞)) * ∏ j, (g j (p.2 j) : ℝ≥0∞) ∂μ).toReal =
          ∫ p, (∏ i, (f i (p.1 i)).toReal) * ∏ j, (g j (p.2 j)).toReal ∂μ := by
      rw [integral_eq_lintegral_of_nonneg_ae]
      · simp [Finset.prod_nonneg, ofReal_prod_of_nonneg]
      · exact Eventually.of_forall fun _ ↦ by positivity
      exact AEStronglyMeasurable.mul
        (Finset.aestronglyMeasurable_fun_prod _ fun _ _ ↦
          continuous_coe.aestronglyMeasurable.comp_measurable (by fun_prop))
        (Finset.aestronglyMeasurable_fun_prod _ fun _ _ ↦
          continuous_coe.aestronglyMeasurable.comp_measurable (by fun_prop))
    simp_rw [this]
    exact h (fun i ↦ ⟨⟨fun x ↦ (f i x), by fun_prop⟩, (f i).map_bounded'⟩)
      (fun j ↦ ⟨⟨fun y ↦ (g j y), by fun_prop⟩, (g j).map_bounded'⟩)
  · convert!
    (lintegral_lt_top_of_nnreal μ
        ((∏ i, (f i).compContinuous ⟨Function.eval i ∘ Prod.fst, by fun_prop⟩) *
          (∏ j, (g j).compContinuous ⟨Function.eval j ∘ Prod.snd, by fun_prop⟩))).ne
    simp
  · convert!
    (lintegral_lt_top_of_nnreal ν
        ((∏ i, (f i).compContinuous ⟨Function.eval i ∘ Prod.fst, by fun_prop⟩) *
          (∏ j, (g j).compContinuous ⟨Function.eval j ∘ Prod.snd, by fun_prop⟩))).ne
    simp

/-- The product of two finite measures `μ` and `ν` is the only finite measure `ξ` such that
for all families of real bounded continuous functions `f` and `g` we have
`∫ p, (Π i, f i (p.1 i)) * (Π j, g j (p.2 j)) ∂ξ =
(∫ x, Π i, f i (x i) ∂μ) * (∫ y, Π j, g j (y j) ∂ν)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HasOuterApproxClosedProd/Variant107724f6c8b762c5a2bb9428d029b13f6e9d1180752e2a6d7044997f3d66b9fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HasOuterApproxClosedProd/Variant107724f6c8b762c5a2bb9428d029b13f6e9d1180752e2a6d7044997f3d66b9fb.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b963c3e0766328db4efb132ae80a03157e47480f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
