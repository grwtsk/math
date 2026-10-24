# MV_size_le₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a957927b-dd43-286f-d937-4e186c73534f",
  "kind": "lemma",
  "lexical_name": "MV_size_le₂",
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
  "slug": "mv-size-le--bd237498c2a19488e7d8bb2c",
  "source": {
    "blob": "3f951dc0e8825b99c9f30a71911a84172574dac8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 440,
    "line": 385,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd237498c2a19488e7d8bb2c4cdb8db14e0aaf3f253d35d2560b6391cc406b40",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a957927b-dd43-286f-d937-4e186c73534f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–440.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MV_size_le₂ (hC : 0 ≤ C) (X : ℝ) {w₁ w₂ : ℕ → ℝ} {W : ℝ} (hW : 0 ≤ W)
    (hw₁ : ∀ n ∈ primeRange X, |w₁ n| ≤ 1) (hw₂ : ∀ n ∈ primeRange X, |w₂ n| ≤ W) :
    C * Real.sqrt (∑ n ∈ primeRange X, (acoef n * w₁ n) ^ 2 * (2 * n))
        * Real.sqrt (∑ n ∈ primeRange X, (acoef n * w₂ n) ^ 2 * (2 * n))
      ≤ 2 * C * W * ∑ n ∈ primeRange X, (Λ n : ℝ) ^ 2 ∧
    C * Real.sqrt (∑ n ∈ primeRange X, (acoef n * w₂ n) ^ 2 * (2 * n))
        * Real.sqrt (∑ n ∈ primeRange X, (acoef n * w₁ n) ^ 2 * (2 * n))
      ≤ 2 * C * W * ∑ n ∈ primeRange X, (Λ n : ℝ) ^ 2 := by
  set Λ2 := ∑ n ∈ primeRange X, (Λ n : ℝ) ^ 2 with hΛ2
  have hΛ2nn : 0 ≤ Λ2 := Finset.sum_nonneg fun n _ => sq_nonneg _
  have hbd : ∀ (w : ℕ → ℝ) (B : ℝ), 0 ≤ B → (∀ n ∈ primeRange X, |w n| ≤ B) →
      ∑ n ∈ primeRange X, (acoef n * w n) ^ 2 * (2 * n) ≤ B ^ 2 * (2 * Λ2) := by
    intro w B hB hw
    rw [hΛ2, Finset.mul_sum, Finset.mul_sum]
    refine Finset.sum_le_sum fun n hn => ?_
    rw [mul_pow, mul_comm (acoef n ^ 2), mul_assoc,
      acoef_sq_mul_two_mul (one_le_of_mem_primeRange hn)]
    apply mul_le_mul_of_nonneg_right _ (by positivity)
    exact (sq_abs (w n)).symm ▸ pow_le_pow_left₀ (abs_nonneg _) (hw n hn) 2
  have h1 := hbd w₁ 1 zero_le_one hw₁
  have h2 := hbd w₂ W hW hw₂
  have hs1 : Real.sqrt (∑ n ∈ primeRange X, (acoef n * w₁ n) ^ 2 * (2 * n))
      ≤ Real.sqrt (2 * Λ2) := by
    refine (Real.sqrt_le_sqrt h1).trans ?_
    rw [one_pow, one_mul]
  have hs2 : Real.sqrt (∑ n ∈ primeRange X, (acoef n * w₂ n) ^ 2 * (2 * n))
      ≤ W * Real.sqrt (2 * Λ2) := by
    calc Real.sqrt (∑ n ∈ primeRange X, (acoef n * w₂ n) ^ 2 * (2 * n))
        ≤ Real.sqrt (W ^ 2 * (2 * Λ2)) := Real.sqrt_le_sqrt h2
      _ = W * Real.sqrt (2 * Λ2) := by rw [Real.sqrt_mul (sq_nonneg _), Real.sqrt_sq hW]
  have hsq : Real.sqrt (2 * Λ2) * Real.sqrt (2 * Λ2) = 2 * Λ2 :=
    Real.mul_self_sqrt (by positivity)
  constructor
  · calc C * Real.sqrt (∑ n ∈ primeRange X, (acoef n * w₁ n) ^ 2 * (2 * n))
          * Real.sqrt (∑ n ∈ primeRange X, (acoef n * w₂ n) ^ 2 * (2 * n))
        ≤ C * Real.sqrt (2 * Λ2) * (W * Real.sqrt (2 * Λ2)) := by
          refine mul_le_mul ?_ hs2 (Real.sqrt_nonneg _) (by positivity)
          exact mul_le_mul_of_nonneg_left hs1 hC
      _ = C * W * (Real.sqrt (2 * Λ2) * Real.sqrt (2 * Λ2)) := by ring
      _ = 2 * C * W * Λ2 := by rw [hsq]; ring
  · calc C * Real.sqrt (∑ n ∈ primeRange X, (acoef n * w₂ n) ^ 2 * (2 * n))
          * Real.sqrt (∑ n ∈ primeRange X, (acoef n * w₁ n) ^ 2 * (2 * n))
        ≤ C * (W * Real.sqrt (2 * Λ2)) * Real.sqrt (2 * Λ2) := by
          refine mul_le_mul ?_ hs1 (Real.sqrt_nonneg _) (by positivity)
          exact mul_le_mul_of_nonneg_left hs2 hC
      _ = C * W * (Real.sqrt (2 * Λ2) * Real.sqrt (2 * Λ2)) := by ring
      _ = 2 * C * W * Λ2 := by rw [hsq]; ring

end MVPh

/-! ## The decomposition 𝓜[P_{X,c}, P_{X,c}] = 𝒟 + 𝒪₁ + 𝒪₂, weighted and phased -/

section Decomp
variable {Φ : ℝ → ℝ} {T : ℝ}

/-- [eq:MPP] for P_{X,c} (mirror of Mform_PX_PX): with weights a_k‖c k‖ and phases arg(c k). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f951dc0e8825b99c9f30a71911a84172574dac8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
