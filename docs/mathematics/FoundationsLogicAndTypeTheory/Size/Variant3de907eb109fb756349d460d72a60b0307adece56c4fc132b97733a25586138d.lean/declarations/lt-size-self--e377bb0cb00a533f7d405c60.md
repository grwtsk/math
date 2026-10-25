# lt_size_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "93c8a60ad350592f99db3fd497301db1548b550a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 117,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3de907eb109fb756349d460d72a60b0307adece56c4fc132b97733a25586138d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4b54db57-befd-96bc-a1d1-a0d61cb46e6b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:919a7c4f-5eba-5c72-e47c-1b5d2039d1d1",
  "kind": "theorem",
  "lexical_name": "lt_size_self",
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
  "slug": "lt-size-self--e377bb0cb00a533f7d405c60",
  "source": {
    "blob": "93c8a60ad350592f99db3fd497301db1548b550a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 117,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Size/Variant3de907eb109fb756349d460d72a60b0307adece56c4fc132b97733a25586138d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e377bb0cb00a533f7d405c6016702a8cf6c47aed6c3a80622963c88ec3cffe42",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Size/Variant3de907eb109fb756349d460d72a60b0307adece56c4fc132b97733a25586138d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:919a7c4f-5eba-5c72-e47c-1b5d2039d1d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lt_size_self (n : ℕ) : n < 2 ^ size n := by
  rw [← one_shiftLeft]
  have : ∀ {n}, n = 0 → n < 1 <<< (size n) := by simp
  apply binaryRec _ _ n
  · apply this rfl
  intro b n IH
  by_cases h : bit b n = 0
  · apply this h
  rw [size_bit h, shiftLeft_succ, shiftLeft_eq, one_mul, ← bit0_val]
  exact bit_lt_bit0 _ (by simpa [shiftRight_eq_div_pow] using IH)
#align nat.lt_size_self Nat.lt_size_self

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Size/Variant3de907eb109fb756349d460d72a60b0307adece56c4fc132b97733a25586138d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Size/Variant3de907eb109fb756349d460d72a60b0307adece56c4fc132b97733a25586138d.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93c8a60ad350592f99db3fd497301db1548b550a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
