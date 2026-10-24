# homTensorHomEquiv_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d210e084a69630c862113256299d4d9bded7fb6f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 394,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1abf6c66f43938add29c3a32394d10d51680dc3cc8ffc90a22d75121e7bd90ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:97c60a1c-9b57-9c4c-7fba-697b7dc8f37f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eb7705ff-e98b-3032-e4b5-b38e16d364bd",
  "kind": "theorem",
  "lexical_name": "homTensorHomEquiv_apply",
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
  "slug": "homtensorhomequiv-apply--d532785879cc3d8deb95ff04",
  "source": {
    "blob": "d210e084a69630c862113256299d4d9bded7fb6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 415,
    "line": 394,
    "path": "GRWTSK/Algebra/LinearAlgebra/Contraction/Variant1abf6c66f43938add29c3a32394d10d51680dc3cc8ffc90a22d75121e7bd90ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d532785879cc3d8deb95ff046c97aed7741fbb0d5ac26ca9fd9d8dd6a403f4d2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Contraction/Variant1abf6c66f43938add29c3a32394d10d51680dc3cc8ffc90a22d75121e7bd90ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb7705ff-e98b-3032-e4b5-b38e16d364bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 394–415.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem homTensorHomEquiv_apply (x : (M →ₗ[R] P) ⊗[R] (N →ₗ[R] Q)) :
    homTensorHomEquiv R M N P Q x = homTensorHomMap (.id R) M N P Q x := rfl

end CommSemiring

end HomTensorHom

namespace TensorProduct
variable [CommSemiring R] [AddCommMonoid M] [AddCommMonoid N] [Module R M] [Module R N]

section
variable [Module.Finite R M] [Module.Finite R N] [Projective R M] [Projective R N]

variable (R M N) in
/-- A linear equivalence between `Dual M ⊗ Dual N` and `Dual (M ⊗ N)` when `M` and `N` are finite
projective modules. It sends `f ⊗ g` to the composition of `TensorProduct.map f g` with the natural
isomorphism `R ⊗ R ≃ R`.

Note that `dualDistribEquiv` is not defined directly in terms of `dualDistri`, but the
equivalence between the two is given by `toLinearMap_dualDistribEquiv` and
`dualDistribEquiv_tmul_tmul`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Contraction/Variant1abf6c66f43938add29c3a32394d10d51680dc3cc8ffc90a22d75121e7bd90ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Contraction/Variant1abf6c66f43938add29c3a32394d10d51680dc3cc8ffc90a22d75121e7bd90ab.lean#L394).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d210e084a69630c862113256299d4d9bded7fb6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
