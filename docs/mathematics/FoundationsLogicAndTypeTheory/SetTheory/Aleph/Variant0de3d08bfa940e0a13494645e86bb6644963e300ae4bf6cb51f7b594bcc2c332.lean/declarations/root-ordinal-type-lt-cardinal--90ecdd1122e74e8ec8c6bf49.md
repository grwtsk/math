# _root_.Ordinal.type_lt_cardinal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "05905663d4fe71a45e13dbd78c68297e0dcda427",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 302,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0de3d08bfa940e0a13494645e86bb6644963e300ae4bf6cb51f7b594bcc2c332.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0b3e6d51-cf17-e224-8225-d7db9f162459",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:11d44765-0c6e-36d2-cfc7-e2b30b83d0b4",
  "kind": "theorem",
  "lexical_name": "_root_.Ordinal.type_lt_cardinal",
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
  "slug": "root-ordinal-type-lt-cardinal--90ecdd1122e74e8ec8c6bf49",
  "source": {
    "blob": "05905663d4fe71a45e13dbd78c68297e0dcda427",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 302,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Aleph/Variant0de3d08bfa940e0a13494645e86bb6644963e300ae4bf6cb51f7b594bcc2c332.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90ecdd1122e74e8ec8c6bf49074cb5651368d361d9b0a69f1f41e8ecdf725692",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Aleph/Variant0de3d08bfa940e0a13494645e86bb6644963e300ae4bf6cb51f7b594bcc2c332.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11d44765-0c6e-36d2-cfc7-e2b30b83d0b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Ordinal.type_lt_cardinal : typeLT Cardinal = Ordinal.univ.{u, u + 1} := by
  simpa using preAleph.symm.ordinalType_congr

@[deprecated (since := "2026-03-20")] alias type_cardinal := type_lt_cardinal

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Aleph/Variant0de3d08bfa940e0a13494645e86bb6644963e300ae4bf6cb51f7b594bcc2c332.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Aleph/Variant0de3d08bfa940e0a13494645e86bb6644963e300ae4bf6cb51f7b594bcc2c332.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05905663d4fe71a45e13dbd78c68297e0dcda427` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
