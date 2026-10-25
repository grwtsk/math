# log_pow_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cb2bb551a46ab6f86a78bc828397a455ef766447",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 317,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/79/7990e6e80987dde2e0c79fbedd77521d1dba8b4285e06d20feb0d8ca96f62bd9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:499e648b-a8c0-0a8c-100f-0d66b55e5246",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1d4c45ae-a07b-71c4-2fdc-5f955f796792",
  "kind": "lemma",
  "lexical_name": "log_pow_left",
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
  "slug": "log-pow-left--1ec49d0acb3c397ded4de9ff",
  "source": {
    "blob": "cb2bb551a46ab6f86a78bc828397a455ef766447",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 317,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant7990e6e80987dde2e0c79fbedd77521d1dba8b4285e06d20feb0d8ca96f62bd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ec49d0acb3c397ded4de9ffe5c7d9b42209f0f5b022abb26506001871f4578a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant7990e6e80987dde2e0c79fbedd77521d1dba8b4285e06d20feb0d8ca96f62bd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d4c45ae-a07b-71c4-2fdc-5f955f796792`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma log_pow_left (b k n : ℕ) : log (b ^ k) n = log b n / k := by
  rcases eq_or_ne n 0 with rfl | hn
  · simp
  · rcases k.eq_zero_or_pos with rfl | hk
    · simp
    · rcases Nat.lt_or_ge 1 b with hb | hb
      · refine eq_of_forall_le_iff fun c ↦ ?_
        rw [le_log_iff_pow_le (Nat.one_lt_pow (Nat.ne_of_gt hk) hb) hn, Nat.le_div_iff_mul_le hk,
          le_log_iff_pow_le hb hn, Nat.pow_mul']
      · rw [log_of_left_le_one hb, Nat.zero_div, log_of_left_le_one]
        rwa [Nat.pow_le_one_iff (Nat.ne_of_gt hk)]

/-! ### Ceil logarithm -/


/-- `clog b n`, is the upper logarithm of natural number `n` in base `b`. It returns the smallest
`k : ℕ` such that `n ≤ b^k`, so if `b^k = n`, it returns exactly `k`. -/
@[pp_nodot]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant7990e6e80987dde2e0c79fbedd77521d1dba8b4285e06d20feb0d8ca96f62bd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant7990e6e80987dde2e0c79fbedd77521d1dba8b4285e06d20feb0d8ca96f62bd9.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb2bb551a46ab6f86a78bc828397a455ef766447` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
