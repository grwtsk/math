# uniformSpace_eq_inf_precomp_of_cover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a40b5ba-8b9f-c503-5e83-2127d752de39",
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
  "slug": "uniformspace-eq-inf-precomp-of-cover--d808a82bfdc0b3bad7f1b258",
  "source": {
    "blob": "158e3b258505957369d11e6c01e7e4979aa586bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 331,
    "path": "GRWTSK/Topology/GeneralTopology/CompactConvergence/Variant874a4b9e978e648ac5b38308ab9b11d86509c6cc35ea9a6fdf38a6114f1fd3e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d808a82bfdc0b3bad7f1b25830e9acd759ac00c6363dd374732fef3983b26a69",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactConvergence/Variant874a4b9e978e648ac5b38308ab9b11d86509c6cc35ea9a6fdf38a6114f1fd3e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a40b5ba-8b9f-c503-5e83-2127d752de39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniformSpace_eq_inf_precomp_of_cover {δ₁ δ₂ : Type*} [TopologicalSpace δ₁]
    [TopologicalSpace δ₂] (φ₁ : C(δ₁, α)) (φ₂ : C(δ₂, α)) (h_proper₁ : IsProperMap φ₁)
    (h_proper₂ : IsProperMap φ₂) (h_cover : range φ₁ ∪ range φ₂ = univ) :
    (inferInstanceAs <| UniformSpace C(α, β)) =
      .comap (comp · φ₁) inferInstance ⊓
      .comap (comp · φ₂) inferInstance := by
  -- We check the analogous result for `UniformOnFun` using
  -- `UniformOnFun.uniformSpace_eq_inf_precomp_of_cover`...
  set 𝔖 : Set (Set α) := {K | IsCompact K}
  set 𝔗₁ : Set (Set δ₁) := {K | IsCompact K}
  set 𝔗₂ : Set (Set δ₂) := {K | IsCompact K}
  have h_image₁ : MapsTo (φ₁ '' ·) 𝔗₁ 𝔖 := fun K hK ↦ hK.image φ₁.continuous
  have h_image₂ : MapsTo (φ₂ '' ·) 𝔗₂ 𝔖 := fun K hK ↦ hK.image φ₂.continuous
  have h_preimage₁ : MapsTo (φ₁ ⁻¹' ·) 𝔖 𝔗₁ := fun K ↦ h_proper₁.isCompact_preimage
  have h_preimage₂ : MapsTo (φ₂ ⁻¹' ·) 𝔖 𝔗₂ := fun K ↦ h_proper₂.isCompact_preimage
  have h_cover' : ∀ S ∈ 𝔖, S ⊆ range φ₁ ∪ range φ₂ := fun S _ ↦ h_cover ▸ subset_univ _
  -- ... and we just pull it back.
  simp_rw +zetaDelta [compactConvergenceUniformSpace, replaceTopology_eq,
    UniformOnFun.uniformSpace_eq_inf_precomp_of_cover _ _ _ _ _
      h_image₁ h_image₂ h_preimage₁ h_preimage₂ h_cover',
    UniformSpace.comap_inf, ← UniformSpace.comap_comap]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactConvergence/Variant874a4b9e978e648ac5b38308ab9b11d86509c6cc35ea9a6fdf38a6114f1fd3e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactConvergence/Variant874a4b9e978e648ac5b38308ab9b11d86509c6cc35ea9a6fdf38a6114f1fd3e0.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `158e3b258505957369d11e6c01e7e4979aa586bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
