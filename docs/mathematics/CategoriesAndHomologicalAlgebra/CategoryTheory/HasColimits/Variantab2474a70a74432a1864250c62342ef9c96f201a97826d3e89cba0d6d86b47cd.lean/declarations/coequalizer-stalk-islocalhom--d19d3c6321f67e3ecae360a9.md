# coequalizer_π_stalk_isLocalHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0a3c44c17402bd16e7d4afa0a744d22de46cdd18",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 224,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab2474a70a74432a1864250c62342ef9c96f201a97826d3e89cba0d6d86b47cd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:21246d4e-e7c7-1691-32e8-cffb1a3b5d3e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d464e48d-ec2e-379c-5ce7-59a8bf8e852d",
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
  "slug": "coequalizer-stalk-islocalhom--d19d3c6321f67e3ecae360a9",
  "source": {
    "blob": "0a3c44c17402bd16e7d4afa0a744d22de46cdd18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 224,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variantab2474a70a74432a1864250c62342ef9c96f201a97826d3e89cba0d6d86b47cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d19d3c6321f67e3ecae360a91ef1851daca16fb002224c4fa36263f18641547f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variantab2474a70a74432a1864250c62342ef9c96f201a97826d3e89cba0d6d86b47cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d464e48d-ec2e-379c-5ce7-59a8bf8e852d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coequalizer_π_stalk_isLocalHom (x : Y) :
    IsLocalHom ((coequalizer.π f.toShHom g.toShHom :).hom.stalkMap x).hom := by
  constructor
  rintro a ha
  rcases TopCat.Presheaf.exists_germ_eq _ a with ⟨U, hU, s, rfl⟩
  rw [PresheafedSpace.stalkMap_germ_apply (coequalizer.π f.toShHom g.toShHom).hom U _ hU] at ha
  let V := imageBasicOpen f g U s
  have hV : (coequalizer.π f.toShHom g.toShHom).hom.base ⁻¹'
      ((coequalizer.π f.toShHom g.toShHom).hom.base '' V.1) = V.1 :=
    imageBasicOpen_image_preimage f g U s
  have hV' : V = ⟨(coequalizer.π f.toShHom g.toShHom).hom.base ⁻¹'
      ((coequalizer.π f.toShHom g.toShHom).hom.base '' V.1), hV.symm ▸ V.2⟩ :=
    SetLike.ext' hV.symm
  have V_open : IsOpen ((coequalizer.π f.toShHom g.toShHom).hom.base '' V.1) :=
    imageBasicOpen_image_open f g U s
  have VleU : ⟨(coequalizer.π f.toShHom g.toShHom).hom.base '' V.1, V_open⟩ ≤ U :=
    Set.image_subset_iff.mpr (Y.toRingedSpace.basicOpen_le _)
  have hxV : x ∈ V := ⟨hU, ha⟩
  rw [← (coequalizer f.toShHom g.toShHom).presheaf.germ_res_apply (homOfLE VleU) _
      (@Set.mem_image_of_mem _ _ (coequalizer.π f.toShHom g.toShHom).hom.base x V.1 hxV) s]
  apply RingHom.isUnit_map
  rw [← isUnit_map_iff ((coequalizer.π f.toShHom g.toShHom).hom.c.app _).hom,
    ← CommRingCat.comp_apply, NatTrans.naturality, CommRingCat.comp_apply,
    ← isUnit_map_iff (Y.presheaf.map (eqToHom hV').op).hom]
  -- Porting note (https://github.com/leanprover-community/mathlib4/issues/11224): change `rw` to `erw`
  erw [← CommRingCat.comp_apply, ← CommRingCat.comp_apply, ← Y.presheaf.map_comp]
  convert!
    @RingedSpace.isUnit_res_basicOpen Y.toRingedSpace (unop _)
      (((coequalizer.π f.toShHom g.toShHom).hom.c.app (op U)) s)

end HasCoequalizer

/-- The coequalizer of two locally ringed spaces in the category of sheafed spaces is a locally
ringed space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variantab2474a70a74432a1864250c62342ef9c96f201a97826d3e89cba0d6d86b47cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variantab2474a70a74432a1864250c62342ef9c96f201a97826d3e89cba0d6d86b47cd.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a3c44c17402bd16e7d4afa0a744d22de46cdd18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
