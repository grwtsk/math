# isSmoothOfRelativeDimension_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3f919952be4fa8c7c270b48f413dbffb75f3ad3f981c77ffd6b7b7afde13cdd4",
  "kind": "instance",
  "lexical_name": "isSmoothOfRelativeDimension_comp",
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
  "slug": "issmoothofrelativedimension-comp--483406ca6ff657af8f57c821",
  "source": {
    "blob": "489322bd32b20e8189e1d46fa6790a9d22682bca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 143,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Smooth/Variantf09c2fc661b065ebeecc8031a4680109142c7bbd2da4a4e4f80bc068a557208f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:483406ca6ff657af8f57c8217f668624ee616ea04cd6aff9005f3b9457c53ba0",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Smooth/Variantf09c2fc661b065ebeecc8031a4680109142c7bbd2da4a4e4f80bc068a557208f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3f919952be4fa8c7c270b48f413dbffb75f3ad3f981c77ffd6b7b7afde13cdd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isSmoothOfRelativeDimension_comp {Z : Scheme.{u}} (g : Y ⟶ Z)
    [hf : IsSmoothOfRelativeDimension n f] [hg : IsSmoothOfRelativeDimension m g] :
    IsSmoothOfRelativeDimension (n + m) (f ≫ g) where
  exists_isStandardSmoothOfRelativeDimension x := by
    obtain ⟨U₂, V₂, hfx₂, e₂, hf₂⟩ := hg.exists_isStandardSmoothOfRelativeDimension (f.base x)
    obtain ⟨U₁', V₁', hx₁', e₁', hf₁'⟩ := hf.exists_isStandardSmoothOfRelativeDimension x
    obtain ⟨r, s, hx₁, e₁, hf₁⟩ := exists_basicOpen_le_appLE_of_appLE_of_isAffine
      (isStandardSmoothOfRelativeDimension_stableUnderCompositionWithLocalizationAway n).right
      (isStandardSmoothOfRelativeDimension_localizationPreserves n).away
      x V₂ U₁' V₁' V₁' hx₁' hx₁' e₁' hf₁' hfx₂
    have e : X.basicOpen s ≤ (f ≫ g) ⁻¹ᵁ U₂ :=
      le_trans e₁ <| f.preimage_le_preimage_of_le <| le_trans (Y.basicOpen_le r) e₂
    have heq : (f ≫ g).appLE U₂ (X.basicOpen s) e = g.appLE U₂ V₂ e₂ ≫
        CommRingCat.ofHom (algebraMap Γ(Y, V₂) Γ(Y, Y.basicOpen r)) ≫
          f.appLE (Y.basicOpen r) (X.basicOpen s) e₁ := by
      rw [RingHom.algebraMap_toAlgebra, CommRingCat.ofHom_hom,
        g.appLE_map_assoc, Scheme.appLE_comp_appLE]
    refine ⟨U₂, ⟨X.basicOpen s, V₁'.2.basicOpen s⟩, hx₁, e, heq ▸ ?_⟩
    apply IsStandardSmoothOfRelativeDimension.comp ?_ hf₂
    haveI : IsLocalization.Away r Γ(Y, Y.basicOpen r) := V₂.2.isLocalization_basicOpen r
    exact (isStandardSmoothOfRelativeDimension_stableUnderCompositionWithLocalizationAway n).left
      _ r _ hf₁

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Smooth/Variantf09c2fc661b065ebeecc8031a4680109142c7bbd2da4a4e4f80bc068a557208f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Smooth/Variantf09c2fc661b065ebeecc8031a4680109142c7bbd2da4a4e4f80bc068a557208f.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `489322bd32b20e8189e1d46fa6790a9d22682bca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
