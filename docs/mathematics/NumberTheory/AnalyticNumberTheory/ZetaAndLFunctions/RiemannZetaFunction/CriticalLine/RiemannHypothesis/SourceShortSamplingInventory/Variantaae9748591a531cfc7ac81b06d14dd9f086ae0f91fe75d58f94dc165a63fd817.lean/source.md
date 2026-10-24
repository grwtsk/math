# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceShortSamplingInventory.Variantaae9748591a531cfc7ac81b06d14dd9f086ae0f91fe75d58f94dc165a63fd817

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f61c14513fd27af629b5eb5743bc018a120fd7fc` · SHA-256 `aae9748591a531cfc7ac81b06d14dd9f086ae0f91fe75d58f94dc165a63fd817`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvature
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanTranslationGate
import FormalResearch.RiemannHypothesis.WeightedPrimeMertens

/-!
# The exact short Vaughan inventories preserve curvature-sized sampling errors

Review-only adapter over the recorded, unmerged Vaughan dependency closure.
The two pointwise sampling estimates are explicit hypotheses, not proved
sampling theorems or axioms. This file checks the arithmetic implication:
errors of size `E / (A² sqrt x)` have bounded aggregate cost, including the
complete doubly short plain sector. The Chebyshev estimate avoids an
unnecessary logarithmic loss. The proof recipe matches the authored
`EstimateVaughanBounds` in PR151, but imports neither that module nor
`Zeta23.Chebyshev`: its Chebyshev input is maintained Mathlib. The elementary
reciprocal-square-root and Möbius bounds are proved locally, matching the
authored `EstimateMovingFrontBound` without extending the recorded closure.

AI attribution: developed with OpenAI Codex; the proof terms are checked by Lean.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceShortSamplingInventory

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimatePlainKernel EstimateSourceMobiusKernel
open EstimateMobiusSplit EstimateMertensAbel ArithmeticFunction

/-- A telescoping square-root estimate, including the empty sum. -/
private theorem sum_reciprocal_sqrt_le (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N, 1 / Real.sqrt (n : ℝ)) ≤ 2 * Real.sqrt N := by
  induction N with
  | zero => simp
  | succ N hN =>
    rw [Finset.sum_Icc_succ_top (by omega)]
    have hp : 0 < Real.sqrt ((N + 1 : ℕ) : ℝ) := Real.sqrt_pos.mpr (by positivity)
    have ha := Real.sq_sqrt (by positivity : (0 : ℝ) ≤ ((N + 1 : ℕ) : ℝ))
    have hb := Real.sq_sqrt (Nat.cast_nonneg N : (0 : ℝ) ≤ N)
    have hstep : 1 / Real.sqrt ((N + 1 : ℕ) : ℝ) ≤
        2 * (Real.sqrt ((N + 1 : ℕ) : ℝ) - Real.sqrt (N : ℝ)) := by
      apply (div_le_iff₀ hp).2
      have hd : Real.sqrt ((N + 1 : ℕ) : ℝ) ^ 2 - Real.sqrt (N : ℝ) ^ 2 = 1 := by
        rw [ha, hb]
        push_cast
        ring
      nlinarith [sq_nonneg (Real.sqrt ((N + 1 : ℕ) : ℝ) - Real.sqrt (N : ℝ))]
    linarith

/-- The unit bound for the genuine integer Möbius coefficient. -/
private theorem realMoebius_abs_le_one (n : ℕ) : |realMoebius n| ≤ 1 := by
  simpa only [realMoebius, ← Int.cast_abs, Int.cast_one] using
    (Int.cast_le.mpr (ArithmeticFunction.abs_moebius_le_one (n := n)) :
      ((|ArithmeticFunction.moebius n| : ℤ) : ℝ) ≤ (1 : ℤ))


private theorem range_succ_sum (f : ℕ → ℝ) (N : ℕ) :
    (∑ n ∈ Finset.range N, f (n+1)) = ∑ n ∈ Finset.Icc 1 N, f n := by
  induction N with
  | zero => simp
  | succ N h => rw [Finset.sum_range_succ, Finset.sum_Icc_succ_top (by omega), h]

/-- The finite half-density bound follows from maintained Mathlib Chebyshev. -/
theorem sum_vonMangoldt_div_sqrt_le (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N, vonMangoldt n / Real.sqrt n) ≤
      2 * (Real.log 4 + 4) * Real.sqrt N := by
  let K := Real.log 4 + 4
  let f : ℕ → ℝ := fun n ↦ 1 / Real.sqrt (n+1 : ℕ)
  let g : ℕ → ℝ := fun n ↦ vonMangoldt (n+1) - K
  have hp (j : ℕ) : (∑ n ∈ Finset.range j, g n) ≤ 0 := by
    dsimp only [g]
    rw [Finset.sum_sub_distrib, range_succ_sum]
    simp only [Finset.sum_const, Finset.card_range, nsmul_eq_mul]
    have h := Chebyshev.psi_le_const_mul_self (x := (j : ℝ)) (Nat.cast_nonneg j)
    have hset : Finset.Ioc 0 j = Finset.Icc 1 j := by ext n; simp; omega
    simp only [Chebyshev.psi, Nat.floor_natCast, hset] at h
    dsimp [K]
    linarith
  have hf (n : ℕ) : 0 ≤ f n := by dsimp [f]; positivity
  have ha (n : ℕ) : f (n+1) ≤ f n := by
    dsimp [f]
    apply one_div_le_one_div_of_le (by positivity)
    apply Real.sqrt_le_sqrt
    push_cast
    linarith
  have hparts := Finset.sum_range_by_parts f g N
  simp only [smul_eq_mul] at hparts
  have hb := mul_nonpos_of_nonneg_of_nonpos (hf (N-1)) (hp N)
  have hs : 0 ≤ ∑ n ∈ Finset.range (N-1), (f (n+1)-f n) * ∑ i ∈ Finset.range (n+1), g i := by
    exact Finset.sum_nonneg (fun n _ ↦ mul_nonneg_of_nonpos_of_nonpos
      (sub_nonpos.mpr (ha n)) (hp (n+1)))
  have hw : (∑ n ∈ Finset.range N, f n * g n) ≤ 0 := by linarith
  have he : (∑ n ∈ Finset.range N, f n * g n) =
      (∑ n ∈ Finset.Icc 1 N, vonMangoldt n / Real.sqrt n) -
      K * ∑ n ∈ Finset.Icc 1 N, 1 / Real.sqrt n := by
    dsimp [f,g]
    simp_rw [mul_sub, one_div, mul_comm (Real.sqrt _ )⁻¹]
    rw [Finset.sum_sub_distrib, ← Finset.mul_sum]
    simp only [← div_eq_mul_inv]
    rw [range_succ_sum (fun n ↦ vonMangoldt n / Real.sqrt n),
      range_succ_sum (fun n ↦ (Real.sqrt (n : ℝ))⁻¹)]
  rw [he] at hw
  have hk : 0 ≤ K := by dsimp [K]; positivity
  have hsum := mul_le_mul_of_nonneg_left (sum_reciprocal_sqrt_le N) hk
  dsimp [K] at hw hsum
  nlinarith


/-- The actual signed logarithmic inventory with a supplied finite sampling main term. -/
noncomputable def shortLogMainTerm (A : ℝ) (J₁ : ℝ → ℝ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d * J₁ d

/-- The actual doubly short signed plain inventory with a supplied sampling main term. -/
noncomputable def shortPlainMainTerm (A : ℝ) (J₀ : ℝ → ℝ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
    ∑ m ∈ Finset.Icc 1 (vaughanCutoff A),
      realMoebius d * ArithmeticFunction.vonMangoldt m * J₀ ((d * m : ℕ) : ℝ)

/-- The logarithmic error survives the literal closed short inventory with cost `2E/A`. -/
theorem shortLog_error_le_of_sampling_error {A E : ℝ} (hA : 1 ≤ A) (hE : 0 ≤ E)
    (J₁ : ℝ → ℝ)
    (herr : ∀ d ∈ Finset.Icc 1 (vaughanCutoff A),
      |sourceMobiusKernel A d - J₁ d| ≤ E / (A ^ 2 * Real.sqrt d)) :
    |shortLogSource A - shortLogMainTerm A J₁| ≤ 2 * E / A := by
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  unfold shortLogSource shortLogMainTerm
  rw [← Finset.sum_sub_distrib]
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
      |realMoebius d * sourceMobiusKernel A d - realMoebius d * J₁ d| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), E / A ^ 2 * (1 / Real.sqrt d) := by
      apply Finset.sum_le_sum
      intro d hd
      rw [← mul_sub, abs_mul]
      calc
        _ ≤ 1 * (E / (A ^ 2 * Real.sqrt d)) :=
          mul_le_mul (realMoebius_abs_le_one d) (herr d hd) (abs_nonneg _) (by norm_num)
        _ = _ := by ring
    _ = E / A ^ 2 * ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), 1 / Real.sqrt d :=
      (Finset.mul_sum _ _ _).symm
    _ ≤ E / A ^ 2 * (2 * Real.sqrt (vaughanCutoff A)) :=
      mul_le_mul_of_nonneg_left (sum_reciprocal_sqrt_le _) (by positivity)
    _ ≤ E / A ^ 2 * (2 * A) := by
      gcongr
      exact sqrt_vaughanCutoff_le A hA
    _ = _ := by field_simp [hp.ne']

/-- The logarithmic sampling error is uniformly bounded for the actual scale domain. -/
theorem shortLog_error_uniform_le_of_sampling_error {A E : ℝ} (hA : 1 ≤ A)
    (hE : 0 ≤ E) (J₁ : ℝ → ℝ)
    (herr : ∀ d ∈ Finset.Icc 1 (vaughanCutoff A),
      |sourceMobiusKernel A d - J₁ d| ≤ E / (A ^ 2 * Real.sqrt d)) :
    |shortLogSource A - shortLogMainTerm A J₁| ≤ 2 * E := by
  apply (shortLog_error_le_of_sampling_error hA hE J₁ herr).trans
  exact div_le_self (by positivity) hA

/-- The complete doubly short plain error has a uniform cost, using the weighted Chebyshev bound. -/
theorem shortPlain_error_uniform_le_of_sampling_error {A E : ℝ} (hA : 1 ≤ A)
    (hE : 0 ≤ E) (J₀ : ℝ → ℝ)
    (herr : ∀ d ∈ Finset.Icc 1 (vaughanCutoff A),
      ∀ m ∈ Finset.Icc 1 (vaughanCutoff A),
        |sourcePlainKernel A ((d * m : ℕ) : ℝ) - J₀ ((d * m : ℕ) : ℝ)| ≤
          E / (A ^ 2 * Real.sqrt ((d * m : ℕ) : ℝ))) :
    |shortPlainSource A - shortPlainMainTerm A J₀| ≤
      4 * (Real.log 4 + 4) * E := by
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have hcoef : 0 ≤ Real.log 4 + 4 := by positivity
  unfold shortPlainSource shortPlainMainTerm
  rw [← Finset.sum_sub_distrib]
  simp_rw [← Finset.sum_sub_distrib]
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
      ∑ m ∈ Finset.Icc 1 (vaughanCutoff A),
        |realMoebius d * ArithmeticFunction.vonMangoldt m *
            sourcePlainKernel A ((d * m : ℕ) : ℝ) -
          realMoebius d * ArithmeticFunction.vonMangoldt m * J₀ ((d * m : ℕ) : ℝ)| := by
      apply (Finset.abs_sum_le_sum_abs _ _).trans
      apply Finset.sum_le_sum
      intro d _
      exact Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
      ∑ m ∈ Finset.Icc 1 (vaughanCutoff A),
        E / A ^ 2 * (1 / Real.sqrt d) *
          (ArithmeticFunction.vonMangoldt m / Real.sqrt m) := by
      apply Finset.sum_le_sum
      intro d hd
      apply Finset.sum_le_sum
      intro m hm
      rw [← mul_sub, abs_mul, abs_mul,
        abs_of_nonneg ArithmeticFunction.vonMangoldt_nonneg]
      calc
        _ ≤ (1 * ArithmeticFunction.vonMangoldt m) *
          (E / (A ^ 2 * Real.sqrt ((d * m : ℕ) : ℝ))) := by
          apply mul_le_mul
          · exact mul_le_mul_of_nonneg_right (realMoebius_abs_le_one d)
              ArithmeticFunction.vonMangoldt_nonneg
          · exact herr d hd m hm
          · exact abs_nonneg _
          · exact mul_nonneg (by norm_num) ArithmeticFunction.vonMangoldt_nonneg
        _ = _ := by
          rw [Nat.cast_mul, Real.sqrt_mul (by positivity : (0 : ℝ) ≤ d)]
          ring
    _ = E / A ^ 2 *
        (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), 1 / Real.sqrt d) *
        (∑ m ∈ Finset.Icc 1 (vaughanCutoff A),
          ArithmeticFunction.vonMangoldt m / Real.sqrt m) := by
      simp_rw [← Finset.mul_sum]
      rw [← Finset.sum_mul, ← Finset.mul_sum]
    _ ≤ E / A ^ 2 * (2 * Real.sqrt (vaughanCutoff A)) *
        (2 * (Real.log 4 + 4) * Real.sqrt (vaughanCutoff A)) := by
      gcongr
      · exact sum_reciprocal_sqrt_le _
      · exact sum_vonMangoldt_div_sqrt_le _
    _ ≤ E / A ^ 2 * (2 * A) * (2 * (Real.log 4 + 4) * A) := by
      gcongr <;> exact sqrt_vaughanCutoff_le A hA
    _ = _ := by field_simp [hp.ne']; ring

end FormalResearch.RiemannHypothesis.SourceShortSamplingInventory
```
