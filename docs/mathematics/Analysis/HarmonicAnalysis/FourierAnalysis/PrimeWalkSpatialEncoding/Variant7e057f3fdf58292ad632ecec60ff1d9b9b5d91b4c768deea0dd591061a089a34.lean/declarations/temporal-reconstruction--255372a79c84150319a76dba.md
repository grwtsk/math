# temporal_reconstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29364f9b-a9ae-2697-18f9-4faad4bbec34",
  "kind": "theorem",
  "lexical_name": "temporal_reconstruction",
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
  "slug": "temporal-reconstruction--255372a79c84150319a76dba",
  "source": {
    "blob": "9d1c4ad28bb26b4e9c16fba5dd9227b888e7e15e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 290,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant7e057f3fdf58292ad632ecec60ff1d9b9b5d91b4c768deea0dd591061a089a34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:255372a79c84150319a76dbaa3cd2b60e2f280802f04252cd35b691160cf95e5",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant7e057f3fdf58292ad632ecec60ff1d9b9b5d91b4c768deea0dd591061a089a34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29364f9b-a9ae-2697-18f9-4faad4bbec34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem temporal_reconstruction
    (encoding : SpatialEncodedTrajectory S FineTube CoarseTube Grain) :
    S =
      (∑ tube ∈ encoding.grains.fineTubes,
        encoding.readout.map (encoding.wavePacket tube)) +
        encoding.readout.map encoding.residual := by
  calc
    S = encoding.readout.map encoding.spatialLift := encoding.readout_lift.symm
    _ = encoding.readout.map
        (packetSum encoding.grains.fineTubes encoding.wavePacket +
          encoding.residual) := by rw [encoding.spatial_reconstruction]
    _ = encoding.readout.map
          (packetSum encoding.grains.fineTubes encoding.wavePacket) +
        encoding.readout.map encoding.residual := by
          rw [map_add]
    _ = (∑ tube ∈ encoding.grains.fineTubes,
          encoding.readout.map (encoding.wavePacket tube)) +
        encoding.readout.map encoding.residual := by
          simp [packetSum, map_sum]

/-- The read-out residual inherits the certified operator-norm loss. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant7e057f3fdf58292ad632ecec60ff1d9b9b5d91b4c768deea0dd591061a089a34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant7e057f3fdf58292ad632ecec60ff1d9b9b5d91b4c768deea0dd591061a089a34.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d1c4ad28bb26b4e9c16fba5dd9227b888e7e15e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
