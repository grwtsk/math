# mapHomologyIso'_eq_mapHomologyIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d413dc71-ff2d-647d-db4b-88e54b478660",
  "kind": "lemma",
  "lexical_name": "mapHomologyIso'_eq_mapHomologyIso",
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
  "slug": "maphomologyiso-eq-maphomologyiso--51552e44cde842954d2c893e",
  "source": {
    "blob": "e9ba1cf42c53d58773a6d6574ce5a0f6f4154b67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 696,
    "line": 663,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesHomology/Variantbbbeeb93385f7276eb59b59bf58e9a93d44f50a7f852d65671d9d609914cf69d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51552e44cde842954d2c893eee90b9b568dbd104e58b031944ba9f4e6c18fee4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesHomology/Variantbbbeeb93385f7276eb59b59bf58e9a93d44f50a7f852d65671d9d609914cf69d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d413dc71-ff2d-647d-db4b-88e54b478660`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 663–696.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mapHomologyIso'_eq_mapHomologyIso [S.HasHomology] [F.PreservesLeftHomologyOf S]
    [F.PreservesRightHomologyOf S] :
    S.mapHomologyIso' F = S.mapHomologyIso F := by
  ext
  rw [S.homologyData.left.mapHomologyIso_eq F, S.homologyData.right.mapHomologyIso'_eq F]
  dsimp only [Iso.trans, Iso.symm, Iso.refl, Functor.mapIso, RightHomologyData.homologyIso,
    rightHomologyIso, RightHomologyData.rightHomologyIso, LeftHomologyData.homologyIso,
    leftHomologyIso, LeftHomologyData.leftHomologyIso]
  simp only [RightHomologyData.map_H, rightHomologyMapIso'_inv, rightHomologyMapIso'_hom, assoc,
    Functor.map_comp, RightHomologyData.map_rightHomologyMap', Functor.mapShortComplex_obj,
    Functor.map_id, LeftHomologyData.map_H, leftHomologyMapIso'_inv, leftHomologyMapIso'_hom,
    LeftHomologyData.map_leftHomologyMap', ← rightHomologyMap'_comp_assoc, ← leftHomologyMap'_comp,
    id_comp]
  have γ : HomologyMapData (𝟙 (S.map F)) (map S F).homologyData (S.homologyData.map F) := default
  have eq := γ.comm
  rw [← γ.left.leftHomologyMap'_eq, ← γ.right.rightHomologyMap'_eq] at eq
  dsimp at eq
  simp only [← reassoc_of% eq, ← F.map_comp, Iso.hom_inv_id, F.map_id, comp_id]

end

section

variable {S}
  {F G : C ⥤ D} [F.PreservesZeroMorphisms] [G.PreservesZeroMorphisms]
  [F.PreservesLeftHomologyOf S] [G.PreservesLeftHomologyOf S]
  [F.PreservesRightHomologyOf S] [G.PreservesRightHomologyOf S]

set_option backward.defeqAttrib.useBackward true in
/-- Given a natural transformation `τ : F ⟶ G` between functors `C ⥤ D` which preserve
the left homology of a short complex `S`, and a left homology data for `S`,
this is the left homology map data for the morphism `S.mapNatTrans τ`
obtained by evaluating `τ`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesHomology/Variantbbbeeb93385f7276eb59b59bf58e9a93d44f50a7f852d65671d9d609914cf69d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesHomology/Variantbbbeeb93385f7276eb59b59bf58e9a93d44f50a7f852d65671d9d609914cf69d.lean#L663).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9ba1cf42c53d58773a6d6574ce5a0f6f4154b67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
