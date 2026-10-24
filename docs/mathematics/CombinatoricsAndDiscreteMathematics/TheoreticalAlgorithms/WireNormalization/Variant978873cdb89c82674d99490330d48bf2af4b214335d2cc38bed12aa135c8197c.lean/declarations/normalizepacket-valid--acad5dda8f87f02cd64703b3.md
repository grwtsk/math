# normalizePacket_valid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d718ec94-9825-561a-1689-ee3141c458f5",
  "kind": "theorem",
  "lexical_name": "normalizePacket_valid",
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
  "slug": "normalizepacket-valid--acad5dda8f87f02cd64703b3",
  "source": {
    "blob": "1b6c7664d791efd334c0e449b0e34082c43369a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 118,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant978873cdb89c82674d99490330d48bf2af4b214335d2cc38bed12aa135c8197c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acad5dda8f87f02cd64703b3571d8d0372ab9d9e8c6911671817b6d1c9500be7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant978873cdb89c82674d99490330d48bf2af4b214335d2cc38bed12aa135c8197c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d718ec94-9825-561a-1689-ee3141c458f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizePacket_valid (checked : CheckedPacket) :
    PacketValid (normalizePacket checked) := by
  rcases checked.valid with ⟨source, context, typed, quota⟩
  refine ⟨source, context, ?_, ?_⟩
  · simpa only [normalizePacket, decode_encode] using
      tag_normalize_preserves_typing ⟨1⟩ checked.packet.payload.decode
        FullFixtures.snapshot checked.packet.contextSize typed
  · obtain ⟨n, trace, _⟩ := tag_normalize_spec ⟨1⟩ checked.packet.payload.decode
    have cost := tag_trace_size trace
    rw [nodeCost_eq_size] at quota
    simp only [normalizePacket, nodeCost_eq_size, decode_encode]
    omega

/-- Decoding binds the output to a reachable normal term and the actual trace budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant978873cdb89c82674d99490330d48bf2af4b214335d2cc38bed12aa135c8197c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant978873cdb89c82674d99490330d48bf2af4b214335d2cc38bed12aa135c8197c.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b6c7664d791efd334c0e449b0e34082c43369a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
