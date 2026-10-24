# innerDualCone_sUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1766e63f-e33f-4462-5e4c-f4d274068afc",
  "kind": "theorem",
  "lexical_name": "innerDualCone_sUnion",
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
  "slug": "innerdualcone-sunion--469f5a8a97df4e5689fedf3a",
  "source": {
    "blob": "ab995e1c1def2da75f3ab5bb8d28c73f31f48272",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 120,
    "path": "GRWTSK/Topology/GeneralTopology/Dual/Variant512a9942140d8750e36b299b1dd907490a09d3ba4e3b193e3ff2ab249700cb55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:469f5a8a97df4e5689fedf3a92330936ca6d78da74c1caa034ad9111e8a4ce81",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Dual/Variant512a9942140d8750e36b299b1dd907490a09d3ba4e3b193e3ff2ab249700cb55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1766e63f-e33f-4462-5e4c-f4d274068afc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem innerDualCone_sUnion (S : Set (Set H)) :
    (⋃₀ S).innerDualCone = sInf (Set.innerDualCone '' S) := by
  simp_rw [sInf_image, sUnion_eq_biUnion, innerDualCone_iUnion]
#align inner_dual_cone_sUnion innerDualCone_sUnion

/-- The dual cone of `s` equals the intersection of dual cones of the points in `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Dual/Variant512a9942140d8750e36b299b1dd907490a09d3ba4e3b193e3ff2ab249700cb55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Dual/Variant512a9942140d8750e36b299b1dd907490a09d3ba4e3b193e3ff2ab249700cb55.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab995e1c1def2da75f3ab5bb8d28c73f31f48272` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
