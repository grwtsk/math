# theorem_6_1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bdccd0a48781b270841d4381607ac6c992b7e0df",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2950,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e74c2b656754ae49cbdae6e6001febc68de8332845fdc2b1993896166180633.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:96932915-a77e-700e-98da-ea1ced36abb5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0679c22f-7723-31e5-48d1-6df3cf935a88",
  "kind": "theorem",
  "lexical_name": "theorem_6_1",
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
  "slug": "theorem-6-1--4af7faa68d2aa54cf585967d",
  "source": {
    "blob": "bdccd0a48781b270841d4381607ac6c992b7e0df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3019,
    "line": 2950,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant2e74c2b656754ae49cbdae6e6001febc68de8332845fdc2b1993896166180633.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4af7faa68d2aa54cf585967dc7fb2f9d298c843a590f1239e566db4b0d9d1c8c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant2e74c2b656754ae49cbdae6e6001febc68de8332845fdc2b1993896166180633.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0679c22f-7723-31e5-48d1-6df3cf935a88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2950–3019.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem theorem_6_1 {x₀ x₁ : ℝ} (h : x₁ ≥ max x₀ 14)
  {N : ℕ} (b : Fin (N + 1) → ℝ) (hmono : Monotone b)
  (h_b_start : b 0 = log x₀)
  (h_b_end : b (Fin.last N) = log x₁)
  (εθ_num : ℝ → ℝ)
  (h_εθ_num : ∀ i : Fin (N+1), Eθ.numericalBound (exp (b i)) εθ_num) (x : ℝ) (hx : x ≥ x₁) (hx₀ : x₀ ≥ 2) :
  Eπ x ≤ εθ_num x₁ + (log x / x) * (x₀ / log x₀) * (Eπ x₀ + Eθ x₀) +
    (log x / x) * ∑ i ∈ Finset.Iio (Fin.last N),
      εθ_num (exp (b i)) *
      (Li (exp (b (i + 1))) - Li (exp (b i)) +
      exp (b i) / b i - exp (b (i + 1)) / b (i + 1)) +
    εθ_num x₁ * (log x / x) * ∫ t in x₁..x, 1 / (log t) ^ 2 := by
  have hx₀_le_x₁ : x₀ ≤ x₁ := le_trans (le_max_left _ _) h
  have hx₀_le_x : x₀ ≤ x := le_trans hx₀_le_x₁ hx
  have h30 := eq_30 hx₀_le_x hx₀
  have hEθ_x_le : Eθ x ≤ εθ_num x₁ := by
    have := h_εθ_num (Fin.last N)
    rw [h_b_end, exp_log (by linarith [h])] at this
    exact this x hx
  have hδ_le : δ x₀ ≤ Eπ x₀ + Eθ x₀ := by
    rw [δ, Eπ, Eθ]
    refine (abs_sub_le _ 0 _).trans ?_
    have hx₀_pos : 0 < x₀ := by positivity
    have hlogx₀_pos : 0 < log x₀ := Real.log_pos (by linarith)
    simp [abs_div, abs_of_pos hx₀_pos, abs_of_pos (by positivity : 0 < x₀ / log x₀)]
  have hx₁_ge2 : x₁ ≥ 2 := by linarith [h]
  have hsplit := intervalIntegral.integral_add_adjacent_intervals
    (Eθ_integrable hx₀ hx₀_le_x₁) (Eθ_integrable hx₁_ge2 hx)
  have hlogx_x_nonneg : 0 ≤ log x / x :=
    div_nonneg (Real.log_nonneg (by linarith [hx, h])) (by linarith [hx, h])
  have h_coeff_nonneg : 0 ≤ (log x / x) * (x₀ / log x₀) := by
    apply mul_nonneg hlogx_x_nonneg
    have : 0 < log x₀ := Real.log_pos (by linarith)
    exact div_nonneg (by linarith) this.le
  calc
    Eπ x ≤
        Eθ x
        + (log x / x) * (x₀ / log x₀) * δ x₀
        + (log x / x) * ∫ t in x₀..x, Eθ t / log t ^ 2 :=
      h30
    _ ≤ εθ_num x₁
        + (log x / x) * (x₀ / log x₀) * (Eπ x₀ + Eθ x₀)
        + (log x / x) * ∫ t in x₀..x, Eθ t / log t ^ 2 := by
      gcongr
    _ ≤ εθ_num x₁
        + (log x / x) * (x₀ / log x₀) * (Eπ x₀ + Eθ x₀)
        + (log x / x) *
          ((∫ t in x₀..x₁, Eθ t / log t ^ 2)
          + ∫ t in x₁..x, Eθ t / log t ^ 2) := by
      rw [hsplit]
    _ ≤ εθ_num x₁ + (log x / x) * (x₀ / log x₀) * (Eπ x₀ + Eθ x₀) +
      (log x / x) * ∑ i ∈ Finset.Iio (Fin.last N),
        εθ_num (exp (b i)) *
          (Li (exp (b (i + 1))) - Li (exp (b i)) +
          exp (b i) / b i - exp (b (i + 1)) / b (i + 1)) +
      εθ_num x₁ * (log x / x) * ∫ t in x₁..x, 1 / (log t) ^ 2 := by
      have h_bound_x1_x : ∫ t in x₁..x, Eθ t / log t ^ 2 ≤
          εθ_num x₁ * ∫ t in x₁..x, 1 / (log t) ^ 2 := by
        have := h_εθ_num (Fin.last N)
        rw [h_b_end, exp_log (by linarith [h])] at this
        exact Eθ_bound_integral_last hx₁_ge2 hx εθ_num this
      have h_bound_x0_x1 := bound_x0_x1 hx₀ hx₀_le_x₁ b hmono h_b_start h_b_end εθ_num h_εθ_num
      nlinarith [h_bound_x0_x1, h_bound_x1_x, hlogx_x_nonneg]



/- The following 2 lemmas are used for theorem_6_3.
-/


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant2e74c2b656754ae49cbdae6e6001febc68de8332845fdc2b1993896166180633.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant2e74c2b656754ae49cbdae6e6001febc68de8332845fdc2b1993896166180633.lean#L2950).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdccd0a48781b270841d4381607ac6c992b7e0df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
