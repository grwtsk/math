# eq_zero_of_hom_shift_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b465002-5106-4437-4181-778ea6e81689",
  "kind": "lemma",
  "lexical_name": "eq_zero_of_hom_shift_pos",
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
  "slug": "eq-zero-of-hom-shift-pos--9eccdaa67b5d283a3f57b372",
  "source": {
    "blob": "98ec2691e33ab3154d4af5cd65977a06121160e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 56,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianSubcategory/Variant9fd58d9f23e835f848cf30f468e16aa8d13b55fde219eb6a5433101bdce5c4ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9eccdaa67b5d283a3f57b3723c9973941f51f80826b4c9eb780f01da291848b4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianSubcategory/Variant9fd58d9f23e835f848cf30f468e16aa8d13b55fde219eb6a5433101bdce5c4ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b465002-5106-4437-4181-778ea6e81689`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_zero_of_hom_shift_pos
    {X Y : A} {n : ℤ} (f : (ι.obj X)⟦n⟧ ⟶ ι.obj Y) (hn : 0 < n) :
    f = 0 :=
  (shiftFunctor C (-n)).map_injective (by
    rw [← cancel_epi ((shiftEquiv C n).unitIso.hom.app _), Functor.map_zero, comp_zero]
    exact hι _ (by lia))

section

variable {X₁ X₂ : A} {f₁ : X₁ ⟶ X₂} {X₃ : C} (f₂ : ι.obj X₂ ⟶ X₃) (f₃ : X₃ ⟶ (ι.obj X₁)⟦(1 : ℤ)⟧)
  (hT : Triangle.mk (ι.map f₁) f₂ f₃ ∈ distTriang C) {K Q : A}
  (α : (ι.obj K)⟦(1 : ℤ)⟧ ⟶ X₃) (β : X₃ ⟶ (ι.obj Q)) {γ : ι.obj Q ⟶ (ι.obj K)⟦(1 : ℤ)⟧⟦(1 : ℤ)⟧}
  (hT' : Triangle.mk α β γ ∈ distTriang C)

variable [ι.Full]

/-- The inclusion of the kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianSubcategory/Variant9fd58d9f23e835f848cf30f468e16aa8d13b55fde219eb6a5433101bdce5c4ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianSubcategory/Variant9fd58d9f23e835f848cf30f468e16aa8d13b55fde219eb6a5433101bdce5c4ca.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98ec2691e33ab3154d4af5cd65977a06121160e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
