# free_lightProfinite_internallyProjective_iff_tensor_condition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "07970251d3d589369250768c647cd164264232a9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 248,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/13b14e53a73585f9aeba9b9cb5e69cc593098703930b2ecfa7ef85e75ed9a8e1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:98249ccc-70b8-08f6-a8b0-71b606c4a650",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:29386ac8-7840-c61a-1c10-c8d8f41fc4b7",
  "kind": "lemma",
  "lexical_name": "free_lightProfinite_internallyProjective_iff_tensor_condition",
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
  "slug": "free-lightprofinite-internallyprojective-iff-tensor-condition--b57927f1dbb7343578b27024",
  "source": {
    "blob": "07970251d3d589369250768c647cd164264232a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 248,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InternallyProjective/Variant13b14e53a73585f9aeba9b9cb5e69cc593098703930b2ecfa7ef85e75ed9a8e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b57927f1dbb7343578b27024e1647f9745e7ec934364fa904ea2ad605cf39847",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/InternallyProjective/Variant13b14e53a73585f9aeba9b9cb5e69cc593098703930b2ecfa7ef85e75ed9a8e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29386ac8-7840-c61a-1c10-c8d8f41fc4b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
lemma free_lightProfinite_internallyProjective_iff_tensor_condition (P : LightProfinite.{u}) :
    InternallyProjective ((free R).obj P.toCondensed) ↔
      ∀ {A B : LightCondMod R} (e : A ⟶ B) [Epi e], (∀ (S : LightProfinite)
        (g : (free R).obj ((P ⊗ S).toCondensed) ⟶ B), ∃ (S' : LightProfinite)
          (π : S' ⟶ S) (_ : Function.Surjective π) (g' : (free R).obj (P ⊗ S').toCondensed ⟶ A),
            ((free R).map (lightProfiniteToLightCondSet.map (P ◁ π))) ≫ g = g' ≫ e) := by
  rw [free_internallyProjective_iff_tensor_condition]
  refine ⟨fun h A B e he S g ↦ ?_, fun h A B e he S g ↦ ?_⟩
  · specialize h e S ((free R).map (μIso lightProfiniteToLightCondSet _ _).hom ≫ g)
    obtain ⟨S', π, hπ, g', hh⟩ := h
    refine ⟨S', π, hπ, (free R).map (μIso
        lightProfiniteToLightCondSet _ _).inv ≫ g', ?_⟩
    rw [assoc, ← hh]
    simp [-map_comp, ← map_comp_assoc]
  · specialize h e S ((free R).map (μIso lightProfiniteToLightCondSet _ _).inv ≫ g)
    obtain ⟨S', π, hπ, g', hh⟩ := h
    refine ⟨S', π, hπ, (free R).map
      (μIso lightProfiniteToLightCondSet _ _).hom ≫ g', ?_⟩
    rw [assoc, ← hh]
    simp [-map_comp, ← map_comp_assoc, ← μ_natural_right_assoc]

/--
Given a `P : LightProfinite`, the light free light condensed module `R[P]` is internally projective
if and only if, for all `A B : LightCondMod R`, for all epimorphisms `e : A ⟶ B`, for all
`S : LightProfinite` and all morphisms `g : R[S × P] ⟶ B`, there exists a `S' : LightProfinite`
with a surjection `π : S' ⟶ S` and a morphism `g' : R[S' × P] ⟶ A`, making the diagram
```
R[S' × P] --> A
  |           |
  v           v
R[S × P]  --> B
```
commute.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/InternallyProjective/Variant13b14e53a73585f9aeba9b9cb5e69cc593098703930b2ecfa7ef85e75ed9a8e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InternallyProjective/Variant13b14e53a73585f9aeba9b9cb5e69cc593098703930b2ecfa7ef85e75ed9a8e1.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07970251d3d589369250768c647cd164264232a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
