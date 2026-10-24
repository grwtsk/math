# squareTail_pairedTail_work

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "63dcb272aab2e76ce0d1114c3dd7e23d015f125e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/8885fbead64589d063aa135cdbabd2e7cf28af882c27a121647aa4c90f672ae8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3908fe3f-29b4-1ca2-200f-b11b341384a6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:46be9e99-e64b-cc57-357a-ea0cb585549b",
  "kind": "theorem",
  "lexical_name": "squareTail_pairedTail_work",
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
  "slug": "squaretail-pairedtail-work--95260de0e574e3e553723f9f",
  "source": {
    "blob": "63dcb272aab2e76ce0d1114c3dd7e23d015f125e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 62,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairedSquareQuadrature/Variant8885fbead64589d063aa135cdbabd2e7cf28af882c27a121647aa4c90f672ae8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95260de0e574e3e553723f9fcafe4d307498f724747085a02051416b34056088",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairedSquareQuadrature/Variant8885fbead64589d063aa135cdbabd2e7cf28af882c27a121647aa4c90f672ae8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46be9e99-e64b-cc57-357a-ea0cb585549b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squareTail_pairedTail_work {A : ℝ} (hA : 1 ≤ A) :
    (∫ u in 0..2 * A, squareTail u * deriv (pairedTailTest A) u) =
      pairedSquareReadout A := by
  have hd := (pairedTailTest_contDiff hA).continuous_deriv_one.intervalIntegrable
    (μ := volume) 0 (2 * A)
  simp_rw [squareTail, sub_mul]
  rw [intervalIntegral.integral_sub (hd.const_mul squarePrefixBaseline)
    (squarePrefix_mul_deriv_intervalIntegrable 0 (2 * A) (by linarith)
      (pairedTailTest A) (pairedTailTest_contDiff hA)),
    intervalIntegral.integral_const_mul, intervalIntegral.integral_deriv_eq_sub
      (fun u _ => (pairedTailTest_contDiff hA).differentiable (by norm_num) u) hd,
    pairedTailTest_at_zero hA, pairedTailTest_at_upper hA,
    squarePrefix_pairedTail_work hA]
  ring

/-- Both actual slope phases reconstruct the paired test derivative before any bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairedSquareQuadrature/Variant8885fbead64589d063aa135cdbabd2e7cf28af882c27a121647aa4c90f672ae8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairedSquareQuadrature/Variant8885fbead64589d063aa135cdbabd2e7cf28af882c27a121647aa4c90f672ae8.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63dcb272aab2e76ce0d1114c3dd7e23d015f125e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
