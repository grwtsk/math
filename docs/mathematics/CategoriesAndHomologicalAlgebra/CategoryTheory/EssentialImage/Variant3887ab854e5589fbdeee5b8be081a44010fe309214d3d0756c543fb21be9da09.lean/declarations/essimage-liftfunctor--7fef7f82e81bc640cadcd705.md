# essImage.liftFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0c903f94274b500161e99185b2b27e93084c681612fa4ef937ffd3f47bb9f6c5",
  "kind": "def",
  "lexical_name": "essImage.liftFunctor",
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
  "slug": "essimage-liftfunctor--7fef7f82e81bc640cadcd705",
  "source": {
    "blob": "54824f975d2710a1bacb8080d1a8ce3b8abd487c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 185,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant3887ab854e5589fbdeee5b8be081a44010fe309214d3d0756c543fb21be9da09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7fef7f82e81bc640cadcd705bb7b3de35c355d5ffcd698b57d0b72a96f85d1ab",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant3887ab854e5589fbdeee5b8be081a44010fe309214d3d0756c543fb21be9da09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0c903f94274b500161e99185b2b27e93084c681612fa4ef937ffd3f47bb9f6c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps] def essImage.liftFunctor : J ⥤ C where
  obj j := F.toEssImage.objPreimage ⟨G.obj j, hG j⟩
  -- TODO: `map` isn't type-correct:
  -- It conflates `⟨G.obj i, hG i⟩ ⟶ ⟨G.obj j, hG j⟩` and `G.obj i ⟶ G.obj j`.
  map {i j} f := F.preimage <|
    (F.toEssImage.objObjPreimageIso ⟨G.obj i, hG i⟩).hom ≫ G.map f ≫
      (F.toEssImage.objObjPreimageIso ⟨G.obj j, hG j⟩).inv
  map_id i := F.map_injective <| by
    simpa [-Iso.hom_inv_id] using (F.toEssImage.objObjPreimageIso ⟨G.obj i, hG i⟩).hom_inv_id
  map_comp {i j k} f g := F.map_injective <| by
    simp only [Functor.map_comp, Category.assoc, Functor.map_preimage]
    congr 2
    symm
    convert (F.toEssImage.objObjPreimageIso ⟨G.obj j, hG j⟩).inv_hom_id_assoc (G.map g ≫
      (F.toEssImage.objObjPreimageIso ⟨G.obj k, hG k⟩).inv)

/-- A functor `G : J ⥤ D` to the essential image of a fully functor `F : C ⥤ D` does factor through
`essImage.liftFunctor G F hG`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant3887ab854e5589fbdeee5b8be081a44010fe309214d3d0756c543fb21be9da09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant3887ab854e5589fbdeee5b8be081a44010fe309214d3d0756c543fb21be9da09.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54824f975d2710a1bacb8080d1a8ce3b8abd487c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
