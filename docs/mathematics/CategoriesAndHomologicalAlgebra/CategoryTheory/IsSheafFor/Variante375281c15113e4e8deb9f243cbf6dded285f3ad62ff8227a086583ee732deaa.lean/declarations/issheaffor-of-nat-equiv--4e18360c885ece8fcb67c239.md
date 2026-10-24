# isSheafFor_of_nat_equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a2dc4c68219a724be5f99a0b56d8ed4aaff5b8db",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 607,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e375281c15113e4e8deb9f243cbf6dded285f3ad62ff8227a086583ee732deaa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ea27fdf0-0f19-b80e-0b8f-354645973cec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0135644c-89fb-a8db-2737-c69d75ce4d1e",
  "kind": "lemma",
  "lexical_name": "isSheafFor_of_nat_equiv",
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
  "slug": "issheaffor-of-nat-equiv--4e18360c885ece8fcb67c239",
  "source": {
    "blob": "a2dc4c68219a724be5f99a0b56d8ed4aaff5b8db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 635,
    "line": 607,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variante375281c15113e4e8deb9f243cbf6dded285f3ad62ff8227a086583ee732deaa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e18360c885ece8fcb67c2394874ce3c41935d3fc7756bfbb077a5a9beb87336",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variante375281c15113e4e8deb9f243cbf6dded285f3ad62ff8227a086583ee732deaa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0135644c-89fb-a8db-2737-c69d75ce4d1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 607–635.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isSheafFor_of_nat_equiv {P₁ : Cᵒᵖ ⥤ Type w} {P₂ : Cᵒᵖ ⥤ Type w'}
    (e : ∀ ⦃X : C⦄, P₁.obj (op X) ≃ P₂.obj (op X))
    (he : ∀ ⦃X Y : C⦄ (f : X ⟶ Y) (x : P₁.obj (op Y)),
      e (P₁.map f.op x) = P₂.map f.op (e x))
    {X : C} {R : Presieve X} (hP₁ : IsSheafFor P₁ R) :
    IsSheafFor P₂ R := fun x₂ hx₂ ↦ by
  have he' : ∀ ⦃X Y : C⦄ (f : X ⟶ Y) (x : P₂.obj (op Y)),
    e.symm (P₂.map f.op x) = P₁.map f.op (e.symm x) := fun X Y f x ↦
      e.injective (by simp only [Equiv.apply_symm_apply, he])
  let x₁ : FamilyOfElements P₁ R := fun Y f hf ↦ e.symm (x₂ f hf)
  have hx₁ : x₁.Compatible := fun Y₁ Y₂ Z g₁ g₂ f₁ f₂ h₁ h₂ fac ↦ e.injective
    (by simp only [he, Equiv.apply_symm_apply, hx₂ g₁ g₂ h₁ h₂ fac, x₁])
  have : ∀ (t₂ : P₂.obj (op X)),
      x₂.IsAmalgamation t₂ ↔ x₁.IsAmalgamation (e.symm t₂) := fun t₂ ↦ by
    simp only [FamilyOfElements.IsAmalgamation, x₁,
      ← he', EmbeddingLike.apply_eq_iff_eq]
  refine ⟨e (hP₁.amalgamate x₁ hx₁), ?_, ?_⟩
  · dsimp
    simp only [this, Equiv.symm_apply_apply]
    exact IsSheafFor.isAmalgamation hP₁ hx₁
  · intro t₂ ht₂
    refine e.symm.injective ?_
    simp only [Equiv.symm_apply_apply]
    exact hP₁.isSeparatedFor x₁ _ _ (by simpa only [this] using ht₂)
      (IsSheafFor.isAmalgamation hP₁ hx₁)

/-- If `P` is a sheaf for `S`, and it is iso to `P'`, then `P'` is a sheaf for `S`. This shows that
"being a sheaf for a presieve" is a mathematical or hygienic property.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variante375281c15113e4e8deb9f243cbf6dded285f3ad62ff8227a086583ee732deaa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variante375281c15113e4e8deb9f243cbf6dded285f3ad62ff8227a086583ee732deaa.lean#L607).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2dc4c68219a724be5f99a0b56d8ed4aaff5b8db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
