# le_of_all_pow_lt_succ'

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
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0c2e9ccaf4bd8b0f6a36f5a5df872f6d45e6b55edf64a7ab4140e0873cf0494a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:541be5de-de32-cfb6-77ca-cd06e6f1afe6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:24401764-1466-2c9d-9a32-c8d0e932ba20",
  "kind": "theorem",
  "lexical_name": "le_of_all_pow_lt_succ'",
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
  "slug": "le-of-all-pow-lt-succ--af434dacac8d7dbc2f8bdf9a",
  "source": {
    "blob": "668711c3df3cf32942ddf42e4bc11f42f1a59de8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 71,
    "path": "GRWTSK/Algebra/Imo2013Q5/Variant0c2e9ccaf4bd8b0f6a36f5a5df872f6d45e6b55edf64a7ab4140e0873cf0494a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af434dacac8d7dbc2f8bdf9a0f8059c98265bc9603b6fa77ab03ce7b6aeb14d1",
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

Occurrence: `result:24401764-1466-2c9d-9a32-c8d0e932ba20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_of_all_pow_lt_succ' {x y : ℝ} (hx : 1 < x) (hy : 0 < y)
    (h : ∀ n : ℕ, 0 < n → x ^ n - 1 < y ^ n) : x ≤ y := by
  refine' le_of_all_pow_lt_succ hx _ h
  by_contra' hy'' : y ≤ 1
  -- Then there exists y' such that 0 < y ≤ 1 < y' < x.
  let y' := (x + 1) / 2
  have h_y'_lt_x : y' < x :=
    calc
      (x + 1) / 2 < x * 2 / 2 := by linarith
      _ = x := by field_simp
  have h1_lt_y' : 1 < y' :=
    calc
      1 = 1 * 2 / 2 := by field_simp
      _ < (x + 1) / 2 := by linarith
  have h_y_lt_y' : y < y' := by linarith
  have hh : ∀ n, 0 < n → x ^ n - 1 < y' ^ n
  · intro n hn
    calc
      x ^ n - 1 < y ^ n := h n hn
      _ ≤ y' ^ n := by gcongr
  exact h_y'_lt_x.not_le (le_of_all_pow_lt_succ hx h1_lt_y' hh)
#align imo2013_q5.le_of_all_pow_lt_succ' Imo2013Q5.le_of_all_pow_lt_succ'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Imo2013Q5/Variant0c2e9ccaf4bd8b0f6a36f5a5df872f6d45e6b55edf64a7ab4140e0873cf0494a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Imo2013Q5/Variant0c2e9ccaf4bd8b0f6a36f5a5df872f6d45e6b55edf64a7ab4140e0873cf0494a.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `668711c3df3cf32942ddf42e4bc11f42f1a59de8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
