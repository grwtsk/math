# thetaTailRankThreeNumerator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fa330dbf206380f4282cbaf4e6c0b910b4ea19f4bc971a0f44d35870b2e6175d",
  "kind": "def",
  "lexical_name": "thetaTailRankThreeNumerator",
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
  "slug": "thetatailrankthreenumerator--e85843517987015fe90c6aaf",
  "source": {
    "blob": "6239de81650871309a1b89c69027a2242260d0e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 25,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/49551f8523cd3eb86a0cb4bd1459540756477995c5c6ac468fdbec6cf9f40aebRankThree012Pare/Variant98f6bb269e97486117c6a582cb45f7141b5ae2e92e2592b8b5257433819b31d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e85843517987015fe90c6aaf4ae7527877ef0080a9767a44b81be22dc30de91d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/49551f8523cd3eb86a0cb4bd1459540756477995c5c6ac468fdbec6cf9f40aebRankThree012Pare/Variant98f6bb269e97486117c6a582cb45f7141b5ae2e92e2592b8b5257433819b31d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fa330dbf206380f4282cbaf4e6c0b910b4ea19f4bc971a0f44d35870b2e6175d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def thetaTailRankThreeNumerator (t : ℝ) : ℝ :=
  (deriv (deriv thetaPhi) t * thetaTail 4 t - thetaPhi t * thetaTail 2 t) *
      thetaTailGap 0 2 t -
    thetaTailGap 0 4 t *
      (deriv (deriv thetaPhi) t * thetaTail 2 t - thetaPhi t ^ 2)

/-- Scalar expansion of the rank-three compound numerator, including every sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/49551f8523cd3eb86a0cb4bd1459540756477995c5c6ac468fdbec6cf9f40aebRankThree012Pare/Variant98f6bb269e97486117c6a582cb45f7141b5ae2e92e2592b8b5257433819b31d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/49551f8523cd3eb86a0cb4bd1459540756477995c5c6ac468fdbec6cf9f40aebRankThree012Pare/Variant98f6bb269e97486117c6a582cb45f7141b5ae2e92e2592b8b5257433819b31d8.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6239de81650871309a1b89c69027a2242260d0e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
