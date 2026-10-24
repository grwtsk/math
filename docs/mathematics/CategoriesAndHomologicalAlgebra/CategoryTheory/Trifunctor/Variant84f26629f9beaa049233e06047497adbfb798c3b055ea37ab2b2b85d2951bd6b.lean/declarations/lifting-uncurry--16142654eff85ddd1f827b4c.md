# Lifting₃.uncurry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:affbdd9a80608c9129bb0e8087806ed8c07fa8a08d2977f68df459c6b8659ebf",
  "kind": "instance",
  "lexical_name": "Lifting₃.uncurry",
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
  "slug": "lifting-uncurry--16142654eff85ddd1f827b4c",
  "source": {
    "blob": "64a75a791e7caa84da277e0939e025e82c1eaf00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 76,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant84f26629f9beaa049233e06047497adbfb798c3b055ea37ab2b2b85d2951bd6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:16142654eff85ddd1f827b4c776e8eef7ce3c72ad17dec8a3512036e48a877e9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant84f26629f9beaa049233e06047497adbfb798c3b055ea37ab2b2b85d2951bd6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:affbdd9a80608c9129bb0e8087806ed8c07fa8a08d2977f68df459c6b8659ebf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance Lifting₃.uncurry [Lifting₃ L₁ L₂ L₃ W₁ W₂ W₃ F F'] :
    Lifting (L₁.prod (L₂.prod L₃)) (W₁.prod (W₂.prod W₃))
      (uncurry₃.obj F) (uncurry₃.obj F') where
  iso' := uncurry₃.mapIso (Lifting₃.iso L₁ L₂ L₃ W₁ W₂ W₃ F F')

end

section

variable (F : C₁ ⥤ C₂ ⥤ C₃ ⥤ E) {W₁ : MorphismProperty C₁} {W₂ : MorphismProperty C₂}
  {W₃ : MorphismProperty C₃}
  (hF : MorphismProperty.IsInvertedBy₃ W₁ W₂ W₃ F)
  (L₁ : C₁ ⥤ D₁) (L₂ : C₂ ⥤ D₂) (L₃ : C₃ ⥤ D₃)
  [L₁.IsLocalization W₁] [L₂.IsLocalization W₂] [L₃.IsLocalization W₃]
  [W₁.ContainsIdentities] [W₂.ContainsIdentities] [W₃.ContainsIdentities]

/-- Given localization functor `L₁ : C₁ ⥤ D₁`, `L₂ : C₂ ⥤ D₂` and `L₃ : C₃ ⥤ D₃`
with respect to `W₁ : MorphismProperty C₁`, `W₂ : MorphismProperty C₂` and
`W₃ : MorphismProperty C₃` respectively, and a trifunctor `F : C₁ ⥤ C₂ ⥤ C₃ ⥤ E`
which inverts `W₁`, `W₂` and `W₃`, this is the induced localized
trifunctor `D₁ ⥤ D₂ ⥤ D₃ ⥤ E`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant84f26629f9beaa049233e06047497adbfb798c3b055ea37ab2b2b85d2951bd6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant84f26629f9beaa049233e06047497adbfb798c3b055ea37ab2b2b85d2951bd6b.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64a75a791e7caa84da277e0939e025e82c1eaf00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
