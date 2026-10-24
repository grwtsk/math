# firstPrimeMoment_eq_primitive_filter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ba978c2a50e0663840941ce08b16063be2f2bcb3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/48e3c0decfde60385af6f4db254b06f45b9fb2f6aaaf8b84cc2b0b057e0e9e7b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be23e39b-c91e-f6b7-5575-6c3a0f232209",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e5a86d1d-3487-5a59-55a0-fd5cd7f35952",
  "kind": "theorem",
  "lexical_name": "firstPrimeMoment_eq_primitive_filter",
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
  "slug": "firstprimemoment-eq-primitive-filter--1ffc4dba8de4ff1d544c30dd",
  "source": {
    "blob": "ba978c2a50e0663840941ce08b16063be2f2bcb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 134,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitivePrimeInteraction/Variant48e3c0decfde60385af6f4db254b06f45b9fb2f6aaaf8b84cc2b0b057e0e9e7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ffc4dba8de4ff1d544c30dd72e3d599ad013a8c9178985de2ae4cc41c1d482f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitivePrimeInteraction/Variant48e3c0decfde60385af6f4db254b06f45b9fb2f6aaaf8b84cc2b0b057e0e9e7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5a86d1d-3487-5a59-55a0-fd5cd7f35952`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem firstPrimeMoment_eq_primitive_filter {A : ℝ} (hA : 0 < A) :
    firstPrimeMoment A =
      (∑ p ∈ primeLogInventory (2 * A), Real.log (p : ℝ) *
        Real.exp (-Real.log (p : ℝ) / 2) * primitiveCorrelationTwo A (Real.log p)) +
      (∑ p ∈ primeLogInventory (2 * A), Real.log (p : ℝ) *
        Real.exp (-Real.log (p : ℝ) / 2) * primitiveCorrelationOne A (Real.log p)) / 2 +
      (∑ p ∈ primeLogInventory (2 * A), Real.log (p : ℝ) *
        Real.exp (-Real.log (p : ℝ) / 2) * primitiveCorrelationZero A (Real.log p)) / 16 := by
  rw [firstPrimeMoment, Finset.sum_div, Finset.sum_div,
    ← Finset.sum_add_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro p hp
  rw [ArithmeticFunction.vonMangoldt_apply_prime (Finset.mem_filter.mp hp).2]
  unfold closedPrimeWeight exponentialTest
  rw [sourceCorrelation_eq_primitive_filter hA]
  ring

end FormalResearch.RiemannHypothesis.SourcePrimitivePrimeInteraction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitivePrimeInteraction/Variant48e3c0decfde60385af6f4db254b06f45b9fb2f6aaaf8b84cc2b0b057e0e9e7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitivePrimeInteraction/Variant48e3c0decfde60385af6f4db254b06f45b9fb2f6aaaf8b84cc2b0b057e0e9e7b.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba978c2a50e0663840941ce08b16063be2f2bcb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
