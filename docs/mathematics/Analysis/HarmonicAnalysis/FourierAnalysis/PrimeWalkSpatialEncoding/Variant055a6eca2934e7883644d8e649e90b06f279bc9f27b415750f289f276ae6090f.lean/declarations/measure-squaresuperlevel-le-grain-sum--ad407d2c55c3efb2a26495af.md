# measure_squareSuperlevel_le_grain_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "777eeeb047c8c0a05c6c94d811e3a1a7af5dd668",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 343,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/055a6eca2934e7883644d8e649e90b06f279bc9f27b415750f289f276ae6090f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b604d87a-5a20-fedf-aed6-696bfaa63af9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:39e16422-4600-5a5a-8ab9-d5f4be4094ae",
  "kind": "theorem",
  "lexical_name": "measure_squareSuperlevel_le_grain_sum",
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
  "slug": "measure-squaresuperlevel-le-grain-sum--ad407d2c55c3efb2a26495af",
  "source": {
    "blob": "777eeeb047c8c0a05c6c94d811e3a1a7af5dd668",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 343,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant055a6eca2934e7883644d8e649e90b06f279bc9f27b415750f289f276ae6090f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad407d2c55c3efb2a26495af78158ac49e5a01f7e674ac1b646a7fac0408d3d2",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant055a6eca2934e7883644d8e649e90b06f279bc9f27b415750f289f276ae6090f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39e16422-4600-5a5a-8ab9-d5f4be4094ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 343–368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_squareSuperlevel_le_grain_sum
    (encoding : SpatialEncodedTrajectory S FineTube CoarseTube Grain) :
    volume
        (spatialSuperlevelSet
          (packetSquareFunction encoding.grains.fineTubes encoding.wavePacket)
          encoding.amplitudeThreshold) ≤
      ∑ grain ∈ encoding.grains.grains,
        volume (encoding.grains.grainShading grain) := by
  calc
    volume
        (spatialSuperlevelSet
          (packetSquareFunction encoding.grains.fineTubes encoding.wavePacket)
          encoding.amplitudeThreshold) ≤
        volume
          (finsetShadingUnion encoding.grains.grains
            encoding.grains.grainShading) :=
      measure_mono (squareSuperlevel_subset_grainShadingUnion encoding)
    _ ≤ ∑ grain ∈ encoding.grains.grains,
        volume (encoding.grains.grainShading grain) :=
      measure_biUnion_finset_le encoding.grains.grains
        encoding.grains.grainShading

/-- An assumed multiplicity power law is available exactly when it is supplied
as a separate overlay.  It is not a consequence of the base encoding and is
not identified with the Wang--Zahl union theorem. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant055a6eca2934e7883644d8e649e90b06f279bc9f27b415750f289f276ae6090f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant055a6eca2934e7883644d8e649e90b06f279bc9f27b415750f289f276ae6090f.lean#L343).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `777eeeb047c8c0a05c6c94d811e3a1a7af5dd668` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
