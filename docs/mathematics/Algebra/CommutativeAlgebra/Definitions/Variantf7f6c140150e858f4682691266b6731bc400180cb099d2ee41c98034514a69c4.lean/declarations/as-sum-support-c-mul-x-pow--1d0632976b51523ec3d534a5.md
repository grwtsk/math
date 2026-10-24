# as_sum_support_C_mul_X_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:98f3da16-15ed-3f92-e9f2-09f47460f634",
  "kind": "theorem",
  "lexical_name": "as_sum_support_C_mul_X_pow",
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
  "slug": "as-sum-support-c-mul-x-pow--1d0632976b51523ec3d534a5",
  "source": {
    "blob": "6c32330a119f10549496a3f07dc357aff475b9d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 402,
    "line": 396,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Definitions/Variantf7f6c140150e858f4682691266b6731bc400180cb099d2ee41c98034514a69c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d0632976b51523ec3d534a58809ffd85d50741b45ae432f2b9771b54370aa44",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Definitions/Variantf7f6c140150e858f4682691266b6731bc400180cb099d2ee41c98034514a69c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98f3da16-15ed-3f92-e9f2-09f47460f634`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 396–402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem as_sum_support_C_mul_X_pow (p : R[X]) : p = ∑ i in p.support, C (p.coeff i) * X ^ i :=
  _root_.trans p.as_sum_support <| by simp only [C_mul_X_pow_eq_monomial]
#align polynomial.as_sum_support_C_mul_X_pow Polynomial.as_sum_support_C_mul_X_pow

/-- We can reexpress a sum over `p.support` as a sum over `range n`,
for any `n` satisfying `p.natDegree < n`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Definitions/Variantf7f6c140150e858f4682691266b6731bc400180cb099d2ee41c98034514a69c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Definitions/Variantf7f6c140150e858f4682691266b6731bc400180cb099d2ee41c98034514a69c4.lean#L396).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c32330a119f10549496a3f07dc357aff475b9d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
