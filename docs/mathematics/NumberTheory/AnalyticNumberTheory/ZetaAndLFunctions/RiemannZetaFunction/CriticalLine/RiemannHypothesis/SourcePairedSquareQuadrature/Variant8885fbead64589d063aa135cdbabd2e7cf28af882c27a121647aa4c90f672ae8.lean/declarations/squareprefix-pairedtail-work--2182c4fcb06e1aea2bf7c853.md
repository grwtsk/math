# squarePrefix_pairedTail_work

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
      "line": 34,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/8885fbead64589d063aa135cdbabd2e7cf28af882c27a121647aa4c90f672ae8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3b9cf6de-c89a-60c2-9dd2-18e897bd0d94",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e99e8121-a5b1-96ea-f35c-9142e736a8cc",
  "kind": "theorem",
  "lexical_name": "squarePrefix_pairedTail_work",
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
  "slug": "squareprefix-pairedtail-work--2182c4fcb06e1aea2bf7c853",
  "source": {
    "blob": "63dcb272aab2e76ce0d1114c3dd7e23d015f125e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 34,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairedSquareQuadrature/Variant8885fbead64589d063aa135cdbabd2e7cf28af882c27a121647aa4c90f672ae8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2182c4fcb06e1aea2bf7c853507a7ba185e4b5b8b62da9ad6c7f6ce460960efb",
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

Occurrence: `result:e99e8121-a5b1-96ea-f35c-9142e736a8cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squarePrefix_pairedTail_work {A : ℝ} (hA : 1 ≤ A) :
    (∫ u in 0..2 * A, squarePrefix u * deriv (pairedTailTest A) u) =
      -pairedSquareReadout A := by
  have he := integral_finite_steps_deriv 0 (2 * A) (primeLogInventory A)
    (fun p => 2 * Real.log (p : ℝ)) squarePrefixCoefficient
    (fun p hp => by
      have hb := primeLogInventory_log_bounds A p hp
      constructor <;> linarith) (pairedTailTest A) (pairedTailTest_contDiff hA)
  have hsteps : (∫ u in 0..2 * A, squarePrefix u * deriv (pairedTailTest A) u) =
      ∫ u in 0..2 * A, ∑ p ∈ primeLogInventory A,
        squarePrefixCoefficient p *
          (if 2 * Real.log (p : ℝ) ≤ u then deriv (pairedTailTest A) u else 0) := by
    apply intervalIntegral.integral_congr
    intro u hu
    dsimp only
    rw [squarePrefix_eq_steps (2 * A) u
      ((uIcc_of_le (by linarith : 0 ≤ 2 * A) ▸ hu).2)]
    simp only [show 2 * A / 2 = A by ring, Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro p hp
    split_ifs <;> simp
  rw [hsteps, he, pairedTailTest_at_upper hA, pairedSquareReadout,
    ← Finset.sum_neg_distrib]
  apply Finset.sum_congr rfl
  intro p hp
  ring

/-- The complete baseline has zero paired endpoint contribution, with no removal of its atoms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairedSquareQuadrature/Variant8885fbead64589d063aa135cdbabd2e7cf28af882c27a121647aa4c90f672ae8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairedSquareQuadrature/Variant8885fbead64589d063aa135cdbabd2e7cf28af882c27a121647aa4c90f672ae8.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63dcb272aab2e76ce0d1114c3dd7e23d015f125e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
