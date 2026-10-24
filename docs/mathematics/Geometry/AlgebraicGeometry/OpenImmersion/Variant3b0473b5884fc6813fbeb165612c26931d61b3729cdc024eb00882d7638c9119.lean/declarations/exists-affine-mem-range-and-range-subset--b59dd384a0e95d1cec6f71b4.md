# exists_affine_mem_range_and_range_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9445e7a-0a5d-1569-1925-536d6d774dd2",
  "kind": "theorem",
  "lexical_name": "exists_affine_mem_range_and_range_subset",
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
  "slug": "exists-affine-mem-range-and-range-subset--b59dd384a0e95d1cec6f71b4",
  "source": {
    "blob": "5fd933ee2673d62911a98a909212ea6deb500237",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 363,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variant3b0473b5884fc6813fbeb165612c26931d61b3729cdc024eb00882d7638c9119.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b59dd384a0e95d1cec6f71b4c6fb2220c0d3ec65a5ec00468fedf6fa8c206dd3",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/OpenImmersion/Variant3b0473b5884fc6813fbeb165612c26931d61b3729cdc024eb00882d7638c9119.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9445e7a-0a5d-1569-1925-536d6d774dd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_affine_mem_range_and_range_subset
    {X : Scheme.{u}} {x : X} {U : X.Opens} (hxU : x ∈ U) :
    ∃ R, ∃ (f : Spec R ⟶ X), IsOpenImmersion f ∧ x ∈ Set.range f ∧ Set.range f ⊆ U := by
  obtain ⟨⟨V, hxV⟩, R, ⟨e⟩⟩ := X.2 x
  have : e.hom.base ⟨x, hxV⟩ ∈ (Opens.map (e.inv.base ≫ V.inclusion')).obj U :=
    show ((e.hom ≫ e.inv).base ⟨x, hxV⟩).1 ∈ U from e.hom_inv_id ▸ hxU
  obtain ⟨_, ⟨_, ⟨r : R, rfl⟩, rfl⟩, hr, hr'⟩ :=
    PrimeSpectrum.isBasis_basic_opens.exists_subset_of_mem_open this (Opens.is_open' _)
  let f : Spec ↧(Localization.Away r) ⟶ X :=
    Spec.map (CommRingCat.ofHom (algebraMap R (Localization.Away r))) ≫ ⟨e.inv ≫ X.ofRestrict _⟩
  refine ⟨↧(Localization.Away r), f, inferInstance, ?_⟩
  rw [Scheme.Hom.comp_base, TopCat.coe_comp, Set.range_comp]
  erw [PrimeSpectrum.localization_away_comap_range (Localization.Away r) r]
  exact ⟨⟨_, hr, congr(($(e.hom_inv_id).base ⟨x, hxV⟩).1)⟩, Set.image_subset_iff.mpr hr'⟩

end Scheme

namespace PresheafedSpace.IsOpenImmersion

section ToScheme

variable {X : PresheafedSpace CommRingCat.{u}} (Y : Scheme.{u})
variable (f : X ⟶ Y.toPresheafedSpace) [H : PresheafedSpace.IsOpenImmersion f]

set_option backward.isDefEq.respectTransparency false in
/-- If `X ⟶ Y` is an open immersion, and `Y` is a scheme, then so is `X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/OpenImmersion/Variant3b0473b5884fc6813fbeb165612c26931d61b3729cdc024eb00882d7638c9119.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variant3b0473b5884fc6813fbeb165612c26931d61b3729cdc024eb00882d7638c9119.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fd933ee2673d62911a98a909212ea6deb500237` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
