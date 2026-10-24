# size_eq_bits_len

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b0c36fc9c530774013bb16b1c48895e4c34b663a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6e8f4fe631db3d2ded27c60367fe3bcfc1f3c0e95dd31f228166e1015155f02b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2f44f119-9e57-2683-1303-012f28010efa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bca501cf-b565-446c-39d5-e231bbff5bee",
  "kind": "theorem",
  "lexical_name": "size_eq_bits_len",
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
  "slug": "size-eq-bits-len--d88aea1e57d512f23555fc67",
  "source": {
    "blob": "b0c36fc9c530774013bb16b1c48895e4c34b663a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 125,
    "path": "GRWTSK/Algebra/GroupTheory/Size/Variant6e8f4fe631db3d2ded27c60367fe3bcfc1f3c0e95dd31f228166e1015155f02b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d88aea1e57d512f23555fc67422f0146b64b50affb25e0aa478d6af3641be7cb",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Size/Variant6e8f4fe631db3d2ded27c60367fe3bcfc1f3c0e95dd31f228166e1015155f02b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bca501cf-b565-446c-39d5-e231bbff5bee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem size_eq_bits_len (n : ℕ) : n.bits.length = n.size := by
  induction n using Nat.binaryRec' with
  | z => simp
  | f _ _ h ih =>
    rw [size_bit, bits_append_bit _ _ h]
    · simp [ih]
    · simpa [bit_eq_zero_iff]

end Nat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Size/Variant6e8f4fe631db3d2ded27c60367fe3bcfc1f3c0e95dd31f228166e1015155f02b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Size/Variant6e8f4fe631db3d2ded27c60367fe3bcfc1f3c0e95dd31f228166e1015155f02b.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0c36fc9c530774013bb16b1c48895e4c34b663a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
