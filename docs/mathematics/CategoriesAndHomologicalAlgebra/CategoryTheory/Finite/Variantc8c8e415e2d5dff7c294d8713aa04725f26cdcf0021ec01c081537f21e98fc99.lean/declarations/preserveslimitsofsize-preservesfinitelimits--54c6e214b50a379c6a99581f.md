# PreservesLimitsOfSize.preservesFiniteLimits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6a82aa36ba86d1610896af58a458905481504a9419faea7d20fc76fc86c26042",
  "kind": "def",
  "lexical_name": "PreservesLimitsOfSize.preservesFiniteLimits",
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
  "slug": "preserveslimitsofsize-preservesfinitelimits--54c6e214b50a379c6a99581f",
  "source": {
    "blob": "c6813b3672e27b078e5aaee3bc14c5c71b6599ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 70,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantc8c8e415e2d5dff7c294d8713aa04725f26cdcf0021ec01c081537f21e98fc99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:54c6e214b50a379c6a99581f66b56a79fad07c5a2d346c3c36a5d7e06675ff06",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantc8c8e415e2d5dff7c294d8713aa04725f26cdcf0021ec01c081537f21e98fc99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6a82aa36ba86d1610896af58a458905481504a9419faea7d20fc76fc86c26042`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def PreservesLimitsOfSize.preservesFiniteLimits (F : C ⥤ D)
    [PreservesLimitsOfSize.{w, w₂} F] : PreservesFiniteLimits F where
  preservesFiniteLimits J (sJ : SmallCategory J) fJ := by
    haveI := preservesSmallestLimitsOfPreservesLimits F
    exact preservesLimitsOfShapeOfEquiv (FinCategory.equivAsType J) F
#align category_theory.limits.preserves_limits.preserves_finite_limits_of_size CategoryTheory.Limits.PreservesLimitsOfSize.preservesFiniteLimits

-- Added as a specialization of the dangerous instance above, for limits indexed in Type 0.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantc8c8e415e2d5dff7c294d8713aa04725f26cdcf0021ec01c081537f21e98fc99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantc8c8e415e2d5dff7c294d8713aa04725f26cdcf0021ec01c081537f21e98fc99.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6813b3672e27b078e5aaee3bc14c5c71b6599ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
