# _root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RightDerivedFunctorPlus.Variant0c8ac4b692578ccf58e53cb8e16fcc0da608629a2f0d9fdae4c0659b570ff9fb.CochainComplex.Plus.localizerMorphism_derives_mapCochainComplexPlus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55f4ebff-e3bf-ac6e-951b-743ef5c8cede",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RightDerivedFunctorPlus.Variant0c8ac4b692578ccf58e53cb8e16fcc0da608629a2f0d9fdae4c0659b570ff9fb.CochainComplex.Plus.localizerMorphism_derives_mapCochainComplexPlus",
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
  "slug": "root-grwtsk-categoriesandhomologicalalgebra-categorytheory-rightderivedf--e956f86f9f5ceb6937e051d7",
  "source": {
    "blob": "66690cb631219445b9824518b7def1b35d91ef26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 122,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerivedFunctorPlus/Variant340b286e18fc6155a829c053e42da1e985420f429a933bbfd26919866626d06f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e956f86f9f5ceb6937e051d7de7ac22d3f48ad6ae7bf3b227ef420d25bcd663c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerivedFunctorPlus/Variant340b286e18fc6155a829c053e42da1e985420f429a933bbfd26919866626d06f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55f4ebff-e3bf-ac6e-951b-743ef5c8cede`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RightDerivedFunctorPlus.Variant0c8ac4b692578ccf58e53cb8e16fcc0da608629a2f0d9fdae4c0659b570ff9fb.CochainComplex.Plus.localizerMorphism_derives_mapCochainComplexPlus :
    (CochainComplex.Plus.localizerMorphism C).Derives
      (F.mapCochainComplexPlus ⋙ DerivedCategory.Plus.Q) := by
  intro K L f hf
  rw [HomotopyCategory.Plus.inverseImage_quasiIso_mapCochainComplexPlus_injectiveObjectι] at hf
  dsimp
  exact Localization.inverts _ (CochainComplex.Plus.quasiIso D) _
    (homotopyEquivalences_le_quasiIso _ _ _
      (F.homotopyEquivalences_mapCochainComplexPlus_map _
        ((InjectiveObject.ι C).homotopyEquivalences_mapCochainComplexPlus_map _ hf)))

open CochainComplex.Plus in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerivedFunctorPlus/Variant340b286e18fc6155a829c053e42da1e985420f429a933bbfd26919866626d06f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerivedFunctorPlus/Variant340b286e18fc6155a829c053e42da1e985420f429a933bbfd26919866626d06f.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66690cb631219445b9824518b7def1b35d91ef26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
