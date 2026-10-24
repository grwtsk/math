# ind_iff_exists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:88cddd77-01bc-92bc-7d18-cb316bff28cc",
  "kind": "lemma",
  "lexical_name": "ind_iff_exists",
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
  "slug": "ind-iff-exists--d8646d0fe531d8ade04879fa",
  "source": {
    "blob": "c9f8e58d1578a76ade50074ab949477042f2d6f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 148,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ind/Variant151a3d57e14cc8dd9e66a006f953c32ed68a959e1842ca070af2f01916fec537.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8646d0fe531d8ade04879fab2db34890d5297a00a530a14caeb714daf3c60b2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Ind/Variant151a3d57e14cc8dd9e66a006f953c32ed68a959e1842ca070af2f01916fec537.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88cddd77-01bc-92bc-7d18-cb316bff28cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
lemma ind_iff_exists (H : P ≤ isFinitelyPresentable.{w} C) {X Y : C} (f : X ⟶ Y)
    [IsFinitelyAccessibleCategory.{w} (Under X)] :
    ind.{w} P f ↔ ∀ {Z : C} (p : X ⟶ Z) (g : Z ⟶ Y),
      isFinitelyPresentable.{w} _ p → p ≫ g = f →
      ∃ (W : C) (u : Z ⟶ W) (v : W ⟶ Y), u ≫ v = g ∧ P (p ≫ u) := by
  rw [ind_iff_ind_underMk, ObjectProperty.ind_iff_exists]
  · refine ⟨fun H Z p g hp hpg ↦ ?_, fun H Z g hZ ↦ ?_⟩
    · have : IsFinitelyPresentable (CategoryTheory.Under.mk p) := hp
      obtain ⟨W, u, v, huv, hW⟩ := H (CategoryTheory.Under.homMk (U := CategoryTheory.Under.mk p)
        (V := CategoryTheory.Under.mk f) g hpg)
      use W.right, u.right, v.right, congr($(huv).right)
      rwa [show p ≫ u.right = W.hom from CategoryTheory.Under.w u]
    · obtain ⟨W, u, v, huv, hW⟩ := H Z.hom g.right hZ (CategoryTheory.Under.w g)
      exact ⟨CategoryTheory.Under.mk (Z.hom ≫ u), CategoryTheory.Under.homMk u,
          CategoryTheory.Under.homMk v, by ext; simpa, hW⟩
  · intro Y hY
    exact H _ hY

/--
A property of morphisms `P` is said to pre-ind-spread if `P`-morphisms out of filtered colimits
descend to a finite level. More precisely, let `Dᵢ` be a filtered family of objects.
Then:

- If `f : colim Dᵢ ⟶ T` satisfies `P`, there exists an index `j` and a pushout square
  ```
    Dⱼ ----f'---> T'
    |             |
    |             |
    v             v
  colim Dᵢ --f--> T
  ```
  such that `f'` satisfies `P`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Ind/Variant151a3d57e14cc8dd9e66a006f953c32ed68a959e1842ca070af2f01916fec537.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ind/Variant151a3d57e14cc8dd9e66a006f953c32ed68a959e1842ca070af2f01916fec537.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9f8e58d1578a76ade50074ab949477042f2d6f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
