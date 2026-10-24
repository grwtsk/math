# actualMovingCriticalIncrementCovariance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0f0b536e88ee5fd24084aaff7196f123559505df381f19b6e32f53eb2dca2130",
  "kind": "def",
  "lexical_name": "actualMovingCriticalIncrementCovariance",
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
  "slug": "actualmovingcriticalincrementcovariance--566ed7da20a94a5a4de9b4f9",
  "source": {
    "blob": "ebd4c1afeab560e5b0fd44b1a1d72887d6c04ab5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 33,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt02/Variant828d720c510350f593b8b483546e4dad07d917ecd97829964f612f4c472aa498.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:566ed7da20a94a5a4de9b4f980a218939ecc75764a7a0643f340fcb28b56912b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt02/Variant828d720c510350f593b8b483546e4dad07d917ecd97829964f612f4c472aa498.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0f0b536e88ee5fd24084aaff7196f123559505df381f19b6e32f53eb2dca2130`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualMovingCriticalIncrementCovariance (A : ℝ) : ℝ :=
  ∫ t in Real.log 7..2 * A, actualClosedMangoldtIncrement t (2 * A) *
    Real.exp (t / 2) * (sourceCorrelation explicitSecondDerivative A t / 4 +
      deriv (sourceCorrelation explicitSecondDerivative A) t / 2)

/-- The genuine lower-seven payment for subtracting the actual upper error value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt02/Variant828d720c510350f593b8b483546e4dad07d917ecd97829964f612f4c472aa498.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt02/Variant828d720c510350f593b8b483546e4dad07d917ecd97829964f612f4c472aa498.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebd4c1afeab560e5b0fd44b1a1d72887d6c04ab5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
