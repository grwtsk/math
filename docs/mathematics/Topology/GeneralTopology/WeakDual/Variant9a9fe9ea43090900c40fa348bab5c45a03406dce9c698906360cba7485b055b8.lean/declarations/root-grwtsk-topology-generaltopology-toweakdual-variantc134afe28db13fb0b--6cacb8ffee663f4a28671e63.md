# _root_.GRWTSK.Topology.GeneralTopology.ToWeakDual.Variantc134afe28db13fb0bfa849066c932d51279cb878f5dafc793ebd11c60081bcf6.NormedSpace.Dual.isClosed_image_polar_of_mem_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fff02a5b-047b-cb3c-9bf4-abfffd123026",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.ToWeakDual.Variantc134afe28db13fb0bfa849066c932d51279cb878f5dafc793ebd11c60081bcf6.NormedSpace.Dual.isClosed_image_polar_of_mem_nhds",
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
  "slug": "root-grwtsk-topology-generaltopology-toweakdual-variantc134afe28db13fb0b--6cacb8ffee663f4a28671e63",
  "source": {
    "blob": "2fd7a290a5298f1a050c66b30012f8e78ea4328b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 228,
    "path": "GRWTSK/Topology/GeneralTopology/WeakDual/Variant9a9fe9ea43090900c40fa348bab5c45a03406dce9c698906360cba7485b055b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6cacb8ffee663f4a28671e63cf9ac860e7f6c654628a1c8967fff3e5efa38086",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WeakDual/Variant9a9fe9ea43090900c40fa348bab5c45a03406dce9c698906360cba7485b055b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fff02a5b-047b-cb3c-9bf4-abfffd123026`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.ToWeakDual.Variantc134afe28db13fb0bfa849066c932d51279cb878f5dafc793ebd11c60081bcf6.NormedSpace.Dual.isClosed_image_polar_of_mem_nhds {s : Set E}
    (s_nhds : s ∈ 𝓝 (0 : E)) :
    IsClosed (((↑) : Dual 𝕜 E → E → 𝕜) '' NormedSpace.polar 𝕜 s) :=
  WeakDual.isClosed_image_polar_of_mem_nhds 𝕜 s_nhds

/-- The **Banach-Alaoglu theorem**: the polar set of a neighborhood `s` of the origin in a
normed space `E` is a compact subset of `WeakDual 𝕜 E`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WeakDual/Variant9a9fe9ea43090900c40fa348bab5c45a03406dce9c698906360cba7485b055b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WeakDual/Variant9a9fe9ea43090900c40fa348bab5c45a03406dce9c698906360cba7485b055b8.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fd7a290a5298f1a050c66b30012f8e78ea4328b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
