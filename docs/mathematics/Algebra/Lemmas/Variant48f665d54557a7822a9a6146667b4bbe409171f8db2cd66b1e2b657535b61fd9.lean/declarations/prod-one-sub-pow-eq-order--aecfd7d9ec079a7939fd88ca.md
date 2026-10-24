# prod_one_sub_pow_eq_order

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8be8a8878fde7a76a71914205a7f72599f39227a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 29,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/48f665d54557a7822a9a6146667b4bbe409171f8db2cd66b1e2b657535b61fd9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fd6e099f-aeee-4683-961c-dd14ddd78859",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:38ff9506-9b79-2585-7d10-de827ad15069",
  "kind": "lemma",
  "lexical_name": "prod_one_sub_pow_eq_order",
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
  "slug": "prod-one-sub-pow-eq-order--aecfd7d9ec079a7939fd88ca",
  "source": {
    "blob": "8be8a8878fde7a76a71914205a7f72599f39227a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 29,
    "path": "GRWTSK/Algebra/Lemmas/Variant48f665d54557a7822a9a6146667b4bbe409171f8db2cd66b1e2b657535b61fd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aecfd7d9ec079a7939fd88ca2fd136e372ce27960aa4b32cb321cf578f692779",
  "verification": {
    "reference": "docs/verification/Algebra/Lemmas/Variant48f665d54557a7822a9a6146667b4bbe409171f8db2cd66b1e2b657535b61fd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38ff9506-9b79-2585-7d10-de827ad15069`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma prod_one_sub_pow_eq_order {n : ℕ} {μ : R} (hμ : IsPrimitiveRoot μ (n + 1)) :
    ∏ k ∈ range n, (1 - μ ^ (k + 1)) = n + 1 := by
  have := X_pow_sub_C_eq_prod hμ n.zero_lt_succ (one_pow (n + 1))
  rw [C_1, ← mul_geom_sum, prod_range_succ', pow_zero, mul_one, mul_comm, eq_comm] at this
  replace this := mul_right_cancel₀ (Polynomial.X_sub_C_ne_zero 1) this
  apply_fun Polynomial.eval 1 at this
  simpa only [mul_one, map_pow, eval_prod, eval_sub, eval_X, eval_pow, eval_C, eval_geom_sum,
    one_pow, sum_const, card_range, nsmul_eq_mul, Nat.cast_add, Nat.cast_one] using this

/-- If `μ` is a primitive `n`th root of unity in `R`, then `(-1)^(n-1) * ∏(1≤k<n) (μ^k-1) = n`.
(Stated with `n+1` in place of `n` to avoid the condition `n ≠ 0`.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Lemmas/Variant48f665d54557a7822a9a6146667b4bbe409171f8db2cd66b1e2b657535b61fd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Lemmas/Variant48f665d54557a7822a9a6146667b4bbe409171f8db2cd66b1e2b657535b61fd9.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8be8a8878fde7a76a71914205a7f72599f39227a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
