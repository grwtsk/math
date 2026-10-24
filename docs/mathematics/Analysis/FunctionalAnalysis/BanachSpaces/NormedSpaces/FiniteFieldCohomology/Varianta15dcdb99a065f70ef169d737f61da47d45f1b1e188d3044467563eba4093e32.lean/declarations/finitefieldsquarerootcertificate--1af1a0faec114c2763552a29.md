# FiniteFieldSquareRootCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e8bfa1451c3664a2917b60d56e38035ab21bbe31f5752966d7f37e00fb88b1d5",
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
  "slug": "finitefieldsquarerootcertificate--1af1a0faec114c2763552a29",
  "source": {
    "blob": "77ac1b871fd9e65bf30cffedb905e15ec094a2f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 30,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/FiniteFieldCohomology/Varianta15dcdb99a065f70ef169d737f61da47d45f1b1e188d3044467563eba4093e32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1af1a0faec114c2763552a29d06a6ce84ececd5d47bf192785ee6de984ac7f0c",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/FiniteFieldCohomology/Varianta15dcdb99a065f70ef169d737f61da47d45f1b1e188d3044467563eba4093e32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e8bfa1451c3664a2917b60d56e38035ab21bbe31f5752966d7f37e00fb88b1d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–44.

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

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/FiniteFieldCohomology/Varianta15dcdb99a065f70ef169d737f61da47d45f1b1e188d3044467563eba4093e32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/FiniteFieldCohomology/Varianta15dcdb99a065f70ef169d737f61da47d45f1b1e188d3044467563eba4093e32.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77ac1b871fd9e65bf30cffedb905e15ec094a2f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
