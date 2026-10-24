# support_binomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7abf6c75-dcb8-9a83-efa7-cdf644c4ef56",
  "kind": "theorem",
  "lexical_name": "support_binomial",
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
  "slug": "support-binomial--6ea25a85b9979b33b5eb1b35",
  "source": {
    "blob": "13b9666e4c3036fb88db8011afae7dda62ca792b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 200,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ea25a85b9979b33b5eb1b354ba38de144ef93432d1d6d3d87aa7bb791c98b16",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7abf6c75-dcb8-9a83-efa7-cdf644c4ef56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem support_binomial {k m : ℕ} (hkm : k ≠ m) {x y : R} (hx : x ≠ 0) (hy : y ≠ 0) :
    support (C x * X ^ k + C y * X ^ m) = {k, m} := by
  apply subset_antisymm (support_binomial' k m x y)
  simp_rw [insert_subset_iff, singleton_subset_iff, mem_support_iff, coeff_add, coeff_C_mul,
    coeff_X_pow_self, mul_one, coeff_X_pow, if_neg hkm, if_neg hkm.symm, mul_zero, zero_add,
    add_zero, Ne, hx, hy, not_false_eq_true, and_true]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13b9666e4c3036fb88db8011afae7dda62ca792b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
