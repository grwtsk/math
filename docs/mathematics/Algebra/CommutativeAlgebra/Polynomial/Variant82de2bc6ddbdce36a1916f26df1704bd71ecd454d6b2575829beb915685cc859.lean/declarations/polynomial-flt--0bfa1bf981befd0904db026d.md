# Polynomial.flt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c6b2fc0e105304260d3da9f44b3fcb00473a3936",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 220,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/82de2bc6ddbdce36a1916f26df1704bd71ecd454d6b2575829beb915685cc859.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bd6b84a3-24f9-0297-614d-e3038489cba5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eb067e82-c75c-26eb-30f6-b148f8050db6",
  "kind": "theorem",
  "lexical_name": "Polynomial.flt",
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
  "slug": "polynomial-flt--0bfa1bf981befd0904db026d",
  "source": {
    "blob": "c6b2fc0e105304260d3da9f44b3fcb00473a3936",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 220,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant82de2bc6ddbdce36a1916f26df1704bd71ecd454d6b2575829beb915685cc859.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bfa1bf981befd0904db026d2b29fde2392b36318c159015574b8138a9d964d9",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Polynomial/Variant82de2bc6ddbdce36a1916f26df1704bd71ecd454d6b2575829beb915685cc859.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb067e82-c75c-26eb-30f6-b148f8050db6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Polynomial.flt
    {n : ℕ} (hn : 3 ≤ n) (chn : (n : k) ≠ 0)
    {a b c : k[X]} (ha : a ≠ 0) (hb : b ≠ 0) (hc : c ≠ 0)
    (hab : IsCoprime a b) (heq : a ^ n + b ^ n = c ^ n) :
    a.natDegree = 0 ∧ b.natDegree = 0 ∧ c.natDegree = 0 := by
  have hn' : 0 < n := by linarith
  rw [← sub_eq_zero, ← one_mul (a ^ n), ← one_mul (b ^ n), ← one_mul (c ^ n), sub_eq_add_neg,
    ← neg_mul] at heq
  have hone : (1 : k[X]) = C 1 := by rfl
  have hneg_one : (-1 : k[X]) = C (-1) := by simp only [map_neg, map_one]
  simp_rw [hneg_one, hone] at heq
  apply flt_catalan hn'.ne' hn'.ne' hn'.ne' _
    chn chn chn ha hb hc hab one_ne_zero one_ne_zero (neg_ne_zero.mpr one_ne_zero) heq
  have eq_lhs : n * n + n * n + n * n = 3 * n * n := by ring
  rw [eq_lhs, mul_assoc, mul_assoc]
  exact Nat.mul_le_mul_right (n * n) hn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Polynomial/Variant82de2bc6ddbdce36a1916f26df1704bd71ecd454d6b2575829beb915685cc859.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant82de2bc6ddbdce36a1916f26df1704bd71ecd454d6b2575829beb915685cc859.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6b2fc0e105304260d3da9f44b3fcb00473a3936` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
