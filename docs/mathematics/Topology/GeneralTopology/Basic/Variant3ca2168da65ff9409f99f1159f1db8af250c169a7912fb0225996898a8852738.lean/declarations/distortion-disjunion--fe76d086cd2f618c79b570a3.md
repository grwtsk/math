# distortion_disjUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "502475e1069d68185b8cbc6864f656017fd924a6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 620,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3ca2168da65ff9409f99f1159f1db8af250c169a7912fb0225996898a8852738.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a968d611-2bc5-e4f6-74a5-6bcc0ebad562",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6e630f4f-8d09-9684-235a-adfb167460e9",
  "kind": "theorem",
  "lexical_name": "distortion_disjUnion",
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
  "slug": "distortion-disjunion--fe76d086cd2f618c79b570a3",
  "source": {
    "blob": "502475e1069d68185b8cbc6864f656017fd924a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 623,
    "line": 620,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant3ca2168da65ff9409f99f1159f1db8af250c169a7912fb0225996898a8852738.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe76d086cd2f618c79b570a3b3eec42966bd9479a338c6f3c9c8ca3f7ed2ff41",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant3ca2168da65ff9409f99f1159f1db8af250c169a7912fb0225996898a8852738.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e630f4f-8d09-9684-235a-adfb167460e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 620–623.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem distortion_disjUnion (h : Disjoint π₁.iUnion π₂.iUnion) :
    (π₁.disjUnion π₂ h).distortion = max π₁.distortion π₂.distortion := by
  classical exact sup_union

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant3ca2168da65ff9409f99f1159f1db8af250c169a7912fb0225996898a8852738.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant3ca2168da65ff9409f99f1159f1db8af250c169a7912fb0225996898a8852738.lean#L620).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `502475e1069d68185b8cbc6864f656017fd924a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
