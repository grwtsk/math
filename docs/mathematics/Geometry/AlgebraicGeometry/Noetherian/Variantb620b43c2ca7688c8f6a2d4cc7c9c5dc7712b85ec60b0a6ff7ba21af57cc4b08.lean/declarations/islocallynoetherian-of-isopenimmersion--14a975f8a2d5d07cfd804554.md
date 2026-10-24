# isLocallyNoetherian_of_isOpenImmersion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6afb6a42-6b67-7c0d-9973-a35dc968ed69",
  "kind": "lemma",
  "lexical_name": "isLocallyNoetherian_of_isOpenImmersion",
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
  "slug": "islocallynoetherian-of-isopenimmersion--14a975f8a2d5d07cfd804554",
  "source": {
    "blob": "9ad5d0f006f205a8fd19b802e6f44e577cd60954",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 154,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Noetherian/Variantb620b43c2ca7688c8f6a2d4cc7c9c5dc7712b85ec60b0a6ff7ba21af57cc4b08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14a975f8a2d5d07cfd8045548875ae6a1ad4a76732e1b7f378f0e12199f287fa",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Noetherian/Variantb620b43c2ca7688c8f6a2d4cc7c9c5dc7712b85ec60b0a6ff7ba21af57cc4b08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6afb6a42-6b67-7c0d-9973-a35dc968ed69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLocallyNoetherian_of_isOpenImmersion {Y : Scheme} (f : X ⟶ Y) [IsOpenImmersion f]
    [IsLocallyNoetherian Y] : IsLocallyNoetherian X := by
  refine ⟨fun U => ?_⟩
  let V : Y.affineOpens := ⟨f ''ᵁ U, IsAffineOpen.image_of_isOpenImmersion U.prop _⟩
  suffices Γ(X, U) ≅ Γ(Y, V) by
    convert isNoetherianRing_of_ringEquiv (R := Γ(Y, V)) _
    · apply CategoryTheory.Iso.commRingCatIsoToRingEquiv
      exact this.symm
    · exact IsLocallyNoetherian.component_noetherian V
  rw [← Scheme.Hom.preimage_image_eq f U]
  trans
  · apply IsOpenImmersion.ΓIso
  · suffices Scheme.Hom.opensRange f ⊓ V = V by
      rw [this]
    rw [← Opens.coe_inj]
    rw [Opens.coe_inf, Scheme.Hom.coe_opensRange, IsOpenMap.coe_functor_obj,
      Set.inter_eq_right, Set.image_subset_iff, Set.preimage_range]
    exact Set.subset_univ _

/-- If `𝒰` is an open cover of a scheme `X`, then `X` is locally noetherian if and only if
`𝒰.obj i` are all locally noetherian. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Noetherian/Variantb620b43c2ca7688c8f6a2d4cc7c9c5dc7712b85ec60b0a6ff7ba21af57cc4b08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Noetherian/Variantb620b43c2ca7688c8f6a2d4cc7c9c5dc7712b85ec60b0a6ff7ba21af57cc4b08.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ad5d0f006f205a8fd19b802e6f44e577cd60954` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
