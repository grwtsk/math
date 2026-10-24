# anchored_matrix_subshell_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b018391-b017-63fb-6ab0-51111c84a5d1",
  "kind": "theorem",
  "lexical_name": "anchored_matrix_subshell_bound",
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
  "slug": "anchored-matrix-subshell-bound--e294a9093b18c7f9dbb0c477",
  "source": {
    "blob": "69d4f1b3d91145193053b1f1567c3a9b69a638c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 30,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeFullInventoryPricing/Variant98db09f44d99ab12c58e51a204f2c690f452bfe3d5f07becdd8d9278845b3024.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e294a9093b18c7f9dbb0c477a7ed131fc4cff42ba96ac25df3425ce0eb14327d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeFullInventoryPricing/Variant98db09f44d99ab12c58e51a204f2c690f452bfe3d5f07becdd8d9278845b3024.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b018391-b017-63fb-6ab0-51111c84a5d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem anchored_matrix_subshell_bound (s t : Finset ℕ) (hst : s ⊆ t)
    (b₀ : ℝ) (b : ℕ → ℝ) (K : ℕ → ℕ → ℝ) (anchor : ℕ → ℝ) :
    shellForm s b K ≤ operatorNorm (anchoredMatrix t b₀ b K anchor) * shellMass s b := by
  let v : Option ↥t → ℝ := fun i ↦ match i with
    | none => 0
    | some n => if n.val ∈ s then b n.val else 0
  have h := quadraticForm_le_operatorNorm (anchoredMatrix t b₀ b K anchor) v
  have hq : quadraticForm (anchoredMatrix t b₀ b K anchor) v = shellForm s b K := by
    unfold quadraticForm shellForm
    simp only [Fintype.sum_option, v, anchoredMatrix, zero_mul, mul_zero,
      Finset.sum_const_zero, zero_add]
    rw [Finset.sum_coe_sort t (fun n : ℕ ↦ ∑ m : t,
      (if n ∈ s then b n else 0) * weightedGram b K n m * (if m.val ∈ s then b m else 0))]
    have hinner (n : ℕ) :
        (∑ m : t, (if n ∈ s then b n else 0) * weightedGram b K n m *
          (if m.val ∈ s then b m else 0)) =
        if n ∈ s then (∑ m ∈ s, b n * weightedGram b K n m * b m) else 0 := by
      rw [Finset.sum_coe_sort t (fun m : ℕ ↦
        (if n ∈ s then b n else 0) * weightedGram b K n m * (if m ∈ s then b m else 0))]
      by_cases hn : n ∈ s
      · simp only [if_pos hn, mul_ite, mul_zero]
        exact sum_restricted s t hst _
      · simp only [if_neg hn, zero_mul, Finset.sum_const_zero]
    simp_rw [hinner]
    exact sum_restricted s t hst _
  have hv : (∑ i, v i ^ 2) = shellMass s b := by
    simp only [Fintype.sum_option, v, zero_pow (by norm_num : (2 : ℕ) ≠ 0), zero_add]
    rw [Finset.sum_coe_sort t (fun n : ℕ ↦ (if n ∈ s then b n else 0) ^ 2)]
    simp only [ite_pow, zero_pow (by norm_num : (2 : ℕ) ≠ 0)]
    exact sum_restricted s t hst _
  rw [hq, hv] at h
  exact h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeFullInventoryPricing/Variant98db09f44d99ab12c58e51a204f2c690f452bfe3d5f07becdd8d9278845b3024.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeFullInventoryPricing/Variant98db09f44d99ab12c58e51a204f2c690f452bfe3d5f07becdd8d9278845b3024.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69d4f1b3d91145193053b1f1567c3a9b69a638c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
