# QuarticVolumePackingCertificateAtZero.scaledOccupied_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8c2cd99-2433-3e07-bfe7-db7d7894ca0e",
  "kind": "theorem",
  "lexical_name": "QuarticVolumePackingCertificateAtZero.scaledOccupied_tendsto",
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
  "slug": "quarticvolumepackingcertificateatzero-scaledoccupied-tendsto--7bb60a7c77a8541eeff9d234",
  "source": {
    "blob": "a3c26a64f9a3b524f8dd70d032a9dc8dc2dfcf33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 76,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuarticVolumePackingEndpoint.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bb60a7c77a8541eeff9d234b9b33316f1a39aafd6d79a572f742800fa8ac948",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuarticVolumePackingEndpoint.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8c2cd99-2433-3e07-bfe7-db7d7894ca0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem QuarticVolumePackingCertificateAtZero.scaledOccupied_tendsto
    {z : ZeroPoint}
    (certificate : QuarticVolumePackingCertificateAtZero z) :
    Tendsto
      (fun n =>
        certificate.scale n *
          safeQuarticStructuredPackingValue z n)
      atTop
      (𝓝
        (certificate.limitCoefficient *
          ((zeroDefect z.1) ^ 4 +
            3 * (zeroDefect z.1) ^ 2 * z.1.im ^ 2))) := by
  have hA := certificate.axial_scaled_tendsto
  have hT := certificate.transverse_scaled_tendsto
  have hsum :
      Tendsto
        (fun n =>
          (zeroDefect z.1) ^ 4 *
              (certificate.scale n *
                safeAxialQuarticCoefficient z n) +
            3 * (zeroDefect z.1) ^ 2 * z.1.im ^ 2 *
              (certificate.scale n *
                safeTransverseQuarticCoefficient z n))
        atTop
        (𝓝
          ((zeroDefect z.1) ^ 4 * certificate.limitCoefficient +
            3 * (zeroDefect z.1) ^ 2 * z.1.im ^ 2 *
              certificate.limitCoefficient)) := by
    exact
      (tendsto_const_nhds.mul hA).add
        (tendsto_const_nhds.mul hT)
  convert hsum using 1
  · funext n
    rw [safeQuarticStructuredPackingValue_factor]
    ring
  · ring

/-- Containment and positivity force the scaled occupied volume to zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuarticVolumePackingEndpoint.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuarticVolumePackingEndpoint.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3c26a64f9a3b524f8dd70d032a9dc8dc2dfcf33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
