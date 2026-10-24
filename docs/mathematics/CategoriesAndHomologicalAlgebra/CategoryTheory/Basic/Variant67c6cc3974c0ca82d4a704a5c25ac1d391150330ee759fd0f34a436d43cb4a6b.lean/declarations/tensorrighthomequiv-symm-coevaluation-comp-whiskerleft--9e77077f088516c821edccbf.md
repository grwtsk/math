# tensorRightHomEquiv_symm_coevaluation_comp_whiskerLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ca96d38-af02-7bea-0fa1-88c6496eae00",
  "kind": "theorem",
  "lexical_name": "tensorRightHomEquiv_symm_coevaluation_comp_whiskerLeft",
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
  "slug": "tensorrighthomequiv-symm-coevaluation-comp-whiskerleft--9e77077f088516c821edccbf",
  "source": {
    "blob": "c1548317dc32c8b5b0d430e1dda5a62d3f5c5e06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 416,
    "line": 410,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant67c6cc3974c0ca82d4a704a5c25ac1d391150330ee759fd0f34a436d43cb4a6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e77077f088516c821edccbf3f4a6b7b65082ad29547d2f6872c7dda2a1444d5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant67c6cc3974c0ca82d4a704a5c25ac1d391150330ee759fd0f34a436d43cb4a6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ca96d38-af02-7bea-0fa1-88c6496eae00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 410–416.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tensorRightHomEquiv_symm_coevaluation_comp_whiskerLeft {X Y : C} [HasLeftDual X]
    [HasLeftDual Y] (f : X ⟶ Y) :
    (tensorRightHomEquiv _ (ᘁY) _ _).symm (η_ (ᘁX : C) X ≫ (ᘁX : C) ◁ f) = (λ_ _).hom ≫ ᘁf := by
  dsimp [tensorRightHomEquiv, leftAdjointMate]
  simp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant67c6cc3974c0ca82d4a704a5c25ac1d391150330ee759fd0f34a436d43cb4a6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant67c6cc3974c0ca82d4a704a5c25ac1d391150330ee759fd0f34a436d43cb4a6b.lean#L410).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1548317dc32c8b5b0d430e1dda5a62d3f5c5e06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
