# existsUnique_continuous_compatible_extension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d941638-819d-26d7-cfbc-16c7231b2671",
  "kind": "theorem",
  "lexical_name": "existsUnique_continuous_compatible_extension",
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
  "slug": "existsunique-continuous-compatible-extension--46ced5a975de3842e6ebf34d",
  "source": {
    "blob": "4d52c72e9bf25578eaf9aa3c66f2a236185aad6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 103,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonAdjunctionUniversal.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46ced5a975de3842e6ebf34d4b90247d19a092bd2a98405879077e1732be767a",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonAdjunctionUniversal.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d941638-819d-26d7-cfbc-16c7231b2671`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem existsUnique_continuous_compatible_extension (k : ℕ)
    {Y : Type*} [TopologicalSpace Y]
    (disk : Complex.UnitClosedDisc → Y)
    (boundary : PolygonBoundaryOneSkeleton k → Y)
    (hcompat : CompatibleDiskBoundary k disk boundary)
    (hdisk : Continuous disk)
    (_hboundary : Continuous boundary) :
    ∃! f : FilledPolygonQuotient k → Y,
      Continuous f ∧
      f ∘ diskCharacteristic k = disk ∧
      f ∘ boundaryInclusion k = boundary := by
  refine ⟨extendCompatibleDisk k disk boundary hcompat, ?_, ?_⟩
  · exact ⟨extendCompatibleDisk_continuous k disk boundary hcompat hdisk,
      extendCompatibleDisk_disk k disk boundary hcompat,
      extendCompatibleDisk_boundary k disk boundary hcompat⟩
  · intro f hf
    exact filledMap_ext_of_disk k (hf.2.1.trans
      (extendCompatibleDisk_disk k disk boundary hcompat).symm)

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAdjunctionUniversal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonAdjunctionUniversal.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonAdjunctionUniversal.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d52c72e9bf25578eaf9aa3c66f2a236185aad6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
