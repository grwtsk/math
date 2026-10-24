# fullSubcategoryEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4f851409b4991e3e0adfc1b9b1694e22bc849ad14b8aaf24f4b408e978d54cb5",
  "kind": "def",
  "lexical_name": "fullSubcategoryEquiv",
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
  "slug": "fullsubcategoryequiv--358f4b537b3bb4302b0cd4b9",
  "source": {
    "blob": "1046608a44462dfda1e5889e6f8d38f669fa07c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 97,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomotopy/Variantd4b80716bd863fac58b79ef184ecf8ea3ea2a1dda47e9d24a301dc7c2779fe81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:358f4b537b3bb4302b0cd4b9b5a60084d72912489f16413f7bf79a01260b70c1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomotopy/Variantd4b80716bd863fac58b79ef184ecf8ea3ea2a1dda47e9d24a301dc7c2779fe81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4f851409b4991e3e0adfc1b9b1694e22bc849ad14b8aaf24f4b408e978d54cb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def fullSubcategoryEquiv {P : ObjectProperty C} {X Y : P.FullSubcategory}
    {Q : Precylinder X} {f g : X ⟶ Y} :
    Q.LeftHomotopy f g ≃ (Q.map P.ι).LeftHomotopy f.hom g.hom where
  toFun h :=
    { h := h.h.hom
      h₀ := by
        dsimp
        simp only [← h.h₀, ObjectProperty.FullSubcategory.comp_hom]
      h₁ := by
        dsimp
        simp only [← h.h₁, ObjectProperty.FullSubcategory.comp_hom] }
  invFun h :=
    { h := P.homMk h.h
      h₀ := by ext; exact h.h₀
      h₁ := by ext; exact h.h₁ }

end LeftHomotopy

end Precylinder

namespace Cylinder

variable {X Y : C}

/-- Given a cylinder `P` for `X`, two maps `f` and `g` in `X ⟶ Y`
are homotopic relative to `P` when there is a morphism `h : P.I ⟶ Y`
such that `P.i₀ ≫ h = f` and `P.i₁ ≫ h = g`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomotopy/Variantd4b80716bd863fac58b79ef184ecf8ea3ea2a1dda47e9d24a301dc7c2779fe81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomotopy/Variantd4b80716bd863fac58b79ef184ecf8ea3ea2a1dda47e9d24a301dc7c2779fe81.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1046608a44462dfda1e5889e6f8d38f669fa07c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
