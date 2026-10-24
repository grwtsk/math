# right_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ce5f1ce9aa8905348f5ff07c15ff90b695e5ef3b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 142,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/299800de42ea932530de3174d283ac26bb53f4b9668cd37a67bf840481aa8f02.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:47e54c69-a355-de4d-d8da-85aa1e6bae2e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:76dc4079-e001-40e9-39a9-baeecc7d2461",
  "kind": "theorem",
  "lexical_name": "right_inv",
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
  "slug": "right-inv--1cbd03399a3622ed79afd90d",
  "source": {
    "blob": "ce5f1ce9aa8905348f5ff07c15ff90b695e5ef3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 142,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant299800de42ea932530de3174d283ac26bb53f4b9668cd37a67bf840481aa8f02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1cbd03399a3622ed79afd90d6bf6c8f19c92711c5951cbedb382141ebecc9e27",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant299800de42ea932530de3174d283ac26bb53f4b9668cd37a67bf840481aa8f02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76dc4079-e001-40e9-39a9-baeecc7d2461`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem right_inv (x : A[X]) : (toFunAlgHom R A) (invFun R A x) = x := by
  refine Polynomial.induction_on' x ?_ ?_
  · intro p q hp hq
    simp only [invFun_add, map_add, hp, hq]
  · intro n a
    rw [invFun_monomial, Algebra.TensorProduct.tmul_pow,
        one_pow, Algebra.TensorProduct.tmul_mul_tmul, mul_one, one_mul, toFunAlgHom_apply_tmul,
        X_pow_eq_monomial, sum_monomial_index] <;>
      simp

/-- (Implementation detail)

The equivalence, ignoring the algebra structure, `(A ⊗[R] R[X]) ≃ A[X]`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant299800de42ea932530de3174d283ac26bb53f4b9668cd37a67bf840481aa8f02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant299800de42ea932530de3174d283ac26bb53f4b9668cd37a67bf840481aa8f02.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce5f1ce9aa8905348f5ff07c15ff90b695e5ef3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
