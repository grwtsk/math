# isLeftAdjointOfPreservesColimitsAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1880ac578bdc93755d46db1062614c27700befbea52cf3cf8a060787e7a1e8f1",
  "kind": "def",
  "lexical_name": "isLeftAdjointOfPreservesColimitsAux",
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
  "slug": "isleftadjointofpreservescolimitsaux--7a567b7858638a2e19743acc",
  "source": {
    "blob": "104a53364fb26ec17e68f203011982483175b5ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 432,
    "line": 424,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant44dab371da774c5da4fe6197c39c4ef91231ca0a02b2ab9720adcbb86487607a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a567b7858638a2e19743accece3ec199b5c51e5696e166ec36f910bdb5729a5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant44dab371da774c5da4fe6197c39c4ef91231ca0a02b2ab9720adcbb86487607a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1880ac578bdc93755d46db1062614c27700befbea52cf3cf8a060787e7a1e8f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 424–432.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isLeftAdjointOfPreservesColimitsAux (L : (Cᵒᵖ ⥤ Type u₁) ⥤ ℰ)
    [PreservesColimits L] : IsLeftAdjoint L where
  right := restrictedYoneda (yoneda ⋙ L)
  adj := (yonedaAdjunction _).ofNatIsoLeft (uniqueExtensionAlongYoneda _ L (Iso.refl _)).symm
#align category_theory.is_left_adjoint_of_preserves_colimits_aux CategoryTheory.isLeftAdjointOfPreservesColimitsAux

/-- If `L` preserves colimits and `ℰ` has them, then it is a left adjoint. Note this is a (partial)
converse to `leftAdjointPreservesColimits`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant44dab371da774c5da4fe6197c39c4ef91231ca0a02b2ab9720adcbb86487607a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant44dab371da774c5da4fe6197c39c4ef91231ca0a02b2ab9720adcbb86487607a.lean#L424).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `104a53364fb26ec17e68f203011982483175b5ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
