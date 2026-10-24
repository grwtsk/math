# biproduct.reindex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9cf3dd030da0a7741e6d21dca6264d4b531f89d9b6b1e3c2fd6a2ed04c21aaec",
  "kind": "def",
  "lexical_name": "biproduct.reindex",
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
  "slug": "biproduct-reindex--f9021c77fb21e481438a4ec4",
  "source": {
    "blob": "92645c7d2e57e1d95e923ee969f0b124a1ac66c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 278,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant9836381063faef4ce8da2d5b435c7151af57bad59efeff48186c8faff3fced3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f9021c77fb21e481438a4ec4149c83a97f3ec6f979a07cea52b314fb0143f95d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant9836381063faef4ce8da2d5b435c7151af57bad59efeff48186c8faff3fced3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9cf3dd030da0a7741e6d21dca6264d4b531f89d9b6b1e3c2fd6a2ed04c21aaec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def biproduct.reindex {β γ : Type} [Finite β] (ε : β ≃ γ)
    (f : γ → C) [HasBiproduct f] [HasBiproduct (f ∘ ε)] : ⨁ f ∘ ε ≅ ⨁ f where
  hom := biproduct.desc fun b => biproduct.ι f (ε b)
  inv := biproduct.lift fun b => biproduct.π f (ε b)
  hom_inv_id := by
    ext b b'
    by_cases h : b' = b
    · subst h; simp
    · have : ε b' ≠ ε b := by simp [h]
      simp [biproduct.ι_π_ne _ h, biproduct.ι_π_ne _ this]
  inv_hom_id := by
    classical
    cases nonempty_fintype β
    ext g g'
    by_cases h : g' = g <;>
      simp [Preadditive.sum_comp, Preadditive.comp_sum, biproduct.lift_desc,
        biproduct.ι_π, biproduct.ι_π_assoc, comp_dite, Equiv.apply_eq_iff_eq_symm_apply,
        Finset.sum_dite_eq' Finset.univ (ε.symm g') _, h]

/-- In a preadditive category, we can construct a binary biproduct for `X Y : C` from
any binary bicone `b` satisfying `total : b.fst ≫ b.inl + b.snd ≫ b.inr = 𝟙 b.X`.

(That is, such a bicone is a limit cone and a colimit cocone.)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant9836381063faef4ce8da2d5b435c7151af57bad59efeff48186c8faff3fced3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant9836381063faef4ce8da2d5b435c7151af57bad59efeff48186c8faff3fced3c.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92645c7d2e57e1d95e923ee969f0b124a1ac66c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
