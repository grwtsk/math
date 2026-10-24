# squareSuperlevel_eq_grainShadingUnion

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
      "line": 321,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/055a6eca2934e7883644d8e649e90b06f279bc9f27b415750f289f276ae6090f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:54b4f6f4-8330-de1a-cc6b-cb31e776e063",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b008d59d-6255-28c9-d0d2-df0254a87aec",
  "kind": "theorem",
  "lexical_name": "squareSuperlevel_eq_grainShadingUnion",
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
  "slug": "squaresuperlevel-eq-grainshadingunion--eae7696c7bc802d20395a8e6",
  "source": {
    "blob": "777eeeb047c8c0a05c6c94d811e3a1a7af5dd668",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 321,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant055a6eca2934e7883644d8e649e90b06f279bc9f27b415750f289f276ae6090f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eae7696c7bc802d20395a8e6a6dbb24679c4212ac4aa6cf203bd0dd9dbfa07b1",
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

Occurrence: `result:b008d59d-6255-28c9-d0d2-df0254a87aec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squareSuperlevel_eq_grainShadingUnion
    (encoding : SpatialEncodedTrajectory S FineTube CoarseTube Grain) :
    spatialSuperlevelSet
        (packetSquareFunction encoding.grains.fineTubes encoding.wavePacket)
        encoding.amplitudeThreshold =
      finsetShadingUnion encoding.grains.grains encoding.grains.grainShading := by
  exact encoding.superlevel_eq_shadingUnion.trans
    (fineShadingUnion_eq_grainShadingUnion encoding.grains)

/-- Backward-compatible subset consequence of the exact equality. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant055a6eca2934e7883644d8e649e90b06f279bc9f27b415750f289f276ae6090f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant055a6eca2934e7883644d8e649e90b06f279bc9f27b415750f289f276ae6090f.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `777eeeb047c8c0a05c6c94d811e3a1a7af5dd668` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
