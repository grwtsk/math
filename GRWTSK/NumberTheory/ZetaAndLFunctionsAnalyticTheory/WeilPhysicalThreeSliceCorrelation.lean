/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. Development provenance: AI-assisted.
SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN / INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddConductorThreeMassObstruction
import Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic
import Mathlib.Tactic

/-!
# Three-slice physical correlation and original prime-two phase credit

A real-axis complex L2 test f supported in [-T,T], with 0<r and 2T<3r,
has norm of its ORIGINAL whole-line correlation bounded by
  (sqrt(2)/2)*energy(f).
A strict three-interval cover permits the integral to be rewritten as
the 3-node path correlation, whose norm bound is an exact sum-of-squares
inequality. The source retains its unaltered correlation, energy,
gamma integral, paired character phases, complete prime-power inventory,
strict cutoff and conductor/parity.

The prime-two bound feeds the full pairedPhaseSurplus for T=1 and then
returns directly to the original primitiveArithmeticValue for q=3 via
the preexisting primitive_real_paired_phaseSurplus_identity.

The result is a source proof CANDIDATE, not a checked Lean theorem and not
a full Weil explicit-formula, zeta pole, all-test stage lower, RH or GRH
result. No Lean/Lake executable is available in the author's runtime.

Hostile case: smooth real odd bumps with four shifted coefficients
(1,-2,2,-1), centered at (-3/4,-1/4,1/4,3/4), have
|correlation(f,1/2)| / energy(f) = 4/5 > sqrt(2)/2 at T=1,
where 3r<2T. The range condition is essential.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set Function
open scoped ComplexConjugate BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ThreeSliceCorrelation

open SourcePrimeCorrelation LowSchur OddRootProjection
open FrobeniusPhaseSurplus DirichletStageChain OddConductorThreeObstruction

/-- Whole-line integration from three exact translated intervals. -/
private theorem integral_three_translates_of_support
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    (g : ℝ → E) (hg : Integrable g volume) (a r : ℝ) (hr : 0 < r)
    (houtside : ∀ t, t ∉ Ioc a (a + 3 * r) → g t = 0) :
    (∫ t : ℝ, g t) =
      ∫ t in a..a + r, (g t + g (t + r) + g (t + 2 * r)) := by
  have hsupp : Function.support g ⊆ Ioc a (a + 3 * r) := by
    intro t ht
    by_contra hnot
    exact ht (houtside t hnot)
  have hwhole : (∫ t in a..a + 3 * r, g t) = ∫ t : ℝ, g t :=
    intervalIntegral.integral_eq_integral_of_support_subset hsupp
  have hab : IntervalIntegrable g volume a (a + r) := hg.intervalIntegrable _ _
  have hbc : IntervalIntegrable g volume (a + r) (a + 2 * r) :=
    hg.intervalIntegrable _ _
  have hcd : IntervalIntegrable g volume (a + 2 * r) (a + 3 * r) :=
    hg.intervalIntegrable _ _
  have hbc_shift :
      (∫ t in a..a + r, g (t + r)) =
        ∫ t in a + r..a + 2 * r, g t := by
    convert intervalIntegral.integral_comp_add_right (f := g) (a := a) (b := a + r) r
      using 1 <;> ring
  have hcd_shift :
      (∫ t in a..a + r, g (t + 2 * r)) =
        ∫ t in a + 2 * r..a + 3 * r, g t := by
    convert intervalIntegral.integral_comp_add_right (f := g) (a := a)
      (b := a + r) (2 * r) using 1 <;> ring
  have hshift : Integrable (fun t : ℝ => g (t + r)) volume :=
    (measurePreserving_add_right volume r).integrable_comp_of_integrable hg
  have hshift2 : Integrable (fun t : ℝ => g (t + 2 * r)) volume :=
    (measurePreserving_add_right volume (2 * r)).integrable_comp_of_integrable hg
  have hsum :
      (∫ t in a..a + r, (g t + g (t + r) + g (t + 2 * r))) =
        (∫ t in a..a + r, g t) +
          (∫ t in a..a + r, g (t + r)) +
          (∫ t in a..a + r, g (t + 2 * r)) := by
    rw [intervalIntegral.integral_add
      ((hg.add hshift).intervalIntegrable _ _) (hshift2.intervalIntegrable _ _)]
    rw [intervalIntegral.integral_add
      (hg.intervalIntegrable _ _) (hshift.intervalIntegrable _ _)]
  have hsplit :
      (∫ t in a..a + 3 * r, g t) =
        (∫ t in a..a + r, g t) +
          (∫ t in a + r..a + 2 * r, g t) +
          (∫ t in a + 2 * r..a + 3 * r, g t) := by
    calc
      _ = (∫ t in a..a + 2 * r, g t) +
          (∫ t in a + 2 * r..a + 3 * r, g t) :=
            (intervalIntegral.integral_add_adjacent_intervals
              (hab.trans hbc) hcd).symm
      _ = _ := by
        rw [← intervalIntegral.integral_add_adjacent_intervals hab hbc]
  calc
    (∫ t : ℝ, g t) = ∫ t in a..a + 3 * r, g t := hwhole.symm
    _ = (∫ t in a..a + r, g t) +
          (∫ t in a + r..a + 2 * r, g t) +
          (∫ t in a + 2 * r..a + 3 * r, g t) := hsplit
    _ = ∫ t in a..a + r, (g t + g (t + r) + g (t + 2 * r)) := by
      rw [← hbc_shift, ← hcd_shift, hsum]

