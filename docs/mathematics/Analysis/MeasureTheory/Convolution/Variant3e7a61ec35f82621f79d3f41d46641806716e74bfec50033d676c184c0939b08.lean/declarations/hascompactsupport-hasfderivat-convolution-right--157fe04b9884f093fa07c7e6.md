# HasCompactSupport.hasFDerivAt_convolution_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1ee6b93fa3151fc64ec813bc11d12698d80eac3c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1109,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3e7a61ec35f82621f79d3f41d46641806716e74bfec50033d676c184c0939b08.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ab13ad41-4cf8-e5ff-ee21-422f4c950e04",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:adcc3eaa-2767-5d86-e9fe-76fdc7a67f84",
  "kind": "theorem",
  "lexical_name": "HasCompactSupport.hasFDerivAt_convolution_right",
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
  "slug": "hascompactsupport-hasfderivat-convolution-right--157fe04b9884f093fa07c7e6",
  "source": {
    "blob": "1ee6b93fa3151fc64ec813bc11d12698d80eac3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1142,
    "line": 1109,
    "path": "GRWTSK/Analysis/MeasureTheory/Convolution/Variant3e7a61ec35f82621f79d3f41d46641806716e74bfec50033d676c184c0939b08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:157fe04b9884f093fa07c7e6ec602cdb20750f18f4fa039e78ce9c598274efb9",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Convolution/Variant3e7a61ec35f82621f79d3f41d46641806716e74bfec50033d676c184c0939b08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:adcc3eaa-2767-5d86-e9fe-76fdc7a67f84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1109–1142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasCompactSupport.hasFDerivAt_convolution_right (hcg : HasCompactSupport g)
    (hf : LocallyIntegrable f μ) (hg : ContDiff 𝕜 1 g) (x₀ : G) :
    HasFDerivAt (f ⋆[L, μ] g) ((f ⋆[L.precompR G, μ] fderiv 𝕜 g) x₀) x₀ := by
  rcases hcg.eq_zero_or_finiteDimensional 𝕜 hg.continuous with (rfl | fin_dim)
  · have : fderiv 𝕜 (0 : G → E') = 0 := fderiv_const (0 : E')
    simp only [this, convolution_zero, Pi.zero_apply]
    exact hasFDerivAt_const (0 : F) x₀
  have : ProperSpace G := FiniteDimensional.proper_isROrC 𝕜 G
  set L' := L.precompR G
  have h1 : ∀ᶠ x in 𝓝 x₀, AEStronglyMeasurable (fun t => L (f t) (g (x - t))) μ :=
    eventually_of_forall
      (hf.aestronglyMeasurable.convolution_integrand_snd L hg.continuous.aestronglyMeasurable)
  have h2 : ∀ x, AEStronglyMeasurable (fun t => L' (f t) (fderiv 𝕜 g (x - t))) μ :=
    hf.aestronglyMeasurable.convolution_integrand_snd L'
      (hg.continuous_fderiv le_rfl).aestronglyMeasurable
  have h3 : ∀ x t, HasFDerivAt (fun x => g (x - t)) (fderiv 𝕜 g (x - t)) x := fun x t ↦ by
    simpa using
      (hg.differentiable le_rfl).differentiableAt.hasFDerivAt.comp x
        ((hasFDerivAt_id x).sub (hasFDerivAt_const t x))
  let K' := -tsupport (fderiv 𝕜 g) + closedBall x₀ 1
  have hK' : IsCompact K' := (hcg.fderiv 𝕜).neg.add (isCompact_closedBall x₀ 1)
  -- porting note: was
  -- `refine' hasFDerivAt_integral_of_dominated_of_fderiv_le zero_lt_one h1 _ (h2 x₀) _ _ _`
  -- but it failed; surprisingly, `apply` works
  apply hasFDerivAt_integral_of_dominated_of_fderiv_le zero_lt_one h1 _ (h2 x₀)
  · refine' eventually_of_forall fun t x hx =>
      (hcg.fderiv 𝕜).convolution_integrand_bound_right L' (hg.continuous_fderiv le_rfl)
        (ball_subset_closedBall hx)
  · rw [integrable_indicator_iff hK'.measurableSet]
    exact ((hf.integrableOn_isCompact hK').norm.const_mul _).mul_const _
  · exact eventually_of_forall fun t x _ => (L _).hasFDerivAt.comp x (h3 x t)
  · exact hcg.convolutionExists_right L hf hg.continuous x₀
#align has_compact_support.has_fderiv_at_convolution_right HasCompactSupport.hasFDerivAt_convolution_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Convolution/Variant3e7a61ec35f82621f79d3f41d46641806716e74bfec50033d676c184c0939b08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Convolution/Variant3e7a61ec35f82621f79d3f41d46641806716e74bfec50033d676c184c0939b08.lean#L1109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ee6b93fa3151fc64ec813bc11d12698d80eac3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
