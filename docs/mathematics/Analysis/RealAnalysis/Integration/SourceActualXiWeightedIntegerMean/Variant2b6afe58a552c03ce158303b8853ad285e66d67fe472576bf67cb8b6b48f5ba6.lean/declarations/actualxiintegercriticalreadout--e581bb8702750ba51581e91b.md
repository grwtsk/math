# actualXiIntegerCriticalReadout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:282ca37642df112f2ea6112a59b17266debf1ad2c4c89f640a80bde1be2aa1e7",
  "kind": "def",
  "lexical_name": "actualXiIntegerCriticalReadout",
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
  "slug": "actualxiintegercriticalreadout--e581bb8702750ba51581e91b",
  "source": {
    "blob": "50e3d4d0f14003667c2ae277d32cdc3e55f1f2e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 27,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiWeightedIntegerMean/Variant2b6afe58a552c03ce158303b8853ad285e66d67fe472576bf67cb8b6b48f5ba6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e581bb8702750ba51581e91bb302fd366b5aeb196afad5beb6bd63763895ec7a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualXiWeightedIntegerMean/Variant2b6afe58a552c03ce158303b8853ad285e66d67fe472576bf67cb8b6b48f5ba6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:282ca37642df112f2ea6112a59b17266debf1ad2c4c89f640a80bde1be2aa1e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualXiIntegerCriticalReadout (N : ℕ) : ℝ :=
  2 * ((∑ d ∈ Finset.Icc 1 (N - 1), alpha d *
    (actualReciprocalXiQuotientWeight (N : ℝ) d -
      actualReciprocalXiQuotientWeight (N : ℝ) (d + 1))) -
      ∑ d ∈ Finset.Icc 1 6, alpha d *
        (actualReciprocalXiQuotientWeight 7 d - actualReciprocalXiQuotientWeight 7 (d + 1))) -
    2 * ((N : ℝ) + 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) /
      Real.sqrt (N : ℝ) +
    2 * (7 + 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) / Real.sqrt 7

/-- Actual logarithmic cell length, including the final fractional cell at every real time. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiWeightedIntegerMean/Variant2b6afe58a552c03ce158303b8853ad285e66d67fe472576bf67cb8b6b48f5ba6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiWeightedIntegerMean/Variant2b6afe58a552c03ce158303b8853ad285e66d67fe472576bf67cb8b6b48f5ba6.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50e3d4d0f14003667c2ae277d32cdc3e55f1f2e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
