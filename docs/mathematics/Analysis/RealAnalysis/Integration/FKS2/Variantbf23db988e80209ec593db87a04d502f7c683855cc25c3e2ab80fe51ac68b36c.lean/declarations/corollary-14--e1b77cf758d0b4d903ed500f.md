# corollary_14

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f16285fb-9611-9b9b-e709-d1c2e16bb4bd",
  "kind": "theorem",
  "lexical_name": "corollary_14",
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
  "slug": "corollary-14--e1b77cf758d0b4d903ed500f",
  "source": {
    "blob": "b782c60ba436204bfe0cbe2f3e10cf9ae3c50f1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1569,
    "line": 1493,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1b77cf758d0b4d903ed500ff11d58b314dc481bd7f6dae95d1c692a76cd858b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f16285fb-9611-9b9b-e709-d1c2e16bb4bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1493–1569.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem corollary_14 : Eθ.classicalBound 121.0961 (3 / 2) 2 5.5666305 2 := by
  have hsmall_adm :
      ∀ {x : ℝ}, 2 ≤ x → x ≤ Real.exp 30 →
      (1 : ℝ) ≤ admissible_bound 121.0961 (3 / 2) 2 5.5666305 x := corollary_14_small_adm

  have hfloor30 : ⌊(30 : ℝ) / Real.log 2⌋₊ = 43 := floor_30_div_log2_eq_43
  have ha1 : BKLNW.a₁ 30 ≤ 1 + 1.9339e-8 := bklnw_a1_30_le
  have ha2 : BKLNW.a₂ 30 ≤ 42.42 := bklnw_a2_30_le
  have hcoef :
      (1 / (121.096 : ℝ)) * (5.5666305 / 30) ^ (3 / 2 : ℝ) * Real.exp (2 * Real.sqrt (30 / 5.5666305)) ≤ 0.06865 := coeff_bound_30
  have hν : ν_asymp 121.096 (3 / 2) 2 5.5666305 (Real.exp 30) ≤ 8.25e-7 := nu_asymp_bound_30

  have hA : 121.096 * (1 + ν_asymp 121.096 (3 / 2) 2 5.5666305 (Real.exp 30)) ≤ 121.0961 := by
    nlinarith [hν]

  have hEψ30 : Eψ.classicalBound 121.096 (3 / 2) 2 5.5666305 (Real.exp 30) := epsi_classicalBound_30
  have hB : (3 / 2 : ℝ) > 2 ^ 2 / (8 * 5.5666305) := by norm_num
  have hEθ30 :
      Eθ.classicalBound (121.096 * (1 + ν_asymp 121.096 (3 / 2) 2 5.5666305 (Real.exp 30)))
        (3 / 2) 2 5.5666305 (Real.exp 30) :=
    proposition_13 121.096 (3 / 2) 2 5.5666305 (Real.exp 30) (by norm_num) (by norm_num) (exp_pos 30) (by rw [Real.log_exp]; norm_num) hEψ30 hB

  rw [Eθ.classicalBound]
  intro x hx
  by_cases hx30 : x ≤ Real.exp 30
  · have hx_pos : 0 < x := by linarith
    have hExp30_le_1e19 : Real.exp 30 ≤ (1e19 : ℝ) := by
      have h30lelog : (30 : ℝ) ≤ Real.log (1e19) := by
        have h1e19 : (1e19 : ℝ) = (10 : ℝ) ^ 19 := by norm_num
        rw [h1e19, Real.log_pow]
        norm_num
        nlinarith [LogTables.log_10_gt]
      have : Real.exp 30 ≤ Real.exp (Real.log (1e19)) := (Real.exp_le_exp).2 h30lelog
      simpa [Real.exp_log (by norm_num : (0 : ℝ) < 1e19)] using this
    have hx_le_1e19 : x ≤ (1e19 : ℝ) := le_trans hx30 hExp30_le_1e19
    have hθlt : θ x < x := BKLNW.buthe_eq_1_7 x ⟨hx_pos, hx_le_1e19⟩
    have hEθ1 : Eθ x ≤ 1 := by
      unfold Eθ
      have habs : |θ x - x| ≤ x := by
        have hleft : -x ≤ θ x - x := by linarith [theta_nonneg x]
        have hright : θ x - x ≤ x := by linarith [hθlt]
        exact abs_le.mpr ⟨hleft, hright⟩
      exact (div_le_iff₀ hx_pos).mpr (by nlinarith [habs])
    have hAdm1 : (1 : ℝ) ≤ admissible_bound 121.0961 (3 / 2) 2 5.5666305 x := hsmall_adm hx hx30
    exact le_trans hEθ1 hAdm1
  · have hx30' : Real.exp 30 ≤ x := le_of_lt (lt_of_not_ge hx30)
    have hmain : Eθ x ≤ admissible_bound
        (121.096 * (1 + ν_asymp 121.096 (3 / 2) 2 5.5666305 (Real.exp 30)))
        (3 / 2) 2 5.5666305 x := hEθ30 x hx30'
    have hlog_div_nonneg : 0 ≤ Real.log x / 5.5666305 := by
      have hx_ge1 : (1 : ℝ) ≤ x := by
        have h1exp30 : (1 : ℝ) < Real.exp 30 := (Real.one_lt_exp_iff).2 (by norm_num : (0 : ℝ) < 30)
        exact le_trans h1exp30.le hx30'
      exact div_nonneg (Real.log_nonneg hx_ge1) (by norm_num)
    have hpow_nonneg : 0 ≤ (Real.log x / 5.5666305) ^ (3 / 2 : ℝ) :=
      Real.rpow_nonneg hlog_div_nonneg _
    have hexp_nonneg : 0 ≤ Real.exp (-2 * (Real.log x / 5.5666305) ^ ((1 : ℝ) / (2 : ℝ))) := by positivity
    have hAmono : admissible_bound
        (121.096 * (1 + ν_asymp 121.096 (3 / 2) 2 5.5666305 (Real.exp 30)))
        (3 / 2) 2 5.5666305 x ≤ admissible_bound 121.0961 (3 / 2) 2 5.5666305 x := by
      let t : ℝ := (Real.log x / 5.5666305) ^ (3 / 2 : ℝ)
      let e : ℝ := Real.exp (-2 * (Real.log x / 5.5666305) ^ ((1 : ℝ) / (2 : ℝ)))
      have ht_nonneg : 0 ≤ t := by simpa [t] using hpow_nonneg
      have he_nonneg : 0 ≤ e := by simpa [e] using hexp_nonneg
      have hAt :
          (121.096 * (1 + ν_asymp 121.096 (3 / 2) 2 5.5666305 (Real.exp 30))) * t ≤ 121.0961 * t :=
        mul_le_mul_of_nonneg_right hA ht_nonneg
      have hAte :
          ((121.096 * (1 + ν_asymp 121.096 (3 / 2) 2 5.5666305 (Real.exp 30))) * t) * e ≤
          (121.0961 * t) * e :=
        mul_le_mul_of_nonneg_right hAt he_nonneg
      unfold admissible_bound
      simpa [t, e, mul_assoc, mul_left_comm, mul_comm] using hAte
    exact le_trans hmain hAmono



```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean#L1493).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b782c60ba436204bfe0cbe2f3e10cf9ae3c50f1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
