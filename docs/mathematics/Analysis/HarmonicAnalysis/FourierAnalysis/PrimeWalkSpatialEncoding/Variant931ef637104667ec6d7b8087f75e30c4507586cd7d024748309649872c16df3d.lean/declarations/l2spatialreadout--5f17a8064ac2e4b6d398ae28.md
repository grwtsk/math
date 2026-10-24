# L2SpatialReadout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ddb381d96111d3f535279f2ad5bbf775d681df842af19ec8475f53a9c03bccf",
  "kind": "structure",
  "lexical_name": "L2SpatialReadout",
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
  "slug": "l2spatialreadout--5f17a8064ac2e4b6d398ae28",
  "source": {
    "blob": "348c88212555163e14c821f498bb6a38b799ec60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 129,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant931ef637104667ec6d7b8087f75e30c4507586cd7d024748309649872c16df3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5f17a8064ac2e4b6d398ae287b7a1d8fd66f6e61b06bdbef2b1c7abb32dbeeaf",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant931ef637104667ec6d7b8087f75e30c4507586cd7d024748309649872c16df3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ddb381d96111d3f535279f2ad5bbf775d681df842af19ec8475f53a9c03bccf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure L2SpatialReadout where
  map : SpatialSignal →ₗ[ℂ] ErrorTrajectory
  operatorNorm : ℝ
  operatorNorm_nonneg : 0 ≤ operatorNorm
  maps_memLp : ∀ signal,
    MemLp signal 2 (volume : Measure SpatialPoint) →
      MemLp (map signal) 2 (volume : Measure ℝ)
  lpNorm_le : ∀ signal,
    MemLp signal 2 (volume : Measure SpatialPoint) →
      lpNorm (map signal) 2 (volume : Measure ℝ) ≤
        operatorNorm * lpNorm signal 2 (volume : Measure SpatialPoint)

/-! ## Tube multiplicity and the requested power-law premise -/

/-- Number of certified fine-tube carriers through a spatial point. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant931ef637104667ec6d7b8087f75e30c4507586cd7d024748309649872c16df3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant931ef637104667ec6d7b8087f75e30c4507586cd7d024748309649872c16df3d.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `348c88212555163e14c821f498bb6a38b799ec60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
