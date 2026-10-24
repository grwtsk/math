# extend_preimage_mem_nhdsWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "09a353249074034587a21ea85ad54863903cab2a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 277,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2b/2b3d8a078e3788d20792e6ebc8001c3ab5d1b798e96671b76f46093fc0fbd940.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8689a33d-29ac-d342-b48f-8e700ad0c248",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:08114b6d-16e9-1194-79da-e2a1c00900f8",
  "kind": "theorem",
  "lexical_name": "extend_preimage_mem_nhdsWithin",
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
  "slug": "extend-preimage-mem-nhdswithin--98e726578a2f3f115e64c8e3",
  "source": {
    "blob": "09a353249074034587a21ea85ad54863903cab2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 277,
    "path": "GRWTSK/Topology/GeneralTopology/ExtChartAt/Variant2b3d8a078e3788d20792e6ebc8001c3ab5d1b798e96671b76f46093fc0fbd940.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98e726578a2f3f115e64c8e3215609df2443ccc35e2c0a9779d112de77955a95",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ExtChartAt/Variant2b3d8a078e3788d20792e6ebc8001c3ab5d1b798e96671b76f46093fc0fbd940.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08114b6d-16e9-1194-79da-e2a1c00900f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extend_preimage_mem_nhdsWithin {x : M} (h : x ∈ f.source) (ht : t ∈ 𝓝[s] x) :
    (f.extend I).symm ⁻¹' t ∈ 𝓝[(f.extend I).symm ⁻¹' s ∩ range I] f.extend I x := by
  rwa [← map_extend_symm_nhdsWithin f (I := I) h, mem_map] at ht

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ExtChartAt/Variant2b3d8a078e3788d20792e6ebc8001c3ab5d1b798e96671b76f46093fc0fbd940.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ExtChartAt/Variant2b3d8a078e3788d20792e6ebc8001c3ab5d1b798e96671b76f46093fc0fbd940.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09a353249074034587a21ea85ad54863903cab2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
