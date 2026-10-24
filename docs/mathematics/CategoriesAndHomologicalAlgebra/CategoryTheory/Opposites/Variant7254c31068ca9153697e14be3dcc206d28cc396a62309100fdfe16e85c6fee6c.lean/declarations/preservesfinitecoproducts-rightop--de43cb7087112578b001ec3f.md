# preservesFiniteCoproducts_rightOp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f4ad724177d26e187e89e7cf0fb190a49fa07c40",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 517,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/7254c31068ca9153697e14be3dcc206d28cc396a62309100fdfe16e85c6fee6c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:079d1619-1cc1-8c62-bb65-b60371511dcf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:80251257-15f6-0821-137d-0cb03f90936a",
  "kind": "lemma",
  "lexical_name": "preservesFiniteCoproducts_rightOp",
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
  "slug": "preservesfinitecoproducts-rightop--de43cb7087112578b001ec3f",
  "source": {
    "blob": "f4ad724177d26e187e89e7cf0fb190a49fa07c40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 524,
    "line": 517,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant7254c31068ca9153697e14be3dcc206d28cc396a62309100fdfe16e85c6fee6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de43cb7087112578b001ec3f1b16c3e83fdc5407d42f9e597e1448b48af035e1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant7254c31068ca9153697e14be3dcc206d28cc396a62309100fdfe16e85c6fee6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80251257-15f6-0821-137d-0cb03f90936a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 517–524.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preservesFiniteCoproducts_rightOp (F : Cᵒᵖ ⥤ D) [PreservesFiniteProducts F] :
    PreservesFiniteCoproducts F.rightOp where
  preserves _ := by
    apply (config := { allowSynthFailures := true }) preservesColimitsOfShape_rightOp
    exact preservesLimitsOfShape_of_equiv (Discrete.opposite _).symm _

/-- If `F : Cᵒᵖ ⥤ Dᵒᵖ` preserves finite products, then `F.unop : C ⥤ D` preserves finite
    coproducts. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant7254c31068ca9153697e14be3dcc206d28cc396a62309100fdfe16e85c6fee6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant7254c31068ca9153697e14be3dcc206d28cc396a62309100fdfe16e85c6fee6c.lean#L517).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4ad724177d26e187e89e7cf0fb190a49fa07c40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
