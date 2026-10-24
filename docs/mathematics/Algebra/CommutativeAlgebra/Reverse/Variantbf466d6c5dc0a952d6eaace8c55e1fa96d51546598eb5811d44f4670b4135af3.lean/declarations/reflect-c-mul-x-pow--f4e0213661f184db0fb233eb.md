# reflect_C_mul_X_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b93c1279c6580109a0e439c9bd019e18f7b7cc04",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 147,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e90105e-0b37-7f49-88ed-07a6db194bcc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:328d280b-c546-7617-13ac-730431aced9f",
  "kind": "theorem",
  "lexical_name": "reflect_C_mul_X_pow",
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
  "slug": "reflect-c-mul-x-pow--f4e0213661f184db0fb233eb",
  "source": {
    "blob": "b93c1279c6580109a0e439c9bd019e18f7b7cc04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 147,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4e0213661f184db0fb233eb62d342c563720d94a1f33e32834c0e01e9fd9bf8",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:328d280b-c546-7617-13ac-730431aced9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reflect_C_mul_X_pow (N n : ℕ) {c : R} : reflect N (C c * X ^ n) = C c * X ^ revAt N n := by
  ext
  rw [reflect_C_mul, coeff_C_mul, coeff_C_mul, coeff_X_pow, coeff_reflect]
  split_ifs with h
  · rw [h, revAt_invol, coeff_X_pow_self]
  · rw [not_mem_support_iff.mp]
    intro a
    rw [← one_mul (X ^ n), ← C_1] at a
    apply h
    rw [← mem_support_C_mul_X_pow a, revAt_invol]
set_option linter.uppercaseLean3 false in
#align polynomial.reflect_C_mul_X_pow Polynomial.reflect_C_mul_X_pow

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b93c1279c6580109a0e439c9bd019e18f7b7cc04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
