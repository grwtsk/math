# centeredMobiusReflectedL2_norm_le_scale_add_ten

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b6da717a-670c-e14b-6528-921b1e1f19ec",
  "kind": "theorem",
  "lexical_name": "centeredMobiusReflectedL2_norm_le_scale_add_ten",
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
  "slug": "centeredmobiusreflectedl2-norm-le-scale-add-ten--ba9d7e08fe43ce974efc03af",
  "source": {
    "blob": "4d4e90cdf46d2564b891ccf453980bd4acc159b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 235,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusNorm/Variant1440d21547cc73e17c4050c8b5df6eebf1d458f4f3ff0c8f96c367d438a7c6f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba9d7e08fe43ce974efc03af53f280b06b632d44a8621d2ca51e72e9c0978581",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusNorm/Variant1440d21547cc73e17c4050c8b5df6eebf1d458f4f3ff0c8f96c367d438a7c6f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6da717a-670c-e14b-6528-921b1e1f19ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredMobiusReflectedL2_norm_le_scale_add_ten (A : ℝ) (hA : 1 ≤ A) :
    ‖centeredMobiusReflectedL2 A hA‖ ≤ A + 10 := by
  classical
  have hp : 0 < A := by linarith
  let U := vaughanCutoff A
  let N := sourceKernelCutoff A
  let b := centeredBeta U
  let B := fun k : ℕ => ∑ n ∈ Finset.Ioc U k, b n
  let v := atom A hp
  have hU : 1 ≤ U := vaughanCutoff_pos A hA
  have hUN : U ≤ N := vaughanCutoff_le_sourceKernelCutoff A hA
  have hB (k : ℕ) (hk : U ≤ k) : |B k| ≤ (U : ℝ) := by
    apply (centeredBeta_interval_abs_le U U k hU le_rfl hk).trans
    calc
      _ ≤ ∑ d ∈ Finset.Icc 1 U, (1 : ℝ) := by
        apply Finset.sum_le_sum
        intro d _
        exact_mod_cast (abs_moebius_le_one (n := d))
      _ = (U : ℝ) := by simp
  have hG : centeredMobiusReflectedL2 A hA =
      ∑ n ∈ Finset.Ioc U N, b n • v n := by
    have hc (n : ℕ) : b n • v n =ᵐ[volume]
        fun x => b n / Real.sqrt (n : ℝ) *
          normalizedTest explicitSecondDerivative A (x + Real.log (n : ℝ)) := by
      filter_upwards [Lp.coeFn_smul (b n) (v n),
        Lp.coeFn_smul (1 / Real.sqrt (n : ℝ))
          (shift A hp (Real.log (n : ℝ))), shift_coe A hp (Real.log (n : ℝ))]
        with x hb hv hq
      rw [hb]
      change b n * (((1 / Real.sqrt (n : ℝ)) •
        shift A hp (Real.log (n : ℝ))) x) = _
      rw [hv]
      change b n * ((1 / Real.sqrt (n : ℝ)) *
        (shift A hp (Real.log (n : ℝ))) x) = _
      rw [hq]
      ring
    apply Lp.ext
    filter_upwards [(reflectedProfile_memLp hp (Finset.Ioc U N)
      (fun n => b n / Real.sqrt (n : ℝ))).coeFn_toLp,
      Lp.coeFn_fun_finsetSum (Finset.Ioc U N) (fun n => b n • v n),
      ((Finset.Ioc U N).eventually_all).2 (fun n _ => hc n)] with x hg hs hall
    change ((reflectedProfile_memLp hp (Finset.Ioc U N)
      (fun n => b n / Real.sqrt (n : ℝ))).toLp _) x = _
    rw [hg, hs]
    exact Finset.sum_congr rfl (fun n hn => (hall n hn).symm)
  by_cases hNU : N = U
  · rw [hG, hNU]
    simp only [Finset.Ioc_self, Finset.sum_empty, norm_zero]
    linarith
  have hU1N : U + 1 ≤ N := by omega
  have hUpos : 0 < (U : ℝ) := by exact_mod_cast (by omega : 0 < U)
  have hUp1pos : 0 < ((U + 1 : ℕ) : ℝ) := by positivity
  have hnorm : ‖centeredMobiusReflectedL2 A hA‖ ≤
      (U : ℝ) * (1 / Real.sqrt (N : ℝ)) +
        ∑ n ∈ Finset.Ico (U + 1) N,
          (U : ℝ) * ((1 + 10 / A) *
            (1 / Real.sqrt (n : ℝ) - 1 / Real.sqrt ((n + 1 : ℕ) : ℝ))) := by
    rw [hG, finite_abel b v U N hUN]
    apply (norm_add_le _ _).trans
    apply add_le_add
    · rw [norm_smul, Real.norm_eq_abs, atom_norm hA hp]
      exact mul_le_mul_of_nonneg_right (hB N hUN) (by positivity)
    · apply (norm_sum_le _ _).trans
      apply Finset.sum_le_sum
      intro n hn
      have hun : U ≤ n := by have := (Finset.mem_Ico.mp hn).1; omega
      have hn1 : 1 ≤ n := hU.trans hun
      rw [norm_smul, Real.norm_eq_abs]
      exact (mul_le_mul_of_nonneg_right (hB n hun) (norm_nonneg _)).trans
        (mul_le_mul_of_nonneg_left (atom_step_norm_le hA hp hn1) (by positivity))
  have hsum : (∑ n ∈ Finset.Ico (U + 1) N,
      (U : ℝ) * ((1 + 10 / A) *
        (1 / Real.sqrt (n : ℝ) - 1 / Real.sqrt ((n + 1 : ℕ) : ℝ)))) =
      (U : ℝ) * (1 + 10 / A) *
        (1 / Real.sqrt ((U + 1 : ℕ) : ℝ) - 1 / Real.sqrt (N : ℝ)) := by
    rw [← Finset.mul_sum, ← Finset.mul_sum, inverse_sqrt_telescope (U + 1) N hU1N]
    ring
  rw [hsum] at hnorm
  have hdrop : (U : ℝ) * (1 / Real.sqrt (N : ℝ)) +
      (U : ℝ) * (1 + 10 / A) *
        (1 / Real.sqrt ((U + 1 : ℕ) : ℝ) - 1 / Real.sqrt (N : ℝ)) ≤
      ((U : ℝ) / Real.sqrt ((U + 1 : ℕ) : ℝ)) * (1 + 10 / A) := by
    have hpaid : 0 ≤ (U : ℝ) * (10 / A) * (1 / Real.sqrt (N : ℝ)) := by positivity
    have he : (U : ℝ) * (1 / Real.sqrt (N : ℝ)) +
        (U : ℝ) * (1 + 10 / A) *
          (1 / Real.sqrt ((U + 1 : ℕ) : ℝ) - 1 / Real.sqrt (N : ℝ)) =
        ((U : ℝ) / Real.sqrt ((U + 1 : ℕ) : ℝ)) * (1 + 10 / A) -
          (U : ℝ) * (10 / A) * (1 / Real.sqrt (N : ℝ)) := by ring
    rw [he]
    exact sub_le_self _ hpaid
  have hroot : (U : ℝ) / Real.sqrt ((U + 1 : ℕ) : ℝ) ≤ Real.sqrt (U : ℝ) := by
    apply (div_le_iff₀ (Real.sqrt_pos.2 hUp1pos)).2
    have hut : (U : ℝ) ≤ ((U + 1 : ℕ) : ℝ) := by exact_mod_cast Nat.le_succ U
    have hs := mul_le_mul_of_nonneg_left (Real.sqrt_le_sqrt hut)
      (Real.sqrt_nonneg (U : ℝ))
    nlinarith [Real.sq_sqrt hUpos.le]
  calc
    _ ≤ ((U : ℝ) / Real.sqrt ((U + 1 : ℕ) : ℝ)) * (1 + 10 / A) :=
      hnorm.trans hdrop
    _ ≤ Real.sqrt (U : ℝ) * (1 + 10 / A) :=
      mul_le_mul_of_nonneg_right hroot (by positivity)
    _ ≤ A * (1 + 10 / A) := mul_le_mul_of_nonneg_right
      (sqrt_vaughanCutoff_le A hA) (by positivity)
    _ = A + 10 := by field_simp

end FormalResearch.RiemannHypothesis.SourceCenteredMobiusNorm
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusNorm/Variant1440d21547cc73e17c4050c8b5df6eebf1d458f4f3ff0c8f96c367d438a7c6f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusNorm/Variant1440d21547cc73e17c4050c8b5df6eebf1d458f4f3ff0c8f96c367d438a7c6f2.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d4e90cdf46d2564b891ccf453980bd4acc159b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
