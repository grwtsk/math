# apply_idempotent_of_merge_replay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "96dfa38d3735f5cec2a49ed03cd91abe9000a529",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 454,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b254fa494b16f74e234aebabb23d3ec748d232f0781fec10008e0d4e54cfdf84.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:72c88086-6bdb-1127-121b-9f16b6ceeab2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:54243eb4-9131-30ce-fa8f-034707c95a50",
  "kind": "theorem",
  "lexical_name": "apply_idempotent_of_merge_replay",
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
  "slug": "apply-idempotent-of-merge-replay--6a2636cb96532b1dbb41f2f4",
  "source": {
    "blob": "96dfa38d3735f5cec2a49ed03cd91abe9000a529",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 477,
    "line": 454,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variantb254fa494b16f74e234aebabb23d3ec748d232f0781fec10008e0d4e54cfdf84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a2636cb96532b1dbb41f2f4fb4a1220ba31d25f74589a681094e994e4792e4d",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variantb254fa494b16f74e234aebabb23d3ec748d232f0781fec10008e0d4e54cfdf84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54243eb4-9131-30ce-fa8f-034707c95a50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 454–477.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem apply_idempotent_of_merge_replay
    {format : FixedFormat}
    (register : LwwRegister format)
    (incoming current : RevisionedXYZ format)
    (classified : merge register incoming = .replay current) :
    LwwRegister.apply register incoming = register := by
  cases register with
  | mk current? =>
      cases current? with
      | none => simp [merge] at classified
      | some existing =>
          by_cases stale : incoming.revision < existing.revision
          · simp [merge, stale] at classified
          · by_cases sameRevision : incoming.revision = existing.revision
            · by_cases sameValue : incoming.value = existing.value
              · have existingEq : existing = current := by
                  simpa [merge, stale, sameRevision, sameValue] using classified
                subst current
                simp [LwwRegister.apply, merge, sameRevision, sameValue,
                  MergeDecision.result]
              · simp [merge, sameRevision, sameValue] at classified
            · simp [merge, stale, sameRevision] at classified

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variantb254fa494b16f74e234aebabb23d3ec748d232f0781fec10008e0d4e54cfdf84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variantb254fa494b16f74e234aebabb23d3ec748d232f0781fec10008e0d4e54cfdf84.lean#L454).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96dfa38d3735f5cec2a49ed03cd91abe9000a529` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
