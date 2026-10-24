# uniformSpace_eq_inf_precomp_of_cover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1dbf5b9c-5f7f-8530-8f28-0b4373692f02",
  "kind": "theorem",
  "lexical_name": "uniformSpace_eq_inf_precomp_of_cover",
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
  "slug": "uniformspace-eq-inf-precomp-of-cover--201dd92ccd636e7a6b56da57",
  "source": {
    "blob": "e8dc1a1f0e8c15131ff125434bf6a82008620bc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1094,
    "line": 1065,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant4efbea4bb14ad86b953e3e7ff986110576916974dad5911588eff58cb3ece17a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:201dd92ccd636e7a6b56da57b854b019e6b1bce12b94903ff57ad1e87630fdb0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant4efbea4bb14ad86b953e3e7ff986110576916974dad5911588eff58cb3ece17a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1dbf5b9c-5f7f-8530-8f28-0b4373692f02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1065–1094.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniformSpace_eq_inf_precomp_of_cover {δ₁ δ₂ : Type*} (φ₁ : δ₁ → α) (φ₂ : δ₂ → α)
    (𝔗₁ : Set (Set δ₁)) (𝔗₂ : Set (Set δ₂))
    (h_image₁ : MapsTo (φ₁ '' ·) 𝔗₁ 𝔖) (h_image₂ : MapsTo (φ₂ '' ·) 𝔗₂ 𝔖)
    (h_preimage₁ : MapsTo (φ₁ ⁻¹' ·) 𝔖 𝔗₁) (h_preimage₂ : MapsTo (φ₂ ⁻¹' ·) 𝔖 𝔗₂)
    (h_cover : ∀ S ∈ 𝔖, S ⊆ range φ₁ ∪ range φ₂) :
    𝒱(α, β, 𝔖, _) =
      .comap (ofFun 𝔗₁ ∘ (· ∘ φ₁) ∘ toFun 𝔖) 𝒱(δ₁, β, 𝔗₁, _) ⊓
      .comap (ofFun 𝔗₂ ∘ (· ∘ φ₂) ∘ toFun 𝔖) 𝒱(δ₂, β, 𝔗₂, _) := by
  set ψ₁ : Π S : Set α, φ₁ ⁻¹' S → S := fun S ↦ S.restrictPreimage φ₁
  set ψ₂ : Π S : Set α, φ₂ ⁻¹' S → S := fun S ↦ S.restrictPreimage φ₂
  have : ∀ S ∈ 𝔖, 𝒰(S, β, _) = .comap (· ∘ ψ₁ S) 𝒰(_, β, _) ⊓ .comap (· ∘ ψ₂ S) 𝒰(_, β, _) := by
    refine fun S hS ↦ UniformFun.uniformSpace_eq_inf_precomp_of_cover β _ _ ?_
    simpa only [← univ_subset_iff, ψ₁, ψ₂, range_restrictPreimage, ← preimage_union,
      ← image_subset_iff, image_univ, Subtype.range_val] using h_cover S hS
  refine le_antisymm (le_inf ?_ ?_) (le_iInf₂ fun S hS ↦ ?_)
  · rw [← uniformContinuous_iff]
    exact UniformOnFun.precomp_uniformContinuous h_image₁
  · rw [← uniformContinuous_iff]
    exact UniformOnFun.precomp_uniformContinuous h_image₂
  · #adaptation_note
    /-- 2025-03-29 lean4#7717 a single `simp_rw` needed to be broken up to fully apply -/
    simp_rw [this S hS]
    conv => enter [1]; rw [UniformSpace.comap_iInf]; enter [1,1,i]; rw [UniformSpace.comap_iInf]
    conv => enter [1]; rw [UniformSpace.comap_iInf]; enter [2,1,i]; rw [UniformSpace.comap_iInf]
    simp_rw [UniformSpace.comap_inf, ← UniformSpace.comap_comap]
    exact inf_le_inf
      (iInf₂_le_of_le _ (h_preimage₁ hS) le_rfl)
      (iInf₂_le_of_le _ (h_preimage₂ hS) le_rfl)

variable (𝔖) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant4efbea4bb14ad86b953e3e7ff986110576916974dad5911588eff58cb3ece17a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant4efbea4bb14ad86b953e3e7ff986110576916974dad5911588eff58cb3ece17a.lean#L1065).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8dc1a1f0e8c15131ff125434bf6a82008620bc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
