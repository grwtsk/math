# IsStableUnderColimitsOfShape.isomorphisms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "618b7e897c51c5b40b77c769949f9692bcba361d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 545,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/14c1e779b85fcc2d8edeb2522d800f3c516b34479ec3982d00fee4961c68ea88.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c34d801d-6586-925e-45e6-50c14a1308bb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a5a48ff0-c319-f5f6-c629-102d10e7a8a0",
  "kind": "lemma",
  "lexical_name": "IsStableUnderColimitsOfShape.isomorphisms",
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
  "slug": "isstableundercolimitsofshape-isomorphisms--4af0e995e1761c28e5368625",
  "source": {
    "blob": "618b7e897c51c5b40b77c769949f9692bcba361d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 561,
    "line": 545,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant14c1e779b85fcc2d8edeb2522d800f3c516b34479ec3982d00fee4961c68ea88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4af0e995e1761c28e53686253a53d6da2a600d20a6a57ba7e6f824b6f3def56f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant14c1e779b85fcc2d8edeb2522d800f3c516b34479ec3982d00fee4961c68ea88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5a48ff0-c319-f5f6-c629-102d10e7a8a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 545–561.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsStableUnderColimitsOfShape.isomorphisms :
    (isomorphisms C).IsStableUnderColimitsOfShape J where
  condition F₁ F₂ c₁ c₂ h₁ h₂ f (_ : ∀ j, IsIso (f.app j)) φ hφ := by
    have := NatIso.isIso_of_isIso_app f
    exact ⟨h₂.desc (Cocone.mk _ (inv f ≫ c₁.ι)),
      h₁.hom_ext (fun j ↦ by simp [reassoc_of% (hφ j)]),
      h₂.hom_ext (by simp [hφ])⟩

end ColimitsOfShape

section Coproducts

variable (W : MorphismProperty C)

/-- Given `W : MorphismProperty C`, this is class of morphisms that are
isomorphic to a coproduct of a family (indexed by some `J : Type w`) of maps in `W`. -/
@[pp_with_univ]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant14c1e779b85fcc2d8edeb2522d800f3c516b34479ec3982d00fee4961c68ea88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant14c1e779b85fcc2d8edeb2522d800f3c516b34479ec3982d00fee4961c68ea88.lean#L545).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `618b7e897c51c5b40b77c769949f9692bcba361d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