/-- The sharp three-node path inequality for complex source values. -/
private theorem three_node_norm_bound (x y z : ℂ) :
    ‖conj x * y + conj y * z‖ ≤
      (Real.sqrt 2 / 2) * (‖x‖ ^ 2 + ‖y‖ ^ 2 + ‖z‖ ^ 2) := by
  let a : ℝ := ‖x‖
  let b : ℝ := ‖y‖
  let c : ℝ := ‖z‖
  let s : ℝ := Real.sqrt 2
  have hs : 0 < s := by dsimp [s]; positivity
  have hsq : s ^ 2 = 2 := by dsimp [s]; norm_num
  have hsquares :
      0 ≤ (s * b - (a + c)) ^ 2 + (a - c) ^ 2 :=
    add_nonneg (sq_nonneg _) (sq_nonneg _)
  have hid :
      (s * b - (a + c)) ^ 2 + (a - c) ^ 2 =
        (2 * s) * ((s / 2) * (a ^ 2 + b ^ 2 + c ^ 2) - b * (a + c)) := by
    calc
      _ = s ^ 2 * b ^ 2 + 2 * (a ^ 2 + c ^ 2) -
            2 * s * b * (a + c) := by ring
      _ = s ^ 2 * (a ^ 2 + b ^ 2 + c ^ 2) -
            2 * s * b * (a + c) := by rw [hsq]; ring
      _ = _ := by ring
  have hnonneg :
      b * (a + c) ≤ (s / 2) * (a ^ 2 + b ^ 2 + c ^ 2) := by
    have hmul : 0 ≤ (2 * s) *
        ((s / 2) * (a ^ 2 + b ^ 2 + c ^ 2) - b * (a + c)) := by
      rw [← hid]
      exact hsquares
    nlinarith
  calc
    ‖conj x * y + conj y * z‖ ≤
        ‖conj x * y‖ + ‖conj y * z‖ := norm_add_le _ _
    _ = b * (a + c) := by
      dsimp [a, b, c]
      simp only [norm_mul, Complex.norm_conj]
      ring
    _ ≤ (s / 2) * (a ^ 2 + b ^ 2 + c ^ 2) := hnonneg
    _ = (Real.sqrt 2 / 2) * (‖x‖ ^ 2 + ‖y‖ ^ 2 + ‖z‖ ^ 2) := rfl

