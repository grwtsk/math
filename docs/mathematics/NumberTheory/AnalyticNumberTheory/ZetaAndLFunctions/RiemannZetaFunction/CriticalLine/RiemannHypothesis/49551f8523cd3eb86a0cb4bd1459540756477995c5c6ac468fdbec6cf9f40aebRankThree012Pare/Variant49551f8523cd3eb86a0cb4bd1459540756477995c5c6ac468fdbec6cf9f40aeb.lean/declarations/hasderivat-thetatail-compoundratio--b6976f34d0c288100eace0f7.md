# hasDerivAt_thetaTail_compoundRatio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "459315258fb6b9793b9f67ac03ac5e738fb80353",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/49551f8523cd3eb86a0cb4bd1459540756477995c5c6ac468fdbec6cf9f40aeb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d37d2c73-1cec-d6cc-5fc4-25edb0aeeb8e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e4d79fba-011e-5721-4683-f1766a7b10d8",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_thetaTail_compoundRatio",
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
  "slug": "hasderivat-thetatail-compoundratio--b6976f34d0c288100eace0f7",
  "source": {
    "blob": "459315258fb6b9793b9f67ac03ac5e738fb80353",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 44,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/49551f8523cd3eb86a0cb4bd1459540756477995c5c6ac468fdbec6cf9f40aebRankThree012Pare/Variant49551f8523cd3eb86a0cb4bd1459540756477995c5c6ac468fdbec6cf9f40aeb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6976f34d0c288100eace0f729bab6b2281b5a551c81d3af0914ecb3187173e3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/49551f8523cd3eb86a0cb4bd1459540756477995c5c6ac468fdbec6cf9f40aebRankThree012Pare/Variant49551f8523cd3eb86a0cb4bd1459540756477995c5c6ac468fdbec6cf9f40aeb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4d79fba-011e-5721-4683-f1766a7b10d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivAt_thetaTail_compoundRatio {t : ℝ} (ht : 0 ≤ t) :
    HasDerivAt (fun u => thetaTailGap 0 4 u / thetaTailGap 0 2 u)
      (thetaTailRankThreeNumerator t / thetaTailGap 0 2 t ^ 2) t := by
  convert! (hasDerivAt_thetaTailGap_zero_succ_succ 2 ht).div
    (hasDerivAt_thetaTailGap_zero_succ_succ 0 ht)
    (thetaTailGap_zero_two_positive ht).ne' using 1
  simp only [thetaTailRankThreeNumerator, thetaTail_zero]
  ring

/-- Pointwise nonpositivity of the explicit numerator is exactly the new
compound-ratio monotonicity obligation. No source sign premise is discharged here. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/49551f8523cd3eb86a0cb4bd1459540756477995c5c6ac468fdbec6cf9f40aebRankThree012Pare/Variant49551f8523cd3eb86a0cb4bd1459540756477995c5c6ac468fdbec6cf9f40aeb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/49551f8523cd3eb86a0cb4bd1459540756477995c5c6ac468fdbec6cf9f40aebRankThree012Pare/Variant49551f8523cd3eb86a0cb4bd1459540756477995c5c6ac468fdbec6cf9f40aeb.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `459315258fb6b9793b9f67ac03ac5e738fb80353` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
