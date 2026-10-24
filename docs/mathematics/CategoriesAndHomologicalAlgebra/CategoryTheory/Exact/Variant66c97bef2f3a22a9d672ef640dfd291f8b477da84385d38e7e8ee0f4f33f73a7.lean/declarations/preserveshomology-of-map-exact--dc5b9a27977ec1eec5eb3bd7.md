# preservesHomology_of_map_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ef76363116b3719cc60ed870b3c18bc4d8110c34",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 265,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/66c97bef2f3a22a9d672ef640dfd291f8b477da84385d38e7e8ee0f4f33f73a7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c40e0a75-3728-5d0d-6ec9-5d1e9d354755",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cf3934dd-4696-a854-4860-817381b2c7c8",
  "kind": "lemma",
  "lexical_name": "preservesHomology_of_map_exact",
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
  "slug": "preserveshomology-of-map-exact--dc5b9a27977ec1eec5eb3bd7",
  "source": {
    "blob": "ef76363116b3719cc60ed870b3c18bc4d8110c34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 265,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant66c97bef2f3a22a9d672ef640dfd291f8b477da84385d38e7e8ee0f4f33f73a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc5b9a27977ec1eec5eb3bd7bddef6beab653ed4c69c7d9a0a24c6f12de7bb62",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant66c97bef2f3a22a9d672ef640dfd291f8b477da84385d38e7e8ee0f4f33f73a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf3934dd-4696-a854-4860-817381b2c7c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preservesHomology_of_map_exact : L.PreservesHomology where
  preservesCokernels X Y f := by
    have := preservesEpimorphisms_of_map_exact _ hL
    apply preservesColimit_of_preserves_colimit_cocone (cokernelIsCokernel f)
    apply (CokernelCofork.isColimitMapCoconeEquiv _ L).2
    have : Epi ((ShortComplex.mk _ _ (cokernel.condition f)).map L).g := by
      dsimp
      infer_instance
    exact (hL (ShortComplex.mk _ _ (cokernel.condition f))
      (ShortComplex.exact_of_g_is_cokernel _ (cokernelIsCokernel f))).gIsCokernel
  preservesKernels X Y f := by
    have := preservesMonomorphisms_of_map_exact _ hL
    apply preservesLimit_of_preserves_limit_cone (kernelIsKernel f)
    apply (KernelFork.isLimitMapConeEquiv _ L).2
    have : Mono ((ShortComplex.mk _ _ (kernel.condition f)).map L).f := by
      dsimp
      infer_instance
    exact (hL (ShortComplex.mk _ _ (kernel.condition f))
      (ShortComplex.exact_of_f_is_kernel _ (kernelIsKernel f))).fIsKernel

end

section

set_option backward.defeqAttrib.useBackward true in
/-- A functor preserving zero morphisms, monos, and cokernels preserves homology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant66c97bef2f3a22a9d672ef640dfd291f8b477da84385d38e7e8ee0f4f33f73a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant66c97bef2f3a22a9d672ef640dfd291f8b477da84385d38e7e8ee0f4f33f73a7.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef76363116b3719cc60ed870b3c18bc4d8110c34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