/-- Physical source correlation on three support slices, not a substitute form. -/
theorem norm_correlation_le_sqrt_two_half_of_three_slice
    {f : ℝ → ℂ} (hf : MemLp f 2 volume)
    {T r : ℝ} (hT : 0 < T) (hr : 0 < r) (h3 : 2 * T < 3 * r)
    (hsupport : ∀ t, t ∉ Icc (-T) T → f t = 0) :
    ‖correlation f r‖ ≤ (Real.sqrt 2 / 2) * energy f := by
  let margin : ℝ := (3 * r - 2 * T) / 2
  let a : ℝ := -T - margin
  have ha : a < -T := by
    have hm : 0 < margin := by dsimp [margin]; linarith
    dsimp [a]
    linarith
  have hd : T < a + 3 * r := by dsimp [a, margin]; linarith
  have hab : a ≤ a + r := by linarith
  have hout (t : ℝ) (ht : t ∉ Ioc a (a + 3 * r)) : f t = 0 := by
    apply hsupport t
    intro hmem
    exact ht ⟨ha.trans_le hmem.1, hmem.2.trans hd.le⟩
  have he : Integrable (fun t : ℝ => ‖f t‖ ^ 2) volume :=
    hf.integrable_norm_pow (p := 2) (by norm_num)
  have he1 : Integrable (fun t : ℝ => ‖f (t + r)‖ ^ 2) volume :=
    (measurePreserving_add_right volume r).integrable_comp_of_integrable he
  have he2 : Integrable (fun t : ℝ => ‖f (t + 2 * r)‖ ^ 2) volume :=
    (measurePreserving_add_right volume (2 * r)).integrable_comp_of_integrable he
  have henergy : energy f =
      ∫ t in a..a + r,
        (‖f t‖ ^ 2 + ‖f (t + r)‖ ^ 2 + ‖f (t + 2 * r)‖ ^ 2) := by
    unfold energy
    exact integral_three_translates_of_support
      (fun t : ℝ => ‖f t‖ ^ 2) he a r hr
      (fun t ht => by rw [hout t ht]; simp)
  have hc_integrable := integrable_correlation_integrand hf r
  have hcorr_raw :=
    integral_three_translates_of_support
      (fun t : ℝ => conj (f t) * f (t + r))
      hc_integrable a r hr
      (fun t ht => by rw [hout t ht]; simp)
  have hcorr : correlation f r =
      ∫ t in a..a + r,
        (conj (f t) * f (t + r) +
          conj (f (t + r)) * f (t + 2 * r)) := by
    unfold correlation
    rw [hcorr_raw]
    apply intervalIntegral.integral_congr
    intro t ht
    have hzero : f (t + 3 * r) = 0 := by
      apply hsupport (t + 3 * r)
      intro hmem
      have hleft : a ≤ t := ht.1
      linarith
    have heq1 : t + r + r = t + 2 * r := by ring
    have heq2 : t + 2 * r + r = t + 3 * r := by ring
    simp only [heq1, heq2, hzero, mul_zero, add_zero]
  let upper : ℝ → ℝ := fun t =>
    (Real.sqrt 2 / 2) *
      (‖f t‖ ^ 2 + ‖f (t + r)‖ ^ 2 + ‖f (t + 2 * r)‖ ^ 2)
  have hiupper : Integrable upper volume := by
    change Integrable (fun t : ℝ => (Real.sqrt 2 / 2) *
      (‖f t‖ ^ 2 + ‖f (t + r)‖ ^ 2 + ‖f (t + 2 * r)‖ ^ 2)) volume
    exact ((he.add he1).add he2).const_mul _
  have hbound : ‖correlation f r‖ ≤
      ∫ t in Ioc a (a + r), upper t := by
    rw [hcorr, intervalIntegral.integral_of_le hab]
    exact norm_integral_le_of_norm_le hiupper.integrableOn
      (Filter.Eventually.of_forall fun t => three_node_norm_bound
        (f t) (f (t + r)) (f (t + 2 * r)))
  have heval :
      (∫ t in Ioc a (a + r), upper t) =
        (Real.sqrt 2 / 2) * energy f := by
    calc
      (∫ t in Ioc a (a + r), upper t) =
          ∫ t in a..a + r, upper t :=
            (intervalIntegral.integral_of_le hab).symm
      _ = (Real.sqrt 2 / 2) *
          (∫ t in a..a + r,
            (‖f t‖ ^ 2 + ‖f (t + r)‖ ^ 2 +
              ‖f (t + 2 * r)‖ ^ 2)) := by
                simp only [upper, intervalIntegral.integral_const_mul]
      _ = (Real.sqrt 2 / 2) * energy f := by rw [henergy]
  exact hbound.trans_eq heval

/-- Source-exact signed phase-defect credit from a genuine correlation bound. -/
theorem pairedPhaseDefect_ge_of_correlation_bound
    {N : ℕ} [NeZero N] (chi : DirichletCharacter ℂ N) (n : ℕ)
    {f : ℝ → ℂ} (k : ℝ)
    (hC : ‖correlation f (Real.log (n : ℝ))‖ ≤ k * energy f) :
    2 * (1 - k) * |pairedPrimeWeight chi n| * energy f ≤
      pairedPhaseDefect chi n (energy f)
        (correlation f (Real.log (n : ℝ))) := by
  have hweight :
      pairedPrimeWeight chi n * (correlation f (Real.log (n : ℝ))).re ≤
        |pairedPrimeWeight chi n| * (k * energy f) := by
    calc
      _ ≤ |pairedPrimeWeight chi n *
            (correlation f (Real.log (n : ℝ))).re| := le_abs_self _
      _ = |pairedPrimeWeight chi n| *
            |(correlation f (Real.log (n : ℝ))).re| := abs_mul _ _
      _ ≤ |pairedPrimeWeight chi n| *
            ‖correlation f (Real.log (n : ℝ))‖ :=
              mul_le_mul_of_nonneg_left
                (Complex.abs_re_le_norm _) (abs_nonneg _)
      _ ≤ _ := mul_le_mul_of_nonneg_left hC (abs_nonneg _)
  unfold pairedPhaseDefect
  nlinarith [hweight]

