# internallyProjective_iff_tensor_condition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58e238a9-4a11-afac-4e5e-91f840f36b6c",
  "kind": "lemma",
  "lexical_name": "internallyProjective_iff_tensor_condition",
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
  "slug": "internallyprojective-iff-tensor-condition--72455cc41987b43bc28ec221",
  "source": {
    "blob": "56768d60784b10db6478a851b12f5ba963f39aa5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 111,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InternallyProjective/Varianta0ff96da85a4adef92bbb30bc0842c19cccff50d0627c5780f1822bacad43511.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72455cc41987b43bc28ec2219dbc2489a90b5ce9ca24ea90aeb1abf7a1973172",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/InternallyProjective/Varianta0ff96da85a4adef92bbb30bc0842c19cccff50d0627c5780f1822bacad43511.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58e238a9-4a11-afac-4e5e-91f840f36b6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
lemma internallyProjective_iff_tensor_condition (P : LightCondMod R) : InternallyProjective P ↔
    ∀ {A B : LightCondMod R} (e : A ⟶ B) [Epi e],
      (∀ (S : LightProfinite) (g : P ⊗ (free R).obj S.toCondensed ⟶ B), ∃ (S' : LightProfinite)
        (π : S' ⟶ S) (_ : Function.Surjective π) (g' : P ⊗ (free R).obj S'.toCondensed ⟶ A),
          (P ◁ ((lightProfiniteToLightCondSet ⋙ free R).map π)) ≫ g = g' ≫ e) := by
  refine ⟨fun ⟨h⟩ A B e he S g ↦ ?_, fun h ↦ ⟨⟨fun {A B} e he ↦ ?_⟩⟩⟩
  · have hh := h.1 e
    rw [LightCondMod.epi_iff_locallySurjective_on_lightProfinite] at hh
    specialize hh S ((ihomPoints R P B S).symm g)
    obtain ⟨S', π, hπ, g', hh⟩ := hh
    refine ⟨S', π, hπ, (ihomPoints _ _ _ _) g', ?_⟩
    rw [ihom_map_val_app] at hh
    apply (ihomPoints R P B S').symm.injective
    rw [hh]
    exact ihomPoints_symm_comp R B P S' S π g
  · rw [LightCondMod.epi_iff_locallySurjective_on_lightProfinite]
    intro S g
    specialize h e S ((ihomPoints _ _ _ _) g)
    obtain ⟨S', π, hπ, g', hh⟩ := h
    refine ⟨S', π, hπ, (ihomPoints _ _ _ _).symm g', ?_⟩
    rw [ihom_map_val_app]
    have := ihomPoints_symm_comp R B P S' S π ((ihomPoints R P B S) g)
    dsimp at hh
    rw [hh] at this
    simp [this, Quiver.Hom.op]

set_option backward.defeqAttrib.useBackward true in
/--
`P : LightCondMod R` is internally projective if and
only if, for all `A B : LightCondMod R`, for all epimorphisms `e : A ⟶ B`, for all
`S : LightProfinite` and all morphisms `g : R[S] ⊗ P ⟶ B`, there exists a `S' : LightProfinite`
with a surjection `π : S' ⟶ S` and a morphism `g' : R[S'] ⊗ P ⟶ A`, making the diagram
```
R[S'] ⊗ P --> A
  |           |
  v           v
R[S] ⊗ P  --> B
```
commute.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/InternallyProjective/Varianta0ff96da85a4adef92bbb30bc0842c19cccff50d0627c5780f1822bacad43511.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InternallyProjective/Varianta0ff96da85a4adef92bbb30bc0842c19cccff50d0627c5780f1822bacad43511.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56768d60784b10db6478a851b12f5ba963f39aa5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
