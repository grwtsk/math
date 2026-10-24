# preservesColimitOfEvaluation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1d3f0269febd7d6bfabf8da189e427121e4b869c604df4a4a53e76007a665983",
  "kind": "def",
  "lexical_name": "preservesColimitOfEvaluation",
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
  "slug": "preservescolimitofevaluation--f020ef99fc736a07cdcec483",
  "source": {
    "blob": "422a89b052efb89d5051e130e43393dab3202989",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 364,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5716a34142af5c70585c5fd77689132abff897ca8fcd3b1e66483a17931fa45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f020ef99fc736a07cdcec483f14f67f55cc0b35a9ece1fe4f75a7ad290c35fe5",
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

Occurrence: `declaration:1d3f0269febd7d6bfabf8da189e427121e4b869c604df4a4a53e76007a665983`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 364–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def preservesColimitOfEvaluation (F : D ⥤ K ⥤ C) (G : J ⥤ D)
    (H : ∀ k, PreservesColimit G (F ⋙ (evaluation K C).obj k)) : PreservesColimit G F :=
  ⟨fun {c} hc => by
    apply evaluationJointlyReflectsColimits
    intro X
    haveI := H X
    change IsColimit ((F ⋙ (evaluation K C).obj X).mapCocone c)
    exact PreservesColimit.preserves hc⟩
#align category_theory.limits.preserves_colimit_of_evaluation CategoryTheory.Limits.preservesColimitOfEvaluation

/-- `F : D ⥤ K ⥤ C` preserves all colimits of shape `J` if it does for each `k : K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5716a34142af5c70585c5fd77689132abff897ca8fcd3b1e66483a17931fa45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5716a34142af5c70585c5fd77689132abff897ca8fcd3b1e66483a17931fa45.lean#L364).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `422a89b052efb89d5051e130e43393dab3202989` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
