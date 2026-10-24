# cutoffOneDiagonal_sub_prime_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:928eb18a-b47c-218b-6b90-25a1bcd0ca0c",
  "kind": "theorem",
  "lexical_name": "cutoffOneDiagonal_sub_prime_abs_le",
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
  "slug": "cutoffonediagonal-sub-prime-abs-le--918fb41fa0692d0bc2cb6ceb",
  "source": {
    "blob": "d972258c3aaa17990f9a83b5855d7952550e7364",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 138,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/46308a3b1b0a1e30dbe7bcf0ea20759f51997b0d2c2f160f69d81de40bece866SourceCutoffOneL/Variant51746a009bf3e3cb1c02388f3cca3ab5aa8ee5d701145069a861354e813cf781.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:918fb41fa0692d0bc2cb6cebda0fdc423e41f636ead72a821edb6036073e9822",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/46308a3b1b0a1e30dbe7bcf0ea20759f51997b0d2c2f160f69d81de40bece866SourceCutoffOneL/Variant51746a009bf3e3cb1c02388f3cca3ab5aa8ee5d701145069a861354e813cf781.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:928eb18a-b47c-218b-6b90-25a1bcd0ca0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cutoffOneDiagonal_sub_prime_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |cutoffOneDiagonal A - cutoffOnePrimeDiagonal A| ≤
      weightedMangoldt (sourceKernelCutoff A) - weightedPrime (sourceKernelCutoff A) := by
  rw [cutoffOneDiagonal_sub_prime_eq, abs_neg, weighted_difference]
  calc
    _ ≤ ∑ m ∈ Finset.Ioc 1 (sourceKernelCutoff A),
        |properPowerCoefficient m / (m : ℝ) * diagonalCorrelation A (Real.log m)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ m ∈ Finset.Ioc 1 (sourceKernelCutoff A),
        properPowerCoefficient m / (m : ℝ) := by
      apply Finset.sum_le_sum
      intro m _
      have hc : 0 ≤ properPowerCoefficient m / (m : ℝ) :=
        div_nonneg (properPowerCoefficient_nonneg m) (by positivity)
      rw [abs_mul, abs_of_nonneg hc]
      exact mul_le_of_le_one_right hc (diagonalCorrelation_abs_le_one A (Real.log m) hA)
    _ ≤ _ := by
      apply Finset.sum_le_sum_of_subset_of_nonneg
      · intro m hm
        exact Finset.mem_Ioc.mpr ⟨by have := (Finset.mem_Ioc.mp hm).1; omega,
          (Finset.mem_Ioc.mp hm).2⟩
      · intro m _ _
        exact div_nonneg (properPowerCoefficient_nonneg m) (by positivity)

/-- The cutoff-one prime main term has the smaller 11 CM budget, without a short-log window. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/46308a3b1b0a1e30dbe7bcf0ea20759f51997b0d2c2f160f69d81de40bece866SourceCutoffOneL/Variant51746a009bf3e3cb1c02388f3cca3ab5aa8ee5d701145069a861354e813cf781.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/46308a3b1b0a1e30dbe7bcf0ea20759f51997b0d2c2f160f69d81de40bece866SourceCutoffOneL/Variant51746a009bf3e3cb1c02388f3cca3ab5aa8ee5d701145069a861354e813cf781.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d972258c3aaa17990f9a83b5855d7952550e7364` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
