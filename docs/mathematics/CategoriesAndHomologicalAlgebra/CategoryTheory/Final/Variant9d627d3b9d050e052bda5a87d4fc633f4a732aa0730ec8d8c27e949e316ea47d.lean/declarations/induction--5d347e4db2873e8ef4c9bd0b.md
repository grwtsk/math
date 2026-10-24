# induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:89098a1b75628cc4f302a8b9a013b8d4c6d838582679a6487a93c0d4eaace347",
  "kind": "def",
  "lexical_name": "induction",
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
  "slug": "induction--5d347e4db2873e8ef4c9bd0b",
  "source": {
    "blob": "82c325140d9282aafbf2b648e09f1b7bb01bbfd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 570,
    "line": 543,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant9d627d3b9d050e052bda5a87d4fc633f4a732aa0730ec8d8c27e949e316ea47d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d347e4db2873e8ef4c9bd0b244d8c563f420844f2d59ffb3504581bc2a980b9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant9d627d3b9d050e052bda5a87d4fc633f4a732aa0730ec8d8c27e949e316ea47d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:89098a1b75628cc4f302a8b9a013b8d4c6d838582679a6487a93c0d4eaace347`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 543–570.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def induction {d : D} (Z : ∀ (X : C) (_ : F.obj X ⟶ d), Sort*)
    (h₁ :
      ∀ (X₁ X₂) (k₁ : F.obj X₁ ⟶ d) (k₂ : F.obj X₂ ⟶ d) (f : X₁ ⟶ X₂),
        F.map f ≫ k₂ = k₁ → Z X₁ k₁ → Z X₂ k₂)
    (h₂ :
      ∀ (X₁ X₂) (k₁ : F.obj X₁ ⟶ d) (k₂ : F.obj X₂ ⟶ d) (f : X₁ ⟶ X₂),
        F.map f ≫ k₂ = k₁ → Z X₂ k₂ → Z X₁ k₁)
    {X₀ : C} {k₀ : F.obj X₀ ⟶ d} (z : Z X₀ k₀) : Z (lift F d) (homToLift F d) := by
  apply Nonempty.some
  apply
    @isPreconnected_induction _ _ _ (fun Y : CostructuredArrow F d => Z Y.left Y.hom) _ _
      (CostructuredArrow.mk k₀) z
  · intro j₁ j₂ f a
    fapply h₁ _ _ _ _ f.left _ a
    convert f.w
    dsimp
    simp
  · intro j₁ j₂ f a
    fapply h₂ _ _ _ _ f.left _ a
    convert f.w
    dsimp
    simp

variable {F G}

/-- Given a cone over `F ⋙ G`, we can construct a `Cone G` with the same cocone point.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant9d627d3b9d050e052bda5a87d4fc633f4a732aa0730ec8d8c27e949e316ea47d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant9d627d3b9d050e052bda5a87d4fc633f4a732aa0730ec8d8c27e949e316ea47d.lean#L543).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82c325140d9282aafbf2b648e09f1b7bb01bbfd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
