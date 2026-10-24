# sourceColumnTimeDeriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a6012f0e144dbd4004ce64f4af422d0046400fafd22ec32651a28e86c89a00c2",
  "kind": "def",
  "lexical_name": "sourceColumnTimeDeriv",
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
  "slug": "sourcecolumntimederiv--7093f59f855f0a6f9bc1cedd",
  "source": {
    "blob": "8e687c07dc5e027bbd55315daf00c5817fff5567",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 30,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/7792b41645476af5636eSourceActualMixedWorkEnvelope/Variant7792b41645476af5636e39b6eb90d74fd439585509f853eb8a97b09719ca6775.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7093f59f855f0a6f9bc1cedd2122b922f3d62c75b6b90cc7a7776b515967e2c5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/7792b41645476af5636eSourceActualMixedWorkEnvelope/Variant7792b41645476af5636e39b6eb90d74fd439585509f853eb8a97b09719ca6775.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a6012f0e144dbd4004ce64f4af422d0046400fafd22ec32651a28e86c89a00c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def sourceColumnTimeDeriv (A t u : ℝ) : ℝ :=
  Real.exp (t / 2) / Real.sqrt u *
    (deriv (sourceCorrelation explicitSecondDerivative A) (t + Real.log u) +
      sourceCorrelation explicitSecondDerivative A (t + Real.log u) / 2)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/7792b41645476af5636eSourceActualMixedWorkEnvelope/Variant7792b41645476af5636e39b6eb90d74fd439585509f853eb8a97b09719ca6775.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/7792b41645476af5636eSourceActualMixedWorkEnvelope/Variant7792b41645476af5636e39b6eb90d74fd439585509f853eb8a97b09719ca6775.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e687c07dc5e027bbd55315daf00c5817fff5567` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
