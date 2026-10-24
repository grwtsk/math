# preimage_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7c7e9c3c815eb873ab5e637aaac83e4cdf80f39d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 300,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4d27914014d20e4b9a6af97ebd7e7bea7451cc37a96dbd102b6d21c9a3f0eb72.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:981851d3-a3bf-3768-8e1e-d110cf9a72e7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:21767cbb-c3bd-76d1-d6fa-85334ca4fa60",
  "kind": "theorem",
  "lexical_name": "preimage_closure",
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
  "slug": "preimage-closure--73a254ca86ed6129802d95e7",
  "source": {
    "blob": "7c7e9c3c815eb873ab5e637aaac83e4cdf80f39d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 300,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variant4d27914014d20e4b9a6af97ebd7e7bea7451cc37a96dbd102b6d21c9a3f0eb72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73a254ca86ed6129802d95e777f79fa55c4abb33dbeed16b97cf1a58f83294fb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variant4d27914014d20e4b9a6af97ebd7e7bea7451cc37a96dbd102b6d21c9a3f0eb72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21767cbb-c3bd-76d1-d6fa-85334ca4fa60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preimage_closure (h : X ≃ₜ Y) (s : Set Y) : h ⁻¹' closure s = closure (h ⁻¹' s) :=
  h.isOpenMap.preimage_closure_eq_closure_preimage h.continuous _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variant4d27914014d20e4b9a6af97ebd7e7bea7451cc37a96dbd102b6d21c9a3f0eb72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variant4d27914014d20e4b9a6af97ebd7e7bea7451cc37a96dbd102b6d21c9a3f0eb72.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c7e9c3c815eb873ab5e637aaac83e4cdf80f39d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
