# isoBiproductEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:53ee649486a059ec822bb46b6db6aaedd2fe8bc436ed5b78aea6477e9214e62b",
  "kind": "def",
  "lexical_name": "isoBiproductEmbedding",
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
  "slug": "isobiproductembedding--0168263ddf51990f60908e0f",
  "source": {
    "blob": "5b7a05dc3ed3c542932fb415a04a045e43db4a63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 318,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantb6fab5c60701a06a19395240a98eaa2907b7fd1645a61e3708885680544aa46b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0168263ddf51990f60908e0f39640cc34f5d7779876d0d5038ca65d0dda26f39",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantb6fab5c60701a06a19395240a98eaa2907b7fd1645a61e3708885680544aa46b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:53ee649486a059ec822bb46b6db6aaedd2fe8bc436ed5b78aea6477e9214e62b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isoBiproductEmbedding (M : Mat_ C) : M ≅ ⨁ fun i => (embedding C).obj (M.X i) where
  hom := biproduct.lift fun i j _ => if h : j = i then eqToHom (congr_arg M.X h) else 0
  inv := biproduct.desc fun i _ k => if h : i = k then eqToHom (congr_arg M.X h) else 0
  hom_inv_id := by
    simp only [biproduct.lift_desc]
    funext i j
    dsimp [id_def]
    rw [Finset.sum_apply, Finset.sum_apply, Finset.sum_eq_single i]; rotate_left
    · intro b _ hb
      dsimp
      rw [Fintype.univ_ofSubsingleton, Finset.sum_singleton, dite_eq_right hb.symm, zero_comp]
    · intro h
      simp at h
    simp
  inv_hom_id := by
    apply biproduct.hom_ext
    intro i
    apply biproduct.hom_ext'
    intro j
    simp only [Category.id_comp, Category.assoc, biproduct.lift_π, biproduct.ι_desc_assoc,
      biproduct.ι_π]
    ext ⟨⟩ ⟨⟩
    simp only [embedding, comp_apply, comp_dite, dite_comp, comp_zero, zero_comp,
      Finset.sum_dite_eq', Finset.mem_univ, ite_true, eqToHom_refl, Category.comp_id]
    split_ifs with h
    · subst h
      simp
    · rfl

variable {D : Type u₁} [Category.{v₁} D] [Preadditive D]

/-- This instance can be found using `Functor.hasBiproduct_of_preserves'`, but it is faster
to keep it here. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantb6fab5c60701a06a19395240a98eaa2907b7fd1645a61e3708885680544aa46b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantb6fab5c60701a06a19395240a98eaa2907b7fd1645a61e3708885680544aa46b.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b7a05dc3ed3c542932fb415a04a045e43db4a63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
