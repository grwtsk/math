# ediv_ediv_eq_ediv_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3600ee786c12fccf78c964d3c3fb33806aefb82b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 25,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/db280442789231abba87ddd0007d80e4500f1698a82689216132de47d103c9b6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:56b0f801-3331-4f96-0cc4-53ec6dd35ef3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:10e0a0ac-34be-d408-a754-d3ea7b653a6e",
  "kind": "theorem",
  "lexical_name": "ediv_ediv_eq_ediv_mul",
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
  "slug": "ediv-ediv-eq-ediv-mul--de4bd692322abe88e26ae5b7",
  "source": {
    "blob": "3600ee786c12fccf78c964d3c3fb33806aefb82b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/DivMod/Variantdb280442789231abba87ddd0007d80e4500f1698a82689216132de47d103c9b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de4bd692322abe88e26ae5b73b4da697edfb6908a287c0ab76a641c40d89e2fb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/DivMod/Variantdb280442789231abba87ddd0007d80e4500f1698a82689216132de47d103c9b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10e0a0ac-34be-d408-a754-d3ea7b653a6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ediv_ediv_eq_ediv_mul (m : Int) {n k : Int} (hn : 0 ≤ n) :
    m / n / k = m / (n * k) := by
  have {k : Int} (hk : 0 < k) : m / n / k = m / (n * k) := by
    obtain rfl | hn' : n = 0 ∨ 0 < n := by omega
    · simp
    · apply Int.le_antisymm
      · apply Int.le_ediv_of_mul_le (Int.mul_pos hn' hk)
        calc
          m / n / k * (n * k) = m / n / k * k * n := by ac_rfl
          _ ≤ m / n * n :=
            Int.mul_le_mul_of_nonneg_right (Int.ediv_mul_le (m / n) (Int.ne_of_gt hk)) hn
          _ ≤ m :=
            Int.ediv_mul_le m (Int.ne_of_gt hn')
      · apply Int.le_ediv_of_mul_le hk
        rw [← Int.mul_ediv_mul_of_pos_left m n hk, Int.mul_comm m k, Int.mul_comm (_ / _) k]
        apply Int.mul_ediv_le_mul_ediv_assoc
        · exact Int.le_of_lt hk
        · exact Int.le_of_lt <| Int.mul_pos hn' hk
  · rcases Int.lt_trichotomy 0 k with hk | rfl | hk
    · exact this hk
    · simp
    · rw [← Int.neg_neg (m / n / k), ← Int.ediv_neg, this (Int.neg_pos_of_neg hk), ← Int.ediv_neg,
        Int.mul_neg, Int.neg_neg]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/DivMod/Variantdb280442789231abba87ddd0007d80e4500f1698a82689216132de47d103c9b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/DivMod/Variantdb280442789231abba87ddd0007d80e4500f1698a82689216132de47d103c9b6.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3600ee786c12fccf78c964d3c3fb33806aefb82b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
