# essImage_comp_of_essSurj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8bbdb501-54e4-76af-d67e-4d557f0f6b4c",
  "kind": "lemma",
  "lexical_name": "essImage_comp_of_essSurj",
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
  "slug": "essimage-comp-of-esssurj--bd9e74c8afdfe42ca9ec8a4b",
  "source": {
    "blob": "13ffab6f9cf114426f85d1dfd79679c598eab56d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 167,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant980263f1e2c1743dac7b7c2cee93c94111e92ed44f85d1065eb8870d215b471d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd9e74c8afdfe42ca9ec8a4b0523d9fa99ad72a661d2bb925e9d215ecbabae17",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant980263f1e2c1743dac7b7c2cee93c94111e92ed44f85d1065eb8870d215b471d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bbdb501-54e4-76af-d67e-4d557f0f6b4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma essImage_comp_of_essSurj : (F ⋙ G).essImage = G.essImage :=
  funext fun _X ↦ propext essImage_comp_apply_of_essSurj

end EssSurj

variable {J C D : Type*} [Category J] [Category C] [Category D]
  (G : J ⥤ D) (F : C ⥤ D) [F.Full] [F.Faithful] (hG : ∀ j, F.essImage (G.obj j))

/-- Lift a functor `G : J ⥤ D` to the essential image of a fully functor `F : C ⥤ D` to a functor
`G' : J ⥤ C` such that `G' ⋙ F ≅ G`. See `essImage.liftFunctorCompIso`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant980263f1e2c1743dac7b7c2cee93c94111e92ed44f85d1065eb8870d215b471d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant980263f1e2c1743dac7b7c2cee93c94111e92ed44f85d1065eb8870d215b471d.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13ffab6f9cf114426f85d1dfd79679c598eab56d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
