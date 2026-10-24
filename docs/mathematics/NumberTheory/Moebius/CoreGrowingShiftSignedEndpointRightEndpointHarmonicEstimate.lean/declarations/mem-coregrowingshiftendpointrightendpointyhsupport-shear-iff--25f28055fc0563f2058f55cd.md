# mem_coreGrowingShiftEndpointRightEndpointYHSupport_shear_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89892db2-f0b8-aff1-7d4b-bfb6a46e66a2",
  "kind": "theorem",
  "lexical_name": "mem_coreGrowingShiftEndpointRightEndpointYHSupport_shear_iff",
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
  "slug": "mem-coregrowingshiftendpointrightendpointyhsupport-shear-iff--25f28055fc0563f2058f55cd",
  "source": {
    "blob": "64f490dc18a0e344c1cf99964cc3df081447714e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 147,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointRightEndpointHarmonicEstimate.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25f28055fc0563f2058f55cd4ed8a052cbb73ac17bacf28e9d3fdec34a128b6e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointRightEndpointHarmonicEstimate.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89892db2-f0b8-aff1-7d4b-bfb6a46e66a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_coreGrowingShiftEndpointRightEndpointYHSupport_shear_iff
    (j : ℕ) (h n : ℕ) :
    (n + h, h) ∈ coreGrowingShiftEndpointRightEndpointYHSupport j ↔
      (h, n) ∈ coreGrowingShiftEndpointRightEndpointNHSupport j := by
  unfold coreGrowingShiftEndpointRightEndpointYHSupport
    coreGrowingShiftEndpointRightEndpointNHSupport
    coreGrowingShiftEndpointRightEndpointHarmonicYLower
    coreGrowingShiftEndpointRightEndpointHarmonicYUpper
  simp only [Finset.mem_filter, Finset.mem_product, Finset.mem_range]
  constructor
  · intro hyh
    have hh : logarithmicShiftThreshold j < h := by omega
    rw [coreGrowingShiftEndpointTransverseInteriorTailLower_eq_rightEndpoint hh,
      coreGrowingShiftEndpointTransverseInteriorPrefixUpper_eq_rightEndpoint hh]
    omega
  · intro hhn
    have hh : logarithmicShiftThreshold j < h := hhn.2.1
    rw [coreGrowingShiftEndpointTransverseInteriorTailLower_eq_rightEndpoint hh,
      coreGrowingShiftEndpointTransverseInteriorPrefixUpper_eq_rightEndpoint hh]
    omega

/-- Character phases transform exactly under the endpoint shear. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointRightEndpointHarmonicEstimate.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointRightEndpointHarmonicEstimate.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64f490dc18a0e344c1cf99964cc3df081447714e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
