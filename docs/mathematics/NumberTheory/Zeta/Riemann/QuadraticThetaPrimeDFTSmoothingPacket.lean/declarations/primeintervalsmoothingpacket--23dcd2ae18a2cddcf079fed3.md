# PrimeIntervalSmoothingPacket

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:80940bdc9e85691455504a4a3544ca40e2fb8baf2cca7b2a5b18d6f3d060ab2d",
  "kind": "structure",
  "lexical_name": "PrimeIntervalSmoothingPacket",
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
  "slug": "primeintervalsmoothingpacket--23dcd2ae18a2cddcf079fed3",
  "source": {
    "blob": "4a48d33635131b7a36ca7df0ef616875209e35e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 19,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeDFTSmoothingPacket.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:23dcd2ae18a2cddcf079fed38ef0a7ee4131d4be253ebda67730c43a9326e862",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeDFTSmoothingPacket.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:80940bdc9e85691455504a4a3544ca40e2fb8baf2cca7b2a5b18d6f3d060ab2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PrimeIntervalSmoothingPacket where
  cutoff : ℕ
  cutoff_pos : 0 < cutoff
  coefficientL2Budget : ℝ
  coefficientL2Budget_nonnegative : 0 ≤ coefficientL2Budget
  boundaryWidthFactor : ℝ
  boundaryWidthFactor_nonnegative : 0 ≤ boundaryWidthFactor
  coefficientBudget_le_cutoff :
    coefficientL2Budget ≤ (cutoff : ℝ)
  boundaryPowerCost :
    boundaryWidthFactor ≤ 1 / (cutoff : ℝ)

/-- Source-facing family of smoothing packets indexed by the dyadic scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeDFTSmoothingPacket.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeDFTSmoothingPacket.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a48d33635131b7a36ca7df0ef616875209e35e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
