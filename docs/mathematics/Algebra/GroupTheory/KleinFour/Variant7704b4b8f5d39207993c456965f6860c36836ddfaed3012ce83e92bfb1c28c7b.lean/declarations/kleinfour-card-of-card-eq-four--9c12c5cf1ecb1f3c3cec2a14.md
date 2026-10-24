# kleinFour_card_of_card_eq_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7364c02d6a12bedd382ecd64b4ec98586263c328",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 156,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/7704b4b8f5d39207993c456965f6860c36836ddfaed3012ce83e92bfb1c28c7b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:136de3ed-f196-5db4-e5e6-32f3b7665339",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:36aeae7a-860c-5c6b-72c4-273b7358cece",
  "kind": "theorem",
  "lexical_name": "kleinFour_card_of_card_eq_four",
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
  "slug": "kleinfour-card-of-card-eq-four--9c12c5cf1ecb1f3c3cec2a14",
  "source": {
    "blob": "7364c02d6a12bedd382ecd64b4ec98586263c328",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 156,
    "path": "GRWTSK/Algebra/GroupTheory/KleinFour/Variant7704b4b8f5d39207993c456965f6860c36836ddfaed3012ce83e92bfb1c28c7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c12c5cf1ecb1f3c3cec2a140b96de166e5e418737bcf3b1c56ffe6eac674d0b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/KleinFour/Variant7704b4b8f5d39207993c456965f6860c36836ddfaed3012ce83e92bfb1c28c7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36aeae7a-860c-5c6b-72c4-273b7358cece`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kleinFour_card_of_card_eq_four (hα4 : Nat.card α = 4) :
    Nat.card (kleinFour α) = 4 := by
  obtain ⟨S : Sylow 2 (alternatingGroup α)⟩ := Sylow.nonempty (G := alternatingGroup α)
  rw [← two_sylow_eq_kleinFour_of_card_eq_four hα4 S, card_two_sylow_of_card_eq_four hα4 S]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/KleinFour/Variant7704b4b8f5d39207993c456965f6860c36836ddfaed3012ce83e92bfb1c28c7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/KleinFour/Variant7704b4b8f5d39207993c456965f6860c36836ddfaed3012ce83e92bfb1c28c7b.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7364c02d6a12bedd382ecd64b4ec98586263c328` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
