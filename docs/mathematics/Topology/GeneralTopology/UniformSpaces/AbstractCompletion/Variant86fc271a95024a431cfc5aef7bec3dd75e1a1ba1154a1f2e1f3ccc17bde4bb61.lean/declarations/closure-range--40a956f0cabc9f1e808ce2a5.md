# closure_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0cd1cc5fa209d5e22e9428ceb82432e859fcc359",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 91,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/86fc271a95024a431cfc5aef7bec3dd75e1a1ba1154a1f2e1f3ccc17bde4bb61.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cc2f998a-e1b3-5cf1-0c14-53ea4b17f311",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:936408c9-27ef-9e70-2048-831345f5e1c2",
  "kind": "theorem",
  "lexical_name": "closure_range",
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
  "slug": "closure-range--40a956f0cabc9f1e808ce2a5",
  "source": {
    "blob": "0cd1cc5fa209d5e22e9428ceb82432e859fcc359",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 91,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant86fc271a95024a431cfc5aef7bec3dd75e1a1ba1154a1f2e1f3ccc17bde4bb61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40a956f0cabc9f1e808ce2a514047924a27fd7d987b6202a0071eae15311502f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant86fc271a95024a431cfc5aef7bec3dd75e1a1ba1154a1f2e1f3ccc17bde4bb61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:936408c9-27ef-9e70-2048-831345f5e1c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closure_range : closure (range ι) = univ :=
  pkg.dense.closure_range

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant86fc271a95024a431cfc5aef7bec3dd75e1a1ba1154a1f2e1f3ccc17bde4bb61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant86fc271a95024a431cfc5aef7bec3dd75e1a1ba1154a1f2e1f3ccc17bde4bb61.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cd1cc5fa209d5e22e9428ceb82432e859fcc359` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
