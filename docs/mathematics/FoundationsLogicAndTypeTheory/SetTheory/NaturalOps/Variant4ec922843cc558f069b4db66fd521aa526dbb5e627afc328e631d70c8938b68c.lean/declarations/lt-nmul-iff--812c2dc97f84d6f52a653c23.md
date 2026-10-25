# lt_nmul_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e2fbbd05b54fa0e0e9a7a97fe0586842c07d51e2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 540,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4ec922843cc558f069b4db66fd521aa526dbb5e627afc328e631d70c8938b68c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:20f552da-00eb-add3-1b02-ba98c83deacb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0b2e2306-2a7d-6ca9-0218-dcf9a6f2c1f0",
  "kind": "theorem",
  "lexical_name": "lt_nmul_iff",
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
  "slug": "lt-nmul-iff--812c2dc97f84d6f52a653c23",
  "source": {
    "blob": "e2fbbd05b54fa0e0e9a7a97fe0586842c07d51e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 548,
    "line": 540,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/NaturalOps/Variant4ec922843cc558f069b4db66fd521aa526dbb5e627afc328e631d70c8938b68c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:812c2dc97f84d6f52a653c2331dc67d8d17d87487546372e21d4050bf45d08c3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/NaturalOps/Variant4ec922843cc558f069b4db66fd521aa526dbb5e627afc328e631d70c8938b68c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b2e2306-2a7d-6ca9-0218-dcf9a6f2c1f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 540–548.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lt_nmul_iff : c < a ⨳ b ↔ ∃ a' < a, ∃ b' < b, c ♯ a' ⨳ b' ≤ a' ⨳ b ♯ a ⨳ b' := by
  refine' ⟨fun h => _, _⟩
  · rw [nmul] at h
    simpa using not_mem_of_lt_csInf h ⟨0, fun _ _ => bot_le⟩
  · rintro ⟨a', ha, b', hb, h⟩
    have := h.trans_lt (nmul_nadd_lt ha hb)
    rwa [nadd_lt_nadd_iff_right] at this
#align ordinal.lt_nmul_iff Ordinal.lt_nmul_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/NaturalOps/Variant4ec922843cc558f069b4db66fd521aa526dbb5e627afc328e631d70c8938b68c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/NaturalOps/Variant4ec922843cc558f069b4db66fd521aa526dbb5e627afc328e631d70c8938b68c.lean#L540).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2fbbd05b54fa0e0e9a7a97fe0586842c07d51e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
