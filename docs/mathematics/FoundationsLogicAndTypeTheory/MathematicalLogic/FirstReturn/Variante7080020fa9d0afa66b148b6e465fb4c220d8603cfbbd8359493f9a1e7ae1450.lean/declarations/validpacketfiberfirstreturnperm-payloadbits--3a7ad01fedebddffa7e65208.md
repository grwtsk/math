# validPacketFiberFirstReturnPerm_payloadBits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad796ab44fb858297745f8deb934446039205cdb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e7080020fa9d0afa66b148b6e465fb4c220d8603cfbbd8359493f9a1e7ae1450.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:98026be0-7c4a-c969-2418-276a6e60c2d1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f7b9db15-5787-9e44-954f-176534b0d4a6",
  "kind": "theorem",
  "lexical_name": "validPacketFiberFirstReturnPerm_payloadBits",
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
  "slug": "validpacketfiberfirstreturnperm-payloadbits--3a7ad01fedebddffa7e65208",
  "source": {
    "blob": "ad796ab44fb858297745f8deb934446039205cdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 106,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FirstReturn/Variante7080020fa9d0afa66b148b6e465fb4c220d8603cfbbd8359493f9a1e7ae1450.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a7ad01fedebddffa7e65208c5e1e5d526de9c0546cf0244b9d42f4cc7aec76d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FirstReturn/Variante7080020fa9d0afa66b148b6e465fb4c220d8603cfbbd8359493f9a1e7ae1450.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7b9db15-5787-9e44-954f-176534b0d4a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem validPacketFiberFirstReturnPerm_payloadBits
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (rowPerm : ∀ k, Equiv.Perm (Fin k → F))
    (k : Nat)
    (p : C.ValidPacketFiber k) :
    (validPacketFiberFirstReturnPerm C E rowPerm k p).1.1.payloadBits =
      p.1.1.payloadBits := by
  have hcode := congrArg
    (fun a : CodecValidAmbientType C E k => a.1.payloadBits.val)
    (validPacketFiberFirstReturnPerm_toAmbient C E rowPerm k p)
  have hreturn := congrArg Fin.val
    (ambientValidFirstReturnPerm_payloadBits C E rowPerm k
      (validPacketFiberEquivAmbientImage C E k p))
  exact hcode.trans hreturn

/-! ## Graded packet first return -/

/-- Fiberwise ambient-image codes assembled without changing the row grade. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FirstReturn/Variante7080020fa9d0afa66b148b6e465fb4c220d8603cfbbd8359493f9a1e7ae1450.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FirstReturn/Variante7080020fa9d0afa66b148b6e465fb4c220d8603cfbbd8359493f9a1e7ae1450.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad796ab44fb858297745f8deb934446039205cdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
