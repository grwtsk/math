# pushoutMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a931da10-a577-b9a7-6345-400bf11c2575",
  "kind": "theorem",
  "lexical_name": "pushoutMap",
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
  "slug": "pushoutmap--e3bf97eb83464f9b70843dc1",
  "source": {
    "blob": "77f54e7d4cc8c64d4b48438051af40817a1f4b95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 394,
    "line": 378,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variante1e4df6baf7d644be7b4b0862056b95dd6d0f264588c6c2dedeaa4100142c086.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3bf97eb83464f9b70843dc1d694c3f7188f894e41379858fd9322877c7c6c3e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variante1e4df6baf7d644be7b4b0862056b95dd6d0f264588c6c2dedeaa4100142c086.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a931da10-a577-b9a7-6345-400bf11c2575`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 378–394.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pushoutMap
    [IsStableUnderCobaseChange P] [P.IsStableUnderComposition] {S X X' Y Y' : C} {f : S ⟶ X}
    {g : S ⟶ Y} {f' : S ⟶ X'} {g' : S ⟶ Y'} {i₁ : X ⟶ X'} [HasPushoutsAlong f]
    [HasPushoutsAlong g'] {i₂ : Y ⟶ Y'} (h₁ : P i₁) (h₂ : P i₂)
    (e₁ : f' = f ≫ i₁) (e₂ : g' = g ≫ i₂) :
    P (pushout.map f g f' g' i₁ i₂ (𝟙 _) (by simp [e₁]) (by simp [e₂])) := by
  have : HasPushoutsAlong (Under.mk g').hom := by cat_disch
  have : pushout.map f g f' g' i₁ i₂ (𝟙 _) (by simp [e₁]) (by simp [e₂]) =
      ((pushoutSymmetry _ _).hom ≫
        ((Under.pushout f).map (Under.homMk _ e₂.symm : Under.mk g ⟶ Under.mk g')).right) ≫
        (pushoutSymmetry _ _).hom ≫
        ((Under.pushout g').map (Under.homMk _ e₁.symm : Under.mk f ⟶ Under.mk f')).right := by
    ext <;> simp
  rw [this]
  apply P.comp_mem <;> rw [P.cancel_left_of_respectsIso]
  exacts [underPushoutMap _ _ h₂, underPushoutMap _ _ h₁]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variante1e4df6baf7d644be7b4b0862056b95dd6d0f264588c6c2dedeaa4100142c086.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variante1e4df6baf7d644be7b4b0862056b95dd6d0f264588c6c2dedeaa4100142c086.lean#L378).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77f54e7d4cc8c64d4b48438051af40817a1f4b95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
