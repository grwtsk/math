# Submartingale.sum_smul_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "479a8484ba70fd3cbc5341092c5479a3454b9dfb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 561,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/87b145177bbddbb1a9dddd4b40f38ef9fe183fde3d0e831348e573e98245c516.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2262fcba-2b35-d55a-72db-88a9a2181fb9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ce38f880-9fbe-9a4b-5f25-6131f71a61a5",
  "kind": "theorem",
  "lexical_name": "Submartingale.sum_smul_sub",
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
  "slug": "submartingale-sum-smul-sub--1a4af43ee8762e02f842e4af",
  "source": {
    "blob": "479a8484ba70fd3cbc5341092c5479a3454b9dfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 595,
    "line": 561,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Basic/Variant87b145177bbddbb1a9dddd4b40f38ef9fe183fde3d0e831348e573e98245c516.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a4af43ee8762e02f842e4afb8fd690a0be926f9894f227969e80a7a00ba1a08",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Basic/Variant87b145177bbddbb1a9dddd4b40f38ef9fe183fde3d0e831348e573e98245c516.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce38f880-9fbe-9a4b-5f25-6131f71a61a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 561–595.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Submartingale.sum_smul_sub [IsFiniteMeasure μ] {R : ℝ}
    {f : ℕ → Ω → E} {ξ : ℕ → Ω → ℝ}
    (hf : Submartingale f 𝒢 μ) (hξ : StronglyAdapted 𝒢 ξ) (hbdd : ∀ n ω, ξ n ω ≤ R)
    (hnonneg : ∀ n ω, 0 ≤ ξ n ω) :
    Submartingale (fun n => ∑ k ∈ Finset.range n, ξ k • (f (k + 1) - f k)) 𝒢 μ := by
  have hξbdd : ∀ i, ∃ C, ∀ ω, ‖ξ i ω‖ ≤ C := fun i =>
    ⟨R, fun ω => (abs_of_nonneg (hnonneg i ω)).trans_le (hbdd i ω)⟩
  choose C hC using hξbdd
  have hint : ∀ m, Integrable (∑ k ∈ Finset.range m, ξ k • (f (k + 1) - f k)) μ := fun m =>
      integrable_finsetSum' _ fun i _ => Integrable.bdd_smul
        ((hf.integrable _).sub (hf.integrable _)) (C i)
        hξ.stronglyMeasurable.aestronglyMeasurable (ae_of_all _ (hC i))
  have hadp : StronglyAdapted 𝒢 fun n => ∑ k ∈ Finset.range n, ξ k • (f (k + 1) - f k) := by
    intro m
    refine Finset.stronglyMeasurable_sum _ fun i hi => ?_
    rw [Finset.mem_range] at hi
    exact (hξ.stronglyMeasurable_le hi.le).smul
      ((hf.stronglyAdapted.stronglyMeasurable_le (Nat.succ_le_of_lt hi)).sub
        (hf.stronglyAdapted.stronglyMeasurable_le hi.le))
  refine submartingale_of_condExp_sub_nonneg_nat hadp hint fun i => ?_
  simp only [← Finset.sum_Ico_eq_sub _ (Nat.le_succ _), Nat.succ_eq_add_one, Nat.Ico_succ_singleton,
    Finset.sum_singleton]
  filter_upwards [hf.condExp_sub_nonneg i.le_succ,
    condExp_smul_of_aestronglyMeasurable_left (hξ i).aestronglyMeasurable
      (((hf.integrable (i + 1)).sub (hf.integrable i)).bdd_smul
      (C i) hξ.stronglyMeasurable.aestronglyMeasurable (ae_of_all _ (hC i)))
      ((hf.integrable _).sub (hf.integrable _))] with ω hω1 hω2
  simp only [Pi.zero_apply, Nat.succ_eq_add_one, Pi.smul_apply'] at hω1 hω2 ⊢
  grw [← smul_zero (0 : ℝ), hnonneg i ω, hω1, hω2]
  · exact hnonneg i ω
  · simp

/-- Given a discrete submartingale `f` and a predictable process `ξ` (i.e. `ξ (n + 1)` is strongly
adapted) the process defined by `fun n => ∑ k ∈ Finset.range n, ξ (k + 1) * (f (k + 1) - f k)` is
also a submartingale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Basic/Variant87b145177bbddbb1a9dddd4b40f38ef9fe183fde3d0e831348e573e98245c516.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Basic/Variant87b145177bbddbb1a9dddd4b40f38ef9fe183fde3d0e831348e573e98245c516.lean#L561).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `479a8484ba70fd3cbc5341092c5479a3454b9dfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
