# sheafPullbackIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dff41ceeae03f505b28939802d95514084efa24aa515da01ceb11de1af10fa2d",
  "kind": "def",
  "lexical_name": "sheafPullbackIso",
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
  "slug": "sheafpullbackiso--d34cbec4c1c4dc9ccade902f",
  "source": {
    "blob": "c624cf9dac6de77d59965215b658eb86c0262677",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 140,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variantbe34c9d144a1c9d5f9d5865e73cd5fb019ae36bd92563c6eeb97e16a32dff4da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d34cbec4c1c4dc9ccade902fe45d6b40d93a0127e3b81fc14f493a66c9d067f9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variantbe34c9d144a1c9d5f9d5865e73cd5fb019ae36bd92563c6eeb97e16a32dff4da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dff41ceeae03f505b28939802d95514084efa24aa515da01ceb11de1af10fa2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sheafPullbackIso : Sheaf.pullback A f ≅ hf.sheafPullback A := by
  refine Sheaf.pullbackIso A f ≪≫ NatIso.ofComponents (fun F ↦ ?_) (fun u ↦ ?_)
  · exact (presheafToSheaf (Opens.grothendieckTopology ↑X) A).mapIso
      (hf.isOpenMap.pullbackIso.app _) ≪≫
      (fullyFaithfulSheafToPresheaf (Opens.grothendieckTopology X) A).preimageIso
      (isoSheafify (Opens.grothendieckTopology X)
      (TopCat.Presheaf.isSheaf_of_isOpenEmbedding hf F.2)).symm
  · dsimp
    rw [← Functor.map_comp_assoc, hf.isOpenMap.pullbackIso.hom.naturality, Sheaf.hom_ext_iff]
    simp only [Functor.whiskeringLeft_obj_obj, Functor.whiskeringLeft_obj_map, Functor.map_comp,
      isoSheafify_inv, Category.assoc]
    rw [ObjectProperty.FullSubcategory.comp_hom, ObjectProperty.FullSubcategory.comp_hom,
      ObjectProperty.FullSubcategory.comp_hom, ObjectProperty.FullSubcategory.comp_hom]
    dsimp [sheafPullback, Functor.sheafPushforwardContinuous, Sheaf.forget]
    simp only [sheafifyMap_sheafifyLift, Category.comp_id, sheafifyMap_sheafifyLift_assoc]
    rw [CategoryTheory.sheafifyLift_comp]

end Topology.IsOpenEmbedding
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variantbe34c9d144a1c9d5f9d5865e73cd5fb019ae36bd92563c6eeb97e16a32dff4da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variantbe34c9d144a1c9d5f9d5865e73cd5fb019ae36bd92563c6eeb97e16a32dff4da.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c624cf9dac6de77d59965215b658eb86c0262677` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
