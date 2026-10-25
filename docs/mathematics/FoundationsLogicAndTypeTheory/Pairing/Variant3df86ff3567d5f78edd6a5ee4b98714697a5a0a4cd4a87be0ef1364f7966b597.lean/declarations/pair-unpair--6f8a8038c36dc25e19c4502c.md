# pair_unpair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ed3fe35a526b0cd3630d2f755c4cd0434a1c81fc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3df86ff3567d5f78edd6a5ee4b98714697a5a0a4cd4a87be0ef1364f7966b597.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:79506905-fe05-5752-0d9c-09c308403746",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0d7fa8a3-2119-90e1-5ed6-aa2dabbf1f0d",
  "kind": "theorem",
  "lexical_name": "pair_unpair",
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
  "slug": "pair-unpair--6f8a8038c36dc25e19c4502c",
  "source": {
    "blob": "ed3fe35a526b0cd3630d2f755c4cd0434a1c81fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 44,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Pairing/Variant3df86ff3567d5f78edd6a5ee4b98714697a5a0a4cd4a87be0ef1364f7966b597.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f8a8038c36dc25e19c4502c57015051d8d3346c14430bfc413ccd6ac9350ced",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Pairing/Variant3df86ff3567d5f78edd6a5ee4b98714697a5a0a4cd4a87be0ef1364f7966b597.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d7fa8a3-2119-90e1-5ed6-aa2dabbf1f0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pair_unpair (n : ℕ) : pair (unpair n).1 (unpair n).2 = n := by
  dsimp only [unpair]; let s := sqrt n
  have sm : s * s + (n - s * s) = n := Nat.add_sub_cancel' (sqrt_le _)
  split_ifs with h
  · simp [s, pair, h, sm]
  · have hl : n - s * s - s ≤ s := Nat.sub_le_iff_le_add.2
      (Nat.sub_le_iff_le_add'.2 <| by rw [← Nat.add_assoc]; apply sqrt_le_add)
    simp [s, pair, hl.not_lt, Nat.add_assoc, Nat.add_sub_cancel' (le_of_not_gt h), sm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Pairing/Variant3df86ff3567d5f78edd6a5ee4b98714697a5a0a4cd4a87be0ef1364f7966b597.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Pairing/Variant3df86ff3567d5f78edd6a5ee4b98714697a5a0a4cd4a87be0ef1364f7966b597.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed3fe35a526b0cd3630d2f755c4cd0434a1c81fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
