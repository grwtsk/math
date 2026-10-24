# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualReciprocalXiVariationChallenge.Variant216edcce15aebc7a5b6ef6d8044b748534f2647429019526a46cd4a4ef92a0b7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3d22f638cf72f1cdba80f432a1efb7caf1ed5b74` · SHA-256 `216edcce15aebc7a5b6ef6d8044b748534f2647429019526a46cd4a4ef92a0b7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualXiReciprocalJointAbel

/-!
The genuine closed-psi joint quotient weight retains a growing absolute
variation budget even after its touching product atoms cancel exactly.
This is an obstruction to an unsigned Abel budget only, not a lower bound
for the actual signed Mangoldt pair or anchored Xi primitive.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.ActualReciprocalXiVariationChallenge
open ArithmeticFunction Filter
open SourceActualXiClosedKernelHyperbola SourceActualXiReciprocalJointAbel
noncomputable section

/-- The literal absolute finite Abel budget of the actual joint quotient weight. -/
def actualReciprocalXiVariationBudget (N : ℕ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 (N - 1),
    |actualReciprocalXiQuotientWeight (N : ℝ) d -
      actualReciprocalXiQuotientWeight (N : ℝ) (d + 1)|

private theorem kernel_nonnegative {N m : ℕ} (hm : 1 ≤ m) (hmN : m ≤ N) :
    0 ≤ actualClosedXiAtomKernel (N : ℝ) m := by
  have hmp : 0 < (m : ℝ) := by exact_mod_cast hm
  have hs := Real.sqrt_le_sqrt (show (m : ℝ) ≤ (N : ℝ) by exact_mod_cast hmN)
  unfold actualClosedXiAtomKernel
  exact sub_nonneg.mpr (one_div_le_one_div_of_le (Real.sqrt_pos.2 hmp) hs)

private theorem subrow_term_lower {q m : ℕ} (hq : 2 ≤ q)
    (hm : m ∈ Finset.Icc q (2 * q)) :
    Real.log (q : ℝ) / Real.sqrt ((8 * q : ℕ) : ℝ) ≤
      Real.log (m : ℝ) * actualClosedXiAtomKernel ((8 * q : ℕ) : ℝ) m := by
  have hq0 : 0 < (q : ℝ) := by exact_mod_cast (show 0 < q by omega)
  have hm0 : 0 < (m : ℝ) := by exact_mod_cast (show 0 < m by
    have := (Finset.mem_Icc.mp hm).1
    omega)
  have hN0 : 0 < ((8 * q : ℕ) : ℝ) := by positivity
  have hsm := Real.sq_sqrt (Nat.cast_nonneg m)
  have hsN := Real.sq_sqrt (Nat.cast_nonneg (8 * q))
  have hm2 : (m : ℝ) ≤ 2 * (q : ℝ) := by
    exact_mod_cast (Finset.mem_Icc.mp hm).2
  have hsN' : Real.sqrt ((8 * q : ℕ) : ℝ) ^ 2 = 8 * (q : ℝ) :=
    hsN.trans (by push_cast; rfl)
  have hr : 2 * Real.sqrt (m : ℝ) ≤ Real.sqrt ((8 * q : ℕ) : ℝ) := by
    nlinarith [Real.sqrt_nonneg (m : ℝ), Real.sqrt_nonneg ((8 * q : ℕ) : ℝ)]
  have hd : 2 / Real.sqrt ((8 * q : ℕ) : ℝ) ≤ 1 / Real.sqrt (m : ℝ) := by
    apply (div_le_div_iff₀ (Real.sqrt_pos.2 hN0) (Real.sqrt_pos.2 hm0)).2
    simpa only [one_mul] using hr
  have hk : 1 / Real.sqrt ((8 * q : ℕ) : ℝ) ≤
      actualClosedXiAtomKernel ((8 * q : ℕ) : ℝ) m := by
    unfold actualClosedXiAtomKernel
    simp only [div_eq_mul_inv] at hd ⊢
    linarith
  have hl := Real.log_le_log hq0
    (show (q : ℝ) ≤ (m : ℝ) by exact_mod_cast (Finset.mem_Icc.mp hm).1)
  rw [div_eq_mul_inv, ← one_div]
  exact mul_le_mul hl hk (by positivity)
    (Real.log_nonneg (by exact_mod_cast
      ((show 1 ≤ q by omega).trans (Finset.mem_Icc.mp hm).1)))

/-- A complete closed positive logarithmic subrow forces the actual unit weight to grow. -/
theorem actualReciprocalXiQuotientWeight_one_lower {q : ℕ} (hq : 2 ≤ q) :
    Real.sqrt ((8 * q : ℕ) : ℝ) * Real.log (q : ℝ) / 8 ≤
      actualReciprocalXiQuotientWeight ((8 * q : ℕ) : ℝ) 1 := by
  rw [actualReciprocalXiQuotientWeight_one, Nat.floor_natCast]
  have hsub : Finset.Icc q (2 * q) ⊆ Finset.Icc 1 (8 * q) := by
    intro m hm
    simp only [Finset.mem_Icc] at hm ⊢
    omega
  have hs : (∑ m ∈ Finset.Icc q (2 * q),
      Real.log (m : ℝ) * actualClosedXiAtomKernel ((8 * q : ℕ) : ℝ) m) ≤
      ∑ m ∈ Finset.Icc 1 (8 * q),
        Real.log (m : ℝ) * actualClosedXiAtomKernel ((8 * q : ℕ) : ℝ) m := by
    apply Finset.sum_le_sum_of_subset_of_nonneg hsub
    intro m hm _
    have hm1 := (Finset.mem_Icc.mp hm).1
    exact mul_nonneg (Real.log_nonneg (by exact_mod_cast hm1))
      (kernel_nonnegative hm1 (Finset.mem_Icc.mp hm).2)
  have hc : ((q + 1 : ℕ) : ℝ) *
      (Real.log (q : ℝ) / Real.sqrt ((8 * q : ℕ) : ℝ)) ≤
      ∑ m ∈ Finset.Icc q (2 * q),
        Real.log (m : ℝ) * actualClosedXiAtomKernel ((8 * q : ℕ) : ℝ) m := by
    have hh := Finset.sum_le_sum (fun m hm => subrow_term_lower hq hm)
    have he : 2 * q + 1 - q = q + 1 := by omega
    simpa only [Finset.sum_const, Nat.card_Icc, he, nsmul_eq_mul] using hh
  have hq1 : (1 : ℝ) ≤ (q : ℝ) := by exact_mod_cast (show 1 ≤ q by omega)
  have hN0 : 0 < ((8 * q : ℕ) : ℝ) := by positivity
  have hsN := Real.sq_sqrt (Nat.cast_nonneg (8 * q))
  have hsN' : Real.sqrt ((8 * q : ℕ) : ℝ) ^ 2 = 8 * (q : ℝ) :=
    hsN.trans (by push_cast; rfl)
  have he : (q : ℝ) / Real.sqrt ((8 * q : ℕ) : ℝ) =
      Real.sqrt ((8 * q : ℕ) : ℝ) / 8 := by
    apply (div_eq_iff (Real.sqrt_pos.2 hN0).ne').2
    nlinarith
  calc
    _ = Real.log (q : ℝ) * ((q : ℝ) / Real.sqrt ((8 * q : ℕ) : ℝ)) := by
      rw [he]
      ring
    _ ≤ ((q + 1 : ℕ) : ℝ) *
        (Real.log (q : ℝ) / Real.sqrt ((8 * q : ℕ) : ℝ)) := by
      rw [show Real.log (q : ℝ) * ((q : ℝ) / Real.sqrt ((8 * q : ℕ) : ℝ)) =
        (q : ℝ) * (Real.log (q : ℝ) / Real.sqrt ((8 * q : ℕ) : ℝ)) by ring]
      exact mul_le_mul_of_nonneg_right (by push_cast; linarith)
        (div_nonneg (Real.log_nonneg hq1) (Real.sqrt_nonneg ((8 * q : ℕ) : ℝ)))
    _ ≤ _ := hc.trans hs

private theorem differences_telescope (N : ℕ) (w : ℕ → ℝ) (hN : 1 ≤ N) :
    (∑ d ∈ Finset.Icc 1 (N - 1), (w d - w (d + 1))) = w 1 - w N := by
  have he (k : ℕ) : (∑ d ∈ Finset.Icc 1 k, (w d - w (d + 1))) = w 1 - w (k + 1) := by
    induction k with
    | zero => simp
    | succ k ih =>
      rw [Finset.sum_Icc_succ_top (by omega : 1 ≤ k + 1), ih]
      ring
  simpa only [Nat.sub_add_cancel hN] using he (N - 1)

/-- Even with the true upper weight zero, the actual absolute variation has a growing floor. -/
theorem actualReciprocalXiVariationBudget_lower {q : ℕ} (hq : 2 ≤ q) :
    Real.sqrt ((8 * q : ℕ) : ℝ) * Real.log (q : ℝ) / 8 ≤
      actualReciprocalXiVariationBudget (8 * q) := by
  have ht := differences_telescope (8 * q)
    (actualReciprocalXiQuotientWeight ((8 * q : ℕ) : ℝ)) (by omega)
  have hu := actualReciprocalXiQuotientWeight_at_cutoff ((8 * q : ℕ) : ℝ)
  rw [Nat.floor_natCast] at hu
  rw [hu, sub_zero] at ht
  have hs := Finset.abs_sum_le_sum_abs
    (fun d => actualReciprocalXiQuotientWeight ((8 * q : ℕ) : ℝ) d -
      actualReciprocalXiQuotientWeight ((8 * q : ℕ) : ℝ) (d + 1))
      (Finset.Icc 1 (8 * q - 1))
  rw [ht] at hs
  exact (actualReciprocalXiQuotientWeight_one_lower hq).trans
    ((le_abs_self _).trans hs)

/-- This unsigned source budget grows on actual integer cutoffs, not on a surrogate row. -/
theorem actualReciprocalXiVariationBudget_tendsto_atTop :
    Tendsto (fun q : ℕ => actualReciprocalXiVariationBudget (8 * q)) atTop atTop := by
  have hn : Tendsto (fun q : ℕ => (q : ℝ)) atTop atTop := tendsto_natCast_atTop_atTop
  have hs := Real.tendsto_sqrt_atTop.comp (hn.const_mul_atTop (by norm_num : (0 : ℝ) < 8))
  have he := hs.atTop_mul_const
    (div_pos (Real.log_pos (by norm_num : (1 : ℝ) < 2)) (by norm_num : (0 : ℝ) < 8))
  apply tendsto_atTop.2
  intro b
  filter_upwards [he.eventually_ge_atTop b, eventually_ge_atTop (2 : ℕ)] with q hb hq
  have hl := Real.log_le_log (by norm_num : (0 : ℝ) < 2)
    (show (2 : ℝ) ≤ (q : ℝ) by exact_mod_cast hq)
  calc
    b ≤ Real.sqrt (8 * (q : ℝ)) * (Real.log 2 / 8) := hb
    _ = Real.sqrt ((8 * q : ℕ) : ℝ) * Real.log 2 / 8 := by push_cast; ring
    _ ≤ Real.sqrt ((8 * q : ℕ) : ℝ) * Real.log (q : ℝ) / 8 := by
      exact div_le_div_of_nonneg_right
        (mul_le_mul_of_nonneg_left hl (Real.sqrt_nonneg _)) (by norm_num)
    _ ≤ actualReciprocalXiVariationBudget (8 * q) := actualReciprocalXiVariationBudget_lower hq

/-- No fixed tail bound exists for this absolute Abel budget; no signed-pair claim is made. -/
theorem actualReciprocalXiVariationBudget_no_uniform_upper :
    ¬ ∃ M : ℝ, ∃ R : ℕ, ∀ q : ℕ, R ≤ q → actualReciprocalXiVariationBudget (8 * q) ≤ M := by
  rintro ⟨M, R, hM⟩
  have hb := actualReciprocalXiVariationBudget_tendsto_atTop.eventually_ge_atTop (M + 1)
  obtain ⟨q, hq, hRq⟩ := (hb.and (eventually_ge_atTop R)).exists
  have hh := hM q hRq
  linarith

end
end FormalResearch.RiemannHypothesis.ActualReciprocalXiVariationChallenge
```
