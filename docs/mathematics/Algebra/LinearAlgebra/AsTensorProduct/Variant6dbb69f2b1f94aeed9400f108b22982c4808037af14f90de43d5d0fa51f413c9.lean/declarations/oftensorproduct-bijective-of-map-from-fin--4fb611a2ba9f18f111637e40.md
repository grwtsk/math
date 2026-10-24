# ofTensorProduct_bijective_of_map_from_fin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "09f27b1ee2fcdcc2d248b1f88ba8d724ca33ac15",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 311,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e4b0f0df-4cab-8cd1-837b-45df13eb1e8b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a9d1dfe0-9f48-5dcc-4e71-1b4671a88fb3",
  "kind": "lemma",
  "lexical_name": "ofTensorProduct_bijective_of_map_from_fin",
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
  "slug": "oftensorproduct-bijective-of-map-from-fin--4fb611a2ba9f18f111637e40",
  "source": {
    "blob": "09f27b1ee2fcdcc2d248b1f88ba8d724ca33ac15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 311,
    "path": "GRWTSK/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4fb611a2ba9f18f111637e40024dbe3ea72731622e539385261dacf8a8511f76",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9d1dfe0-9f48-5dcc-4e71-1b4671a88fb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ofTensorProduct_bijective_of_map_from_fin [Fintype ι] [IsNoetherianRing R] :
    Function.Bijective (ofTensorProduct I M) := by
  have : IsIso (ModuleCat.ofHom (ofTensorProduct I M)) :=
    ofTensorProduct_iso I M f hf
  exact ConcreteCategory.bijective_of_isIso (ModuleCat.ofHom (ofTensorProduct I M))

end

variable [IsNoetherianRing R]

/-- If `R` is a Noetherian ring and `M` is a finite `R`-module, then the natural map
given by `AdicCompletion.ofTensorProduct` is an isomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09f27b1ee2fcdcc2d248b1f88ba8d724ca33ac15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
