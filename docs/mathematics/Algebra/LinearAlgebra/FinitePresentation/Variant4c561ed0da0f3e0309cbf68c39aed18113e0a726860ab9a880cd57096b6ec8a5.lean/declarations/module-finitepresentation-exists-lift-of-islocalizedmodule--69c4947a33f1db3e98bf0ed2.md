# Module.FinitePresentation.exists_lift_of_isLocalizedModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f8d72c1205c62f1d65e2ec1ec2305e4e42384d04",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 364,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4c561ed0da0f3e0309cbf68c39aed18113e0a726860ab9a880cd57096b6ec8a5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9c89dfe4-9cc9-e37a-b448-f82e02dbad85",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e98f80e7-da6a-eb97-eecd-2c143eedd7d0",
  "kind": "lemma",
  "lexical_name": "Module.FinitePresentation.exists_lift_of_isLocalizedModule",
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
  "slug": "module-finitepresentation-exists-lift-of-islocalizedmodule--69c4947a33f1db3e98bf0ed2",
  "source": {
    "blob": "f8d72c1205c62f1d65e2ec1ec2305e4e42384d04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 414,
    "line": 364,
    "path": "GRWTSK/Algebra/LinearAlgebra/FinitePresentation/Variant4c561ed0da0f3e0309cbf68c39aed18113e0a726860ab9a880cd57096b6ec8a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69c4947a33f1db3e98bf0ed2b67f172e2190c0ac535c1118f14ef3f4911aa963",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FinitePresentation/Variant4c561ed0da0f3e0309cbf68c39aed18113e0a726860ab9a880cd57096b6ec8a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e98f80e7-da6a-eb97-eecd-2c143eedd7d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 364–414.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Module.FinitePresentation.exists_lift_of_isLocalizedModule
    [h : Module.FinitePresentation R M] (g : M →ₗ[R] N') :
    ∃ (h : M →ₗ[R] N) (s : S), f ∘ₗ h = s • g := by
  obtain ⟨σ, hσ, τ, hτ⟩ := h
  let π := Finsupp.linearCombination R ((↑) : σ → M)
  have hπ : Function.Surjective π :=
    LinearMap.range_eq_top.mp
      (by rw [range_linearCombination, Subtype.range_val, ← hσ]; rfl)
  classical
  choose s hs using IsLocalizedModule.surj S f
  let i : σ → N :=
    fun x ↦ (∏ j ∈ σ.erase x.1, (s (g j)).2) • (s (g x)).1
  let s₀ := ∏ j ∈ σ, (s (g j)).2
  have hi : f ∘ₗ Finsupp.linearCombination R i = (s₀ • g) ∘ₗ π := by
    ext j
    simp only [LinearMap.coe_comp, Function.comp_apply, Finsupp.lsingle_apply,
      linearCombination_single, one_smul, LinearMap.map_smul_of_tower, ← hs, LinearMap.smul_apply,
      i, s₀, π]
    rw [← mul_smul, Finset.prod_erase_mul]
    exact j.prop
  have : ∀ x : τ, ∃ s : S, s • (Finsupp.linearCombination R i x) = 0 := by
    intros x
    convert_to ∃ s : S, s • (Finsupp.linearCombination R i x) = s • 0
    · simp only [smul_zero]
    apply IsLocalizedModule.exists_of_eq (S := S) (f := f)
    rw [← LinearMap.comp_apply, map_zero, hi, LinearMap.comp_apply]
    convert map_zero (s₀ • g)
    rw [← LinearMap.mem_ker, ← hτ]
    exact Submodule.subset_span x.prop
  choose s' hs' using this
  let s₁ := ∏ i : τ, s' i
  have : LinearMap.ker π ≤ LinearMap.ker (s₁ • Finsupp.linearCombination R i) := by
    rw [← hτ, Submodule.span_le]
    intro x hxσ
    simp only [s₁]
    rw [SetLike.mem_coe, LinearMap.mem_ker, LinearMap.smul_apply,
      ← Finset.prod_erase_mul _ _ (Finset.mem_univ ⟨x, hxσ⟩), mul_smul]
    convert smul_zero _
    exact hs' ⟨x, hxσ⟩
  refine ⟨Submodule.liftQ _ _ this ∘ₗ
    (LinearMap.quotKerEquivOfSurjective _ hπ).symm.toLinearMap, s₁ * s₀, ?_⟩
  ext x
  obtain ⟨x, rfl⟩ := hπ x
  rw [← LinearMap.comp_apply, ← LinearMap.comp_apply, mul_smul, LinearMap.smul_comp, ← hi,
    ← LinearMap.comp_smul, LinearMap.comp_assoc, LinearMap.comp_assoc]
  congr 2
  convert Submodule.liftQ_mkQ _ _ this using 2
  ext x
  apply (LinearMap.quotKerEquivOfSurjective _ hπ).injective
  simp [LinearMap.quotKerEquivOfSurjective]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FinitePresentation/Variant4c561ed0da0f3e0309cbf68c39aed18113e0a726860ab9a880cd57096b6ec8a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FinitePresentation/Variant4c561ed0da0f3e0309cbf68c39aed18113e0a726860ab9a880cd57096b6ec8a5.lean#L364).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8d72c1205c62f1d65e2ec1ec2305e4e42384d04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
