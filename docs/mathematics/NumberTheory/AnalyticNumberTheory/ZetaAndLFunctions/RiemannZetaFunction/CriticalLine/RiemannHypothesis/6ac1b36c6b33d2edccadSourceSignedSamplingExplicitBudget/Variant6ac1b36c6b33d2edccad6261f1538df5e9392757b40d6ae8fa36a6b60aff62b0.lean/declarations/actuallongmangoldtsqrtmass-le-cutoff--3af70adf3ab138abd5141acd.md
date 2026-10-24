# actualLongMangoldtSqrtMass_le_cutoff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fb8055f604e138de1ade3de18ec6aad45c728fb0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6ac1b36c6b33d2edccad6261f1538df5e9392757b40d6ae8fa36a6b60aff62b0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8dc707df-bdbc-e583-d8a3-93d5d42e68b4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:55011fed-e54f-08ae-e674-0e6ba85ccfe7",
  "kind": "theorem",
  "lexical_name": "actualLongMangoldtSqrtMass_le_cutoff",
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
  "slug": "actuallongmangoldtsqrtmass-le-cutoff--3af70adf3ab138abd5141acd",
  "source": {
    "blob": "fb8055f604e138de1ade3de18ec6aad45c728fb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 62,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6ac1b36c6b33d2edccadSourceSignedSamplingExplicitBudget/Variant6ac1b36c6b33d2edccad6261f1538df5e9392757b40d6ae8fa36a6b60aff62b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3af70adf3ab138abd5141acdc3792033d26e6dd3a35db3e59ac12dbb2b1762c2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6ac1b36c6b33d2edccadSourceSignedSamplingExplicitBudget/Variant6ac1b36c6b33d2edccad6261f1538df5e9392757b40d6ae8fa36a6b60aff62b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55011fed-e54f-08ae-e674-0e6ba85ccfe7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualLongMangoldtSqrtMass_le_cutoff (A : ℝ) (hA : 1 ≤ A) :
    (∑ m ∈ longInventory A, vonMangoldt m / Real.sqrt (m : ℝ)) ≤
      Real.sqrt (sourceKernelCutoff A : ℝ) *
        (Real.log (sourceKernelCutoff A : ℝ) + Real.log 4 + 4 + Real.log 2) := by
  let N := sourceKernelCutoff A
  have hN : 1 ≤ N := (vaughanCutoff_pos A hA).trans
    (vaughanCutoff_le_sourceKernelCutoff A hA)
  have hN0 : 0 < (N : ℝ) := by exact_mod_cast (by omega : 0 < N)
  have hlog : 0 ≤ Real.log (N : ℝ) := Real.log_nonneg (by exact_mod_cast hN)
  have he := mangoldtLogError_abs_le (Real.log (N : ℝ)) hlog
  simp only [mangoldtLogError, mangoldtLogPrefix, Real.exp_log hN0,
    Nat.floor_natCast] at he
  have hpref : weightedMangoldt N ≤ Real.log (N : ℝ) + Real.log 4 + 4 + Real.log 2 := by
    have hu := (abs_le.mp he).2
    linarith
  have hsub : (∑ m ∈ longInventory A, vonMangoldt m / (m : ℝ)) ≤ weightedMangoldt N := by
    unfold weightedMangoldt
    apply Finset.sum_le_sum_of_subset_of_nonneg
    · intro m hm
      have hb := Finset.mem_Ioc.mp hm
      exact Finset.mem_Ioc.mpr ⟨(Nat.zero_le _).trans_lt hb.1, hb.2⟩
    · intro m _ _
      exact div_nonneg vonMangoldt_nonneg (Nat.cast_nonneg _)
  calc
    _ ≤ ∑ m ∈ longInventory A,
        Real.sqrt (N : ℝ) * (vonMangoldt m / (m : ℝ)) := by
      apply Finset.sum_le_sum
      intro m hm
      have hm0 : 0 < (m : ℝ) := by exact_mod_cast longInventory_pos A hm
      have hmn : (m : ℝ) ≤ N := by exact_mod_cast (Finset.mem_Ioc.mp hm).2
      have heq : vonMangoldt m / Real.sqrt (m : ℝ) =
          Real.sqrt (m : ℝ) * (vonMangoldt m / (m : ℝ)) := by
        rw [show Real.sqrt (m : ℝ) * (vonMangoldt m / (m : ℝ)) =
          vonMangoldt m * (Real.sqrt (m : ℝ) / (m : ℝ)) by ring,
          Real.sqrt_div_self']
        ring
      rw [heq]
      exact mul_le_mul_of_nonneg_right (Real.sqrt_le_sqrt hmn)
        (div_nonneg vonMangoldt_nonneg hm0.le)
    _ = Real.sqrt (N : ℝ) * (∑ m ∈ longInventory A, vonMangoldt m / (m : ℝ)) := by
      rw [Finset.mul_sum]
    _ ≤ Real.sqrt (N : ℝ) * weightedMangoldt N :=
      mul_le_mul_of_nonneg_left hsub (Real.sqrt_nonneg _)
    _ ≤ _ := mul_le_mul_of_nonneg_left hpref (Real.sqrt_nonneg _)

/-- The unchanged upper floor cutoff gives an all-real explicit long-row budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6ac1b36c6b33d2edccadSourceSignedSamplingExplicitBudget/Variant6ac1b36c6b33d2edccad6261f1538df5e9392757b40d6ae8fa36a6b60aff62b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6ac1b36c6b33d2edccadSourceSignedSamplingExplicitBudget/Variant6ac1b36c6b33d2edccad6261f1538df5e9392757b40d6ae8fa36a6b60aff62b0.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb8055f604e138de1ade3de18ec6aad45c728fb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
