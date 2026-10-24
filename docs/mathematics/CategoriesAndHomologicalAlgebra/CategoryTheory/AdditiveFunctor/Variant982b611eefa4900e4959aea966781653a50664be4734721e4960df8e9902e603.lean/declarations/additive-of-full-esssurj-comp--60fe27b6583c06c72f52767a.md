# additive_of_full_essSurj_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d241ecf1-d9a9-9dfb-af31-89a51a32d38f",
  "kind": "lemma",
  "lexical_name": "additive_of_full_essSurj_comp",
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
  "slug": "additive-of-full-esssurj-comp--60fe27b6583c06c72f52767a",
  "source": {
    "blob": "004a03f20e4366e7ee9c7b11bec882e3a158addb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 112,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant982b611eefa4900e4959aea966781653a50664be4734721e4960df8e9902e603.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60fe27b6583c06c72f52767a0961499b813c521b973b3a678c8580e9ba48d8ad",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant982b611eefa4900e4959aea966781653a50664be4734721e4960df8e9902e603.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d241ecf1-d9a9-9dfb-af31-89a51a32d38f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma additive_of_full_essSurj_comp [Full F] [EssSurj F] (G : D ⥤ E)
    [(F ⋙ G).Additive] : G.Additive where
  map_add {X Y f g} := by
    obtain ⟨f', hf'⟩ := F.map_surjective ((F.objObjPreimageIso X).hom ≫ f ≫
      (F.objObjPreimageIso Y).inv)
    obtain ⟨g', hg'⟩ := F.map_surjective ((F.objObjPreimageIso X).hom ≫ g ≫
      (F.objObjPreimageIso Y).inv)
    simp only [← cancel_mono (G.map (F.objObjPreimageIso Y).inv),
      ← cancel_epi (G.map (F.objObjPreimageIso X).hom),
      Preadditive.add_comp, Preadditive.comp_add, ← Functor.map_comp]
    erw [← hf', ← hg', ← (F ⋙ G).map_add]
    dsimp
    rw [F.map_add]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant982b611eefa4900e4959aea966781653a50664be4734721e4960df8e9902e603.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant982b611eefa4900e4959aea966781653a50664be4734721e4960df8e9902e603.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `004a03f20e4366e7ee9c7b11bec882e3a158addb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
