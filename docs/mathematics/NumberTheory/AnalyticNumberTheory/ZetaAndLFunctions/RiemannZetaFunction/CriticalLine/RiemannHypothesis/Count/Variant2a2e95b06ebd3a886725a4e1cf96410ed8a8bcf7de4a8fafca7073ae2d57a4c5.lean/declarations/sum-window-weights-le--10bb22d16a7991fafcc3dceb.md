# sum_window_weights_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:03ed5da1-0914-38b2-ee37-749a311116ef",
  "kind": "lemma",
  "lexical_name": "sum_window_weights_le",
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
  "slug": "sum-window-weights-le--10bb22d16a7991fafcc3dceb",
  "source": {
    "blob": "19e729bcf45f4bbc9b3242b0b26b8ffc54858cf8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 122,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant2a2e95b06ebd3a886725a4e1cf96410ed8a8bcf7de4a8fafca7073ae2d57a4c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10bb22d16a7991fafcc3dceb9c13c9c1c6a59a55714f75f967b27696a6cca2ee",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant2a2e95b06ebd3a886725a4e1cf96410ed8a8bcf7de4a8fafca7073ae2d57a4c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03ed5da1-0914-38b2-ee37-749a311116ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_window_weights_le (F : Finset ℕ) {B D₀ : ℝ} (hB : 1 ≤ B) (hD₀ : 2 ≤ D₀)
    (hF : ∀ j ∈ F, D₀ ≤ (j : ℝ) + 1) :
    ∑ j ∈ F, ((max D₀ j) ^ 3)⁻¹ * Real.log (B + j)
      ≤ (2 * (D₀ ^ 3)⁻¹ + (D₀ ^ 2)⁻¹ / 2) * Real.log B + (2 * (D₀ ^ 2)⁻¹ + D₀⁻¹) / B := by
  have hB0 : 0 < B := by linarith
  have hD0 : 0 < D₀ := by linarith
  have hlogB : 0 ≤ Real.log B := Real.log_nonneg hB
  set g : ℕ → ℝ := fun j => ((max D₀ j) ^ 3)⁻¹ * Real.log (B + j) with hg
  have hg_nn : ∀ j, 0 ≤ g j := fun j => by
    have : 1 ≤ B + j := by have := (Nat.cast_nonneg j : (0:ℝ) ≤ j); linarith
    exact mul_nonneg (by positivity) (Real.log_nonneg this)
  -- F ⊆ Ico J₀ N with J₀ := ⌈D₀⌉₊ − 1.
  set J₀ : ℕ := ⌈D₀⌉₊ - 1 with hJ₀
  have hceil : 1 ≤ ⌈D₀⌉₊ := Nat.one_le_ceil_iff.mpr (by linarith)
  have hJ₀succ : J₀ + 1 = ⌈D₀⌉₊ := Nat.sub_add_cancel hceil
  have hJ₀le : (J₀ : ℝ) ≤ D₀ := by
    have h1 : ((J₀ + 1 : ℕ) : ℝ) = ⌈D₀⌉₊ := by rw [hJ₀succ]
    have h2 : (⌈D₀⌉₊ : ℝ) < D₀ + 1 := Nat.ceil_lt_add_one hD0.le
    push_cast at h1; linarith
  have hJ₀ge : ∀ i : ℕ, D₀ + i ≤ ((J₀ + 1 + i : ℕ) : ℝ) := fun i => by
    rw [hJ₀succ]; push_cast; linarith [Nat.le_ceil D₀]
  set N : ℕ := F.sup id + 1
  have hsub : F ⊆ Finset.Ico J₀ N := by
    intro j hj
    rw [Finset.mem_Ico]
    refine ⟨?_, Nat.lt_succ_of_le (Finset.le_sup (f := id) hj)⟩
    have : ⌈D₀⌉₊ ≤ j + 1 := Nat.ceil_le.mpr (by exact_mod_cast hF j hj)
    omega
  calc ∑ j ∈ F, g j
      ≤ ∑ j ∈ Finset.Ico J₀ N, g j :=
        sum_le_sum_of_subset_of_nonneg hsub fun j _ _ => hg_nn j
    _ = ∑ i ∈ range (N - J₀), g (J₀ + i) := Finset.sum_Ico_eq_sum_range _ _ _
    _ ≤ _ := ?_
  rcases Nat.eq_zero_or_eq_succ_pred (N - J₀) with h0 | hsucc
  · rw [h0, sum_range_zero]; positivity
  set n := (N - J₀).pred
  rw [hsucc, sum_range_succ']
  -- the first window j = J₀ ≤ D₀: weight D₀⁻³, log(B + J₀) ≤ log B + D₀/B.
  have hfirst : g (J₀ + 0) ≤ (D₀ ^ 3)⁻¹ * Real.log B + (D₀ ^ 2)⁻¹ / B := by
    simp only [hg, add_zero]
    have hmax : max D₀ (J₀ : ℝ) = D₀ := max_eq_left hJ₀le
    rw [hmax]
    have hl : Real.log (B + J₀) ≤ Real.log B + D₀ / B :=
      (log_add_le_log_add_div hB0 (Nat.cast_nonneg _)).trans
        (by gcongr)
    calc (D₀ ^ 3)⁻¹ * Real.log (B + J₀) ≤ (D₀ ^ 3)⁻¹ * (Real.log B + D₀ / B) :=
          mul_le_mul_of_nonneg_left hl (by positivity)
      _ = _ := by field_simp
  -- the windows j = J₀ + 1 + i ≥ D₀ + i: weight j⁻³, log(B+j) ≤ log B + j/B.
  have hrest : ∀ i ∈ range n, g (J₀ + (i + 1))
      ≤ ((D₀ + i) ^ 3)⁻¹ * Real.log B + ((D₀ + i) ^ 2)⁻¹ / B := by
    intro i _
    simp only [hg]
    have hji : D₀ + i ≤ ((J₀ + (i + 1) : ℕ) : ℝ) := by
      have := hJ₀ge i; rw [show J₀ + 1 + i = J₀ + (i + 1) by ring] at this; exact this
    set j : ℝ := ((J₀ + (i + 1) : ℕ) : ℝ) with hj
    have hDi : 0 < D₀ + i := by positivity
    have hjpos : 0 < j := lt_of_lt_of_le hDi hji
    have hmax : max D₀ j = j := max_eq_right (by
      have := (Nat.cast_nonneg i : (0:ℝ) ≤ i); linarith)
    rw [hmax]
    have hl : Real.log (B + j) ≤ Real.log B + j / B :=
      log_add_le_log_add_div hB0 hjpos.le
    calc (j ^ 3)⁻¹ * Real.log (B + j) ≤ (j ^ 3)⁻¹ * (Real.log B + j / B) :=
          mul_le_mul_of_nonneg_left hl (by positivity)
      _ = (j ^ 3)⁻¹ * Real.log B + (j ^ 2)⁻¹ / B := by field_simp
      _ ≤ ((D₀ + i) ^ 3)⁻¹ * Real.log B + ((D₀ + i) ^ 2)⁻¹ / B := by
          gcongr
  calc ∑ i ∈ range n, g (J₀ + (i + 1)) + g (J₀ + 0)
      ≤ ∑ i ∈ range n, (((D₀ + i) ^ 3)⁻¹ * Real.log B + ((D₀ + i) ^ 2)⁻¹ / B)
        + ((D₀ ^ 3)⁻¹ * Real.log B + (D₀ ^ 2)⁻¹ / B) := add_le_add (sum_le_sum hrest) hfirst
    _ = (∑ i ∈ range n, ((D₀ + i) ^ 3)⁻¹) * Real.log B
        + (∑ i ∈ range n, ((D₀ + i) ^ 2)⁻¹) / B
        + ((D₀ ^ 3)⁻¹ * Real.log B + (D₀ ^ 2)⁻¹ / B) := by
          rw [sum_add_distrib, sum_mul, sum_div]
    _ ≤ ((D₀ ^ 3)⁻¹ + (D₀ ^ 2)⁻¹ / 2) * Real.log B + ((D₀ ^ 2)⁻¹ + D₀⁻¹) / B
        + ((D₀ ^ 3)⁻¹ * Real.log B + (D₀ ^ 2)⁻¹ / B) := by
          gcongr
          · exact sum_inv_pow_three_le hD0 n
          · exact sum_inv_pow_two_le hD0 n
    _ = _ := by ring

/-! #### One side of the tail, abstractly -/

/-- One side of the tail: zeros at (signed) distance x_ρ ≥ D₀ beyond an endpoint of I,
grouped by an integer key with key ≤ x ≤ key + 1, each group counted by A₀ log(B + key). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant2a2e95b06ebd3a886725a4e1cf96410ed8a8bcf7de4a8fafca7073ae2d57a4c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant2a2e95b06ebd3a886725a4e1cf96410ed8a8bcf7de4a8fafca7073ae2d57a4c5.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19e729bcf45f4bbc9b3242b0b26b8ffc54858cf8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
