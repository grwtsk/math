# ncard_isObtainable_le_fourteen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8fb2a8108e500b9d2d6e5afb6ffde3a31f09304c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 107,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7cb15c93cf99cef6cf3a94539d08607b68b97ad9b35808101b46c9518db8dd4e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fa0edfc2-6fd7-6583-3432-fc600fc9ea48",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1097a564-2c44-bcdb-805d-c4d64802e138",
  "kind": "theorem",
  "lexical_name": "ncard_isObtainable_le_fourteen",
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
  "slug": "ncard-isobtainable-le-fourteen--5c6a4e721681ede9f52c38a8",
  "source": {
    "blob": "8fb2a8108e500b9d2d6e5afb6ffde3a31f09304c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 107,
    "path": "GRWTSK/Topology/GeneralTopology/Kuratowski/Variant7cb15c93cf99cef6cf3a94539d08607b68b97ad9b35808101b46c9518db8dd4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c6a4e721681ede9f52c38a870490db407e322a8bdd48ef21d969760be669fb0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Kuratowski/Variant7cb15c93cf99cef6cf3a94539d08607b68b97ad9b35808101b46c9518db8dd4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1097a564-2c44-bcdb-805d-c4d64802e138`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ncard_isObtainable_le_fourteen (s : Set X) : {t | IsObtainable s t}.ncard ≤ 14 := by
  convert! Set.ncard_coe_finset _ ▸ (theFourteen s).toFinset_card_le
  simp [Set.ext_iff, mem_theFourteen_iff_isObtainable]

end Topology.ClosureCompl
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Kuratowski/Variant7cb15c93cf99cef6cf3a94539d08607b68b97ad9b35808101b46c9518db8dd4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Kuratowski/Variant7cb15c93cf99cef6cf3a94539d08607b68b97ad9b35808101b46c9518db8dd4e.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fb2a8108e500b9d2d6e5afb6ffde3a31f09304c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
