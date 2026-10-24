# actualPeriodicTransportJet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a8798d43e9a9986497f4c2e404ec2ae4d7934d9a515afcef87957410f845054",
  "kind": "def",
  "lexical_name": "actualPeriodicTransportJet",
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
  "slug": "actualperiodictransportjet--2060b564cddddb60a3e5eb8a",
  "source": {
    "blob": "d544ce7a610467d00fe2c83f4139986f01b88d43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 20,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualPeriodicTransportKernel/Variant667c183168964ebe428822b40bc226b8df5f8258e4841b6739584be66fa722a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2060b564cddddb60a3e5eb8aba60cb2ecfdf34b47f7381b63b6bf441402eb15f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualPeriodicTransportKernel/Variant667c183168964ebe428822b40bc226b8df5f8258e4841b6739584be66fa722a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3a8798d43e9a9986497f4c2e404ec2ae4d7934d9a515afcef87957410f845054`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualPeriodicTransportJet (A z : ℝ) : ℝ :=
  iteratedDeriv 4 (sourceCorrelation explicitSecondDerivative A) z -
    (3 / 2 : ℝ) * iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) z -
      iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) z / 4 +
        (3 / 8 : ℝ) * iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) z

/-- The original covariant kernel and twisted trace give the exact transported jet. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualPeriodicTransportKernel/Variant667c183168964ebe428822b40bc226b8df5f8258e4841b6739584be66fa722a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualPeriodicTransportKernel/Variant667c183168964ebe428822b40bc226b8df5f8258e4841b6739584be66fa722a8.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d544ce7a610467d00fe2c83f4139986f01b88d43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
