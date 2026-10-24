# smeval_ascPochhammer_self_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29ea28732ccc71f8229cfeababdd5912fcb84610",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 294,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b7ae0a79-0223-bff3-eac8-dbc6363cbc99",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:51a10555-59b0-45a5-135f-145afb126368",
  "kind": "theorem",
  "lexical_name": "smeval_ascPochhammer_self_neg",
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
  "slug": "smeval-ascpochhammer-self-neg--4502095120d8fb14d655c248",
  "source": {
    "blob": "29ea28732ccc71f8229cfeababdd5912fcb84610",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 294,
    "path": "GRWTSK/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4502095120d8fb14d655c24804c85db9b608cf6e6f0ed13251ea844e97f52bd2",
  "verification": {
    "reference": "docs/verification/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51a10555-59b0-45a5-135f-145afb126368`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smeval_ascPochhammer_self_neg : ∀ n : ℕ,
    smeval (ascPochhammer ℕ n) (-n : ℤ) = (-1) ^ n * n.factorial
  | 0 => by
    rw [Nat.cast_zero, neg_zero, ascPochhammer_zero, Nat.factorial_zero, smeval_one, pow_zero,
      one_smul, pow_zero, Nat.cast_one, one_mul]
  | n + 1 => by
    rw [ascPochhammer_succ_left, smeval_X_mul, smeval_comp, smeval_add, smeval_X, smeval_one,
      pow_zero, pow_one, one_smul, Nat.cast_add, Nat.cast_one, neg_add_rev, neg_add_cancel_comm,
      smeval_ascPochhammer_self_neg n, ← mul_assoc, mul_comm _ ((-1) ^ n),
      show (-1 + -↑n = (-1 : ℤ) * (n + 1)) by lia, ← mul_assoc, pow_add, pow_one,
      Nat.factorial, Nat.cast_mul, ← mul_assoc, Nat.cast_succ]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29ea28732ccc71f8229cfeababdd5912fcb84610` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
