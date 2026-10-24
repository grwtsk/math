# structured_arrows_elements_sheaf_chains_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a256d7d-79ab-2c97-3bee-3f1b89bae8f2",
  "kind": "lemma",
  "lexical_name": "structured_arrows_elements_sheaf_chains_bounded",
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
  "slug": "structured-arrows-elements-sheaf-chains-bounded--44d8837928711ef16a3c2c92",
  "source": {
    "blob": "e60e01043798a33e786c1351b288eb44bc33e201",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 94,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Flasque/Variantf68f52a2b0fb2b46f3a0c512b425ebaa514def219429b5108cced3b6934389de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44d8837928711ef16a3c2c924defa2a98efb5936f6d9c56df66f7a64cb2d765f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Flasque/Variantf68f52a2b0fb2b46f3a0c512b425ebaa514def219429b5108cced3b6934389de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a256d7d-79ab-2c97-3bee-3f1b89bae8f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma structured_arrows_elements_sheaf_chains_bounded (c : Set (Under g s))
    (h : IsChain (fun x y ↦ Nonempty (y ⟶ x)) c) : ∃ ub, ∀ a ∈ c, Nonempty (ub ⟶ a) := by
  let f : c → (Opens X) := fun x => x.1.right.1.unop
  obtain ⟨t, ht, _⟩ : ∃! s_1, IsGluing F.obj f (fun x => x.val.right.2) s_1 := by
    refine Sheaf.existsUnique_gluing F _ _ (fun i j ↦ ?_)
    obtain (rfl | h₁ | h₁) : i = j ∨ Nonempty (i.val ⟶ j.val) ∨ Nonempty (j.val ⟶ i.val) := by
      grind [Subtype.ext_iff, h i.property j.property]
    · rfl
    all_goals
      rw [← h₁.some.2.map_val ]
      dsimp
      rw [← Functor.map_comp_apply]
      rfl
  have le₁ : iSup f ≤ U := iSup_le <| fun j => leOfHom j.1.hom.1.unop
  have le₂ : ∀ i, i ∈ c → unop i.right.1 ≤ iSup f := fun i hi ↦ le_iSup f ⟨i, hi⟩
  use StructuredArrow.mk (Functor.Elements.homMk (homOfLE le₁).op (eq_app_of_locally_eq ht
      (fun i ↦ leOfHom i.1.hom.1.unop) (fun i ↦ (i.1.hom.map_val).symm)).symm :
      Functor.elementsMk _ _ s ⟶ (Functor.whiskerRight g.hom
      (CategoryTheory.forget AddCommGrpCat)).mapElements.obj (Functor.elementsMk _ _ t))
  exact fun i hi => Nonempty.intro (StructuredArrow.homMk (Functor.Elements.homMk
    (homOfLE (le₂ i hi)).op (ht ⟨i, hi⟩)) (by cat_disch))

set_option backward.isDefEq.respectTransparency false in
/-- Given a short exact sequence of sheaves, `0 ⟶ 𝓕 ⟶ 𝓖 ⟶ 𝓗 ⟶ 0`, if `𝓕` is flasque then
`𝓖(U) ⟶ 𝓗(U)` is surjective, for any open `U`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Flasque/Variantf68f52a2b0fb2b46f3a0c512b425ebaa514def219429b5108cced3b6934389de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Flasque/Variantf68f52a2b0fb2b46f3a0c512b425ebaa514def219429b5108cced3b6934389de.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e60e01043798a33e786c1351b288eb44bc33e201` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
