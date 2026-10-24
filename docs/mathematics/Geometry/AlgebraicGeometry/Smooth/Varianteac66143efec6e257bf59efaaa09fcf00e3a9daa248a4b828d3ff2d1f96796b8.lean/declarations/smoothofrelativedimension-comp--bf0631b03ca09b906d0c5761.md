# smoothOfRelativeDimension_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:44dd653d65f5b215195bb70234caa50515b5de40972ab6d690063488b0e1317c",
  "kind": "instance",
  "lexical_name": "smoothOfRelativeDimension_comp",
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
  "slug": "smoothofrelativedimension-comp--bf0631b03ca09b906d0c5761",
  "source": {
    "blob": "d5d4198b84337a3a5f5f38945cd0e541cebbd76e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 200,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf0631b03ca09b906d0c5761c6b8a0683abf1a0571aa65571b5ad1457603dff6",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:44dd653d65f5b215195bb70234caa50515b5de40972ab6d690063488b0e1317c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance smoothOfRelativeDimension_comp {Z : Scheme.{u}} (g : Y ⟶ Z)
    [hf : SmoothOfRelativeDimension n f] [hg : SmoothOfRelativeDimension m g] :
    SmoothOfRelativeDimension (n + m) (f ≫ g) where
  exists_isStandardSmoothOfRelativeDimension x := by
    obtain ⟨U₂, hU₂, V₂, hV₂, hfx₂, e₂, hf₂⟩ := hg.exists_isStandardSmoothOfRelativeDimension (f x)
    obtain ⟨U₁', hU₁', V₁', hV₁', hx₁', e₁', hf₁'⟩ :=
      hf.exists_isStandardSmoothOfRelativeDimension x
    obtain ⟨r, s, hx₁, e₁, hf₁⟩ := exists_basicOpen_le_appLE_of_appLE_of_isAffine
      (isStandardSmoothOfRelativeDimension_stableUnderCompositionWithLocalizationAway n).right
      (isStandardSmoothOfRelativeDimension_localizationPreserves n).away
      x ⟨V₂, hV₂⟩ ⟨U₁', hU₁'⟩ ⟨V₁', hV₁'⟩ ⟨V₁', hV₁'⟩ hx₁' hx₁' e₁' hf₁' hfx₂
    have e : X.basicOpen s ≤ (f ≫ g) ⁻¹ᵁ U₂ :=
      le_trans e₁ <| f.preimage_mono <| le_trans (Y.basicOpen_le r) e₂
    have heq : (f ≫ g).appLE U₂ (X.basicOpen s) e = g.appLE U₂ V₂ e₂ ≫
        CommRingCat.ofHom (algebraMap Γ(Y, V₂) Γ(Y, Y.basicOpen r)) ≫
          f.appLE (Y.basicOpen r) (X.basicOpen s) e₁ := by
      rw [RingHom.algebraMap_toAlgebra, CommRingCat.ofHom_hom,
        g.appLE_map_assoc, Scheme.Hom.appLE_comp_appLE]
    refine ⟨U₂, hU₂, X.basicOpen s, hV₁'.basicOpen s, hx₁, e, heq ▸ ?_⟩
    apply IsStandardSmoothOfRelativeDimension.comp ?_ hf₂
    have : IsLocalization.Away r Γ(Y, Y.basicOpen r) := hV₂.isLocalization_basicOpen r
    exact (isStandardSmoothOfRelativeDimension_stableUnderCompositionWithLocalizationAway n).left
      _ r _ hf₁

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5d4198b84337a3a5f5f38945cd0e541cebbd76e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
