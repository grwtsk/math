# le_of_all_pow_lt_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f55c4decc67bc79af6e5732c83fad0752627a7f7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 32,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7a3f124ab151ba7b72a234636a013efbac67d39e5137c76879e1a77f40f34801.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:30dbbcf5-466f-39ad-ca38-fc1a9a9c51b7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2d8d4f92-2207-8cfe-1bb9-d2da83bc018f",
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
  "slug": "le-of-all-pow-lt-succ--7cc491869916f2e3c0ceb8b8",
  "source": {
    "blob": "f55c4decc67bc79af6e5732c83fad0752627a7f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 32,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2013Q5/Variant7a3f124ab151ba7b72a234636a013efbac67d39e5137c76879e1a77f40f34801.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7cc491869916f2e3c0ceb8b810103aaacc6de9208ebb606996057d1e3ac49f83",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Imo2013Q5/Variant7a3f124ab151ba7b72a234636a013efbac67d39e5137c76879e1a77f40f34801.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d8d4f92-2207-8cfe-1bb9-d2da83bc018f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_of_all_pow_lt_succ {x y : ℝ} (hx : 1 < x) (hy : 1 < y)
    (h : ∀ n : ℕ, 0 < n → x ^ n - 1 < y ^ n) : x ≤ y := by
  by_contra! hxy
  have hxmy : 0 < x - y := sub_pos.mpr hxy
  have hn : ∀ n : ℕ, 0 < n → (x - y) * (n : ℝ) ≤ x ^ n - y ^ n := by
    intro n _
    have hterm : ∀ i : ℕ, i ∈ Finset.range n → 1 ≤ x ^ i * y ^ (n - 1 - i) := by
      intro i _
      calc
        1 ≤ x ^ i := one_le_pow₀ hx.le
        _ = x ^ i * 1 := by ring
        _ ≤ x ^ i * y ^ (n - 1 - i) := by gcongr; apply one_le_pow₀ hy.le
    calc
      (x - y) * (n : ℝ) = (n : ℝ) * (x - y) := by ring
      _ = (∑ _i ∈ Finset.range n, (1 : ℝ)) * (x - y) := by
        simp only [mul_one, Finset.sum_const, nsmul_eq_mul, Finset.card_range]
      _ ≤ (∑ i ∈ Finset.range n, x ^ i * y ^ (n - 1 - i)) * (x - y) := by
        gcongr with i hi; apply hterm i hi
      _ = x ^ n - y ^ n := geom_sum₂_mul x y n
  -- Choose n larger than 1 / (x - y).
  obtain ⟨N, hN⟩ := exists_nat_gt (1 / (x - y))
  have hNp : 0 < N := mod_cast (one_div_pos.mpr hxmy).trans hN
  have :=
    calc
      1 = (x - y) * (1 / (x - y)) := by field_simp
      _ < (x - y) * N := by gcongr
      _ ≤ x ^ N - y ^ N := hn N hNp
  linarith [h N hNp]

/-- Like `le_of_all_pow_lt_succ`, but with a weaker assumption for `y`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Imo2013Q5/Variant7a3f124ab151ba7b72a234636a013efbac67d39e5137c76879e1a77f40f34801.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2013Q5/Variant7a3f124ab151ba7b72a234636a013efbac67d39e5137c76879e1a77f40f34801.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f55c4decc67bc79af6e5732c83fad0752627a7f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
