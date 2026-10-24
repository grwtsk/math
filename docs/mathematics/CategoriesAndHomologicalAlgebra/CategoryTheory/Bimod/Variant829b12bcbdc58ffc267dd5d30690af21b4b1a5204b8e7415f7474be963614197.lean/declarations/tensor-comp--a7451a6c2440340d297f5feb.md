# tensor_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "62685dcafaa40dd6970145392bd6328c0c8861b1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 449,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/829b12bcbdc58ffc267dd5d30690af21b4b1a5204b8e7415f7474be963614197.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:52d81595-49dc-3e91-c805-f84f98c33e23",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:60ff4cf3-52fb-f140-91c1-51e3896c1ce6",
  "kind": "theorem",
  "lexical_name": "tensor_comp",
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
  "slug": "tensor-comp--a7451a6c2440340d297f5feb",
  "source": {
    "blob": "62685dcafaa40dd6970145392bd6328c0c8861b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 470,
    "line": 449,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant829b12bcbdc58ffc267dd5d30690af21b4b1a5204b8e7415f7474be963614197.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7451a6c2440340d297f5feb3cd7690939b5ebcf86b85dd3de74cc85eec3dcee",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant829b12bcbdc58ffc267dd5d30690af21b4b1a5204b8e7415f7474be963614197.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60ff4cf3-52fb-f140-91c1-51e3896c1ce6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 449–470.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tensor_comp {X Y Z : Mon_ C} {M₁ M₂ M₃ : Bimod X Y} {N₁ N₂ N₃ : Bimod Y Z} (f₁ : M₁ ⟶ M₂)
    (f₂ : M₂ ⟶ M₃) (g₁ : N₁ ⟶ N₂) (g₂ : N₂ ⟶ N₃) :
    tensorHom (f₁ ≫ f₂) (g₁ ≫ g₂) = tensorHom f₁ g₁ ≫ tensorHom f₂ g₂ := by
  ext
  apply Limits.coequalizer.hom_ext
  simp only [comp_hom', MonoidalCategory.tensor_comp, tensorHom_hom,
    ι_colimMap, parallelPairHom_app_one, Category.assoc, ι_colimMap_assoc]
set_option linter.uppercaseLean3 false in
#align Bimod.tensor_comp Bimod.tensor_comp

end

namespace AssociatorBimod

variable [∀ X : C, PreservesColimitsOfSize.{0, 0} (tensorLeft X)]

variable [∀ X : C, PreservesColimitsOfSize.{0, 0} (tensorRight X)]

variable {R S T U : Mon_ C} (P : Bimod R S) (Q : Bimod S T) (L : Bimod T U)

/-- An auxiliary morphism for the definition of the underlying morphism of the forward component of
the associator isomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant829b12bcbdc58ffc267dd5d30690af21b4b1a5204b8e7415f7474be963614197.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant829b12bcbdc58ffc267dd5d30690af21b4b1a5204b8e7415f7474be963614197.lean#L449).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62685dcafaa40dd6970145392bd6328c0c8861b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
