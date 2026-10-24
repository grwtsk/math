# firstPrimeMoment_eq_primitive_filter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "16fa4330c4fef26686485ab22425ac94088f11f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 128,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f846a72a6e5bdef74d9aa62412302882c26fddd69cafbfdbcf18a30cd1164286.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eb9f06ed-7421-c982-161a-48135514e363",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d6e49771-f319-3692-1489-575a8fdf2a21",
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
  "slug": "firstprimemoment-eq-primitive-filter--b0d181431df21a10b6cced7b",
  "source": {
    "blob": "16fa4330c4fef26686485ab22425ac94088f11f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 128,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitivePrimeInteraction/Variantf846a72a6e5bdef74d9aa62412302882c26fddd69cafbfdbcf18a30cd1164286.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0d181431df21a10b6cced7bff897ddfa215bf52ba708a5cacc031b530d4f74d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitivePrimeInteraction/Variantf846a72a6e5bdef74d9aa62412302882c26fddd69cafbfdbcf18a30cd1164286.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6e49771-f319-3692-1489-575a8fdf2a21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–145.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitivePrimeInteraction/Variantf846a72a6e5bdef74d9aa62412302882c26fddd69cafbfdbcf18a30cd1164286.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitivePrimeInteraction/Variantf846a72a6e5bdef74d9aa62412302882c26fddd69cafbfdbcf18a30cd1164286.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16fa4330c4fef26686485ab22425ac94088f11f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
