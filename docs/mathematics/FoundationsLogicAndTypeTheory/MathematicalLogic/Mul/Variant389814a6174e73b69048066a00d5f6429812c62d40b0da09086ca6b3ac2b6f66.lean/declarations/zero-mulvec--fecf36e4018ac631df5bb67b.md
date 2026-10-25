# zero_mulVec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff91eb667e375c22bc6d8973fa706f9dd1f9d100",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 783,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/389814a6174e73b69048066a00d5f6429812c62d40b0da09086ca6b3ac2b6f66.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:92a940b7-9085-026c-7c46-86b86e8c1cde",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:43b0bf99-818a-b112-cf76-01248a721717",
  "kind": "theorem",
  "lexical_name": "zero_mulVec",
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
  "slug": "zero-mulvec--fecf36e4018ac631df5bb67b",
  "source": {
    "blob": "ff91eb667e375c22bc6d8973fa706f9dd1f9d100",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 787,
    "line": 783,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Mul/Variant389814a6174e73b69048066a00d5f6429812c62d40b0da09086ca6b3ac2b6f66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fecf36e4018ac631df5bb67bf3860dedc35c4e4415b2ab7c1d8341540a8b60c2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Mul/Variant389814a6174e73b69048066a00d5f6429812c62d40b0da09086ca6b3ac2b6f66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43b0bf99-818a-b112-cf76-01248a721717`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 783–787.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zero_mulVec [Fintype n] (v : n → α) : (0 : Matrix m n α) *ᵥ v = 0 := by
  ext
  simp [mulVec]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Mul/Variant389814a6174e73b69048066a00d5f6429812c62d40b0da09086ca6b3ac2b6f66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Mul/Variant389814a6174e73b69048066a00d5f6429812c62d40b0da09086ca6b3ac2b6f66.lean#L783).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff91eb667e375c22bc6d8973fa706f9dd1f9d100` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
