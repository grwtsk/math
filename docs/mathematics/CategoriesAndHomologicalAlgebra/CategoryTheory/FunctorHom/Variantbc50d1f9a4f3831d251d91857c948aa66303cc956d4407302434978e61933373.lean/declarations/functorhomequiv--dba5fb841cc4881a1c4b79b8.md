# functorHomEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7fb0419c6947c4c753f70a2dcf1bc3a92d60490d0633d8202b16f65b1f8f5323",
  "kind": "def",
  "lexical_name": "functorHomEquiv",
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
  "slug": "functorhomequiv--dba5fb841cc4881a1c4b79b8",
  "source": {
    "blob": "d39ed6a795fea0f436934030bc0c36e703653af1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 121,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantbc50d1f9a4f3831d251d91857c948aa66303cc956d4407302434978e61933373.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dba5fb841cc4881a1c4b79b83c44ebdd1a4cf264412b07809127259c4ca1667c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantbc50d1f9a4f3831d251d91857c948aa66303cc956d4407302434978e61933373.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7fb0419c6947c4c753f70a2dcf1bc3a92d60490d0633d8202b16f65b1f8f5323`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def functorHomEquiv (A : C ⥤ Type max u v v') : (A ⟶ F.functorHom G) ≃ HomObj F G A where
  toFun φ :=
    { app := fun X a ↦ (φ.app X a).app X (𝟙 _)
      naturality := fun {X Y} f a => by
        rw [← (φ.app X a).naturality f (𝟙 _)]
        have := HomObj.congr_app (congr_fun (φ.naturality f) a) Y (𝟙 _)
        dsimp [functorHom, homObjFunctor] at this
        aesop }
  invFun x :=
    { app := fun X a ↦ { app := fun Y f => x.app Y (A.map f a) }
      naturality := fun X Y f => by
        ext
        dsimp only [types_comp_apply]
        rw [← FunctorToTypes.map_comp_apply]
        rfl }
  left_inv φ := by
    ext X a Y f
    exact (HomObj.congr_app (congr_fun (φ.naturality f) a) Y (𝟙 _)).trans
      (congr_arg ((φ.app X a).app Y) (by simp))
  right_inv x := by simp

variable {F G} in
/-- Morphisms `(𝟙_ (C ⥤ Type max v' v u) ⟶ F.functorHom G)` are in bijection with
morphisms `F ⟶ G`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantbc50d1f9a4f3831d251d91857c948aa66303cc956d4407302434978e61933373.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantbc50d1f9a4f3831d251d91857c948aa66303cc956d4407302434978e61933373.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d39ed6a795fea0f436934030bc0c36e703653af1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
