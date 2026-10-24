# comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5d4ca77b876795c8f7a9c1d7be85bca4e6dec6b0ce3d37541593dfd367f3b2ab",
  "kind": "def",
  "lexical_name": "comp",
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
  "slug": "comp--dce078ba5dcc8204e0d978fa",
  "source": {
    "blob": "7924e51e155c13cad6e16719b2edbfa384fa914d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 137,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lax/Variantd19075fa82293e542e52cfa8bb357dd7fe7d63bafcbab63f9a8f7201dad555d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dce078ba5dcc8204e0d978fa4995905fff02b81b76961062fe884e798b45e536",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Lax/Variantd19075fa82293e542e52cfa8bb357dd7fe7d63bafcbab63f9a8f7201dad555d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5d4ca77b876795c8f7a9c1d7be85bca4e6dec6b0ce3d37541593dfd367f3b2ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def comp {D : Type u₃} [Bicategory.{w₃, v₃} D] (F : LaxFunctor B C) (G : LaxFunctor C D) :
    LaxFunctor B D where
  toPrelaxFunctor := PrelaxFunctor.comp F.toPrelaxFunctor G.toPrelaxFunctor
  mapId := fun a => G.mapId (F.obj a) ≫ G.map₂ (F.mapId a)
  mapComp := fun f g => G.mapComp (F.map f) (F.map g) ≫ G.map₂ (F.mapComp f g)
  mapComp_naturality_left := fun η g => by
    dsimp
    rw [assoc, ← G.map₂_comp, mapComp_naturality_left, G.map₂_comp, mapComp_naturality_left_assoc]
  mapComp_naturality_right := fun f _ _ η => by
    dsimp
    rw [assoc, ← G.map₂_comp, mapComp_naturality_right, G.map₂_comp, mapComp_naturality_right_assoc]
  map₂_associator := fun f g h => by
    dsimp
    slice_rhs 1 3 =>
      rw [Bicategory.whiskerLeft_comp, assoc, ← mapComp_naturality_right, ← map₂_associator_assoc]
    slice_rhs 3 5 =>
      rw [← G.map₂_comp, ← G.map₂_comp, ← F.map₂_associator, G.map₂_comp, G.map₂_comp]
    slice_lhs 1 3 =>
      rw [comp_whiskerRight, assoc, ← G.mapComp_naturality_left_assoc]
    simp only [assoc]
  map₂_leftUnitor := fun f => by
    dsimp
    simp only [map₂_leftUnitor, PrelaxFunctor.map₂_comp, assoc, mapComp_naturality_left_assoc,
      comp_whiskerRight]
  map₂_rightUnitor := fun f => by
    dsimp
    simp only [map₂_rightUnitor, PrelaxFunctor.map₂_comp, assoc, mapComp_naturality_right_assoc,
      Bicategory.whiskerLeft_comp]

/-- A structure on an Lax functor that promotes an Lax functor to a pseudofunctor.

See `Pseudofunctor.mkOfLax`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Lax/Variantd19075fa82293e542e52cfa8bb357dd7fe7d63bafcbab63f9a8f7201dad555d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lax/Variantd19075fa82293e542e52cfa8bb357dd7fe7d63bafcbab63f9a8f7201dad555d3.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7924e51e155c13cad6e16719b2edbfa384fa914d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
