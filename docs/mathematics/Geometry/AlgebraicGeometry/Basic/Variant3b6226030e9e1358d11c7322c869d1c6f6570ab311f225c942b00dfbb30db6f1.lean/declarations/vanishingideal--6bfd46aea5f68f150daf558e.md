# vanishingIdeal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd539761587c40c8837851e749f2ea6b4205147ee264595909639f60e1ed7d94",
  "kind": "def",
  "lexical_name": "vanishingIdeal",
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
  "slug": "vanishingideal--6bfd46aea5f68f150daf558e",
  "source": {
    "blob": "f0917130fca86cf11a93191f469396b67259022b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 502,
    "line": 458,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant3b6226030e9e1358d11c7322c869d1c6f6570ab311f225c942b00dfbb30db6f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6bfd46aea5f68f150daf558e131f409ebb16e4b850b368099be9b6a115a1eb2d",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variant3b6226030e9e1358d11c7322c869d1c6f6570ab311f225c942b00dfbb30db6f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd539761587c40c8837851e749f2ea6b4205147ee264595909639f60e1ed7d94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 458–502.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec def vanishingIdeal (Z : Closeds X) : IdealSheafData X :=
  mkOfMemSupportIff
    (fun U ↦ vanishingIdeal (U.2.fromSpec.base ⁻¹' Z))
    (fun U f ↦ by
      let F := X.presheaf.map (homOfLE (X.basicOpen_le f)).op
      apply le_antisymm
      · rw [Ideal.map_le_iff_le_comap]
        intro x hx
        suffices ∀ p, (X.affineBasicOpen f).2.fromSpec.base p ∈ Z → F.hom x ∈ p.asIdeal by
          simpa [PrimeSpectrum.mem_vanishingIdeal] using this
        intro x hxZ
        refine (PrimeSpectrum.mem_vanishingIdeal _ _).mp hx
          ((Spec.map (X.presheaf.map (homOfLE _).op)).base x) ?_
        rwa [Set.mem_preimage, ← Scheme.comp_base_apply,
          IsAffineOpen.map_fromSpec _ (X.affineBasicOpen f).2]
      · letI : Algebra Γ(X, U) Γ(X, X.affineBasicOpen f) := F.hom.toAlgebra
        have : IsLocalization.Away f Γ(X, X.basicOpen f) :=
          U.2.isLocalization_of_eq_basicOpen _ _ rfl
        intro x hx
        dsimp only at hx ⊢
        have : Topology.IsOpenEmbedding (Spec.map F).base :=
          localization_away_isOpenEmbedding Γ(X, X.basicOpen f) f
        rw [← U.2.map_fromSpec (X.affineBasicOpen f).2 (homOfLE (X.basicOpen_le f)).op,
          Scheme.comp_base, TopCat.coe_comp, Set.preimage_comp] at hx
        generalize U.2.fromSpec.base ⁻¹' Z = Z' at hx ⊢
        replace hx : x ∈ vanishingIdeal ((Spec.map F).base ⁻¹' Z') := hx
        obtain ⟨I, hI, e⟩ :=
          (isClosed_iff_zeroLocus_radical_ideal _).mp (isClosed_closure (s := Z'))
        rw [← vanishingIdeal_closure,
          ← this.isOpenMap.preimage_closure_eq_closure_preimage this.continuous, e] at hx
        rw [← vanishingIdeal_closure, e]
        erw [preimage_comap_zeroLocus] at hx
        rwa [← PrimeSpectrum.zeroLocus_span, ← Ideal.map, vanishingIdeal_zeroLocus_eq_radical,
          ← RingHom.algebraMap_toAlgebra (X.presheaf.map _).hom,
          ← IsLocalization.map_radical (.powers f), ← vanishingIdeal_zeroLocus_eq_radical] at hx)
    Z
    (fun U x hxU ↦ by
      trans x ∈ X.zeroLocus (U := U.1) (vanishingIdeal (U.2.fromSpec.base.hom ⁻¹' Z)) ∩ U.1
      · rw [← U.2.fromSpec_image_zeroLocus, zeroLocus_vanishingIdeal_eq_closure,
          ← U.2.fromSpec.isOpenEmbedding.isOpenMap.preimage_closure_eq_closure_preimage
            U.2.fromSpec.base.1.2,
          Set.image_preimage_eq_inter_range, Z.isClosed.closure_eq, IsAffineOpen.range_fromSpec]
        simp [hxU]
      · simp [hxU])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variant3b6226030e9e1358d11c7322c869d1c6f6570ab311f225c942b00dfbb30db6f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant3b6226030e9e1358d11c7322c869d1c6f6570ab311f225c942b00dfbb30db6f1.lean#L458).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0917130fca86cf11a93191f469396b67259022b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
