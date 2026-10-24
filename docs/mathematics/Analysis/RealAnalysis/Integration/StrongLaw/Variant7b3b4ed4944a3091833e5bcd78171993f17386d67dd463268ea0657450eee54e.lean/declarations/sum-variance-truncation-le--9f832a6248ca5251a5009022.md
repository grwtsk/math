# sum_variance_truncation_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:34c98488-640a-dd6d-1878-1c5e2d1d4055",
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
  "slug": "sum-variance-truncation-le--9f832a6248ca5251a5009022",
  "source": {
    "blob": "bbf3a64c371d7e3f4c818827c1555abf63483c3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 418,
    "line": 342,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f832a6248ca5251a5009022dde7c39b0f80dc87d664259b66b45a168b936934",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34c98488-640a-dd6d-1878-1c5e2d1d4055`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 342–418.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_variance_truncation_le {X : Ω → ℝ} (hint : Integrable X) (hnonneg : 0 ≤ X) (K : ℕ) :
    ∑ j in range K, ((j : ℝ) ^ 2)⁻¹ * 𝔼[truncation X j ^ 2] ≤ 2 * 𝔼[X] := by
  set Y := fun n : ℕ => truncation X n
  let ρ : Measure ℝ := Measure.map X ℙ
  have Y2 : ∀ n, 𝔼[Y n ^ 2] = ∫ x in (0)..n, x ^ 2 ∂ρ := by
    intro n
    change 𝔼[fun x => Y n x ^ 2] = _
    rw [moment_truncation_eq_intervalIntegral_of_nonneg hint.1 two_ne_zero hnonneg]
  calc
    ∑ j in range K, ((j : ℝ) ^ 2)⁻¹ * 𝔼[Y j ^ 2] =
        ∑ j in range K, ((j : ℝ) ^ 2)⁻¹ * ∫ x in (0)..j, x ^ 2 ∂ρ := by simp_rw [Y2]
    _ = ∑ j in range K, ((j : ℝ) ^ 2)⁻¹ * ∑ k in range j, ∫ x in k..(k + 1 : ℕ), x ^ 2 ∂ρ := by
      congr 1 with j
      congr 1
      rw [intervalIntegral.sum_integral_adjacent_intervals]
      · norm_cast
      intro k _
      exact (continuous_id.pow _).intervalIntegrable _ _
    _ = ∑ k in range K, (∑ j in Ioo k K, ((j : ℝ) ^ 2)⁻¹) * ∫ x in k..(k + 1 : ℕ), x ^ 2 ∂ρ := by
      simp_rw [mul_sum, sum_mul, sum_sigma']
      refine' sum_bij' (fun (p : Σ _ : ℕ, ℕ) _ => (⟨p.2, p.1⟩ : Σ _ : ℕ, ℕ)) _ (fun a _ => rfl)
        (fun (p : Σ _ : ℕ, ℕ) _ => (⟨p.2, p.1⟩ : Σ _ : ℕ, ℕ)) _ _ _
      · rintro ⟨i, j⟩ hij
        simp only [mem_sigma, mem_range, mem_filter] at hij
        simp [hij, mem_sigma, mem_range, and_self_iff, hij.2.trans hij.1]
      · rintro ⟨i, j⟩ hij
        simp only [mem_sigma, mem_range, mem_Ioo] at hij
        simp only [hij, mem_sigma, mem_range, and_self_iff]
      · rintro ⟨i, j⟩ hij; rfl
      · rintro ⟨i, j⟩ hij; rfl
    _ ≤ ∑ k in range K, ↑2 / (k + ↑1) * ∫ x in k..(k + 1 : ℕ), x ^ 2 ∂ρ := by
      apply sum_le_sum fun k _ => ?_
      refine' mul_le_mul_of_nonneg_right (sum_Ioo_inv_sq_le _ _) _
      refine' intervalIntegral.integral_nonneg_of_forall _ fun u => sq_nonneg _
      simp only [Nat.cast_add, Nat.cast_one, le_add_iff_nonneg_right, zero_le_one]
    _ ≤ ∑ k in range K, ∫ x in k..(k + 1 : ℕ), 2 * x ∂ρ := by
      apply sum_le_sum fun k _ => ?_
      have Ik : (k : ℝ) ≤ (k + 1 : ℕ) := by simp
      rw [← intervalIntegral.integral_const_mul, intervalIntegral.integral_of_le Ik,
        intervalIntegral.integral_of_le Ik]
      refine' set_integral_mono_on _ _ measurableSet_Ioc fun x hx => _
      · apply Continuous.integrableOn_Ioc
        exact continuous_const.mul (continuous_pow 2)
      · apply Continuous.integrableOn_Ioc
        exact continuous_const.mul continuous_id'
      · calc
          ↑2 / (↑k + ↑1) * x ^ 2 = x / (k + 1) * (2 * x) := by ring
          _ ≤ 1 * (2 * x) :=
            (mul_le_mul_of_nonneg_right (by
              convert (div_le_one _).2 hx.2; norm_cast
              simp only [Nat.cast_add, Nat.cast_one]
              linarith only [show (0 : ℝ) ≤ k from Nat.cast_nonneg k])
              (mul_nonneg zero_le_two ((Nat.cast_nonneg k).trans hx.1.le)))
          _ = 2 * x := by rw [one_mul]
    _ = 2 * ∫ x in (0 : ℝ)..K, x ∂ρ := by
      rw [intervalIntegral.sum_integral_adjacent_intervals fun k _ => ?_]
      swap; · exact (continuous_const.mul continuous_id').intervalIntegrable _ _
      rw [intervalIntegral.integral_const_mul]
      norm_cast
    _ ≤ 2 * 𝔼[X] := mul_le_mul_of_nonneg_left (by
      rw [← integral_truncation_eq_intervalIntegral_of_nonneg hint.1 hnonneg]
      exact integral_truncation_le_integral_of_nonneg hint hnonneg) zero_le_two
#align probability_theory.sum_variance_truncation_le ProbabilityTheory.sum_variance_truncation_le

end MomentEstimates

section StrongLawNonneg

/- This paragraph proves the strong law of large numbers (almost sure version, assuming only
pairwise independence) for nonnegative random variables, following Etemadi's proof. -/
variable (X : ℕ → Ω → ℝ) (hint : Integrable (X 0))
  (hindep : Pairwise fun i j => IndepFun (X i) (X j)) (hident : ∀ i, IdentDistrib (X i) (X 0))
  (hnonneg : ∀ i ω, 0 ≤ X i ω)

/- The truncation of `Xᵢ` up to `i` satisfies the strong law of large numbers (with respect to
the truncated expectation) along the sequence `c^n`, for any `c > 1`, up to a given `ε > 0`.
This follows from a variance control. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean#L342).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbf3a64c371d7e3f4c818827c1555abf63483c3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
