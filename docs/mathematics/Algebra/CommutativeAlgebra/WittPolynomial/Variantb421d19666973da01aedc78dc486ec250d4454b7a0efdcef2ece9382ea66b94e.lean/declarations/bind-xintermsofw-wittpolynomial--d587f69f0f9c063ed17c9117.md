# bind₁_xInTermsOfW_wittPolynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5f71011e1b8fe0b6d6daea881fdd2b091b0cea3a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 262,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b421d19666973da01aedc78dc486ec250d4454b7a0efdcef2ece9382ea66b94e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e46845e5-9594-bfdd-b9e8-898213da416f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e8d41b07-d1d2-e1c7-a6cd-65bd45a46932",
  "kind": "theorem",
  "lexical_name": "bind₁_xInTermsOfW_wittPolynomial",
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
  "slug": "bind-xintermsofw-wittpolynomial--d587f69f0f9c063ed17c9117",
  "source": {
    "blob": "5f71011e1b8fe0b6d6daea881fdd2b091b0cea3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 262,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/WittPolynomial/Variantb421d19666973da01aedc78dc486ec250d4454b7a0efdcef2ece9382ea66b94e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d587f69f0f9c063ed17c9117abf3795cfa872d7cf0ea0b7f12739b89b11f0c38",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/WittPolynomial/Variantb421d19666973da01aedc78dc486ec250d4454b7a0efdcef2ece9382ea66b94e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8d41b07-d1d2-e1c7-a6cd-65bd45a46932`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bind₁_xInTermsOfW_wittPolynomial [Invertible (p : R)] (k : ℕ) :
    bind₁ (xInTermsOfW p R) (W_ R k) = X k := by
  rw [wittPolynomial_eq_sum_C_mul_X_pow, map_sum]
  simp only [map_pow, map_mul, algHom_C, algebraMap_eq]
  rw [sum_range_succ_comm, tsub_self, pow_zero, pow_one, bind₁_X_right, mul_comm, ← C_pow,
    xInTermsOfW_aux]
  simp only [C_pow, bind₁_X_right, sub_add_cancel]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/WittPolynomial/Variantb421d19666973da01aedc78dc486ec250d4454b7a0efdcef2ece9382ea66b94e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/WittPolynomial/Variantb421d19666973da01aedc78dc486ec250d4454b7a0efdcef2ece9382ea66b94e.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f71011e1b8fe0b6d6daea881fdd2b091b0cea3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
