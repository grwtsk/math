# coequalizer_π_stalk_isLocalRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a49b2827791c7fcc9c6b26ab51d9aae21b339cac77ef8609aba4ad26b298ea18",
  "kind": "instance",
  "lexical_name": "coequalizer_π_stalk_isLocalRingHom",
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
  "slug": "coequalizer-stalk-islocalringhom--1ceb109e310cfdc1ccd82ab5",
  "source": {
    "blob": "8eed74b203e72864e5f5ba91f1ef741c7e1d27d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 228,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/HasColimits/Variantf096606a2a8bc3387c91400f79b10ba5d0c1c55177cb5326f674a98a5e0dfb0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1ceb109e310cfdc1ccd82ab54dd9dbc95a045fa5e5e7454dff9a4a7653254ea6",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/HasColimits/Variantf096606a2a8bc3387c91400f79b10ba5d0c1c55177cb5326f674a98a5e0dfb0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a49b2827791c7fcc9c6b26ab51d9aae21b339cac77ef8609aba4ad26b298ea18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance coequalizer_π_stalk_isLocalRingHom (x : Y) :
    IsLocalRingHom (PresheafedSpace.stalkMap (coequalizer.π f.val g.val : _) x) := by
  constructor
  rintro a ha
  rcases TopCat.Presheaf.germ_exist _ _ a with ⟨U, hU, s, rfl⟩
  erw [PresheafedSpace.stalkMap_germ_apply (coequalizer.π f.1 g.1 : _) U ⟨_, hU⟩] at ha
  let V := imageBasicOpen f g U s
  have hV : (coequalizer.π f.1 g.1).base ⁻¹' ((coequalizer.π f.1 g.1).base '' V.1) = V.1 :=
    imageBasicOpen_image_preimage f g U s
  have hV' :
    V = ⟨(coequalizer.π f.1 g.1).base ⁻¹' ((coequalizer.π f.1 g.1).base '' V.1), hV.symm ▸ V.2⟩ :=
    SetLike.ext' hV.symm
  have V_open : IsOpen ((coequalizer.π f.val g.val).base '' V.1) :=
    imageBasicOpen_image_open f g U s
  have VleU : (⟨(coequalizer.π f.val g.val).base '' V.1, V_open⟩ : TopologicalSpace.Opens _) ≤ U :=
    Set.image_subset_iff.mpr (Y.toRingedSpace.basicOpen_le _)
  have hxV : x ∈ V := ⟨⟨_, hU⟩, ha, rfl⟩
  erw [←
    (coequalizer f.val g.val).presheaf.germ_res_apply (homOfLE VleU)
      ⟨_, @Set.mem_image_of_mem _ _ (coequalizer.π f.val g.val).base x V.1 hxV⟩ s]
  apply RingHom.isUnit_map
  rw [← isUnit_map_iff ((coequalizer.π f.val g.val : _).c.app _), ← comp_apply,
    NatTrans.naturality, comp_apply, TopCat.Presheaf.pushforwardObj_map, ←
    isUnit_map_iff (Y.presheaf.map (eqToHom hV').op)]
  -- Porting note : change `rw` to `erw`
  erw [← comp_apply, ← comp_apply, Category.assoc, ← Y.presheaf.map_comp]
  convert @RingedSpace.isUnit_res_basicOpen Y.toRingedSpace (unop _)
      (((coequalizer.π f.val g.val).c.app (op U)) s)
#align algebraic_geometry.LocallyRingedSpace.has_coequalizer.coequalizer_π_stalk_is_local_ring_hom AlgebraicGeometry.LocallyRingedSpace.HasCoequalizer.coequalizer_π_stalk_isLocalRingHom

end HasCoequalizer

/-- The coequalizer of two locally ringed space in the category of sheafed spaces is a locally
ringed space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/HasColimits/Variantf096606a2a8bc3387c91400f79b10ba5d0c1c55177cb5326f674a98a5e0dfb0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/HasColimits/Variantf096606a2a8bc3387c91400f79b10ba5d0c1c55177cb5326f674a98a5e0dfb0c.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8eed74b203e72864e5f5ba91f1ef741c7e1d27d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
