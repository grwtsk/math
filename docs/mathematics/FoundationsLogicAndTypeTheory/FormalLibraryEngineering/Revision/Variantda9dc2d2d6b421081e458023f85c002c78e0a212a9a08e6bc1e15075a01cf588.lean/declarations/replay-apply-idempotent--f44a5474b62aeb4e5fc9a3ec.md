# replay_apply_idempotent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "07352728d5152195eb2383dd23163777f053ee9c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 158,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/da9dc2d2d6b421081e458023f85c002c78e0a212a9a08e6bc1e15075a01cf588.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0d810612-ae5e-62cf-ed34-9bfaf4744e37",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:76755324-167c-3716-e2c0-77caebdc561f",
  "kind": "theorem",
  "lexical_name": "replay_apply_idempotent",
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
  "slug": "replay-apply-idempotent--f44a5474b62aeb4e5fc9a3ec",
  "source": {
    "blob": "07352728d5152195eb2383dd23163777f053ee9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 158,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantda9dc2d2d6b421081e458023f85c002c78e0a212a9a08e6bc1e15075a01cf588.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f44a5474b62aeb4e5fc9a3ecc1af98f222459a16bd4f0ff65ebc6b9127fb0435",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantda9dc2d2d6b421081e458023f85c002c78e0a212a9a08e6bc1e15075a01cf588.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76755324-167c-3716-e2c0-77caebdc561f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem replay_apply_idempotent
    {Payload : Type*} [DecidableEq Payload]
    (register : LwwRegister Payload)
    (incoming current : Revisioned Payload)
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

end Surface.Core.Transport
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantda9dc2d2d6b421081e458023f85c002c78e0a212a9a08e6bc1e15075a01cf588.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantda9dc2d2d6b421081e458023f85c002c78e0a212a9a08e6bc1e15075a01cf588.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07352728d5152195eb2383dd23163777f053ee9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
