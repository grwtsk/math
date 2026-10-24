# pairedTailTest_prime_sum_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "33c586f26ab25ab26e8358a4d783a6d24759b106",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 95,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3f32fe61cf67d807cf0d5984918ebff5a0afe6fa3e1a9bfa2e8f4a59d3d39c2b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5ce3ce08-23be-6563-3a7e-67c982c55ad6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:76e0e309-42af-a37b-c3ce-960e6930c424",
  "kind": "theorem",
  "lexical_name": "pairedTailTest_prime_sum_eq",
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
  "slug": "pairedtailtest-prime-sum-eq--3082e6bc2634359499622178",
  "source": {
    "blob": "33c586f26ab25ab26e8358a4d783a6d24759b106",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 95,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FormalResearchRiemannHypothesisSourcePairedTailQuadrature/Variant3f32fe61cf67d807cf0d5984918ebff5a0afe6fa3e1a9bfa2e8f4a59d3d39c2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3082e6bc2634359499622178c36ded7affd64822401b362ed7d9acd8d8816ab1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FormalResearchRiemannHypothesisSourcePairedTailQuadrature/Variant3f32fe61cf67d807cf0d5984918ebff5a0afe6fa3e1a9bfa2e8f4a59d3d39c2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76e0e309-42af-a37b-c3ce-960e6930c424`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairedTailTest_prime_sum_eq (A : ℝ) :
    primeLogSum (2 * A) (pairedTailTest A) =
      -primeLogSum (2 * A) (criticalPrimeTest A) +
        primeLogSum (2 * A) (negativeSurvival A) := by
  unfold primeLogSum pairedTailTest
  simp only [mul_add, mul_neg, Finset.sum_add_distrib, Finset.sum_neg_distrib]

/-- The complete paired contrast equals signed quadrature minus the full continuous drift. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FormalResearchRiemannHypothesisSourcePairedTailQuadrature/Variant3f32fe61cf67d807cf0d5984918ebff5a0afe6fa3e1a9bfa2e8f4a59d3d39c2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FormalResearchRiemannHypothesisSourcePairedTailQuadrature/Variant3f32fe61cf67d807cf0d5984918ebff5a0afe6fa3e1a9bfa2e8f4a59d3d39c2b.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33c586f26ab25ab26e8358a4d783a6d24759b106` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
