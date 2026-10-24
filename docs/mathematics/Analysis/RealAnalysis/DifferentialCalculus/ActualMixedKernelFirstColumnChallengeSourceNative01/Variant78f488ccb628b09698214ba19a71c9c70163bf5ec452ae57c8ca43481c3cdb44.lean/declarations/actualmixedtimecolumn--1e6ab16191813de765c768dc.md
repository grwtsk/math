# actualMixedTimeColumn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cd7c58fb3e2a0698cb94819280c5786c03044b8fa67793e999030f2b6bae12d1",
  "kind": "def",
  "lexical_name": "actualMixedTimeColumn",
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
  "slug": "actualmixedtimecolumn--1e6ab16191813de765c768dc",
  "source": {
    "blob": "a318ecaa8c37de2627b12f2ded29e8f7c59f3953",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 27,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualMixedKernelFirstColumnChallengeSourceNative01/Variant78f488ccb628b09698214ba19a71c9c70163bf5ec452ae57c8ca43481c3cdb44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e6ab16191813de765c768dc279e8d292011beb62f9a64ead6bdca6cfd77193a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualMixedKernelFirstColumnChallengeSourceNative01/Variant78f488ccb628b09698214ba19a71c9c70163bf5ec452ae57c8ca43481c3cdb44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cd7c58fb3e2a0698cb94819280c5786c03044b8fa67793e999030f2b6bae12d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualMixedTimeColumn (A t u : ℝ) : ℝ :=
  Real.exp (t / 2) / Real.sqrt u *
    (deriv (sourceCorrelation explicitSecondDerivative A) (t + Real.log u) +
      sourceCorrelation explicitSecondDerivative A (t + Real.log u) / 2)

/-- The entire actual physical mixed density, with its positive exponential retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualMixedKernelFirstColumnChallengeSourceNative01/Variant78f488ccb628b09698214ba19a71c9c70163bf5ec452ae57c8ca43481c3cdb44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualMixedKernelFirstColumnChallengeSourceNative01/Variant78f488ccb628b09698214ba19a71c9c70163bf5ec452ae57c8ca43481c3cdb44.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a318ecaa8c37de2627b12f2ded29e8f7c59f3953` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
