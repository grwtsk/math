# left_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cb4e100c06eb0744a2ea283f28124cf37b384ae2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/18/18b81280c2be98862a715cadc4ebf7b418e10bfe6af6713bf2f1b708b278ac48.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:022171bc-f8a4-3f40-30d2-e08e4d86f5cc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:92efd218-4925-bdd2-afd9-ee00db6c4625",
  "kind": "theorem",
  "lexical_name": "left_inv",
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
  "slug": "left-inv--3b0802acdbb91e21be26746c",
  "source": {
    "blob": "cb4e100c06eb0744a2ea283f28124cf37b384ae2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 129,
    "path": "GRWTSK/Algebra/LinearAlgebra/MatrixAlgebra/Variant18b81280c2be98862a715cadc4ebf7b418e10bfe6af6713bf2f1b708b278ac48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b0802acdbb91e21be26746c21f7e8baa3ef0cfb5abdb06e3c19aea026bc08dc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixAlgebra/Variant18b81280c2be98862a715cadc4ebf7b418e10bfe6af6713bf2f1b708b278ac48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92efd218-4925-bdd2-afd9-ee00db6c4625`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem left_inv (M : A ⊗[R] Matrix n n R) : invFun R A n (toFunAlgHom R A n M) = M := by
  induction M using TensorProduct.induction_on with
  | zero => simp
  | tmul a m => simp
  | add x y hx hy =>
    rw [map_add]
    conv_rhs => rw [← hx, ← hy, ← invFun_add]
#align matrix_equiv_tensor.left_inv MatrixEquivTensor.left_inv

/-- (Implementation detail)

The equivalence, ignoring the algebra structure, `(A ⊗[R] Matrix n n R) ≃ Matrix n n A`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixAlgebra/Variant18b81280c2be98862a715cadc4ebf7b418e10bfe6af6713bf2f1b708b278ac48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MatrixAlgebra/Variant18b81280c2be98862a715cadc4ebf7b418e10bfe6af6713bf2f1b708b278ac48.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb4e100c06eb0744a2ea283f28124cf37b384ae2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
