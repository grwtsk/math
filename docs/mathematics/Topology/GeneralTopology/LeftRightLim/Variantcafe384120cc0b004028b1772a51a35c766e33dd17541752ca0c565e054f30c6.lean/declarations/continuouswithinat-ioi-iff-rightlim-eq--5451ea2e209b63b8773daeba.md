# continuousWithinAt_Ioi_iff_rightLim_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2d1bea120d4efa01b0c285f3b67aa379feff4cf3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 304,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/cafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3dd06dab-0101-24c1-4ff3-8b9c32aadf2f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ea4a7703-0aad-bf15-edb2-a1ccc36ddf9f",
  "kind": "theorem",
  "lexical_name": "continuousWithinAt_Ioi_iff_rightLim_eq",
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
  "slug": "continuouswithinat-ioi-iff-rightlim-eq--5451ea2e209b63b8773daeba",
  "source": {
    "blob": "2d1bea120d4efa01b0c285f3b67aa379feff4cf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 304,
    "path": "GRWTSK/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5451ea2e209b63b8773daebac05988df33f4ed25d9980e0511c37d1b529ac691",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea4a7703-0aad-bf15-edb2-a1ccc36ddf9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousWithinAt_Ioi_iff_rightLim_eq :
    ContinuousWithinAt f (Ioi x) x ↔ rightLim f x = f x :=
  hf.dual_right.continuousWithinAt_Ioi_iff_rightLim_eq

/-- An antitone function is continuous at a point if and only if its left and right limits
coincide. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d1bea120d4efa01b0c285f3b67aa379feff4cf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
