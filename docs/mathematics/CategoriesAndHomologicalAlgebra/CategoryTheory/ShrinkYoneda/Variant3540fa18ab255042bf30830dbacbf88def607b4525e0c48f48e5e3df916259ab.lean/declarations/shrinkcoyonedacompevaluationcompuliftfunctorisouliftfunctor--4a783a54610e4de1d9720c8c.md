# shrinkCoyonedaCompEvaluationCompUliftFunctorIsoUliftFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8894396ab87678cc14cfdabb86d0da3e68ef322cb903d678b15bf465caf2c19c",
  "kind": "def",
  "lexical_name": "shrinkCoyonedaCompEvaluationCompUliftFunctorIsoUliftFunctor",
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
  "slug": "shrinkcoyonedacompevaluationcompuliftfunctorisouliftfunctor--4a783a54610e4de1d9720c8c",
  "source": {
    "blob": "d5ecf21dd4bf8ff1a63aced746ba65187aa4d822",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 437,
    "line": 426,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShrinkYoneda/Variant3540fa18ab255042bf30830dbacbf88def607b4525e0c48f48e5e3df916259ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a783a54610e4de1d9720c8c13aeca7c6b0ac2845cc880eb4988783c033e950f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ShrinkYoneda/Variant3540fa18ab255042bf30830dbacbf88def607b4525e0c48f48e5e3df916259ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8894396ab87678cc14cfdabb86d0da3e68ef322cb903d678b15bf465caf2c19c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 426–437.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def shrinkCoyonedaCompEvaluationCompUliftFunctorIsoUliftFunctor (Y : C) :
    shrinkCoyoneda.{w} ⋙ (evaluation C _).obj Y ⋙ uliftFunctor.{v} ≅
      yoneda.obj Y ⋙ uliftFunctor.{w} :=
  NatIso.ofComponents (fun X ↦ (Equiv.ulift.trans
    (shrinkCoyonedaObjObjEquiv.trans Equiv.ulift.symm)).toIso) (fun f ↦ by
      ext ⟨g⟩
      obtain ⟨g, rfl⟩ := shrinkCoyonedaObjObjEquiv.symm.surjective g
      simp [shrinkYoneda, shrinkYonedaObjObjEquiv])

/-- `shrinkCoyoneda.obj X` is corepresented by `X`. -/
@[simps]
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ShrinkYoneda/Variant3540fa18ab255042bf30830dbacbf88def607b4525e0c48f48e5e3df916259ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShrinkYoneda/Variant3540fa18ab255042bf30830dbacbf88def607b4525e0c48f48e5e3df916259ab.lean#L426).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5ecf21dd4bf8ff1a63aced746ba65187aa4d822` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
