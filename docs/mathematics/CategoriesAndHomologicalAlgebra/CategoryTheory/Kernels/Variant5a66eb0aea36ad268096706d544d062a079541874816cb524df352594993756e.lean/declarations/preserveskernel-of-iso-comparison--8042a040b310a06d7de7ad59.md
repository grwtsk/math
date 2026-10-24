# PreservesKernel.of_iso_comparison

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fac87d6dcec8ca405915122c5c2350457396cf60",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c4da257e-ea4b-3ae7-e45c-276b319ffbeb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5820ddbb-7a79-64d1-6c76-4ee957b369e1",
  "kind": "lemma",
  "lexical_name": "PreservesKernel.of_iso_comparison",
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
  "slug": "preserveskernel-of-iso-comparison--8042a040b310a06d7de7ad59",
  "source": {
    "blob": "fac87d6dcec8ca405915122c5c2350457396cf60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 122,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8042a040b310a06d7de7ad596a267cd57df760a8209e04478e0da8e7409b4e75",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5820ddbb-7a79-64d1-6c76-4ee957b369e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma PreservesKernel.of_iso_comparison [i : IsIso (kernelComparison f G)] :
    PreservesLimit (parallelPair f 0) G := by
  apply preservesLimit_of_preserves_limit_cone (kernelIsKernel f)
  apply (isLimitMapConeForkEquiv' G (kernel.condition f)).symm _
  exact @IsLimit.ofPointIso _ _ _ _ _ _ _ (kernelIsKernel (G.map f)) i

variable [PreservesLimit (parallelPair f 0) G]

/-- If `G` preserves the kernel of `f`, then the kernel comparison map for `G` at `f` is
an isomorphism.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fac87d6dcec8ca405915122c5c2350457396cf60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
