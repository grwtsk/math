# Limits.PreservesFiniteProducts.of_exponentialIdeal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "203558eea69b40549b59c10e87411f01e7f471b3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 304,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/82e9f2b4fed7a58e79d7fcf8452abf2f01755ffa1a0718f1d2884e7a28d48966.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:06e2ae02-0d93-4895-15b3-26500bb1fb0c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b2f7d04-bb20-b926-dba2-2fd8b25dfa43",
  "kind": "lemma",
  "lexical_name": "Limits.PreservesFiniteProducts.of_exponentialIdeal",
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
  "slug": "limits-preservesfiniteproducts-of-exponentialideal--e621734711a007a5c142c9ca",
  "source": {
    "blob": "203558eea69b40549b59c10e87411f01e7f471b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 304,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant82e9f2b4fed7a58e79d7fcf8452abf2f01755ffa1a0718f1d2884e7a28d48966.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e621734711a007a5c142c9ca33f547d381af82922e5c493bb2f7533f19c743e5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant82e9f2b4fed7a58e79d7fcf8452abf2f01755ffa1a0718f1d2884e7a28d48966.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b2f7d04-bb20-b926-dba2-2fd8b25dfa43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Limits.PreservesFiniteProducts.of_exponentialIdeal : PreservesFiniteProducts (reflector i) :=
  have := preservesBinaryProducts_of_exponentialIdeal i
  have : PreservesLimitsOfShape _ (reflector i) := leftAdjoint_preservesTerminal_of_reflective.{0} i
  .of_preserves_binary_and_terminal _

@[deprecated (since := "2025-04-22")]
alias preservesFiniteProducts_of_exponentialIdeal := PreservesFiniteProducts.of_exponentialIdeal

end

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant82e9f2b4fed7a58e79d7fcf8452abf2f01755ffa1a0718f1d2884e7a28d48966.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant82e9f2b4fed7a58e79d7fcf8452abf2f01755ffa1a0718f1d2884e7a28d48966.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `203558eea69b40549b59c10e87411f01e7f471b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