/-- Original full phase inventory at T=1; other prime powers are retained. -/
theorem pairedPhaseSurplus_ge_primeTwo_threeSlice
    (chi : DirichletCharacter ℂ 3)
    {f : ℝ → ℂ} (hf : MemLp f 2 volume)
    (hsupport : ∀ t, t ∉ Icc (-(1 : ℝ)) 1 → f t = 0) :
    2 * (1 - Real.sqrt 2 / 2) * |pairedPrimeWeight chi 2| * energy f ≤
      pairedPhaseSurplus chi 1
        (fun n => correlation f (Real.log (n : ℝ))) (energy f) := by
  have hlog : 0 < Real.log 2 := Real.log_pos (by norm_num)
  have hthree : 2 * (1 : ℝ) < 3 * Real.log 2 := by
    have h := Real.log_two_gt_d9
    linarith
  have hcorr := norm_correlation_le_sqrt_two_half_of_three_slice hf
    (T := 1) (r := Real.log 2) (by norm_num) hlog hthree hsupport
  have htwo := pairedPhaseDefect_ge_of_correlation_bound chi 2
    (Real.sqrt 2 / 2) hcorr
  have hexp : (2 : ℝ) < Real.exp (2 : ℝ) := by
    have h := Real.add_one_le_exp (2 : ℝ)
    linarith
  have hactive : 2 ∈ activePrimePowers (1 : ℝ) := by
    simp only [activePrimePowers, Finset.mem_filter, Finset.mem_range, Nat.lt_ceil]
    exact ⟨by simpa using hexp, by norm_num, by simpa using hexp⟩
  have hother (n : ℕ) (hn : n ∈ activePrimePowers (1 : ℝ)) :
      0 ≤ pairedPhaseDefect chi n (energy f)
        (correlation f (Real.log (n : ℝ))) :=
    pairedPhaseDefect_nonneg chi n (energy f)
      (correlation f (Real.log (n : ℝ)))
      (norm_correlation_le_energy hf _)
  have hsum : pairedPhaseDefect chi 2 (energy f)
      (correlation f (Real.log (2 : ℝ))) ≤
      pairedPhaseSurplus chi 1
        (fun n => correlation f (Real.log (n : ℝ))) (energy f) := by
    unfold pairedPhaseSurplus
    exact Finset.single_le_sum (fun n hn _ => hother n hn) hactive
  exact htwo.trans hsum

/-- Return to the original nonprincipal q=3 arithmetic source,
not the stage-zero sign theorem, and not GRH. -/
theorem primitiveArithmeticValue_ge_primeTwo_threeSlice
    (chi : DirichletCharacter ℂ 3)
    (hprimitive : chi.IsPrimitive) (hnonprincipal : chi ≠ 1)
    (f : ℝ → ℝ) (hf : Admissible chi 1 f) :
    (gammaConstant 3 (gammaParity chi) - pairedPrimeMass chi 1 +
        2 * (1 - Real.sqrt 2 / 2) * |pairedPrimeWeight chi 2|) *
        energy (liftReal f) +
      (∫ r in Ioi (0 : ℝ),
        gammaCorrectionDensity (gammaParity chi) (liftReal f) r) ≤
      primitiveArithmeticValue chi hprimitive hnonprincipal 1
        (liftReal f) := by
  rcases hf with ⟨hT, hdiff, hcompact, hodd, hLp, hsupport, harch⟩
  have hphase := pairedPhaseSurplus_ge_primeTwo_threeSlice chi hLp hsupport
  have hsource :=
    primitive_real_paired_phaseSurplus_identity chi hprimitive
      hnonprincipal 1 f hLp
  rw [hsource]
  nlinarith [hphase]

end GRWTSK.NumberTheory.WeilQuadraticForm.ThreeSliceCorrelation
