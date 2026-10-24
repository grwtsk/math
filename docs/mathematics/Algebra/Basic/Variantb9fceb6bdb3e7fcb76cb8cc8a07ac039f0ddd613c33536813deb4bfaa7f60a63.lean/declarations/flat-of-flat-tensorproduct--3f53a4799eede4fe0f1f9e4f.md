# Flat.of_flat_tensorProduct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4f49616cb348e9d111ff6d5c3856eb2f26fbd99e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 572,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5816daf2-6eb9-f550-4dfb-de9ed75e955b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b3e52998-29a1-ae4d-6072-6354c9a133f5",
  "kind": "lemma",
  "lexical_name": "Flat.of_flat_tensorProduct",
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
  "slug": "flat-of-flat-tensorproduct--3f53a4799eede4fe0f1f9e4f",
  "source": {
    "blob": "4f49616cb348e9d111ff6d5c3856eb2f26fbd99e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 584,
    "line": 572,
    "path": "GRWTSK/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f53a4799eede4fe0f1f9e4f830d4019bf81657b40e6a0dbc7833b7f9c8060fc",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3e52998-29a1-ae4d-6072-6354c9a133f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 572–584.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Flat.of_flat_tensorProduct (S : Type*) [CommRing S] [Algebra R S]
    [Module.FaithfullyFlat R S] [Module.Flat S (S ⊗[R] M)] : Module.Flat R M := by
  rw [Module.Flat.iff_lTensor_preserves_injective_linearMap]
  intro N P _ _ _ _ f hf
  have : Flat R (S ⊗[R] M) := Flat.trans _ S _
  rw [← FaithfullyFlat.lTensor_injective_iff_injective R S]
  have : LinearMap.lTensor S (LinearMap.lTensor M f) =
      (TensorProduct.assoc _ _ _ _).toLinearMap ∘ₗ LinearMap.lTensor (S ⊗[R] M) f ∘ₗ
        (TensorProduct.assoc _ _ _ _).symm.toLinearMap := by
    ext
    simp
  simpa [this] using Flat.lTensor_preserves_injective_linearMap f hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean#L572).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f49616cb348e9d111ff6d5c3856eb2f26fbd99e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
