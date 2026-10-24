# actualTwistedTimeDensity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a25d2f91c7b812907d12e878b07613e54df1b262487c6b88e1fba4adafde18de",
  "kind": "def",
  "lexical_name": "actualTwistedTimeDensity",
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
  "slug": "actualtwistedtimedensity--221b79ab2628ded8f886b9f5",
  "source": {
    "blob": "a7a7e626cc2020f98556c18bde7ab23cbe48b5d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 23,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/244148a9c909235ff8e7RootActualDoubleAdjointTransfer/Variant1d9d8b3e11d8ba32d154069283311287ad58d38f077bcf71de5beb05623e841f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:221b79ab2628ded8f886b9f5a503a4bbc902b04dc13d1bef483583d8eae7ab6f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/244148a9c909235ff8e7RootActualDoubleAdjointTransfer/Variant1d9d8b3e11d8ba32d154069283311287ad58d38f077bcf71de5beb05623e841f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a25d2f91c7b812907d12e878b07613e54df1b262487c6b88e1fba4adafde18de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualTwistedTimeDensity (A t s : ℝ) : ℝ :=
  Real.exp (t / 2) * Real.exp (-s / 2) *
    (iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) (t + s) -
      iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) (t + s) / 4)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/244148a9c909235ff8e7RootActualDoubleAdjointTransfer/Variant1d9d8b3e11d8ba32d154069283311287ad58d38f077bcf71de5beb05623e841f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/244148a9c909235ff8e7RootActualDoubleAdjointTransfer/Variant1d9d8b3e11d8ba32d154069283311287ad58d38f077bcf71de5beb05623e841f.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7a7e626cc2020f98556c18bde7ab23cbe48b5d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
