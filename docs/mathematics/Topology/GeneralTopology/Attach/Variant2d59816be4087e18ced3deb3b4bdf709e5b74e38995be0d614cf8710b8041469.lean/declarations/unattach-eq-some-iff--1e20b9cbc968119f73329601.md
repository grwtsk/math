# unattach_eq_some_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d448370861dc4b5d4ce01482ea569f9c05663e26",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 348,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2d59816be4087e18ced3deb3b4bdf709e5b74e38995be0d614cf8710b8041469.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b0ec6de4-b3ba-6143-f913-b03a5793c4cb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ca680404-efd5-df1d-b05d-14332b3322c0",
  "kind": "theorem",
  "lexical_name": "unattach_eq_some_iff",
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
  "slug": "unattach-eq-some-iff--1e20b9cbc968119f73329601",
  "source": {
    "blob": "d448370861dc4b5d4ce01482ea569f9c05663e26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 354,
    "line": 348,
    "path": "GRWTSK/Topology/GeneralTopology/Attach/Variant2d59816be4087e18ced3deb3b4bdf709e5b74e38995be0d614cf8710b8041469.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e20b9cbc968119f73329601f7b856a75de4ba289a3534f690410fca0e71fd45",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attach/Variant2d59816be4087e18ced3deb3b4bdf709e5b74e38995be0d614cf8710b8041469.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca680404-efd5-df1d-b05d-14332b3322c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unattach_eq_some_iff {p : α → Prop} {o : Option { x // p x }} {x : α} :
    o.unattach = some x ↔ ∃ h, o = some ⟨x, h⟩ :=
  match o with
  | none => by simp
  | some ⟨y, h⟩ => by simpa using fun h' => h' ▸ h

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attach/Variant2d59816be4087e18ced3deb3b4bdf709e5b74e38995be0d614cf8710b8041469.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attach/Variant2d59816be4087e18ced3deb3b4bdf709e5b74e38995be0d614cf8710b8041469.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d448370861dc4b5d4ce01482ea569f9c05663e26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
