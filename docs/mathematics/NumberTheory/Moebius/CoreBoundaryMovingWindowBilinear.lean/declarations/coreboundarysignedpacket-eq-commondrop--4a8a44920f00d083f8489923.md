# coreBoundarySignedPacket_eq_commonDrop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd8c81a1-dbde-d51d-1ec4-f4db72537150",
  "kind": "theorem",
  "lexical_name": "coreBoundarySignedPacket_eq_commonDrop",
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
  "slug": "coreboundarysignedpacket-eq-commondrop--4a8a44920f00d083f8489923",
  "source": {
    "blob": "6b392f4003d3136ac4a7ed39d5ad699f9cd17b82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 85,
    "path": "GRWTSK/NumberTheory/Moebius/CoreBoundaryMovingWindowBilinear.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a8a44920f00d083f84899231bfeb19978e477aa769a7da8958623700a10a8d6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreBoundaryMovingWindowBilinear.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd8c81a1-dbde-d51d-1ec4-f4db72537150`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreBoundarySignedPacket_eq_commonDrop
    (j : ℕ) :
    coreBoundarySignedPacket j =
      2 * boundaryTerminalDrop j *
        boundaryCumulativeCorrelationPacket j := by
  rw [coreBoundarySignedPacket_eq_boundaryDepthSum]
  unfold boundaryCumulativeCorrelationPacket
  calc
    (∑ t ∈ boundaryCoreDepths j,
      2 * harmonicTerminalCumulativeContribution j t) =
      ∑ t ∈ boundaryCoreDepths j,
        2 * (cumulativeHarmonicShiftCorrelation j t (2 ^ j) *
          boundaryTerminalDrop j) := by
      apply Finset.sum_congr rfl
      intro t ht
      rw [harmonicTerminalCumulativeContribution_eq_boundary ht]
    _ = 2 * boundaryTerminalDrop j *
        ∑ t ∈ boundaryCoreDepths j,
          cumulativeHarmonicShiftCorrelation j t (2 ^ j) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro t _ht
      ring

/-- Length-`2^j` moving Möbius window indexed by reverse depth offset `u`.
The natural subtraction is safe on the intended range `u<2^j`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreBoundaryMovingWindowBilinear.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreBoundaryMovingWindowBilinear.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b392f4003d3136ac4a7ed39d5ad699f9cd17b82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
