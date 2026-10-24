# stalkPushforward_iso_of_openEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4ec37a97-2d4b-0c19-e2e8-48ae16d7857b",
  "kind": "theorem",
  "lexical_name": "stalkPushforward_iso_of_openEmbedding",
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
  "slug": "stalkpushforward-iso-of-openembedding--43b5c0665dc7ad261bf8c899",
  "source": {
    "blob": "d620ea12831b2d3f8861cfe9574d7736220242f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 211,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43b5c0665dc7ad261bf8c899e403f45fea55969cb9aa7ffe7b013c3cd0e0462f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ec37a97-2d4b-0c19-e2e8-48ae16d7857b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stalkPushforward_iso_of_openEmbedding {f : X ⟶ Y} (hf : OpenEmbedding f) (F : X.Presheaf C)
    (x : X) : IsIso (F.stalkPushforward _ f x) := by
  haveI := Functor.initial_of_adjunction (hf.isOpenMap.adjunctionNhds x)
  convert IsIso.of_iso
      ((Functor.Final.colimitIso (hf.isOpenMap.functorNhds x).op
              ((OpenNhds.inclusion (f x)).op ⋙ f _* F) :
            _).symm ≪≫
        colim.mapIso _)
  swap
  · fapply NatIso.ofComponents
    · intro U
      refine' F.mapIso (eqToIso _)
      dsimp only [Functor.op]
      exact congr_arg op (Opens.ext <| Set.preimage_image_eq (unop U).1.1 hf.inj)
    · intro U V i; erw [← F.map_comp, ← F.map_comp]; congr 1
  · change (_ : colimit _ ⟶ _) = (_ : colimit _ ⟶ _)
    ext U
    rw [← Iso.comp_inv_eq]
    erw [colimit.ι_map_assoc]
    rw [colimit.ι_pre, Category.assoc]
    erw [colimit.ι_map_assoc, colimit.ι_pre, ← F.map_comp_assoc]
    apply colimit.w ((OpenNhds.inclusion (f x)).op ⋙ f _* F) _
    dsimp only [Functor.op]
    refine' ((homOfLE _).op : op (unop U) ⟶ _)
    exact Set.image_preimage_subset _ _
set_option linter.uppercaseLean3 false in
#align Top.presheaf.stalk_pushforward.stalk_pushforward_iso_of_open_embedding TopCat.Presheaf.stalkPushforward.stalkPushforward_iso_of_openEmbedding

end stalkPushforward

section stalkPullback

/-- The morphism `ℱ_{f x} ⟶ (f⁻¹ℱ)ₓ` that factors through `(f_*f⁻¹ℱ)_{f x}`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d620ea12831b2d3f8861cfe9574d7736220242f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
