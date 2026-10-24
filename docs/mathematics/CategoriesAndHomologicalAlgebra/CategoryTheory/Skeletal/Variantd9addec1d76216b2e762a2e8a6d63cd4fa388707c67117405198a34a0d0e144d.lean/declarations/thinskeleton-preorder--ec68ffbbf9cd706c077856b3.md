# ThinSkeleton.preorder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f388c48332ddebf4e5a05ddf9e1206ecb91e75595e123d715734894546bc66c2",
  "kind": "instance",
  "lexical_name": "ThinSkeleton.preorder",
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
  "slug": "thinskeleton-preorder--ec68ffbbf9cd706c077856b3",
  "source": {
    "blob": "78c86a3a75e9afc92a80a4767580403f3daf2827",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 151,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec68ffbbf9cd706c077856b33543383c3009d7411e56dd2c4c413f8bbaf0b0d0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f388c48332ddebf4e5a05ddf9e1206ecb91e75595e123d715734894546bc66c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance ThinSkeleton.preorder : Preorder (ThinSkeleton C)
    where
  le :=
    @Quotient.lift₂ C C _ (isIsomorphicSetoid C) (isIsomorphicSetoid C)
      (fun X Y => Nonempty (X ⟶ Y))
        (by
          rintro _ _ _ _ ⟨i₁⟩ ⟨i₂⟩
          exact
            propext
              ⟨Nonempty.map fun f => i₁.inv ≫ f ≫ i₂.hom,
                Nonempty.map fun f => i₁.hom ≫ f ≫ i₂.inv⟩)
  le_refl := by
    refine' Quotient.ind fun a => _
    exact ⟨𝟙 _⟩
  le_trans a b c := Quotient.inductionOn₃ a b c fun A B C => Nonempty.map2 (· ≫ ·)
#align category_theory.thin_skeleton.preorder CategoryTheory.ThinSkeleton.preorder

/-- The functor from a category to its thin skeleton. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78c86a3a75e9afc92a80a4767580403f3daf2827` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
