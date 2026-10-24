# flat_of_preservesFiniteLimits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9cd35b75-02c4-fcc5-4ca2-2611cdbc3d79",
  "kind": "theorem",
  "lexical_name": "flat_of_preservesFiniteLimits",
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
  "slug": "flat-of-preservesfinitelimits--1dae65ce09a0582448ea194b",
  "source": {
    "blob": "ba5c5ebab1dd6e5afafa81f24b0f8cb8ea6ad9b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 166,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant3d0c66185bad0104dac76db721cbe667ffe6698846e1aa45574147a5f48aed8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1dae65ce09a0582448ea194bd167a4e946d03b674ba97bbe8529e2d6f599e831",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant3d0c66185bad0104dac76db721cbe667ffe6698846e1aa45574147a5f48aed8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9cd35b75-02c4-fcc5-4ca2-2611cdbc3d79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem flat_of_preservesFiniteLimits [HasFiniteLimits C] (F : C ⥤ D) [PreservesFiniteLimits F] :
    RepresentablyFlat F :=
  ⟨fun X =>
    haveI : HasFiniteLimits (StructuredArrow X F) := by
      apply hasFiniteLimits_of_hasFiniteLimits_of_size.{v₁} (StructuredArrow X F)
      intro J sJ fJ
      constructor
      -- Porting note: instance was inferred automatically in Lean 3
      infer_instance
    IsCofiltered.of_hasFiniteLimits _⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant3d0c66185bad0104dac76db721cbe667ffe6698846e1aa45574147a5f48aed8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant3d0c66185bad0104dac76db721cbe667ffe6698846e1aa45574147a5f48aed8b.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba5c5ebab1dd6e5afafa81f24b0f8cb8ea6ad9b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
