# isLeftAdjoint_of_preservesColimits_of_isSeparating

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "241291890909b321243082b13b1e34a4e7f920c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4fe36986a43c35e560daf5ea5336b26d2dfad2e5aaa798377513f4e9d7e14d6b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f17be20f-ec99-3116-9bd2-abae24c6c786",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4f59fc2c-f3f6-9f40-42df-e078e64206b7",
  "kind": "lemma",
  "lexical_name": "isLeftAdjoint_of_preservesColimits_of_isSeparating",
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
  "slug": "isleftadjoint-of-preservescolimits-of-isseparating--95a09220957fc1b25cb8172e",
  "source": {
    "blob": "241291890909b321243082b13b1e34a4e7f920c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 118,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant4fe36986a43c35e560daf5ea5336b26d2dfad2e5aaa798377513f4e9d7e14d6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95a09220957fc1b25cb8172eeca1cfa5a203ac9ec3a6550ac8989053614b8d3d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant4fe36986a43c35e560daf5ea5336b26d2dfad2e5aaa798377513f4e9d7e14d6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f59fc2c-f3f6-9f40-42df-e078e64206b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLeftAdjoint_of_preservesColimits_of_isSeparating [HasColimitsOfSize.{w, w} C]
    [LocallySmall.{w} C] [LocallySmall.{w} D] [WellPowered.{w} Cᵒᵖ]
    {P : ObjectProperty C} [ObjectProperty.Small.{w} P]
    (h𝒢 : P.IsSeparating) (F : C ⥤ D) [PreservesColimitsOfSize.{w, w} F] :
    F.IsLeftAdjoint :=
  have := hasFiniteColimits_of_hasColimitsOfSize C
  have := PreservesColimitsOfSize.preservesFiniteColimits F
  have (A : D) : HasTerminal (CostructuredArrow F A) :=
    hasTerminal_of_isSeparating.{w} (CostructuredArrow.isSeparating_inverseImage_proj F A h𝒢)
  isLeftAdjoint_of_costructuredArrowTerminals _

end SpecialAdjointFunctorTheorem

namespace Limits

/-- A consequence of the special adjoint functor theorem: if `C` is complete, well-powered and
    has a small coseparating set, then it is cocomplete. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant4fe36986a43c35e560daf5ea5336b26d2dfad2e5aaa798377513f4e9d7e14d6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant4fe36986a43c35e560daf5ea5336b26d2dfad2e5aaa798377513f4e9d7e14d6b.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `241291890909b321243082b13b1e34a4e7f920c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
