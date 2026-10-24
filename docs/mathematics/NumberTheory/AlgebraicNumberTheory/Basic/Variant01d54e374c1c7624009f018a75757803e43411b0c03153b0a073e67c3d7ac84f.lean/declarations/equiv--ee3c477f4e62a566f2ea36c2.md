# equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3c04b79552195d58566ee5f066c8dabc47ce044c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 271,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/01d54e374c1c7624009f018a75757803e43411b0c03153b0a073e67c3d7ac84f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:81145856-9655-fc89-be93-df49bca234ca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9e048de5-b36b-d6a4-8ca3-259302cff439",
  "kind": "theorem",
  "lexical_name": "equiv",
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
  "slug": "equiv--ee3c477f4e62a566f2ea36c2",
  "source": {
    "blob": "3c04b79552195d58566ee5f066c8dabc47ce044c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 271,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant01d54e374c1c7624009f018a75757803e43411b0c03153b0a073e67c3d7ac84f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee3c477f4e62a566f2ea36c293e0971142e33997558ba7912707478c9dced29e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant01d54e374c1c7624009f018a75757803e43411b0c03153b0a073e67c3d7ac84f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e048de5-b36b-d6a4-8ca3-259302cff439`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equiv {C : Type*} [CommRing C] [Algebra A C] [h : IsCyclotomicExtension S A B]
    (f : B ≃ₐ[A] C) : IsCyclotomicExtension S A C := by
  letI : Algebra B C := f.toAlgHom.toRingHom.toAlgebra
  haveI : IsCyclotomicExtension {1} B C := singleton_one_of_algebraMap_bijective f.surjective
  haveI : IsScalarTower A B C := IsScalarTower.of_algHom f.toAlgHom
  exact (iff_union_singleton_one _ _ _).2 (trans S {1} A B C f.injective)

protected
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant01d54e374c1c7624009f018a75757803e43411b0c03153b0a073e67c3d7ac84f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant01d54e374c1c7624009f018a75757803e43411b0c03153b0a073e67c3d7ac84f.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c04b79552195d58566ee5f066c8dabc47ce044c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
