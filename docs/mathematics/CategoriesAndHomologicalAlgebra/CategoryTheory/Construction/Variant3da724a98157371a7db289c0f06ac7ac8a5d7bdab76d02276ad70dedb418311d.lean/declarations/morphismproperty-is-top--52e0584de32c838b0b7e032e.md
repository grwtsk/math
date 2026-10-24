# morphismProperty_is_top'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2be3eda4-ecde-0839-593a-7bfe51611bc0",
  "kind": "theorem",
  "lexical_name": "morphismProperty_is_top'",
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
  "slug": "morphismproperty-is-top--52e0584de32c838b0b7e032e",
  "source": {
    "blob": "7f46e7a2e474009aa6f5370f7ea46224d5db42a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 271,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant3da724a98157371a7db289c0f06ac7ac8a5d7bdab76d02276ad70dedb418311d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52e0584de32c838b0b7e032eba7c3abf14abb164f2aa1689ccef4665acb9e584",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant3da724a98157371a7db289c0f06ac7ac8a5d7bdab76d02276ad70dedb418311d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2be3eda4-ecde-0839-593a-7bfe51611bc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem morphismProperty_is_top' (P : MorphismProperty W.Localization)
    (hP₁ : ∀ ⦃X Y : C⦄ (f : X ⟶ Y), P (W.Q.map f))
    (hP₂ : ∀ ⦃X Y : W.Localization⦄ (e : X ≅ Y) (_ : P e.hom), P e.inv)
    (hP₃ : P.StableUnderComposition) : P = ⊤ :=
  morphismProperty_is_top P hP₁ (fun _ _ w _ => hP₂ _ (hP₁ w)) hP₃
#align category_theory.localization.construction.morphism_property_is_top' CategoryTheory.Localization.Construction.morphismProperty_is_top'

namespace NatTransExtension

variable {F₁ F₂ : W.Localization ⥤ D} (τ : W.Q ⋙ F₁ ⟶ W.Q ⋙ F₂)

/-- If `F₁` and `F₂` are functors `W.Localization ⥤ D` and if we have
`τ : W.Q ⋙ F₁ ⟶ W.Q ⋙ F₂`, we shall define a natural transformation `F₁ ⟶ F₂`.
This is the `app` field of this natural transformation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant3da724a98157371a7db289c0f06ac7ac8a5d7bdab76d02276ad70dedb418311d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant3da724a98157371a7db289c0f06ac7ac8a5d7bdab76d02276ad70dedb418311d.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f46e7a2e474009aa6f5370f7ea46224d5db42a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
