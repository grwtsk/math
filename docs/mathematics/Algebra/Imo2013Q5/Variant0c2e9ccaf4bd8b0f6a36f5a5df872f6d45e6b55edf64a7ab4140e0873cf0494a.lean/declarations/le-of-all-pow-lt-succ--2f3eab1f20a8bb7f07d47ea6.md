# le_of_all_pow_lt_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "668711c3df3cf32942ddf42e4bc11f42f1a59de8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 39,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0c2e9ccaf4bd8b0f6a36f5a5df872f6d45e6b55edf64a7ab4140e0873cf0494a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:24830f58-1865-56b1-9c93-1d50aa8a91a4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3cbeef87-1feb-04b5-6927-b730c53004f5",
  "kind": "theorem",
  "lexical_name": "le_of_all_pow_lt_succ",
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
  "slug": "le-of-all-pow-lt-succ--2f3eab1f20a8bb7f07d47ea6",
  "source": {
    "blob": "668711c3df3cf32942ddf42e4bc11f42f1a59de8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 39,
    "path": "GRWTSK/Algebra/Imo2013Q5/Variant0c2e9ccaf4bd8b0f6a36f5a5df872f6d45e6b55edf64a7ab4140e0873cf0494a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f3eab1f20a8bb7f07d47ea665fd915c9a3727a62f28f4b4399df4ef674780a9",
  "verification": {
    "reference": "docs/verification/Algebra/Imo2013Q5/Variant0c2e9ccaf4bd8b0f6a36f5a5df872f6d45e6b55edf64a7ab4140e0873cf0494a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3cbeef87-1feb-04b5-6927-b730c53004f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_of_all_pow_lt_succ {x y : ℝ} (hx : 1 < x) (hy : 1 < y)
    (h : ∀ n : ℕ, 0 < n → x ^ n - 1 < y ^ n) : x ≤ y := by
  by_contra' hxy
  have hxmy : 0 < x - y := sub_pos.mpr hxy
  have hn : ∀ n : ℕ, 0 < n → (x - y) * (n : ℝ) ≤ x ^ n - y ^ n := by
    intro n _
    have hterm : ∀ i : ℕ, i ∈ Finset.range n → 1 ≤ x ^ i * y ^ (n - 1 - i)
    · intro i _
      calc
        1 ≤ x ^ i := one_le_pow_of_one_le hx.le i
        _ = x ^ i * 1 := by ring
        _ ≤ x ^ i * y ^ (n - 1 - i) := by gcongr; apply one_le_pow_of_one_le hy.le
    calc
      (x - y) * (n : ℝ) = (n : ℝ) * (x - y) := by ring
      _ = (∑ _i : ℕ in Finset.range n, (1 : ℝ)) * (x - y) := by
        simp only [mul_one, Finset.sum_const, nsmul_eq_mul, Finset.card_range]
      _ ≤ (∑ i : ℕ in Finset.range n, x ^ i * y ^ (n - 1 - i)) * (x - y) := by
        gcongr with i hi; apply hterm i hi
      _ = x ^ n - y ^ n := geom_sum₂_mul x y n
  -- Choose n larger than 1 / (x - y).
  obtain ⟨N, hN⟩ := exists_nat_gt (1 / (x - y))
  have hNp : 0 < N := by exact_mod_cast (one_div_pos.mpr hxmy).trans hN
  have :=
    calc
      1 = (x - y) * (1 / (x - y)) := by field_simp
      _ < (x - y) * N := by gcongr
      _ ≤ x ^ N - y ^ N := hn N hNp
  linarith [h N hNp]
#align imo2013_q5.le_of_all_pow_lt_succ Imo2013Q5.le_of_all_pow_lt_succ

/-- Like `le_of_all_pow_lt_succ`, but with a weaker assumption for y.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Imo2013Q5/Variant0c2e9ccaf4bd8b0f6a36f5a5df872f6d45e6b55edf64a7ab4140e0873cf0494a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Imo2013Q5/Variant0c2e9ccaf4bd8b0f6a36f5a5df872f6d45e6b55edf64a7ab4140e0873cf0494a.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `668711c3df3cf32942ddf42e4bc11f42f1a59de8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
