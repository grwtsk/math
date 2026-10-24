# HasFPowerSeriesOnBall.isBigO_image_sub_image_sub_deriv_principal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53d5d25b-6436-8563-5e7b-f90ed9f1eddb",
  "kind": "theorem",
  "lexical_name": "HasFPowerSeriesOnBall.isBigO_image_sub_image_sub_deriv_principal",
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
  "slug": "hasfpowerseriesonball-isbigo-image-sub-image-sub-deriv-principal--ff00c0137ff0be115e182e9e",
  "source": {
    "blob": "f42d3dce53c84fc9f0fbd5e05ecccdb6b8f44796",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 790,
    "line": 721,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variante62152e3bef3af126d7464cf7306d9be51bc9995d0c32d85391873e4d5b16489.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff00c0137ff0be115e182e9eb86bcdb3b7930c3ac4774d900a7db33862807902",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Basic/Variante62152e3bef3af126d7464cf7306d9be51bc9995d0c32d85391873e4d5b16489.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53d5d25b-6436-8563-5e7b-f90ed9f1eddb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 721–790.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFPowerSeriesOnBall.isBigO_image_sub_image_sub_deriv_principal
    (hf : HasFPowerSeriesOnBall f p x r) (hr : r' < r) :
    (fun y : E × E => f y.1 - f y.2 - p 1 fun _ => y.1 - y.2) =O[𝓟 (EMetric.ball (x, x) r')]
      fun y => ‖y - (x, x)‖ * ‖y.1 - y.2‖ := by
  lift r' to ℝ≥0 using ne_top_of_lt hr
  rcases (zero_le r').eq_or_lt with (rfl | hr'0)
  · simp only [isBigO_bot, EMetric.ball_zero, principal_empty, ENNReal.coe_zero]
  obtain ⟨a, ha, C, hC : 0 < C, hp⟩ :
    ∃ a ∈ Ioo (0 : ℝ) 1, ∃ C > 0, ∀ n : ℕ, ‖p n‖ * (r' : ℝ) ^ n ≤ C * a ^ n
  exact p.norm_mul_pow_le_mul_pow_of_lt_radius (hr.trans_le hf.r_le)
  simp only [← le_div_iff (pow_pos (NNReal.coe_pos.2 hr'0) _)] at hp
  set L : E × E → ℝ := fun y =>
    C * (a / r') ^ 2 * (‖y - (x, x)‖ * ‖y.1 - y.2‖) * (a / (1 - a) ^ 2 + 2 / (1 - a))
  have hL : ∀ y ∈ EMetric.ball (x, x) r', ‖f y.1 - f y.2 - p 1 fun _ => y.1 - y.2‖ ≤ L y := by
    intro y hy'
    have hy : y ∈ EMetric.ball x r ×ˢ EMetric.ball x r := by
      rw [EMetric.ball_prod_same]
      exact EMetric.ball_subset_ball hr.le hy'
    set A : ℕ → F := fun n => (p n fun _ => y.1 - x) - p n fun _ => y.2 - x
    have hA : HasSum (fun n => A (n + 2)) (f y.1 - f y.2 - p 1 fun _ => y.1 - y.2) := by
      convert (hasSum_nat_add_iff' 2).2 ((hf.hasSum_sub hy.1).sub (hf.hasSum_sub hy.2)) using 1
      rw [Finset.sum_range_succ, Finset.sum_range_one, hf.coeff_zero, hf.coeff_zero, sub_self,
        zero_add, ← Subsingleton.pi_single_eq (0 : Fin 1) (y.1 - x), Pi.single,
        ← Subsingleton.pi_single_eq (0 : Fin 1) (y.2 - x), Pi.single, ← (p 1).map_sub, ← Pi.single,
        Subsingleton.pi_single_eq, sub_sub_sub_cancel_right]
    rw [EMetric.mem_ball, edist_eq_coe_nnnorm_sub, ENNReal.coe_lt_coe] at hy'
    set B : ℕ → ℝ := fun n => C * (a / r') ^ 2 * (‖y - (x, x)‖ * ‖y.1 - y.2‖) * ((n + 2) * a ^ n)
    have hAB : ∀ n, ‖A (n + 2)‖ ≤ B n := fun n =>
      calc
        ‖A (n + 2)‖ ≤ ‖p (n + 2)‖ * ↑(n + 2) * ‖y - (x, x)‖ ^ (n + 1) * ‖y.1 - y.2‖ := by
          -- porting note: `pi_norm_const` was `pi_norm_const (_ : E)`
          simpa only [Fintype.card_fin, pi_norm_const, Prod.norm_def, Pi.sub_def,
            Prod.fst_sub, Prod.snd_sub, sub_sub_sub_cancel_right] using
            (p <| n + 2).norm_image_sub_le (fun _ => y.1 - x) fun _ => y.2 - x
        _ = ‖p (n + 2)‖ * ‖y - (x, x)‖ ^ n * (↑(n + 2) * ‖y - (x, x)‖ * ‖y.1 - y.2‖) := by
          rw [pow_succ ‖y - (x, x)‖]
          ring
        -- porting note: the two `↑` in `↑r'` are new, without them, Lean fails to synthesize
        -- instances `HDiv ℝ ℝ≥0 ?m` or `HMul ℝ ℝ≥0 ?m`
        _ ≤ C * a ^ (n + 2) / ↑r' ^ (n + 2)
            * ↑r' ^ n * (↑(n + 2) * ‖y - (x, x)‖ * ‖y.1 - y.2‖) := by
          have : 0 < a := ha.1
          gcongr
          · apply hp
          · apply hy'.le
        _ = B n := by
          -- porting note: in the original, `B` was in the `field_simp`, but now Lean does not
          -- accept it. The current proof works in Lean 4, but does not in Lean 3.
          field_simp [pow_succ]
          simp only [mul_assoc, mul_comm, mul_left_comm]
    have hBL : HasSum B (L y) := by
      apply HasSum.mul_left
      simp only [add_mul]
      have : ‖a‖ < 1 := by simp only [Real.norm_eq_abs, abs_of_pos ha.1, ha.2]
      rw [div_eq_mul_inv, div_eq_mul_inv]
      exact (hasSum_coe_mul_geometric_of_norm_lt_1 this).add  -- porting note: was `convert`!
          ((hasSum_geometric_of_norm_lt_1 this).mul_left 2)
    exact hA.norm_le_of_bounded hBL hAB
  suffices L =O[𝓟 (EMetric.ball (x, x) r')] fun y => ‖y - (x, x)‖ * ‖y.1 - y.2‖ by
    refine' (IsBigO.of_bound 1 (eventually_principal.2 fun y hy => _)).trans this
    rw [one_mul]
    exact (hL y hy).trans (le_abs_self _)
  simp_rw [mul_right_comm _ (_ * _)]  -- porting note: there was an `L` inside the `simp_rw`.
  exact (isBigO_refl _ _).const_mul_left _
set_option linter.uppercaseLean3 false in
#align has_fpower_series_on_ball.is_O_image_sub_image_sub_deriv_principal HasFPowerSeriesOnBall.isBigO_image_sub_image_sub_deriv_principal

/-- If `f` has formal power series `∑ n, pₙ` on a ball of radius `r`, then for `y, z` in any smaller
ball, the norm of the difference `f y - f z - p 1 (fun _ ↦ y - z)` is bounded above by
`C * (max ‖y - x‖ ‖z - x‖) * ‖y - z‖`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Basic/Variante62152e3bef3af126d7464cf7306d9be51bc9995d0c32d85391873e4d5b16489.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variante62152e3bef3af126d7464cf7306d9be51bc9995d0c32d85391873e4d5b16489.lean#L721).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f42d3dce53c84fc9f0fbd5e05ecccdb6b8f44796` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
