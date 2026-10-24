# map₂Iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c4cd2fedb4eaa204674029e3a7054bfa7df18640f6cebe2c33cb96569b237064",
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
  "slug": "map-iso--5ff7f7686b5a7dd2bd42a273",
  "source": {
    "blob": "2c7509b18de3b3c52965ea801c396fbe01d3d44b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 447,
    "line": 410,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant97226eb328a284409784c8e1df44c7356c8d611cee1bc755fa743b63cee01747.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5ff7f7686b5a7dd2bd42a2731e16d1d52ace0df98279788a87711aaf079cc83f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant97226eb328a284409784c8e1df44c7356c8d611cee1bc755fa743b63cee01747.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c4cd2fedb4eaa204674029e3a7054bfa7df18640f6cebe2c33cb96569b237064`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 410–447.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def map₂Iso {F : C ≌ A} {G : D ≌ B}
    (α : L' ⟶ G.functor.obj L) (α' : L ⟶ G.inverse.obj L')
    (β : R ⋙ G.functor ⟶ F.functor ⋙ R') (β' : R' ⋙ G.inverse ⟶ F.inverse ⋙ R)
    (hαα' : α ≫ G.functor.map α' = G.counitIso.inv.app _)
    (hα'α : α' ≫ G.inverse.map α = G.unitIso.hom.app _)
    (hββ' :
      (Functor.rightUnitor _).hom ≫ (Functor.leftUnitor _).inv ≫
        Functor.whiskerRight F.unitIso.hom _ ≫ (Functor.associator ..).hom =
        Functor.whiskerLeft R G.unitIso.hom ≫ (Functor.associator ..).inv ≫
        Functor.whiskerRight β _ ≫
        (Functor.associator ..).hom ≫ Functor.whiskerLeft _ β')
    (hβ'β :
      Functor.whiskerRight β' G.functor ≫ (Functor.associator ..).hom ≫
        Functor.whiskerLeft _ β ≫ (Functor.associator ..).inv ≫
        Functor.whiskerRight F.counitIso.hom _ =
        (Functor.associator ..).hom ≫ Functor.whiskerLeft _ G.counitIso.hom ≫
        (Functor.rightUnitor _).hom ≫ (Functor.leftUnitor _).inv) :
    StructuredArrow L R ≌ StructuredArrow L' R' where
  functor := map₂ α β
  inverse := map₂ α' β'
  unitIso := (map₂IdIso _ _ _ rfl rfl).symm ≪≫ map₂Congr _ _ F.unitIso G.unitIso _ _ ?_ ?_ ≪≫
    (map₂CompMap₂Iso ..).symm
  counitIso := map₂CompMap₂Iso .. ≪≫
    map₂Congr _ _ F.counitIso G.counitIso _ _ ?_ ?_ ≪≫ map₂IdIso _ _ _ rfl rfl
  functor_unitIso_comp := ?_
where finally
  · simp [reassoc_of% hα'α]
  · ext X
    simpa using congr($(hββ').app X)
  · simp [hαα']
  · ext X
    simpa using congr($(hβ'β).app X)
  · simp [map₂Congr]

end

set_option backward.defeqAttrib.useBackward true in
/-- `StructuredArrow.post` is a special case of `StructuredArrow.map₂` up to natural isomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant97226eb328a284409784c8e1df44c7356c8d611cee1bc755fa743b63cee01747.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant97226eb328a284409784c8e1df44c7356c8d611cee1bc755fa743b63cee01747.lean#L410).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c7509b18de3b3c52965ea801c396fbe01d3d44b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
