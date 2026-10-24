# preservesFiniteLimits_of_preservesFiniteLimitsOfSize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "33a4383ccdb403086d1c2475da5afb5180c14658",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d6af5aac105eb94b6fb98ab24190c9015fee38e73bd6e50aa260612da8814d10.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:525ba4aa-d6ff-06fe-a739-634005502c41",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:71c6cf7f-9a32-6258-c548-4aaa30b56a29",
  "kind": "lemma",
  "lexical_name": "preservesFiniteLimits_of_preservesFiniteLimitsOfSize",
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
  "slug": "preservesfinitelimits-of-preservesfinitelimitsofsize--0af569ff5af110c945011ea8",
  "source": {
    "blob": "33a4383ccdb403086d1c2475da5afb5180c14658",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 73,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantd6af5aac105eb94b6fb98ab24190c9015fee38e73bd6e50aa260612da8814d10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0af569ff5af110c945011ea879873a1fc814fe78c95d600bbb2314a8fdcc663a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantd6af5aac105eb94b6fb98ab24190c9015fee38e73bd6e50aa260612da8814d10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71c6cf7f-9a32-6258-c548-4aaa30b56a29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preservesFiniteLimits_of_preservesFiniteLimitsOfSize (F : C ⥤ D)
    (h :
      ∀ (J : Type w) {𝒥 : SmallCategory J} (_ : @FinCategory J 𝒥), PreservesLimitsOfShape J F) :
    PreservesFiniteLimits F where
      preservesFiniteLimits J (_ : SmallCategory J) _ := by
        haveI := h (ULiftHom (ULift J)) CategoryTheory.finCategoryUlift
        exact preservesLimitsOfShape_of_equiv (ULiftHomULiftCategory.equiv J).symm F

/-- The composition of two left exact functors is left exact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantd6af5aac105eb94b6fb98ab24190c9015fee38e73bd6e50aa260612da8814d10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantd6af5aac105eb94b6fb98ab24190c9015fee38e73bd6e50aa260612da8814d10.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33a4383ccdb403086d1c2475da5afb5180c14658` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
