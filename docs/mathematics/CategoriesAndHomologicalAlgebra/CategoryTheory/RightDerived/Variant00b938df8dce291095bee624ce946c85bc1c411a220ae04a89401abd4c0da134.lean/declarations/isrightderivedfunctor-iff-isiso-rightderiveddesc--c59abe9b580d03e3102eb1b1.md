# isRightDerivedFunctor_iff_isIso_rightDerivedDesc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "52027e9922e56e6d17ddf35803e21b397f9368f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 138,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/00b938df8dce291095bee624ce946c85bc1c411a220ae04a89401abd4c0da134.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:48a4a3b6-f5c1-09b0-ac7f-96d28cd70737",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c4301ef9-4db4-736e-2131-4217e9ddd60d",
  "kind": "lemma",
  "lexical_name": "isRightDerivedFunctor_iff_isIso_rightDerivedDesc",
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
  "slug": "isrightderivedfunctor-iff-isiso-rightderiveddesc--c59abe9b580d03e3102eb1b1",
  "source": {
    "blob": "52027e9922e56e6d17ddf35803e21b397f9368f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 138,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant00b938df8dce291095bee624ce946c85bc1c411a220ae04a89401abd4c0da134.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c59abe9b580d03e3102eb1b1543dd710c0b7030333441fc6e3854d7b22e1b557",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant00b938df8dce291095bee624ce946c85bc1c411a220ae04a89401abd4c0da134.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4301ef9-4db4-736e-2131-4217e9ddd60d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isRightDerivedFunctor_iff_isIso_rightDerivedDesc (G : D ⥤ H) (β : F ⟶ L ⋙ G) :
    G.IsRightDerivedFunctor β W ↔ IsIso (RF.rightDerivedDesc α W G β) := by
  rw [isRightDerivedFunctor_iff_isLeftKanExtension]
  have := IsRightDerivedFunctor.isLeftKanExtension _ α W
  exact isLeftKanExtension_iff_isIso _ α _ (by simp)

end

variable (F)

/-- A functor `F : C ⥤ H` has a right derived functor with respect to
`W : MorphismProperty C` if it has a left Kan extension along
`W.Q : C ⥤ W.Localization` (or any localization functor `L : C ⥤ D`
for `W`, see `hasRightDerivedFunctor_iff`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant00b938df8dce291095bee624ce946c85bc1c411a220ae04a89401abd4c0da134.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant00b938df8dce291095bee624ce946c85bc1c411a220ae04a89401abd4c0da134.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52027e9922e56e6d17ddf35803e21b397f9368f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
