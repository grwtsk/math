# actualSignedQuotientSamplingError_abs_le_weighted_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bd9c409e3fac27fc8d433e9376d731b9b18390c9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6eb6af27a8a3e4560f6690dbd64aaee8bbf836d553c1f9a8a8bfbc4be4020435.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:87468f03-b276-d6c8-6c6b-5e435a3e67e6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a99893d1-b3f7-5b03-2a71-5e9a8e5061ff",
  "kind": "theorem",
  "lexical_name": "actualSignedQuotientSamplingError_abs_le_weighted_budget",
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
  "slug": "actualsignedquotientsamplingerror-abs-le-weighted-budget--5fac541e55978e71b9e639e0",
  "source": {
    "blob": "bd9c409e3fac27fc8d433e9376d731b9b18390c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 83,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6eb6af27a8a3e4560f66SourceSignedDivisorSamplingBudget/Variant6eb6af27a8a3e4560f6690dbd64aaee8bbf836d553c1f9a8a8bfbc4be4020435.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fac541e55978e71b9e639e00a1f4ec3812fc8532199f334a398d67af1bdf520",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6eb6af27a8a3e4560f66SourceSignedDivisorSamplingBudget/Variant6eb6af27a8a3e4560f6690dbd64aaee8bbf836d553c1f9a8a8bfbc4be4020435.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a99893d1-b3f7-5b03-2a71-5e9a8e5061ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualSignedQuotientSamplingError_abs_le_weighted_budget (A : ℝ) (hA : 1 ≤ A) :
    |actualSignedQuotientSamplingError A| ≤
      ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), |realMoebius d| *
        (∑ m ∈ longInventory A, vonMangoldt m *
          (16 * (162826 / 7623 : ℝ) / (A ^ 2 * Real.sqrt ((d * m : ℕ) : ℝ)))) := by
  unfold actualSignedQuotientSamplingError
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        |realMoebius d * (∑ m ∈ longInventory A,
          vonMangoldt m * actualQuotientSamplingError A d m)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ _ := by
      apply Finset.sum_le_sum
      intro d hd
      rw [abs_mul]
      apply mul_le_mul_of_nonneg_left _ (abs_nonneg _)
      calc
        _ ≤ ∑ m ∈ longInventory A, |vonMangoldt m * actualQuotientSamplingError A d m| :=
          Finset.abs_sum_le_sum_abs _ _
        _ ≤ _ := by
          apply Finset.sum_le_sum
          intro m hm
          rw [abs_mul, abs_of_nonneg vonMangoldt_nonneg]
          apply mul_le_mul_of_nonneg_left _ vonMangoldt_nonneg
          exact quotient_sample_sub_main_minus_short_abs_le A hA m d
            (longInventory_pos A hm) (by have := (Finset.mem_Icc.mp hd).1; omega)

end
end FormalResearch.RiemannHypothesis.SourceSignedDivisorSamplingBudget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6eb6af27a8a3e4560f66SourceSignedDivisorSamplingBudget/Variant6eb6af27a8a3e4560f6690dbd64aaee8bbf836d553c1f9a8a8bfbc4be4020435.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6eb6af27a8a3e4560f66SourceSignedDivisorSamplingBudget/Variant6eb6af27a8a3e4560f6690dbd64aaee8bbf836d553c1f9a8a8bfbc4be4020435.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd9c409e3fac27fc8d433e9376d731b9b18390c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
