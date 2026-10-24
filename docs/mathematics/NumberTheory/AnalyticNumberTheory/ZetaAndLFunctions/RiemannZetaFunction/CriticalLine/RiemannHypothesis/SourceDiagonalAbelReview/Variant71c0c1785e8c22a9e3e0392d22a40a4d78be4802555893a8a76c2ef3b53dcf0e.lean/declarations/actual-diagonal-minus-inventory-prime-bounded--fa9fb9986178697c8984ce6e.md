# actual_diagonal_minus_inventory_prime_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "85b823590a9499054ba84533b8da944aadec051f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71c0c1785e8c22a9e3e0392d22a40a4d78be4802555893a8a76c2ef3b53dcf0e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b14d02d7-3b84-46fe-2895-97d9e18ed834",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ff47b62f-c4c6-fd19-7ffb-146872636a86",
  "kind": "theorem",
  "lexical_name": "actual_diagonal_minus_inventory_prime_bounded",
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
  "slug": "actual-diagonal-minus-inventory-prime-bounded--fa9fb9986178697c8984ce6e",
  "source": {
    "blob": "85b823590a9499054ba84533b8da944aadec051f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 55,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDiagonalAbelReview/Variant71c0c1785e8c22a9e3e0392d22a40a4d78be4802555893a8a76c2ef3b53dcf0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa9fb9986178697c8984ce6e53521c7b0a2fdd7599c1a48430d54d1498aab517",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDiagonalAbelReview/Variant71c0c1785e8c22a9e3e0392d22a40a4d78be4802555893a8a76c2ef3b53dcf0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff47b62f-c4c6-fd19-7ffb-146872636a86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_diagonal_minus_inventory_prime_bounded :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ A : ℝ, 1 ≤ A →
      |typeTwoDiagonal A - inventoryPrimeDiagonal A| ≤ C := by
  obtain ⟨C, hC0, hC⟩ := weighted_difference_uniformly_bounded
  refine ⟨C, hC0, ?_⟩
  intro A hA
  have hN : 1 ≤ sourceKernelCutoff A := by
    unfold sourceKernelCutoff sourceUpper
    exact (Nat.one_le_floor_iff _).mpr (Real.one_le_exp_iff.mpr (by linarith))
  have hdiff := (hC (sourceKernelCutoff A) hN).2
  rw [weighted_difference] at hdiff
  have hsub : Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A) ⊆
      Finset.Ioc 0 (sourceKernelCutoff A) := by
    intro m hm
    exact Finset.mem_Ioc.mpr ⟨lt_of_le_of_lt (Nat.zero_le _) (Finset.mem_Ioc.mp hm).1,
      (Finset.mem_Ioc.mp hm).2⟩
  have hmass := Finset.sum_le_sum_of_subset_of_nonneg
    (f := fun m : ℕ => properPowerCoefficient m / (m : ℝ)) hsub
    (fun m _ _ => div_nonneg (properPowerCoefficient_nonneg m) (by positivity))
  rw [typeTwoDiagonal_eq_longBase_sum A hA, inventoryPrimeDiagonal,
    Finset.sum_filter, Finset.sum_filter]
  have heq : (-∑ m ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A),
      if vaughanCutoff A < m.minFac then
        vonMangoldt m / (m : ℝ) * sourceCorrelation explicitSecondDerivative A (2 * Real.log m) else 0) -
      (-∑ m ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A),
        if m.Prime then Real.log (m : ℝ) / (m : ℝ) * diagonalCorrelation A (Real.log m) else 0) =
      -(∑ m ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A),
        ((if vaughanCutoff A < m.minFac then
          vonMangoldt m / (m : ℝ) * diagonalCorrelation A (Real.log m) else 0) -
        (if m.Prime then Real.log (m : ℝ) / (m : ℝ) * diagonalCorrelation A (Real.log m) else 0))) := by
    rw [Finset.sum_sub_distrib]
    unfold diagonalCorrelation
    ring
  rw [heq, abs_neg]
  calc
    _ ≤ ∑ m ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A),
        |(if vaughanCutoff A < m.minFac then
          vonMangoldt m / (m : ℝ) * diagonalCorrelation A (Real.log m) else 0) -
        (if m.Prime then Real.log (m : ℝ) / (m : ℝ) * diagonalCorrelation A (Real.log m) else 0)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ m ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A),
        properPowerCoefficient m / (m : ℝ) :=
      Finset.sum_le_sum fun m hm => diagonal_coefficient_error_le A hA _ m (Finset.mem_Ioc.mp hm).1
    _ ≤ _ := hmass
    _ ≤ C := hdiff

/-- Every extra prime in the full square-product cutoff vanishes at the actual source support. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDiagonalAbelReview/Variant71c0c1785e8c22a9e3e0392d22a40a4d78be4802555893a8a76c2ef3b53dcf0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDiagonalAbelReview/Variant71c0c1785e8c22a9e3e0392d22a40a4d78be4802555893a8a76c2ef3b53dcf0e.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85b823590a9499054ba84533b8da944aadec051f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
