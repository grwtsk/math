# continuous_of_continuous_uncurry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2895b3845de48cd019222a498552f7c119aeefe2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 431,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0dd024f67da3fb817d72a2515b5e2c3e0f499525b66c139a0a6519a3f62fcbed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5fb442c9-e883-98cf-33db-e2be10c955d2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d3640b33-8b82-4978-b355-b607e128975a",
  "kind": "theorem",
  "lexical_name": "continuous_of_continuous_uncurry",
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
  "slug": "continuous-of-continuous-uncurry--73fd49fe443442631efb6a6f",
  "source": {
    "blob": "2895b3845de48cd019222a498552f7c119aeefe2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 460,
    "line": 431,
    "path": "GRWTSK/Topology/GeneralTopology/UniformConvergenceCLM/Variant0dd024f67da3fb817d72a2515b5e2c3e0f499525b66c139a0a6519a3f62fcbed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73fd49fe443442631efb6a6f60c243f82a12fa12969638bebb3b3d5054c7ee7b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformConvergenceCLM/Variant0dd024f67da3fb817d72a2515b5e2c3e0f499525b66c139a0a6519a3f62fcbed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3640b33-8b82-4978-b355-b607e128975a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 431–460.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem continuous_of_continuous_uncurry [AddCommGroup G]
    {𝕜₃ : Type*} [NormedField 𝕜₃] [Module 𝕜₃ G]
    {τ : 𝕜₃ →+* 𝕜₂} [RingHomSurjective τ]
    [TopologicalSpace F] [IsTopologicalAddGroup F] [ContinuousConstSMul 𝕜₂ F]
    [TopologicalSpace G] [IsTopologicalAddGroup G] [ContinuousConstSMul 𝕜₃ G]
    {𝔖 : Set (Set E)} (h𝔖 : ∀ s ∈ 𝔖, IsVonNBounded 𝕜₁ s)
    (B : G →ₛₗ[τ] (E →SLᵤ[σ, 𝔖] F))
    (hB : Continuous (fun p : G × E ↦ B p.1 p.2)) :
    Continuous B := by
  apply continuous_of_tendsto_nhds_zero
  suffices ∀ s ∈ 𝔖, ∀ U ∈ 𝓝 0, ∀ᶠ (g : G) in 𝓝 0, ∀ e ∈ s, B g e ∈ U by
    simpa [UniformConvergenceCLM.nhds_zero_eq, MapsTo]
  intro S hS U hU
  rcases mem_nhds_prod_iff.mp <| hB.tendsto' (0 : G × E) 0 (by simp) hU
    with ⟨V, hV, W, hW, hVW⟩
  rcases (h𝔖 S hS) hW |>.eventually_nhdsNE_zero.and eventually_mem_nhdsWithin |>.exists with
    ⟨c, hc, c_ne : c ≠ 0⟩
  rcases RingHom.surjective τ (σ c) with ⟨d, hd⟩
  have d_ne : d ≠ 0 := by rwa [← map_ne_zero τ, hd, map_ne_zero σ]
  filter_upwards [(set_smul_mem_nhds_zero_iff d_ne).mpr hV]
  rintro _ ⟨a, ha, rfl⟩ x hx
  rw [map_smulₛₗ, hd, smul_apply, ← map_smulₛₗ]
  exact @hVW ⟨_, _⟩ ⟨ha, hc hx⟩

section Equiv

variable [TopologicalSpace F] [IsTopologicalAddGroup F] [ContinuousConstSMul 𝕜₂ F] (𝔖 : Set (Set E))

/-- The linear equivalence that maps a continuous linear map to the type copy endowed with the
uniform convergence topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UniformConvergenceCLM/Variant0dd024f67da3fb817d72a2515b5e2c3e0f499525b66c139a0a6519a3f62fcbed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformConvergenceCLM/Variant0dd024f67da3fb817d72a2515b5e2c3e0f499525b66c139a0a6519a3f62fcbed.lean#L431).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2895b3845de48cd019222a498552f7c119aeefe2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
