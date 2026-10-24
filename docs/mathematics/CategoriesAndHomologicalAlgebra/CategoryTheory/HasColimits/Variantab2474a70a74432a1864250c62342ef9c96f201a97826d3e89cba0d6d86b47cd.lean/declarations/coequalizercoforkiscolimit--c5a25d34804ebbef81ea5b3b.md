# coequalizerCoforkIsColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9befda1d505cc88eb4ed5de9006f12f43cd6106c3f0359a5a959f1d02f1d3e06",
  "kind": "def",
  "lexical_name": "coequalizerCoforkIsColimit",
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
  "slug": "coequalizercoforkiscolimit--c5a25d34804ebbef81ea5b3b",
  "source": {
    "blob": "0a3c44c17402bd16e7d4afa0a744d22de46cdd18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 281,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variantab2474a70a74432a1864250c62342ef9c96f201a97826d3e89cba0d6d86b47cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5a25d34804ebbef81ea5b3b2fec8b9d4091c15e5cd4359e095d5924b432092e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variantab2474a70a74432a1864250c62342ef9c96f201a97826d3e89cba0d6d86b47cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9befda1d505cc88eb4ed5de9006f12f43cd6106c3f0359a5a959f1d02f1d3e06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def coequalizerCoforkIsColimit : IsColimit (coequalizerCofork f g) := by
  refine Cofork.IsColimit.mk' _ (fun s ↦ ?_)
  have e : f.toShHom ≫ s.π.toShHom = g.toShHom ≫ s.π.toShHom := by
    simp only [← comp_toShHom, s.condition]
  refine ⟨⟨(coequalizer.desc s.π.toShHom e).hom, fun x ↦ ?_⟩,
    ⟨Hom.ext' (Functor.congr_map SheafedSpace.forgetToPresheafedSpace
      (coequalizer.π_desc (Hom.toShHom s.π) e)),
      fun {m} hm ↦ LocallyRingedSpace.forgetToSheafedSpace.map_injective
        (coequalizer.hom_ext ((LocallyRingedSpace.forgetToSheafedSpace.congr_map hm).trans
      ((coequalizer.π_desc _ _).symm)))⟩⟩
  rcases (TopCat.epi_iff_surjective
    (coequalizer.π f.toShHom g.toShHom).hom.base).mp inferInstance x with ⟨y, rfl⟩
  -- Porting note: was `apply isLocalHom_of_comp _ (PresheafedSpace.stalkMap ...)`, this
  -- used to allow you to provide the proof that `... ≫ ...` is a local ring homomorphism later,
  -- but this is no longer possible
  set h := _
  change IsLocalHom h
  suffices _ : IsLocalHom (((coequalizerCofork f g).π.1.stalkMap _).hom.comp h) by
    apply isLocalHom_of_comp _ ((coequalizerCofork f g).π.1.stalkMap _).hom
  rw [← CommRingCat.hom_ofHom h, ← CommRingCat.hom_comp]
  erw [← PresheafedSpace.stalkMap.comp]
  apply isLocalHom_stalkMap_congr _ _ (coequalizer.π_desc s.π.toShHom e).symm y
  change IsLocalHom (s.π.stalkMap y).hom
  infer_instance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variantab2474a70a74432a1864250c62342ef9c96f201a97826d3e89cba0d6d86b47cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variantab2474a70a74432a1864250c62342ef9c96f201a97826d3e89cba0d6d86b47cd.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a3c44c17402bd16e7d4afa0a744d22de46cdd18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
