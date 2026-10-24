# coreBoundarySignedPacket_sq_le_quadraticEnergy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:feba60fe-5b7a-32a4-50b1-7d6ae478e175",
  "kind": "theorem",
  "lexical_name": "coreBoundarySignedPacket_sq_le_quadraticEnergy",
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
  "slug": "coreboundarysignedpacket-sq-le-quadraticenergy--037456f91871302676ae0b40",
  "source": {
    "blob": "6c6cb8113f894dba1bd8cde4bc610e910f0c75a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 98,
    "path": "GRWTSK/NumberTheory/Moebius/CoreBoundaryQuadraticEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:037456f91871302676ae0b402deebfdd6a2796abd9fd12900768c32785f017f6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreBoundaryQuadraticEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:feba60fe-5b7a-32a4-50b1-7d6ae478e175`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreBoundarySignedPacket_sq_le_quadraticEnergy
    (j : ℕ) :
    coreBoundarySignedPacket j ^ 2 ≤
      (2 * boundaryTerminalDrop j) ^ 2 *
        boundaryMovingWindowSquareEnergy j *
          boundaryTailSquareEnergy j := by
  rw [coreBoundarySignedPacket_eq_movingWindowBilinear_exact]
  calc
    (2 * boundaryTerminalDrop j *
        boundaryMovingWindowBilinearPacket j) ^ 2 =
      (2 * boundaryTerminalDrop j) ^ 2 *
        boundaryMovingWindowBilinearPacket j ^ 2 := by ring
    _ ≤ (2 * boundaryTerminalDrop j) ^ 2 *
        (boundaryMovingWindowSquareEnergy j *
          boundaryTailSquareEnergy j) := by
      exact mul_le_mul_of_nonneg_left
        (boundaryMovingWindowBilinearPacket_sq_le_energy j)
        (sq_nonneg _)
    _ = _ := by ring

/-- Quadratic source proposition.  This is deliberately sufficient-only:
it controls the Cauchy majorant, not the original signed bilinear form by
equivalence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreBoundaryQuadraticEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreBoundaryQuadraticEnergy.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c6cb8113f894dba1bd8cde4bc610e910f0c75a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
