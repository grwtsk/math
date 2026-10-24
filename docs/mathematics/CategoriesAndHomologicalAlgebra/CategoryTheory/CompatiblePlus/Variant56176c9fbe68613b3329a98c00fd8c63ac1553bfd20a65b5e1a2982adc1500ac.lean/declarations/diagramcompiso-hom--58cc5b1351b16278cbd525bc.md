# diagramCompIso_hom_ι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:69b8279c-36c4-858d-0ef7-8e495d32c27d",
  "kind": "theorem",
  "lexical_name": "diagramCompIso_hom_ι",
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
  "slug": "diagramcompiso-hom--58cc5b1351b16278cbd525bc",
  "source": {
    "blob": "d6e45b1720e5096a6d035b3d52a768b5370423ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 70,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variant56176c9fbe68613b3329a98c00fd8c63ac1553bfd20a65b5e1a2982adc1500ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58cc5b1351b16278cbd525bcf02ab12c62efce6b4781a32d5a21ff1bf32d241b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variant56176c9fbe68613b3329a98c00fd8c63ac1553bfd20a65b5e1a2982adc1500ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69b8279c-36c4-858d-0ef7-8e495d32c27d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagramCompIso_hom_ι (X : C) (W : (J.Cover X)ᵒᵖ) (i : W.unop.Arrow) :
  (J.diagramCompIso F P X).hom.app W ≫ Multiequalizer.ι ((unop W).index (P ⋙ F)) i =
  F.map (Multiequalizer.ι _ _) := by
  delta diagramCompIso
  dsimp
  simp
#align category_theory.grothendieck_topology.diagram_comp_iso_hom_ι CategoryTheory.GrothendieckTopology.diagramCompIso_hom_ι

variable [∀ X : C, HasColimitsOfShape (J.Cover X)ᵒᵖ D]
variable [∀ X : C, HasColimitsOfShape (J.Cover X)ᵒᵖ E]
variable [∀ X : C, PreservesColimitsOfShape (J.Cover X)ᵒᵖ F]

/-- The isomorphism between `P⁺ ⋙ F` and `(P ⋙ F)⁺`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variant56176c9fbe68613b3329a98c00fd8c63ac1553bfd20a65b5e1a2982adc1500ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variant56176c9fbe68613b3329a98c00fd8c63ac1553bfd20a65b5e1a2982adc1500ac.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6e45b1720e5096a6d035b3d52a768b5370423ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
