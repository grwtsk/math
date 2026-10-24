# storedBits_padding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b325db32-bad6-0b86-f859-3f4c6fe17e96",
  "kind": "theorem",
  "lexical_name": "storedBits_padding",
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
  "slug": "storedbits-padding--bc4676bcf3a6415d4419a890",
  "source": {
    "blob": "6ce93eb54d75e47938ee25c1f223326f14f68607",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 81,
    "path": "GRWTSK/InformationTheory/Huffman/Wire.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc4676bcf3a6415d4419a8905ea181a51eb9fe8bdd6ff290c62fab4f74e29308",
  "verification": {
    "reference": "docs/verification/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Wire.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b325db32-bad6-0b86-f859-3f4c6fe17e96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem storedBits_padding (bits : List Bool) :
    ∃ padding, padding < 8 ∧
      (pack bits).flatMap octetBits = bits ++ List.replicate padding false := by
  induction bits using pack.induct with
  | case1 => exact ⟨0, by decide, by simp [pack]⟩
  | case2 a => exact ⟨7, by decide, by simp [pack, octet_roundTrip]⟩
  | case3 a b => exact ⟨6, by decide, by simp [pack, octet_roundTrip]⟩
  | case4 a b c => exact ⟨5, by decide, by simp [pack, octet_roundTrip]⟩
  | case5 a b c d => exact ⟨4, by decide, by simp [pack, octet_roundTrip]⟩
  | case6 a b c d e => exact ⟨3, by decide, by simp [pack, octet_roundTrip]⟩
  | case7 a b c d e f => exact ⟨2, by decide, by simp [pack, octet_roundTrip]⟩
  | case8 a b c d e f g => exact ⟨1, by decide, by simp [pack, octet_roundTrip]⟩
  | case9 a b c d e f g h rest ih =>
    obtain ⟨padding, hp, he⟩ := ih
    exact ⟨padding, hp, by simp [pack, octet_roundTrip, he]⟩

/-- The stored byte count is ceil(bitCount/8), including empty streams. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Wire.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/InformationTheory/Huffman/Wire.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ce93eb54d75e47938ee25c1f223326f14f68607` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
