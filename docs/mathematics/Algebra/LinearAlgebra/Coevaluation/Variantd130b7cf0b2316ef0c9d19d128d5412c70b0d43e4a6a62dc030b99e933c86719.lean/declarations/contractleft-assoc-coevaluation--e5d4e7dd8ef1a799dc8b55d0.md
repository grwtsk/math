# contractLeft_assoc_coevaluation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31b64ef5ce5f84cd850273d205821f7b9098314b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d130b7cf0b2316ef0c9d19d128d5412c70b0d43e4a6a62dc030b99e933c86719.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d916af53-f92a-46d5-0a95-bbb907f4021d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db65ef87-487b-0ed7-80db-483dc93fa1d3",
  "kind": "theorem",
  "lexical_name": "contractLeft_assoc_coevaluation",
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
  "slug": "contractleft-assoc-coevaluation--e5d4e7dd8ef1a799dc8b55d0",
  "source": {
    "blob": "31b64ef5ce5f84cd850273d205821f7b9098314b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 57,
    "path": "GRWTSK/Algebra/LinearAlgebra/Coevaluation/Variantd130b7cf0b2316ef0c9d19d128d5412c70b0d43e4a6a62dc030b99e933c86719.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5d4e7dd8ef1a799dc8b55d0d9360d9729f3574a662f474666f16126cd081b49",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Coevaluation/Variantd130b7cf0b2316ef0c9d19d128d5412c70b0d43e4a6a62dc030b99e933c86719.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db65ef87-487b-0ed7-80db-483dc93fa1d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contractLeft_assoc_coevaluation :
    (contractLeft K V).rTensor _ ∘ₗ
        (TensorProduct.assoc K _ _ _).symm.toLinearMap ∘ₗ
          (coevaluation K V).lTensor (Module.Dual K V) =
      (TensorProduct.lid K _).symm.toLinearMap ∘ₗ (TensorProduct.rid K _).toLinearMap := by
  letI := Classical.decEq (Basis.ofVectorSpaceIndex K V)
  apply TensorProduct.ext
  apply (Basis.ofVectorSpace K V).dualBasis.ext; intro j; apply LinearMap.ext_ring
  rw [LinearMap.compr₂_apply, LinearMap.compr₂_apply, TensorProduct.mk_apply]
  simp only [LinearMap.coe_comp, Function.comp_apply, LinearEquiv.coe_toLinearMap]
  rw [rid_tmul, one_smul, lid_symm_apply]
  simp only [LinearEquiv.coe_toLinearMap, LinearMap.lTensor_tmul, coevaluation_apply_one]
  rw [TensorProduct.tmul_sum, map_sum]; simp only [assoc_symm_tmul]
  rw [map_sum]; simp only [LinearMap.rTensor_tmul, contractLeft_apply]
  simp only [Basis.coe_dualBasis, Basis.coord_apply, Basis.repr_self_apply, TensorProduct.ite_tmul]
  rw [Finset.sum_ite_eq']; simp only [Finset.mem_univ, if_true]

/-- This lemma corresponds to one of the coherence laws for duals in rigid categories, see
  `CategoryTheory.Monoidal.Rigid`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Coevaluation/Variantd130b7cf0b2316ef0c9d19d128d5412c70b0d43e4a6a62dc030b99e933c86719.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Coevaluation/Variantd130b7cf0b2316ef0c9d19d128d5412c70b0d43e4a6a62dc030b99e933c86719.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31b64ef5ce5f84cd850273d205821f7b9098314b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
