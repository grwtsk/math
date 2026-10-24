# uniformSpace_eq_inf_precomp_of_cover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8683126735ebafcd4497cb58bee1f000b20b3916",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 323,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3a82526d-8af8-eb48-67c3-aaffe65f4fb7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:498f861a-bce8-3634-e9b7-0b658aa0c887",
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
  "slug": "uniformspace-eq-inf-precomp-of-cover--6312625f0443ae4c856232fb",
  "source": {
    "blob": "8683126735ebafcd4497cb58bee1f000b20b3916",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 323,
    "path": "GRWTSK/Topology/GeneralTopology/CompactConvergence/Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6312625f0443ae4c856232fbb2bab2efef6e63e6ce8427a0fa64618da0dc38ca",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactConvergence/Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:498f861a-bce8-3634-e9b7-0b658aa0c887`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–345.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactConvergence/Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactConvergence/Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8683126735ebafcd4497cb58bee1f000b20b3916` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
