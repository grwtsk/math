# supported_record_inverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae096b0fb3e0262c8f6d3988c505a2b58431dc26",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Fixtures/records/evidence/c2-inverse/ValueInverse-v2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c196c00e-61a9-2e92-79e8-a498336dc4dd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c0a8286f-cc85-b381-7e65-2209010e2508",
  "kind": "theorem",
  "lexical_name": "supported_record_inverse",
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
  "slug": "supported-record-inverse--d89eeae1b4dfcc674510f54c",
  "source": {
    "blob": "ae096b0fb3e0262c8f6d3988c505a2b58431dc26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 54,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ValueInverseV2/Variant3426b3c0b52416598c70dec9ffec9355d6db0d113fa57c063d392e5456571e96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d89eeae1b4dfcc674510f54cc358a09b0c158fbe2c8df1a7a91e04a4e8c34190",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ValueInverseV2/Variant3426b3c0b52416598c70dec9ffec9355d6db0d113fa57c063d392e5456571e96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0a8286f-cc85-b381-7e65-2209010e2508`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem supported_record_inverse (r : Record) (h : Supported r) :
    decode (bytes r) = some r := by
  have hp := parse_value_suffix 33 (envelope r) 0 [] h.2.1 (by omega)
  simp only [List.append_nil] at hp
  have hs : ¬ (bytes r).length > 16384 := Nat.not_lt.mpr h.2.2
  have hm : (bytes r).take 5 = "GKC1\n".toList := by simp [bytes]
  have hd : (bytes r).drop 5 = emit (envelope r) := by simp [bytes]
  simp only [decode, hs, hm, hd, hp]
  simp [envelope, h.1, h.2.1]

#print axioms valueOK_depth_le
#print axioms parse_value_suffix
#print axioms supported_record_inverse
end C2
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ValueInverseV2/Variant3426b3c0b52416598c70dec9ffec9355d6db0d113fa57c063d392e5456571e96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ValueInverseV2/Variant3426b3c0b52416598c70dec9ffec9355d6db0d113fa57c063d392e5456571e96.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae096b0fb3e0262c8f6d3988c505a2b58431dc26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
