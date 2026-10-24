# le_leftLim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d6eb9ab16b5fe09600feb6b7f40a646c52714eff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 313,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ce6ac2b3-97d3-b24d-eabb-3f455f330f38",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eed4879b-44fc-b1bb-7cd2-b13065e9dafb",
  "kind": "theorem",
  "lexical_name": "le_leftLim",
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
  "slug": "le-leftlim--f94d81d043af0cf36a97962c",
  "source": {
    "blob": "d6eb9ab16b5fe09600feb6b7f40a646c52714eff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 313,
    "path": "GRWTSK/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f94d81d043af0cf36a97962c05f5150098c3fa057def7333f6bf753e8dc34629",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eed4879b-44fc-b1bb-7cd2-b13065e9dafb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_leftLim (h : x ≤ y) : f y ≤ leftLim f x :=
  hf.dual_right.leftLim_le h
#align antitone.le_left_lim Antitone.le_leftLim

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6eb9ab16b5fe09600feb6b7f40a646c52714eff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
