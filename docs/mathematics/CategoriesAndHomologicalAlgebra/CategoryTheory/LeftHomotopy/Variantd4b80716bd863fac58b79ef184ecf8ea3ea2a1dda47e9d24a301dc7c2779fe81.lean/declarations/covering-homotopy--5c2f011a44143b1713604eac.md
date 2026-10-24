# covering_homotopy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86315720-5b76-1402-5e0b-b887ddcacbef",
  "kind": "lemma",
  "lexical_name": "covering_homotopy",
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
  "slug": "covering-homotopy--5c2f011a44143b1713604eac",
  "source": {
    "blob": "1046608a44462dfda1e5889e6f8d38f669fa07c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 188,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomotopy/Variantd4b80716bd863fac58b79ef184ecf8ea3ea2a1dda47e9d24a301dc7c2779fe81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c2f011a44143b1713604eacb58a806c4feae97aae03a2c514a34e4179e0e36a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomotopy/Variantd4b80716bd863fac58b79ef184ecf8ea3ea2a1dda47e9d24a301dc7c2779fe81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86315720-5b76-1402-5e0b-b887ddcacbef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma covering_homotopy {A E B : C} {P : Cylinder A} {f₀ f₁ : A ⟶ B}
    [IsCofibrant A] [P.IsGood]
    (h : P.LeftHomotopy f₀ f₁) (p : E ⟶ B) [Fibration p]
    (l₀ : A ⟶ E) (hl₀ : l₀ ≫ p = f₀ := by cat_disch) :
    ∃ (l₁ : A ⟶ E) (h' : P.LeftHomotopy l₀ l₁), h'.h ≫ p = h.h :=
  have sq : CommSq l₀ P.i₀ p h.h := { }
  ⟨P.i₁ ≫ sq.lift, { h := sq.lift }, by simp⟩

end

end LeftHomotopy

end Cylinder

/-- The left homotopy relation on morphisms in a category with weak equivalences. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomotopy/Variantd4b80716bd863fac58b79ef184ecf8ea3ea2a1dda47e9d24a301dc7c2779fe81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomotopy/Variantd4b80716bd863fac58b79ef184ecf8ea3ea2a1dda47e9d24a301dc7c2779fe81.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1046608a44462dfda1e5889e6f8d38f669fa07c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
