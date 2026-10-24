# map₂Iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:67d0bdb354e63c8111bf4c4b76321a959e92cf578354f266e38eab82ff167897",
  "kind": "def",
  "lexical_name": "map₂Iso",
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
  "slug": "map-iso--e6ae46ebecfc23ed6aa6d29b",
  "source": {
    "blob": "7fc1155580bc5c4f4b54703d365f28c111a141f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 899,
    "line": 863,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantafc464b9f2847e1ef8d1dd25ce0dc49223c1e9cb6603255b4ff2450f93cc5aac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6ae46ebecfc23ed6aa6d29b994bb2d4fbe02cf9da84a9d623d81a6aafd3f1e5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantafc464b9f2847e1ef8d1dd25ce0dc49223c1e9cb6603255b4ff2450f93cc5aac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:67d0bdb354e63c8111bf4c4b76321a959e92cf578354f266e38eab82ff167897`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 863–899.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def map₂Iso {F : C ≌ A} {G : D ≌ B} (α : F.functor ⋙ U ⟶ S ⋙ G.functor)
    (α' : F.inverse ⋙ S ⟶ U ⋙ G.inverse)
    (hα'α : (Functor.leftUnitor _).hom ≫ (Functor.rightUnitor _).inv ≫
      Functor.whiskerLeft _ G.unitIso.hom ≫ (Functor.associator ..).inv =
      Functor.whiskerRight F.unitIso.hom _ ≫ (Functor.associator ..).hom ≫
      Functor.whiskerLeft F.functor α' ≫
      (Functor.associator ..).inv ≫ Functor.whiskerRight α _)
    (hαα' : Functor.whiskerLeft F.inverse α ≫ (Functor.associator ..).inv ≫
      Functor.whiskerRight α' _ ≫
      (Functor.associator ..).hom ≫ Functor.whiskerLeft _ G.counitIso.hom =
      (Functor.associator ..).inv ≫ Functor.whiskerRight F.counitIso.hom _ ≫
      (Functor.leftUnitor _).hom ≫ (Functor.rightUnitor _).inv)
    (β : G.functor.obj T ⟶ V) (β' : G.inverse.obj V ⟶ T)
    (hββ' : G.inverse.map β ≫ β' = G.unitIso.inv.app _)
    (hβ'β : G.functor.map β' ≫ β = G.counitIso.hom.app _) :
    CostructuredArrow S T ≌ CostructuredArrow U V where
  functor := CostructuredArrow.map₂ α β
  inverse := CostructuredArrow.map₂ α' β'
  unitIso := (map₂IdIso _ _ _ rfl rfl).symm ≪≫ map₂Congr _ _ F.unitIso G.unitIso _ _ ?_ ?_ ≪≫
    (map₂CompMap₂Iso ..).symm
  counitIso := map₂CompMap₂Iso .. ≪≫
    map₂Congr _ _ F.counitIso G.counitIso _ _ ?_ ?_ ≪≫ map₂IdIso _ _ _ rfl rfl
  functor_unitIso_comp := ?_
where finally
  · ext X
    simpa using congr($(hα'α).app X)
  · simp [hββ']
  · ext X
    simpa using congr($(hαα').app X)
  · simp [hβ'β]
  · simp [map₂Congr]

end

set_option backward.defeqAttrib.useBackward true in
/-- `CostructuredArrow.post` is a special case of `CostructuredArrow.map₂` up to natural
isomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantafc464b9f2847e1ef8d1dd25ce0dc49223c1e9cb6603255b4ff2450f93cc5aac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantafc464b9f2847e1ef8d1dd25ce0dc49223c1e9cb6603255b4ff2450f93cc5aac.lean#L863).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fc1155580bc5c4f4b54703d365f28c111a141f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
