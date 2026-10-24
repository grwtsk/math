# mapBifunctorBifunctor₂₃MapObj_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76b89a29-b040-c1b5-fe51-6f999c3ea848",
  "kind": "lemma",
  "lexical_name": "mapBifunctorBifunctor₂₃MapObj_ext",
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
  "slug": "mapbifunctorbifunctor-mapobj-ext--549424ff89075e70c8d698dd",
  "source": {
    "blob": "299be7938d2c77392c4681e50faa5a9b864cb525",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 596,
    "line": 580,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:549424ff89075e70c8d698dd9879b53e2afa427afbb32cf69de236fd6ad4122d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76b89a29-b040-c1b5-fe51-6f999c3ea848`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 580–596.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mapBifunctorBifunctor₂₃MapObj_ext
    {f g : mapBifunctorMapObj F ρ₂₃.q X₁ (mapBifunctorMapObj G₂₃ ρ₂₃.p X₂ X₃) j ⟶ A}
    (h : ∀ (i₁ : I₁) (i₂ : I₂) (i₃ : I₃) (h : r ⟨i₁, i₂, i₃⟩ = j),
      ιMapBifunctorBifunctor₂₃MapObj F G₂₃ ρ₂₃ X₁ X₂ X₃ i₁ i₂ i₃ j h ≫ f =
        ιMapBifunctorBifunctor₂₃MapObj F G₂₃ ρ₂₃ X₁ X₂ X₃ i₁ i₂ i₃ j h ≫ g) : f = g := by
  apply Cofan.IsColimit.hom_ext (isColimitCofan₃MapBifunctorBifunctor₂₃MapObj F G₂₃ ρ₂₃ X₁ X₂ X₃ j)
  rintro ⟨i, hi⟩
  exact h _ _ _ hi

section

variable
  (f : ∀ (i₁ : I₁) (i₂ : I₂) (i₃ : I₃) (_ : r ⟨i₁, i₂, i₃⟩ = j),
    (F.obj (X₁ i₁)).obj ((G₂₃.obj (X₂ i₂)).obj (X₃ i₃)) ⟶ A)

/-- Constructor for morphisms from
`mapBifunctorMapObj F ρ₂₃.q X₁ (mapBifunctorMapObj G₂₃ ρ₂₃.p X₂ X₃) j`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean#L580).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `299be7938d2c77392c4681e50faa5a9b864cb525` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
