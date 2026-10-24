# AntitoneOn.sum_le_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b46704eb-08c2-140a-ceae-e2b117c20eaa",
  "kind": "theorem",
  "lexical_name": "AntitoneOn.sum_le_integral",
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
  "slug": "antitoneon-sum-le-integral--3bfbd68a79c2a1cd66c2f3fa",
  "source": {
    "blob": "b8fd71d7496685894762dfb5ad2b07fda3fce7a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 134,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant96d0e4250fc5378fb1f360529bb1606e934242d4e2fd1094238f1a0b0fd3fd19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3bfbd68a79c2a1cd66c2f3fa42b3c5268e0ebf7b19a39229d039e74c4150cbd7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant96d0e4250fc5378fb1f360529bb1606e934242d4e2fd1094238f1a0b0fd3fd19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b46704eb-08c2-140a-ceae-e2b117c20eaa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AntitoneOn.sum_le_integral (hf : AntitoneOn f (Icc x₀ (x₀ + a))) :
    (∑ i ∈ Finset.range a, f (x₀ + (i + 1 : ℕ))) ≤ ∫ x in x₀..x₀ + a, f x := by
  have hint : ∀ k : ℕ, k < a → IntervalIntegrable f volume (x₀ + k) (x₀ + (k + 1 : ℕ)) := by
    intro k hk
    refine (hf.mono ?_).intervalIntegrable
    rw [uIcc_of_le]
    · apply Icc_subset_Icc
      · simp only [le_add_iff_nonneg_right, Nat.cast_nonneg]
      · simp only [add_le_add_iff_left, Nat.cast_le, Nat.succ_le_of_lt hk]
    · simp only [add_le_add_iff_left, Nat.cast_le, Nat.le_succ]
  calc
    (∑ i ∈ Finset.range a, f (x₀ + (i + 1 : ℕ))) =
        ∑ i ∈ Finset.range a, ∫ _ in x₀ + i..x₀ + (i + 1 : ℕ), f (x₀ + (i + 1 : ℕ)) := by simp
    _ ≤ ∑ i ∈ Finset.range a, ∫ x in x₀ + i..x₀ + (i + 1 : ℕ), f x := by
      apply Finset.sum_le_sum fun i hi => ?_
      have ia : i + 1 ≤ a := Finset.mem_range.1 hi
      refine intervalIntegral.integral_mono_on (by simp) (by simp) (hint _ ia) fun x hx => ?_
      apply hf _ _ hx.2
      · refine mem_Icc.2 ⟨le_trans (le_add_of_nonneg_right (Nat.cast_nonneg _)) hx.1,
          le_trans hx.2 ?_⟩
        simp only [Nat.cast_le, add_le_add_iff_left, ia]
      · refine mem_Icc.2 ⟨le_add_of_nonneg_right (Nat.cast_nonneg _), ?_⟩
        simp only [add_le_add_iff_left, Nat.cast_le, ia]
    _ = ∫ x in x₀..x₀ + a, f x := by
      convert intervalIntegral.sum_integral_adjacent_intervals hint
      simp only [Nat.cast_zero, add_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant96d0e4250fc5378fb1f360529bb1606e934242d4e2fd1094238f1a0b0fd3fd19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant96d0e4250fc5378fb1f360529bb1606e934242d4e2fd1094238f1a0b0fd3fd19.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8fd71d7496685894762dfb5ad2b07fda3fce7a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
