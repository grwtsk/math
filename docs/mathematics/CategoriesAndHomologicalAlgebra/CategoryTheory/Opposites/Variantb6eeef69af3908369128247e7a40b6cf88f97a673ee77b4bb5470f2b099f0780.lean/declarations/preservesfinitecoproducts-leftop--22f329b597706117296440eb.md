# preservesFiniteCoproducts_leftOp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce3d2cb8-c9d7-a843-7870-96dd39d8915e",
  "kind": "lemma",
  "lexical_name": "preservesFiniteCoproducts_leftOp",
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
  "slug": "preservesfinitecoproducts-leftop--22f329b597706117296440eb",
  "source": {
    "blob": "9bfb49d4f2fbf5e9ef357fe419792db15fdcf10a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 524,
    "line": 517,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantb6eeef69af3908369128247e7a40b6cf88f97a673ee77b4bb5470f2b099f0780.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22f329b597706117296440eb5a39e4f91cad572550175eac48a91a507dc75c71",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantb6eeef69af3908369128247e7a40b6cf88f97a673ee77b4bb5470f2b099f0780.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce3d2cb8-c9d7-a843-7870-96dd39d8915e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 517–524.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preservesFiniteCoproducts_leftOp (F : C ⥤ Dᵒᵖ) [PreservesFiniteProducts F] :
    PreservesFiniteCoproducts F.leftOp where
  preserves _ := by
    apply (config := { allowSynthFailures := true }) preservesColimitsOfShape_leftOp
    exact preservesLimitsOfShape_of_equiv (Discrete.opposite _).symm _

/-- If `F : Cᵒᵖ ⥤ D` preserves finite products, then `F.rightOp : C ⥤ Dᵒᵖ` preserves finite
    coproducts. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantb6eeef69af3908369128247e7a40b6cf88f97a673ee77b4bb5470f2b099f0780.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantb6eeef69af3908369128247e7a40b6cf88f97a673ee77b4bb5470f2b099f0780.lean#L517).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bfb49d4f2fbf5e9ef357fe419792db15fdcf10a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
