# isLeftAdjoint_of_preservesColimits_of_isSeparating

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f98173f-c3f4-63d5-eaab-4c0d960b3abb",
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
  "slug": "isleftadjoint-of-preservescolimits-of-isseparating--5cc2e9faab9622a024d91a53",
  "source": {
    "blob": "a71e884c5ad132a05c3fbff9bb99c1104e345afe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 126,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Varianta96822998f8b0f487b1e193de364d037a1d9a14fffe3044c07dc2bbbb45254e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cc2e9faab9622a024d91a535b2b83c39b7b1fabe8711501a368a6bb9f94a7c3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Varianta96822998f8b0f487b1e193de364d037a1d9a14fffe3044c07dc2bbbb45254e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f98173f-c3f4-63d5-eaab-4c0d960b3abb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–142.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Varianta96822998f8b0f487b1e193de364d037a1d9a14fffe3044c07dc2bbbb45254e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Varianta96822998f8b0f487b1e193de364d037a1d9a14fffe3044c07dc2bbbb45254e7.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a71e884c5ad132a05c3fbff9bb99c1104e345afe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
