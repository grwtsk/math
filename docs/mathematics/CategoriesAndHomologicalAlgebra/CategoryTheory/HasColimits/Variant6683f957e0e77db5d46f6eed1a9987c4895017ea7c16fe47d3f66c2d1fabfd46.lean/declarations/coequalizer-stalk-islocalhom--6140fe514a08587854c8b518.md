# coequalizer_π_stalk_isLocalHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f92c0dc-ce58-85cb-7bd1-bed1389f3db1",
  "kind": "theorem",
  "lexical_name": "coequalizer_π_stalk_isLocalHom",
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
  "slug": "coequalizer-stalk-islocalhom--6140fe514a08587854c8b518",
  "source": {
    "blob": "8f30ce3951fc6d5176ac2cd390b25bb7643718bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 219,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant6683f957e0e77db5d46f6eed1a9987c4895017ea7c16fe47d3f66c2d1fabfd46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6140fe514a08587854c8b51817d289ed70daf11849ad74e868d95419cfbf2e85",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant6683f957e0e77db5d46f6eed1a9987c4895017ea7c16fe47d3f66c2d1fabfd46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f92c0dc-ce58-85cb-7bd1-bed1389f3db1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coequalizer_π_stalk_isLocalHom (x : Y) :
    IsLocalHom ((coequalizer.π f.toShHom g.toShHom :).stalkMap x).hom := by
  constructor
  rintro a ha
  rcases TopCat.Presheaf.germ_exist _ _ a with ⟨U, hU, s, rfl⟩
  rw [-- Manually apply `elementwise_of%` to generate a `ConcreteCategory` lemma
    elementwise_of% PresheafedSpace.stalkMap_germ
      (coequalizer.π (C := SheafedSpace _) f.toShHom g.toShHom) U _ hU] at ha
  let V := imageBasicOpen f g U s
  have hV : (coequalizer.π f.toShHom g.toShHom).base ⁻¹'
      ((coequalizer.π f.toShHom g.toShHom).base '' V.1) = V.1 :=
    imageBasicOpen_image_preimage f g U s
  have hV' : V = ⟨(coequalizer.π f.toShHom g.toShHom).base ⁻¹'
      ((coequalizer.π f.toShHom g.toShHom).base '' V.1), hV.symm ▸ V.2⟩ :=
    SetLike.ext' hV.symm
  have V_open : IsOpen ((coequalizer.π f.toShHom g.toShHom).base '' V.1) :=
    imageBasicOpen_image_open f g U s
  have VleU : ⟨(coequalizer.π f.toShHom g.toShHom).base '' V.1, V_open⟩ ≤ U :=
    Set.image_subset_iff.mpr (Y.toRingedSpace.basicOpen_le _)
  have hxV : x ∈ V := ⟨hU, ha⟩
  rw [← (coequalizer f.toShHom g.toShHom).presheaf.germ_res_apply (homOfLE VleU) _
      (@Set.mem_image_of_mem _ _ (coequalizer.π f.toShHom g.toShHom).base x V.1 hxV) s]
  apply RingHom.isUnit_map
  rw [← isUnit_map_iff ((coequalizer.π f.toShHom g.toShHom :).c.app _).hom,
    ← CommRingCat.comp_apply, NatTrans.naturality, CommRingCat.comp_apply,
    ← isUnit_map_iff (Y.presheaf.map (eqToHom hV').op).hom]
  -- Porting note (https://github.com/leanprover-community/mathlib4/issues/11224): change `rw` to `erw`
  erw [← CommRingCat.comp_apply, ← CommRingCat.comp_apply, ← Y.presheaf.map_comp]
  convert @RingedSpace.isUnit_res_basicOpen Y.toRingedSpace (unop _)
      (((coequalizer.π f.toShHom g.toShHom).c.app (op U)) s)

end HasCoequalizer

/-- The coequalizer of two locally ringed space in the category of sheafed spaces is a locally
ringed space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant6683f957e0e77db5d46f6eed1a9987c4895017ea7c16fe47d3f66c2d1fabfd46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant6683f957e0e77db5d46f6eed1a9987c4895017ea7c16fe47d3f66c2d1fabfd46.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f30ce3951fc6d5176ac2cd390b25bb7643718bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
