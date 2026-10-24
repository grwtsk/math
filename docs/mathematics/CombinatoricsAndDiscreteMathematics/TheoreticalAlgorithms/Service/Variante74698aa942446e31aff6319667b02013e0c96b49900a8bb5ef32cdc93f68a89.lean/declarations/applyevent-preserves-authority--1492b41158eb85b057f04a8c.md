# applyEvent_preserves_authority

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "20b90a22fc318e258dc882d05044b5c7180718b0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 646,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e74698aa942446e31aff6319667b02013e0c96b49900a8bb5ef32cdc93f68a89.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ebb6474e-dac3-0154-2a93-30e4180fa7f1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d85958fa-9a20-32d8-e52a-0add75a59cac",
  "kind": "theorem",
  "lexical_name": "applyEvent_preserves_authority",
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
  "slug": "applyevent-preserves-authority--1492b41158eb85b057f04a8c",
  "source": {
    "blob": "20b90a22fc318e258dc882d05044b5c7180718b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 658,
    "line": 646,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Service/Variante74698aa942446e31aff6319667b02013e0c96b49900a8bb5ef32cdc93f68a89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1492b41158eb85b057f04a8c88acde2f31d01dc98e634d6e5fb6fb1a0cab70d6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Service/Variante74698aa942446e31aff6319667b02013e0c96b49900a8bb5ef32cdc93f68a89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d85958fa-9a20-32d8-e52a-0add75a59cac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 646–658.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem applyEvent_preserves_authority
    (state : ServiceState)
    (event : EventPacket) :
    (applyEventState state event).authority = state.authority := by
  by_cases fresh : event.snapshot = state.active
  · by_cases seen : event.eventId ∈ state.seenEvents
    · simp [applyEventState, applyEvent, fresh, seen]
    · by_cases conditionTrue : event.condition = true
      · simp [applyEventState, applyEvent, fresh, seen, conditionTrue]
      · simp [applyEventState, applyEvent, fresh, seen, conditionTrue]
  · simp [applyEventState, applyEvent, fresh]

/-- Re-delivery has no further effect, regardless of the first disposition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Service/Variante74698aa942446e31aff6319667b02013e0c96b49900a8bb5ef32cdc93f68a89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Service/Variante74698aa942446e31aff6319667b02013e0c96b49900a8bb5ef32cdc93f68a89.lean#L646).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20b90a22fc318e258dc882d05044b5c7180718b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
