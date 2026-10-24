# LinearMap.ker_tensorProductMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a678aa0124f33b23291ce973b8be80224b14791b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 400,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:53a61a45-3b69-a05b-3510-61717da73f72",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9de4f063-e4bf-9519-77fc-07bb5f29cb98",
  "kind": "lemma",
  "lexical_name": "LinearMap.ker_tensorProductMk",
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
  "slug": "linearmap-ker-tensorproductmk--bfe6fdfe00cc8d835c27e077",
  "source": {
    "blob": "a678aa0124f33b23291ce973b8be80224b14791b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 416,
    "line": 400,
    "path": "GRWTSK/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfe6fdfe00cc8d835c27e07734c3ca801bfa341da6355d022e5dfa66d2bc9b3d",
  "verification": {
    "reference": "docs/verification/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9de4f063-e4bf-9519-77fc-07bb5f29cb98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 400–416.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LinearMap.ker_tensorProductMk {I : Ideal R} :
    ker (TensorProduct.mk R (R ⧸ I) Q 1) = I • ⊤ := by
  apply comap_injective_of_surjective (TensorProduct.lid R Q).surjective
  rw [← comap_coe_toLinearMap, ← ker_comp]
  convert rTensor_mkQ Q I
  · ext; simp
  rw [← comap_coe_toLinearMap, ← toLinearMap_eq_coe, comap_equiv_eq_map_symm, toLinearMap_eq_coe,
    map_coe_toLinearMap, map_symm_eq_iff, map_range_rTensor_subtype_lid]

variable {M' N' P' : Type*}
    [AddCommGroup M'] [AddCommGroup N'] [AddCommGroup P']
    [Module R M'] [Module R N'] [Module R P']
    {f' : M' →ₗ[R] N'} {g' : N' →ₗ[R] P'}
    (hfg' : Exact f' g') (hg' : Function.Surjective g')

include hg hg' hfg hfg' in
/-- Kernel of a product map (right-exactness of tensor product) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean#L400).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a678aa0124f33b23291ce973b8be80224b14791b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
