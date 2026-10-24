# sum_variance_truncation_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "57d18a3037e4850b299b887db4db5f1c3c278cea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 312,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0d385160148144808075fcc227a30de8556ce862e33dcbefb7c09e972e638f07.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:757974c8-6263-ab4d-4a1f-a29a5ec403d9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fe5c424a-3965-0c2a-0060-03ccf03110b4",
  "kind": "theorem",
  "lexical_name": "sum_variance_truncation_le",
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
  "slug": "sum-variance-truncation-le--2118e51b7ea50553be9cb368",
  "source": {
    "blob": "57d18a3037e4850b299b887db4db5f1c3c278cea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 312,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/StrongLaw/Variant0d385160148144808075fcc227a30de8556ce862e33dcbefb7c09e972e638f07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2118e51b7ea50553be9cb3682d4500bdffb85f9194b627529142ca360a068e5d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/StrongLaw/Variant0d385160148144808075fcc227a30de8556ce862e33dcbefb7c09e972e638f07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe5c424a-3965-0c2a-0060-03ccf03110b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_variance_truncation_le {X : Ω → ℝ} (hint : Integrable X) (hnonneg : 0 ≤ X) (K : ℕ) :
    ∑ j ∈ range K, ((j : ℝ) ^ 2)⁻¹ * 𝔼[truncation X j ^ 2] ≤ 2 * 𝔼[X] := by
  set Y := fun n : ℕ => truncation X n
  let ρ : Measure ℝ := Measure.map X ℙ
  have Y2 : ∀ n, 𝔼[Y n ^ 2] = ∫ x in 0..n, x ^ 2 ∂ρ := by
    intro n
    change 𝔼[fun x => Y n x ^ 2] = _
    rw [moment_truncation_eq_intervalIntegral_of_nonneg hint.1 two_ne_zero hnonneg]
  calc
    ∑ j ∈ range K, ((j : ℝ) ^ 2)⁻¹ * 𝔼[Y j ^ 2] =
        ∑ j ∈ range K, ((j : ℝ) ^ 2)⁻¹ * ∫ x in 0..j, x ^ 2 ∂ρ := by simp_rw [Y2]
    _ = ∑ j ∈ range K, ((j : ℝ) ^ 2)⁻¹ * ∑ k ∈ range j, ∫ x in k..(k + 1 : ℕ), x ^ 2 ∂ρ := by
      congr 1 with j
      congr 1
      rw [intervalIntegral.sum_integral_adjacent_intervals]
      · norm_cast
      intro k _
      exact (continuous_id.pow _).intervalIntegrable _ _
    _ = ∑ k ∈ range K, (∑ j ∈ Ioo k K, ((j : ℝ) ^ 2)⁻¹) * ∫ x in k..(k + 1 : ℕ), x ^ 2 ∂ρ := by
      simp_rw [mul_sum, sum_mul, sum_sigma']
      refine sum_nbij' (fun p ↦ ⟨p.2, p.1⟩) (fun p ↦ ⟨p.2, p.1⟩) ?_ ?_ ?_ ?_ ?_ <;>
        aesop (add unsafe lt_trans)
    _ ≤ ∑ k ∈ range K, 2 / (k + 1 : ℝ) * ∫ x in k..(k + 1 : ℕ), x ^ 2 ∂ρ := by
      gcongr with k
      · refine intervalIntegral.integral_nonneg_of_forall ?_ fun u => sq_nonneg _
        simp
      · apply sum_Ioo_inv_sq_le
    _ ≤ ∑ k ∈ range K, ∫ x in k..(k + 1 : ℕ), 2 * x ∂ρ := by
      gcongr with k
      have Ik : (k : ℝ) ≤ (k + 1 : ℕ) := by simp
      rw [← intervalIntegral.integral_const_mul, intervalIntegral.integral_of_le Ik,
        intervalIntegral.integral_of_le Ik]
      refine setIntegral_mono_on ?_ ?_ measurableSet_Ioc fun x hx => ?_
      · apply Continuous.integrableOn_Ioc (by fun_prop)
      · apply Continuous.integrableOn_Ioc (by fun_prop)
      · calc
          2 / (↑k + 1) * x ^ 2 = x / (k + 1) * (2 * x) := by ring
          _ ≤ 1 * (2 * x) := by
              have : 0 < x := k.cast_nonneg.trans_lt hx.1
              gcongr
              exact (div_le_one <| by positivity).2 <| mod_cast hx.2
          _ = 2 * x := by rw [one_mul]
    _ = 2 * ∫ x in (0 : ℝ)..K, x ∂ρ := by
      rw [intervalIntegral.sum_integral_adjacent_intervals fun k _ => ?_]
      swap; · exact (continuous_const.mul continuous_id').intervalIntegrable _ _
      rw [intervalIntegral.integral_const_mul]
      norm_cast
    _ ≤ 2 * 𝔼[X] := mul_le_mul_of_nonneg_left (by
      rw [← integral_truncation_eq_intervalIntegral_of_nonneg hint.1 hnonneg]
      exact integral_truncation_le_integral_of_nonneg hint hnonneg) zero_le_two

end MomentEstimates

/-! Proof of the strong law of large numbers (almost sure version, assuming only
pairwise independence) for nonnegative random variables, following Etemadi's proof. -/
section StrongLawNonneg

variable (X : ℕ → Ω → ℝ) (hint : Integrable (X 0))
  (hindep : Pairwise (IndepFun on X)) (hident : ∀ i, IdentDistrib (X i) (X 0))
  (hnonneg : ∀ i ω, 0 ≤ X i ω)

include hint hindep hident hnonneg in
/-- The truncation of `Xᵢ` up to `i` satisfies the strong law of large numbers (with respect to
the truncated expectation) along the sequence `c^n`, for any `c > 1`, up to a given `ε > 0`.
This follows from a variance control. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/StrongLaw/Variant0d385160148144808075fcc227a30de8556ce862e33dcbefb7c09e972e638f07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/StrongLaw/Variant0d385160148144808075fcc227a30de8556ce862e33dcbefb7c09e972e638f07.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57d18a3037e4850b299b887db4db5f1c3c278cea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
