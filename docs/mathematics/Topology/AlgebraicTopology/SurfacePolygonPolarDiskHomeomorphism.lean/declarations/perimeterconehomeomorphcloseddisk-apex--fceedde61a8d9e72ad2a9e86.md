# perimeterConeHomeomorphClosedDisk_apex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:98dacea8-dc15-9a2d-f2cd-fbfd96b9f9a7",
  "kind": "theorem",
  "lexical_name": "perimeterConeHomeomorphClosedDisk_apex",
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
  "slug": "perimeterconehomeomorphcloseddisk-apex--fceedde61a8d9e72ad2a9e86",
  "source": {
    "blob": "d24ee16c369c4a214605ded46fc7f2bb2107a9e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 114,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarDiskHomeomorphism.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fceedde61a8d9e72ad2a9e86b9838bafd4dec36dc5c956a6b6dbfa7391f06ae7",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonPolarDiskHomeomorphism.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98dacea8-dc15-9a2d-f2cd-fbfd96b9f9a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem perimeterConeHomeomorphClosedDisk_apex (k : ℕ) :
    perimeterConeHomeomorphClosedDisk k (coneApex k) =
      (⟨0, by simp⟩ : ClosedComplexUnitDisk) := by
  change standardConePolarDisk
    (perimeterConeHomeomorphStandardCircleCone k (coneApex k)) = _
  rw [perimeterConeHomeomorphStandardCircleCone_apex]
  exact standardConePolarDisk_apex

/-- Source-exact obstruction: the polar disk homeomorphism on the
UNPAIRED perimeter cone cannot descend to any function on the
PAIRED filled polygon quotient along the genuine cone-to-filling map.
This uses the original opposite-side midpoint noninjectivity,
and does NOT assert that the filled polygon has no disk chart or that
its intrinsic topology is not a disk. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonPolarDiskHomeomorphism.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarDiskHomeomorphism.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d24ee16c369c4a214605ded46fc7f2bb2107a9e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
