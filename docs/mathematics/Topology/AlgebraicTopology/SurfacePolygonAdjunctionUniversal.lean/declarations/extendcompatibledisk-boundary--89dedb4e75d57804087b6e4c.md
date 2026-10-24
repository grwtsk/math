# extendCompatibleDisk_boundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ebbb8cc2-05e3-7bd0-c5d3-c34dd9391a4a",
  "kind": "theorem",
  "lexical_name": "extendCompatibleDisk_boundary",
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
  "slug": "extendcompatibledisk-boundary--89dedb4e75d57804087b6e4c",
  "source": {
    "blob": "4d52c72e9bf25578eaf9aa3c66f2a236185aad6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 84,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonAdjunctionUniversal.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89dedb4e75d57804087b6e4cdd4c36c7ea2d28209fcfd62ba60e9165415e6813",
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

Occurrence: `result:ebbb8cc2-05e3-7bd0-c5d3-c34dd9391a4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extendCompatibleDisk_boundary (k : ℕ) {Y : Type*}
    (disk : Complex.UnitClosedDisc → Y)
    (boundary : PolygonBoundaryOneSkeleton k → Y)
    (hcompat : CompatibleDiskBoundary k disk boundary) :
    extendCompatibleDisk k disk boundary hcompat ∘ boundaryInclusion k =
      boundary := by
  funext b
  obtain ⟨x, rfl⟩ := perimeterAttach_surjective k b
  have h := congrFun (extendCompatibleDisk_disk k disk boundary hcompat)
    (perimeterConeHomeomorphUnitClosedDisc k (coneBoundary k x))
  change extendCompatibleDisk k disk boundary hcompat
    (diskCharacteristic k
      (perimeterConeHomeomorphUnitClosedDisc k (coneBoundary k x))) =
    disk (perimeterConeHomeomorphUnitClosedDisc k (coneBoundary k x)) at h
  rw [diskCharacteristic_boundary] at h
  exact h.trans (hcompat x)

/-- A continuous compatible disk/boundary pair has a UNIQUE
continuous extension through the actual filled polygon quotient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonAdjunctionUniversal.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonAdjunctionUniversal.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d52c72e9bf25578eaf9aa3c66f2a236185aad6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
