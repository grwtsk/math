# pseudo_pullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21f365cc-cdf1-9507-43bd-d7271418e19c",
  "kind": "theorem",
  "lexical_name": "pseudo_pullback",
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
  "slug": "pseudo-pullback--42780829337ac39bff3ba259",
  "source": {
    "blob": "b3fca66943b2140552e6b28295dce12d2f002833",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 487,
    "line": 472,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Varianta41770aead5d0cea120e976d6c449a1813ebf3c1990a5ceac8326fcf3e799a1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42780829337ac39bff3ba259b367479108be649c96f1e8c0c9d52df21488db56",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Varianta41770aead5d0cea120e976d6c449a1813ebf3c1990a5ceac8326fcf3e799a1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21f365cc-cdf1-9507-43bd-d7271418e19c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 472–487.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pseudo_pullback {P Q R : C} {f : P ⟶ R} {g : Q ⟶ R} {p : P} {q : Q} :
    f p = g q →
      ∃ s, (pullback.fst : pullback f g ⟶ P) s = p ∧ (pullback.snd : pullback f g ⟶ Q) s = q :=
  Quotient.inductionOn₂ p q fun x y h => by
    obtain ⟨Z, a, b, ea, eb, comm⟩ := Quotient.exact h
    obtain ⟨l, hl₁, hl₂⟩ := @pullback.lift' _ _ _ _ _ _ f g _ (a ≫ x.hom) (b ≫ y.hom) (by
      simp only [Category.assoc]
      exact comm)
    exact ⟨l, ⟨Quotient.sound ⟨Z, 𝟙 Z, a, inferInstance, ea, by rwa [Category.id_comp]⟩,
      Quotient.sound ⟨Z, 𝟙 Z, b, inferInstance, eb, by rwa [Category.id_comp]⟩⟩⟩
#align category_theory.abelian.pseudoelement.pseudo_pullback CategoryTheory.Abelian.Pseudoelement.pseudo_pullback

section Module

/-- In the category `Module R`, if `x` and `y` are pseudoequal, then the range of the associated
morphisms is the same. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Varianta41770aead5d0cea120e976d6c449a1813ebf3c1990a5ceac8326fcf3e799a1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Varianta41770aead5d0cea120e976d6c449a1813ebf3c1990a5ceac8326fcf3e799a1f.lean#L472).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3fca66943b2140552e6b28295dce12d2f002833` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
