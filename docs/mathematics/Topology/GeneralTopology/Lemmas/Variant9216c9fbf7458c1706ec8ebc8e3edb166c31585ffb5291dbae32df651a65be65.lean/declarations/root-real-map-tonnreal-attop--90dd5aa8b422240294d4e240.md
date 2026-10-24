# _root_.Real.map_toNNReal_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cb9f494a189713f6ab0b83204ca28449f597315f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/92/9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:450b842a-8ea8-3a06-1998-180f3845d765",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:44acdf49-881c-7ed5-30c2-caa056ca0a0f",
  "kind": "theorem",
  "lexical_name": "_root_.Real.map_toNNReal_atTop",
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
  "slug": "root-real-map-tonnreal-attop--90dd5aa8b422240294d4e240",
  "source": {
    "blob": "cb9f494a189713f6ab0b83204ca28449f597315f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 90,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90dd5aa8b422240294d4e24066d69bb4ffafefce9e22bfb0c706ef9d7621a5bb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44acdf49-881c-7ed5-30c2-caa056ca0a0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Real.map_toNNReal_atTop : map Real.toNNReal atTop = atTop := by
  rw [← map_coe_atTop, Function.LeftInverse.filter_map @Real.toNNReal_coe]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb9f494a189713f6ab0b83204ca28449f597315f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
