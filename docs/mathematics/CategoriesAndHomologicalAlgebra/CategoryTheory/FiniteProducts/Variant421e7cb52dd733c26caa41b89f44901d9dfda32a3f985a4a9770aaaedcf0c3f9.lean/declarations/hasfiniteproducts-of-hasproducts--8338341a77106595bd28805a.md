# hasFiniteProducts_of_hasProducts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "21694ecd39af1c354fc333707a4ef96de149c10e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 51,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/42/421e7cb52dd733c26caa41b89f44901d9dfda32a3f985a4a9770aaaedcf0c3f9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3708da2d-f5ce-cd63-9883-47c820059f50",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3af1a83b-66ff-e7aa-7a52-a63202eb5620",
  "kind": "theorem",
  "lexical_name": "hasFiniteProducts_of_hasProducts",
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
  "slug": "hasfiniteproducts-of-hasproducts--8338341a77106595bd28805a",
  "source": {
    "blob": "21694ecd39af1c354fc333707a4ef96de149c10e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 51,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant421e7cb52dd733c26caa41b89f44901d9dfda32a3f985a4a9770aaaedcf0c3f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8338341a77106595bd28805a5808fa20c4d9149ad5b80099c94249352e690539",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant421e7cb52dd733c26caa41b89f44901d9dfda32a3f985a4a9770aaaedcf0c3f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3af1a83b-66ff-e7aa-7a52-a63202eb5620`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasFiniteProducts_of_hasProducts [HasProducts.{w} C] : HasFiniteProducts C :=
  ⟨fun _ => hasLimitsOfShape_of_equivalence (Discrete.equivalence Equiv.ulift.{w})⟩

/-- A category has finite coproducts if there exists a colimit for every diagram
with shape `Discrete J`, where we have `[Fintype J]`.

We require this condition only for `J = Fin n` in the definition, then deduce a version for any
`J : Type*` as a corollary of this definition.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant421e7cb52dd733c26caa41b89f44901d9dfda32a3f985a4a9770aaaedcf0c3f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant421e7cb52dd733c26caa41b89f44901d9dfda32a3f985a4a9770aaaedcf0c3f9.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21694ecd39af1c354fc333707a4ef96de149c10e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
