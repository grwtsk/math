# FiniteFieldSquareRootCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f98a349fd966933cb46528fc33601f267de1ae5d6599f2db89310404ebf2b9b2",
  "kind": "structure",
  "lexical_name": "FiniteFieldSquareRootCertificate",
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
  "slug": "finitefieldsquarerootcertificate--bfd43ba1668bf736e4657f20",
  "source": {
    "blob": "58733c2c938c1dfb9a453f3170c4e6cdd760333b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 38,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/FiniteFieldCohomology/Variantab2a8c5bc4f972ad359434100a2c6a5b3aa4550fea3b3d5b8e3af314bfbd5510.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bfd43ba1668bf736e4657f200d2281113a2742773473fccbbafd0dfbbb8131f5",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/FiniteFieldCohomology/Variantab2a8c5bc4f972ad359434100a2c6a5b3aa4550fea3b3d5b8e3af314bfbd5510.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f98a349fd966933cb46528fc33601f267de1ae5d6599f2db89310404ebf2b9b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FiniteFieldSquareRootCertificate
    {Scale : Type u} {Spectrum : Type v} {Carrier : Type w}
    [Fintype Spectrum] [NormedAddCommGroup Carrier]
    (trace : ExactDiscrepancyTrace Scale Spectrum Carrier) where
  eligibility : FiniteFieldCohomologicalEligibility
  cohomological : trace.kind = .cohomological
  control : SameSpectrumControl trace
  pure : control.boundKind = .purity
  uniformConstant : ℝ
  uniformConstant_nonnegative : 0 ≤ uniformConstant
  coefficient_control :
    control.coefficientMass + control.remainderCoefficient ≤
      uniformConstant

/-- Pointwise form of a uniform square-root/logarithmic norm certificate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/FiniteFieldCohomology/Variantab2a8c5bc4f972ad359434100a2c6a5b3aa4550fea3b3d5b8e3af314bfbd5510.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/FiniteFieldCohomology/Variantab2a8c5bc4f972ad359434100a2c6a5b3aa4550fea3b3d5b8e3af314bfbd5510.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58733c2c938c1dfb9a453f3170c4e6cdd760333b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
