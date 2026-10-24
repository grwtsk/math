# IsStableUnderColimitsOfShape.functorCategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a53bb4730e899c0a2c8d7bb8d19c48806eabc10945dbd1af2ed89937eaf5093e",
  "kind": "instance",
  "lexical_name": "IsStableUnderColimitsOfShape.functorCategory",
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
  "slug": "isstableundercolimitsofshape-functorcategory--d874b35721c62bd5f3d6a989",
  "source": {
    "blob": "11c3f59c5baa694561128de851e4f2a80722a963",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 50,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant0da4e0819940c82df3d71cd94282ac96f321bbb0fb532de602f117b5c8d290c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d874b35721c62bd5f3d6a9893908973ae0af14f3834e3c67919c694fd328f678",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant0da4e0819940c82df3d71cd94282ac96f321bbb0fb532de602f117b5c8d290c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a53bb4730e899c0a2c8d7bb8d19c48806eabc10945dbd1af2ed89937eaf5093e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance IsStableUnderColimitsOfShape.functorCategory
    {K : Type u'} [Category.{v'} K] [W.IsStableUnderColimitsOfShape K]
    (J : Type u'') [Category.{v''} J] [HasColimitsOfShape K C] :
    (W.functorCategory J).IsStableUnderColimitsOfShape K where
  condition X₁ X₂ _ _ hc₁ hc₂ f hf φ hφ j :=
    MorphismProperty.colimitsOfShape_le _
      (colimitsOfShape.mk' (X₁ ⋙ (evaluation _ _ ).obj j) (X₂ ⋙ (evaluation _ _ ).obj j)
      _ _ (isColimitOfPreserves _ hc₁) (isColimitOfPreserves _ hc₂) (whiskerRight f _)
      (fun k ↦ hf k j) (φ.app j) (fun k ↦ congr_app (hφ k) j))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant0da4e0819940c82df3d71cd94282ac96f321bbb0fb532de602f117b5c8d290c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant0da4e0819940c82df3d71cd94282ac96f321bbb0fb532de602f117b5c8d290c9.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11c3f59c5baa694561128de851e4f2a80722a963` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
