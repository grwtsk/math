# bumpInterior_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "044516ce67f9c525f20bb9ce878d0cf28752d8bb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/958f6caee853c3f717e4bb86c97836e3fb32ea84214b00cf94dcf3356dca37cf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1eceb0e7-7772-b01b-bd01-fbee5b45df45",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e2f3f404-fdf8-d9c2-5258-9b56ef45c93a",
  "kind": "theorem",
  "lexical_name": "bumpInterior_integral",
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
  "slug": "bumpinterior-integral--72b10023c269932f9150f7e3",
  "source": {
    "blob": "044516ce67f9c525f20bb9ce878d0cf28752d8bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 79,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeSquareCorrelationAudit/Variant958f6caee853c3f717e4bb86c97836e3fb32ea84214b00cf94dcf3356dca37cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72b10023c269932f9150f7e3303564df06f833b0b2b69ba920719759e5814f3a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimeSquareCorrelationAudit/Variant958f6caee853c3f717e4bb86c97836e3fb32ea84214b00cf94dcf3356dca37cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2f3f404-fdf8-d9c2-5258-9b56ef45c93a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bumpInterior_integral (A : ℝ) (hA : 1 ≤ A) :
    (∫ x in -A..A, bumpInterior A x) = (256 / 315) * A / Real.sqrt A := by
  have hn : A ≠ 0 := by linarith
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x _ ↦ bumpPrimitive_hasDerivAt A x hn)
    ((bumpInterior_continuous A).intervalIntegrable (-A) A)]
  simp only [bumpPrimitive, neg_div, div_self hn]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimeSquareCorrelationAudit/Variant958f6caee853c3f717e4bb86c97836e3fb32ea84214b00cf94dcf3356dca37cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimeSquareCorrelationAudit/Variant958f6caee853c3f717e4bb86c97836e3fb32ea84214b00cf94dcf3356dca37cf.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `044516ce67f9c525f20bb9ce878d0cf28752d8bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
