# QuarticVolumePackingCertificateAtZero.scaledOccupied_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0430ca51-bd50-78cb-40cf-e96e98aa28a6",
  "kind": "theorem",
  "lexical_name": "QuarticVolumePackingCertificateAtZero.scaledOccupied_tendsto_zero",
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
  "slug": "quarticvolumepackingcertificateatzero-scaledoccupied-tendsto-zero--b204b88d6a713c5a7c2ca92d",
  "source": {
    "blob": "a3c26a64f9a3b524f8dd70d032a9dc8dc2dfcf33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 114,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuarticVolumePackingEndpoint.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b204b88d6a713c5a7c2ca92d8c7e62733e6e9fd9d1573cb58c52f10790a9f725",
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

Occurrence: `result:0430ca51-bd50-78cb-40cf-e96e98aa28a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem QuarticVolumePackingCertificateAtZero.scaledOccupied_tendsto_zero
    {z : ZeroPoint}
    (certificate : QuarticVolumePackingCertificateAtZero z) :
    Tendsto
      (fun n =>
        certificate.scale n *
          safeQuarticStructuredPackingValue z n)
      atTop (𝓝 0) := by
  apply squeeze_zero
  · intro n
    exact mul_nonneg (certificate.scale_nonnegative n)
      (safeQuarticStructuredPackingValue_nonnegative z n)
  · intro n
    exact mul_le_mul_of_nonneg_left
      (certificate.contains n)
      (certificate.scale_nonnegative n)
  · exact certificate.scaledEnclosure_tendsto_zero

/-- A valid volume-packing certificate forces the zero onto the critical line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuarticVolumePackingEndpoint.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuarticVolumePackingEndpoint.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3c26a64f9a3b524f8dd70d032a9dc8dc2dfcf33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
