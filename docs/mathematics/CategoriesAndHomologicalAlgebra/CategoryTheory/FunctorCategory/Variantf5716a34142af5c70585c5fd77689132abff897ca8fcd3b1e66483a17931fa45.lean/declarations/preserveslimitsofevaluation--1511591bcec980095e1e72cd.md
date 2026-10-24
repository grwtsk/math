# preservesLimitsOfEvaluation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d715107e4be97847d707733b1ea52fc40b9566958ffeef79cad5572526bf3f2a",
  "kind": "def",
  "lexical_name": "preservesLimitsOfEvaluation",
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
  "slug": "preserveslimitsofevaluation--1511591bcec980095e1e72cd",
  "source": {
    "blob": "422a89b052efb89d5051e130e43393dab3202989",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 345,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5716a34142af5c70585c5fd77689132abff897ca8fcd3b1e66483a17931fa45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1511591bcec980095e1e72cd69fd852dcf5632042029a0db10ee61813da19bf7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5716a34142af5c70585c5fd77689132abff897ca8fcd3b1e66483a17931fa45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d715107e4be97847d707733b1ea52fc40b9566958ffeef79cad5572526bf3f2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def preservesLimitsOfEvaluation (F : D ⥤ K ⥤ C)
    (_ : ∀ k : K, PreservesLimitsOfSize.{w', w} (F ⋙ (evaluation K C).obj k)) :
    PreservesLimitsOfSize.{w', w} F :=
  ⟨fun {L} _ =>
    preservesLimitsOfShapeOfEvaluation F L fun _ => PreservesLimitsOfSize.preservesLimitsOfShape⟩
#align category_theory.limits.preserves_limits_of_evaluation CategoryTheory.Limits.preservesLimitsOfEvaluation

/-- The constant functor `C ⥤ (D ⥤ C)` preserves limits. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5716a34142af5c70585c5fd77689132abff897ca8fcd3b1e66483a17931fa45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5716a34142af5c70585c5fd77689132abff897ca8fcd3b1e66483a17931fa45.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `422a89b052efb89d5051e130e43393dab3202989` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
