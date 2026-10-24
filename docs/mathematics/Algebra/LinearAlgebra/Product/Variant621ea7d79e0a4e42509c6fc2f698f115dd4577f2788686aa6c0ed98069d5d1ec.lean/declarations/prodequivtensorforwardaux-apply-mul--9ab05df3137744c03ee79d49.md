# prodEquivTensorForwardAux_apply_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ba2a12152012e960e2afc49d28675784a3fd7a75",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 39,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/621ea7d79e0a4e42509c6fc2f698f115dd4577f2788686aa6c0ed98069d5d1ec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c2cc975d-b65a-c904-5927-cb0c336cdba2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:31ada60a-0b2c-ab5b-3fbe-ad6cb01622c5",
  "kind": "lemma",
  "lexical_name": "prodEquivTensorForwardAux_apply_mul",
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
  "slug": "prodequivtensorforwardaux-apply-mul--9ab05df3137744c03ee79d49",
  "source": {
    "blob": "ba2a12152012e960e2afc49d28675784a3fd7a75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 39,
    "path": "GRWTSK/Algebra/LinearAlgebra/Product/Variant621ea7d79e0a4e42509c6fc2f698f115dd4577f2788686aa6c0ed98069d5d1ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ab05df3137744c03ee79d492528eff573b0070115aab3b435a581eeebfec1e3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Product/Variant621ea7d79e0a4e42509c6fc2f698f115dd4577f2788686aa6c0ed98069d5d1ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31ada60a-0b2c-ab5b-3fbe-ad6cb01622c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma prodEquivTensorForwardAux_apply_mul (m : M × N) :
    (prodEquivTensorForwardAux R M N) m * (prodEquivTensorForwardAux R M N) m = 0 := by
  let a : ⋀[R]^1 M := ⟨ι R m.1, by simp⟩
  let b : ⋀[R]^1 N := ⟨ι R m.2, by simp⟩
  have h : prodEquivTensorForwardAux R M N m = a.val ᵍ⊗ₜ[R] 1 + 1 ᵍ⊗ₜ[R] b.val := rfl
  rw [h, add_mul, mul_add, mul_add, GradedTensorProduct.tmul_one_mul_coe_tmul,
    GradedTensorProduct.tmul_one_mul_one_tmul, GradedTensorProduct.tmul_coe_mul_coe_tmul,
    GradedTensorProduct.tmul_coe_mul_one_tmul]
  simp [a, b, mul_one, one_mul, Units.neg_smul, one_smul, GradedTensorProduct.tmul,
    TensorProduct.zero_tmul, TensorProduct.tmul_zero, map_zero]

/-- The forward function for the equivalence between `ExteriorAlgebra R (M × N)` and
graded tensor product of the two exterior algebras, lift from `(x, y) ↦ x ⊗ 1 + 1 ⊗ y`. -/
@[no_expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Product/Variant621ea7d79e0a4e42509c6fc2f698f115dd4577f2788686aa6c0ed98069d5d1ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Product/Variant621ea7d79e0a4e42509c6fc2f698f115dd4577f2788686aa6c0ed98069d5d1ec.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba2a12152012e960e2afc49d28675784a3fd7a75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
