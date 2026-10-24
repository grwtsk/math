# uniformSpace_eq_iInf_precomp_of_cover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50ecc76a-b939-df88-813e-412fea6a1df0",
  "kind": "theorem",
  "lexical_name": "uniformSpace_eq_iInf_precomp_of_cover",
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
  "slug": "uniformspace-eq-iinf-precomp-of-cover--edc17ed025fdae28302bd164",
  "source": {
    "blob": "e8dc1a1f0e8c15131ff125434bf6a82008620bc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1120,
    "line": 1095,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant4efbea4bb14ad86b953e3e7ff986110576916974dad5911588eff58cb3ece17a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:edc17ed025fdae28302bd164b8e747ebed6deba541590df8f6bdaef27545b4c3",
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

Occurrence: `result:50ecc76a-b939-df88-813e-412fea6a1df0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1095–1120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniformSpace_eq_iInf_precomp_of_cover {δ : ι → Type*} (φ : Π i, δ i → α)
    (𝔗 : ∀ i, Set (Set (δ i))) (h_image : ∀ i, MapsTo (φ i '' ·) (𝔗 i) 𝔖)
    (h_preimage : ∀ i, MapsTo (φ i ⁻¹' ·) 𝔖 (𝔗 i))
    (h_cover : ∀ S ∈ 𝔖, ∃ I : Set ι, I.Finite ∧ S ⊆ ⋃ i ∈ I, range (φ i)) :
    𝒱(α, β, 𝔖, _) = ⨅ i, .comap (ofFun (𝔗 i) ∘ (· ∘ φ i) ∘ toFun 𝔖) 𝒱(δ i, β, 𝔗 i, _) := by
  set ψ : Π S : Set α, Π i : ι, (φ i) ⁻¹' S → S := fun S i ↦ S.restrictPreimage (φ i)
  have : ∀ S ∈ 𝔖, 𝒰(S, β, _) = ⨅ i, .comap (· ∘ ψ S i) 𝒰(_, β, _) := fun S hS ↦ by
    rcases h_cover S hS with ⟨I, I_finite, I_cover⟩
    refine UniformFun.uniformSpace_eq_iInf_precomp_of_cover β _ ⟨I, I_finite, ?_⟩
    simpa only [← univ_subset_iff, ψ, range_restrictPreimage, ← preimage_iUnion₂,
      ← image_subset_iff, image_univ, Subtype.range_val] using I_cover
  -- With a better theory of ideals we may be able to simplify the following by replacing `𝔗 i`
  -- by `(φ i ⁻¹' ·) '' 𝔖`.
  refine le_antisymm (le_iInf fun i ↦ ?_) (le_iInf₂ fun S hS ↦ ?_)
  · rw [← uniformContinuous_iff]
    exact UniformOnFun.precomp_uniformContinuous (h_image i)
  · simp_rw [this S hS]
    #adaptation_note /-- 2025-03-29 lean4#7717 needed this additional rw for the `simp_rw` -/
    conv => enter [1,1,i]; rw [UniformSpace.comap_iInf]
    simp_rw [UniformSpace.comap_iInf, ← UniformSpace.comap_comap]
    exact iInf_mono fun i ↦ iInf₂_le_of_le _ (h_preimage i hS) le_rfl

end UniformOnFun

namespace UniformFun

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant4efbea4bb14ad86b953e3e7ff986110576916974dad5911588eff58cb3ece17a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant4efbea4bb14ad86b953e3e7ff986110576916974dad5911588eff58cb3ece17a.lean#L1095).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8dc1a1f0e8c15131ff125434bf6a82008620bc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
