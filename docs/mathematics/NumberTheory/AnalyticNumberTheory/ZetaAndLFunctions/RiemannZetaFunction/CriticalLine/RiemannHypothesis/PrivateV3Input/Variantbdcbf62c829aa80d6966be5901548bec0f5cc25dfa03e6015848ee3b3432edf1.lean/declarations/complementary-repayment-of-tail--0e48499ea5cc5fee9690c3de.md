# complementary_repayment_of_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6a2337aaada374b14c548052f4740feeea352f06",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 130,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bd/bdcbf62c829aa80d6966be5901548bec0f5cc25dfa03e6015848ee3b3432edf1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9ad6c812-a69f-9743-7162-5db9906ba123",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3590c2a3-0a31-896a-1e2e-7b87f679471e",
  "kind": "theorem",
  "lexical_name": "complementary_repayment_of_tail",
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
  "slug": "complementary-repayment-of-tail--0e48499ea5cc5fee9690c3de",
  "source": {
    "blob": "6a2337aaada374b14c548052f4740feeea352f06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 130,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV3Input/Variantbdcbf62c829aa80d6966be5901548bec0f5cc25dfa03e6015848ee3b3432edf1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e48499ea5cc5fee9690c3def19c42b5664cdc4e68319f7d13807c967c806756",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV3Input/Variantbdcbf62c829aa80d6966be5901548bec0f5cc25dfa03e6015848ee3b3432edf1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3590c2a3-0a31-896a-1e2e-7b87f679471e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complementary_repayment_of_tail (h : PairedPrimeQuadratureTailLowerBound) :
    ∃ C : ℝ, 0 ≤ C ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      diagonalMainCoefficient A * A + negativeTimeMean A - criticalContinuousMoment A - C +
        (7 / 2560 : ℝ)*A*Real.exp (A / 160) ≤ complementaryPrimeBlocks A := by
  obtain ⟨C, hC0, R, hR, htail⟩ := h
  obtain ⟨S, hS, hblock⟩ := earlyPrimeBlock_eventual_bound
  refine ⟨C, hC0, max R S, hR.trans (le_max_left _ _), ?_⟩
  intro A hA
  have hRA := (le_max_left _ _).trans hA
  have hSA := (le_max_right _ _).trans hA
  have ht := htail A hRA
  rw [primeSum_eq_early_add_complement (hR.trans hRA)] at ht
  linarith [hblock A hSA]

end FormalResearch.RiemannHypothesis.SourcePairedTailPrimeBlock
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV3Input/Variantbdcbf62c829aa80d6966be5901548bec0f5cc25dfa03e6015848ee3b3432edf1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV3Input/Variantbdcbf62c829aa80d6966be5901548bec0f5cc25dfa03e6015848ee3b3432edf1.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a2337aaada374b14c548052f4740feeea352f06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
