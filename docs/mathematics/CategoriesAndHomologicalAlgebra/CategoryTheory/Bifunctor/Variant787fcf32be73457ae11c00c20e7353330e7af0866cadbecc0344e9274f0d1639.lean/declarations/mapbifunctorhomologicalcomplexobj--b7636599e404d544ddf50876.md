# mapBifunctorHomologicalComplexObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:78ac7ba6842c0a182fd299b243192875f1d0c985cb390628ae78ec738c1fd207",
  "kind": "def",
  "lexical_name": "mapBifunctorHomologicalComplexObj",
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
  "slug": "mapbifunctorhomologicalcomplexobj--b7636599e404d544ddf50876",
  "source": {
    "blob": "d75315d0baea29eb4c4127b44fa3e28e431ee0a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 49,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b7636599e404d544ddf5087620cd6a77088088de1287c8d064cdb0cec3b5df74",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:78ac7ba6842c0a182fd299b243192875f1d0c985cb390628ae78ec738c1fd207`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapBifunctorHomologicalComplexObj (K₁ : HomologicalComplex C₁ c₁) :
    HomologicalComplex C₂ c₂ ⥤ HomologicalComplex₂ D c₁ c₂ where
  obj K₂ := HomologicalComplex₂.ofGradedObject c₁ c₂
      (((GradedObject.mapBifunctor F I₁ I₂).obj K₁.X).obj K₂.X)
      (fun i₁ i₁' i₂ => (F.map (K₁.d i₁ i₁')).app (K₂.X i₂))
      (fun i₁ i₂ i₂' => (F.obj (K₁.X i₁)).map (K₂.d i₂ i₂'))
      (fun i₁ i₁' h₁ i₂ => by
        dsimp
        rw [K₁.shape _ _ h₁, Functor.map_zero, zero_app])
      (fun i₁ i₂ i₂' h₂ => by
        dsimp
        rw [K₂.shape _ _ h₂, Functor.map_zero])
      (fun i₁ i₁' i₁'' i₂ => by
        dsimp
        rw [← NatTrans.comp_app, ← Functor.map_comp, HomologicalComplex.d_comp_d,
          Functor.map_zero, zero_app])
      (fun i₁ i₂ i₂' i₂'' => by
        dsimp
        rw [← Functor.map_comp, HomologicalComplex.d_comp_d, Functor.map_zero])
      (fun i₁ i₁' i₂ i₂' => by
        dsimp
        rw [NatTrans.naturality])
  map {K₂ K₂' φ} := HomologicalComplex₂.homMk
      (((GradedObject.mapBifunctor F I₁ I₂).obj K₁.X).map φ.f)
        (by dsimp; intros; rw [NatTrans.naturality]) (by
          dsimp
          intros
          simp only [← Functor.map_comp, φ.comm])
  map_id K₂ := by dsimp; ext; dsimp; rw [Functor.map_id]
  map_comp f g := by dsimp; ext; dsimp; rw [Functor.map_comp]

/-- Given a functor `F : C₁ ⥤ C₂ ⥤ D`, this is the bifunctor which sends
`K₁ : HomologicalComplex C₁ c₁` and `K₂ : HomologicalComplex C₂ c₂` to the bicomplex
which is degree `(i₁, i₂)` consists of `(F.obj (K₁.X i₁)).obj (K₂.X i₂)`. -/
@[simps! obj_obj_X_X obj_obj_X_d obj_obj_d_f obj_map_f_f map_app_f_f]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d75315d0baea29eb4c4127b44fa3e28e431ee0a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
