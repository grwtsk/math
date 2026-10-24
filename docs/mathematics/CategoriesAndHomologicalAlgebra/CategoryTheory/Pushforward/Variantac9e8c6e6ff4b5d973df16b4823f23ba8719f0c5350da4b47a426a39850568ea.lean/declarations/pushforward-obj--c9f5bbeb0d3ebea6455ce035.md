# pushforward₀_obj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:598a43eaee5441bebfd97758094ed0f813e90e97e6fb03ccd316fcf96621f1b2",
  "kind": "def",
  "lexical_name": "pushforward₀_obj",
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
  "slug": "pushforward-obj--c9f5bbeb0d3ebea6455ce035",
  "source": {
    "blob": "afa05991b275802592b66e0d91ee87b4241a53cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 41,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variantac9e8c6e6ff4b5d973df16b4823f23ba8719f0c5350da4b47a426a39850568ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c9f5bbeb0d3ebea6455ce0352de5c4ac5ee3f019e9c892264b13b2e7d2e03908",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variantac9e8c6e6ff4b5d973df16b4823f23ba8719f0c5350da4b47a426a39850568ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:598a43eaee5441bebfd97758094ed0f813e90e97e6fb03ccd316fcf96621f1b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pushforward₀_obj (R : Dᵒᵖ ⥤ RingCat.{u}) (M : PresheafOfModules R) :
    PresheafOfModules (F.op ⋙ R) :=
  { obj X := ModuleCat.of _ (M.obj (F.op.obj X))
    map {X Y} f := M.map (F.op.map f)
    map_id X := by
      refine ModuleCat.hom_ext
        -- Work around an instance diamond for `restrictScalarsId'`
        (@LinearMap.ext _ _ _ _ _ _ _ _ (_) (_) _ _ _ (fun x => ?_))
      exact (M.congr_map_apply (F.op.map_id X) x).trans (by simp)
    map_comp := fun f g ↦ by
      refine ModuleCat.hom_ext
        -- Work around an instance diamond for `restrictScalarsId'`
        (@LinearMap.ext _ _ _ _ _ _ _ _ (_) (_) _ _ _ (fun x => ?_))
      exact (M.congr_map_apply (F.op.map_comp f g) x).trans (by simp) }

/-- The pushforward functor on presheaves of modules for a functor `F : C ⥤ D` and
`R : Dᵒᵖ ⥤ RingCat`. On the underlying presheaves of abelian groups, it is induced
by the precomposition with `F.op`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variantac9e8c6e6ff4b5d973df16b4823f23ba8719f0c5350da4b47a426a39850568ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variantac9e8c6e6ff4b5d973df16b4823f23ba8719f0c5350da4b47a426a39850568ea.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afa05991b275802592b66e0d91ee87b4241a53cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
