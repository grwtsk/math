# continuousWithinAt_iff'_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15b292e6-d319-2cb9-45e7-891586719ac9",
  "kind": "theorem",
  "lexical_name": "continuousWithinAt_iff'_left",
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
  "slug": "continuouswithinat-iff-left--f38a79a106fa1475bb8df385",
  "source": {
    "blob": "e0505f4c40fa377aa97d85a26c412b9decac6dfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 951,
    "line": 948,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Basic/Variant7c6d3adbbbf1d053a7dcd18cf476897da55c0bce790ba9493caac16b9d82f5b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f38a79a106fa1475bb8df385e822a310251aa1fc24fb1f0c6f800b76732c6c05",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Basic/Variant7c6d3adbbbf1d053a7dcd18cf476897da55c0bce790ba9493caac16b9d82f5b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15b292e6-d319-2cb9-45e7-891586719ac9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 948–951.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousWithinAt_iff'_left [TopologicalSpace β] {f : β → α} {b : β} {s : Set β} :
    ContinuousWithinAt f s b ↔ Tendsto (fun x => (f x, f b)) (𝓝[s] b) (𝓤 α) := by
  rw [ContinuousWithinAt, tendsto_nhds_left]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Basic/Variant7c6d3adbbbf1d053a7dcd18cf476897da55c0bce790ba9493caac16b9d82f5b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Basic/Variant7c6d3adbbbf1d053a7dcd18cf476897da55c0bce790ba9493caac16b9d82f5b9.lean#L948).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0505f4c40fa377aa97d85a26c412b9decac6dfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
