# rankThree_compound_numerator_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:228ca895-3ae0-b3d0-9362-50776337cbe3",
  "kind": "theorem",
  "lexical_name": "rankThree_compound_numerator_identity",
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
  "slug": "rankthree-compound-numerator-identity--46d9df717624d462c1c45dac",
  "source": {
    "blob": "6239de81650871309a1b89c69027a2242260d0e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 32,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/49551f8523cd3eb86a0cb4bd1459540756477995c5c6ac468fdbec6cf9f40aebRankThree012Pare/Variant98f6bb269e97486117c6a582cb45f7141b5ae2e92e2592b8b5257433819b31d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46d9df717624d462c1c45dacfc0290f7f77767f8929be19b60f3625ee69d41b6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/49551f8523cd3eb86a0cb4bd1459540756477995c5c6ac468fdbec6cf9f40aebRankThree012Pare/Variant98f6bb269e97486117c6a582cb45f7141b5ae2e92e2592b8b5257433819b31d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:228ca895-3ae0-b3d0-9362-50776337cbe3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rankThree_compound_numerator_identity (p d dd t1 t2 t3 t4 : ℝ) :
    (dd * t4 - p * t2) * (d * t2 + p * t1) -
      (d * t4 + p * t3) * (dd * t2 - p ^ 2) =
    p * (dd * (t4 * t1 - t3 * t2) +
      d * (p * t4 - t2 ^ 2) + p * (p * t3 - t2 * t1)) := by
  ring

/-- The source numerator is exactly the displayed combination of three tail minors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/49551f8523cd3eb86a0cb4bd1459540756477995c5c6ac468fdbec6cf9f40aebRankThree012Pare/Variant98f6bb269e97486117c6a582cb45f7141b5ae2e92e2592b8b5257433819b31d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/49551f8523cd3eb86a0cb4bd1459540756477995c5c6ac468fdbec6cf9f40aebRankThree012Pare/Variant98f6bb269e97486117c6a582cb45f7141b5ae2e92e2592b8b5257433819b31d8.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6239de81650871309a1b89c69027a2242260d0e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
