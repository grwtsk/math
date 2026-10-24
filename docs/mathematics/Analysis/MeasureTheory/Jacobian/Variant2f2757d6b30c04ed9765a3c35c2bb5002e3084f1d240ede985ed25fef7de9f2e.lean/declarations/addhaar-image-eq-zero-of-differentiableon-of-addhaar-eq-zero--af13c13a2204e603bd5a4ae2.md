# addHaar_image_eq_zero_of_differentiableOn_of_addHaar_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7a36425-af0d-e4ce-9ba2-bb1504a799e5",
  "kind": "theorem",
  "lexical_name": "addHaar_image_eq_zero_of_differentiableOn_of_addHaar_eq_zero",
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
  "slug": "addhaar-image-eq-zero-of-differentiableon-of-addhaar-eq-zero--af13c13a2204e603bd5a4ae2",
  "source": {
    "blob": "f7cad2063b178cca3d9a88bb2ae37986675b0814",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 603,
    "line": 563,
    "path": "GRWTSK/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af13c13a2204e603bd5a4ae2a3e743142c655402a122ef38b31f1ee7677fc5ab",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7a36425-af0d-e4ce-9ba2-bb1504a799e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 563–603.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem addHaar_image_eq_zero_of_differentiableOn_of_addHaar_eq_zero (hf : DifferentiableOn ℝ f s)
    (hs : μ s = 0) : μ (f '' s) = 0 := by
  refine le_antisymm ?_ (zero_le _)
  have :
      ∀ A : E →L[ℝ] E, ∃ δ : ℝ≥0, 0 < δ ∧
        ∀ (t : Set E), ApproximatesLinearOn f A t δ →
          μ (f '' t) ≤ (Real.toNNReal |A.det| + 1 : ℝ≥0) * μ t := by
    intro A
    let m : ℝ≥0 := Real.toNNReal |A.det| + 1
    have I : ENNReal.ofReal |A.det| < m := by
      simp only [m, ENNReal.ofReal, lt_add_iff_pos_right, zero_lt_one, ENNReal.coe_lt_coe]
    rcases ((addHaar_image_le_mul_of_det_lt μ A I).and self_mem_nhdsWithin).exists with ⟨δ, h, h'⟩
    exact ⟨δ, h', fun t ht => h t f ht⟩
  choose δ hδ using this
  obtain ⟨t, A, _, _, t_cover, ht, -⟩ :
    ∃ (t : ℕ → Set E) (A : ℕ → E →L[ℝ] E),
      Pairwise (Disjoint on t) ∧
        (∀ n : ℕ, MeasurableSet (t n)) ∧
          (s ⊆ ⋃ n : ℕ, t n) ∧
            (∀ n : ℕ, ApproximatesLinearOn f (A n) (s ∩ t n) (δ (A n))) ∧
              (s.Nonempty → ∀ n, ∃ y ∈ s, A n = fderivWithin ℝ f s y) :=
    exists_partition_approximatesLinearOn_of_hasFDerivWithinAt f s (fderivWithin ℝ f s)
      (fun x xs => (hf x xs).hasFDerivWithinAt) δ fun A => (hδ A).1.ne'
  calc
    μ (f '' s) ≤ μ (⋃ n, f '' (s ∩ t n)) := by
      apply measure_mono
      rw [← image_iUnion, ← inter_iUnion]
      exact image_subset f (subset_inter Subset.rfl t_cover)
    _ ≤ ∑' n, μ (f '' (s ∩ t n)) := measure_iUnion_le _
    _ ≤ ∑' n, (Real.toNNReal |(A n).det| + 1 : ℝ≥0) * μ (s ∩ t n) := by
      apply ENNReal.tsum_le_tsum fun n => ?_
      apply (hδ (A n)).2
      exact ht n
    _ ≤ ∑' n, ((Real.toNNReal |(A n).det| + 1 : ℝ≥0) : ℝ≥0∞) * 0 := by
      refine ENNReal.tsum_le_tsum fun n => mul_le_mul_left' ?_ _
      exact le_trans (measure_mono inter_subset_left) (le_of_eq hs)
    _ = 0 := by simp only [tsum_zero, mul_zero]

/-- A version of **Sard's lemma** in fixed dimension: given a differentiable function from `E`
to `E` and a set where the differential is not invertible, then the image of this set has
zero measure. Here, we give an auxiliary statement towards this result. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean#L563).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7cad2063b178cca3d9a88bb2ae37986675b0814` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
