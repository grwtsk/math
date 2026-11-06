/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddBorderedExpansion
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddExactPeriodization
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.SchurDirectLowerBound

/-!
# Whole-window lower return for the literal odd Weil form

Section 2 of `weil-low-schur-enclosure.md` expands the form around a
finite trial. Subtracting a trial that agrees on the retained coefficients
leaves a high variation in the finite gamma-energy domain. The positive
high floor and the norm of the complete high residual pay the variation
by a scalar square. The observer pays the error on the trial value and
uses separate outward bounds for the observed residual squares and the
infinite tail. The auxiliary pole coordinate stays fixed during the
physical variation. Minimizing that coordinate returns the negative
rank-one pole with its original coefficient.

This is a conditional sign return for the real odd literal integral form.
It uses a passing finite sign witness and explicit source observation
hypotheses. The comparison with the completed zeta explicit formula and
the existence of passing certificates remain separate. Independent
analytical review and novelty assessment are pending.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddLiteralWindow

open OddRootProjection OddSineForm OddShiftEnergy OddGammaOutput OddSineParseval OddSineHeadRemoval
open OddWrapEnergy OddHighComplement OddExactPeriodization OddConcreteResidual
open OddBorderedExpansion OddResidualSourceComparison OddResidualMajorant
open GRWTSK.LinearAlgebra.SchurDirectLowerBound
open GRWTSK.LinearAlgebra.SchurObserver
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates

/-- The lower estimate needed on the full high complement of the literal
odd form domain. Concrete spectral estimates provide this proposition. -/
def HighFloor (T β γ : ℝ) (N : ℕ) : Prop :=
  ∀ ⦃g : ℝ → ℝ⦄, MemLp g 2 volume → Measurable g → Function.Odd g →
    (∀ᵐ t : ℝ, t ∉ Icc (-T) T → g t = 0) →
    (∀ n < N, sineCoefficient T g (n+1) = 0) →
    IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r g) (Ioi 0) →
    γ * (∫ t : ℝ, ‖g t‖ ^ 2) ≤ shiftedOddCoreEnergy T β g

theorem HighFloor.of_exactHighCutoff (T : ℝ) (hT : 0 < T) (β γ : ℝ) {N : ℕ}
    (hcut : highCutoff T β 4 γ ≤ N) : HighFloor T β γ N := by
  intro g hg hgm hgo hgs hhead henergy
  exact shiftedOddCoreEnergy_ge_of_exactHighCutoff T hT β γ hcut hgm hg hgo hgs hhead henergy

/-- Pay the trial observation error, the finite residual and the complete
remote allowance on the same literal bordered form. -/
theorem shiftedOddBorderedEnergy_lower_add_finiteSine_with_floor {N M L J : ℕ}
    (hNM : N ≤ M) (hML : M ≤ L) (hL : 0 < L) (hLJ : L ≤ J)
    (T : ℝ) (hT : 0 < T) (x : ℕ → ℝ) (a β s γ : ℝ)
    (hs : 0 < s) (hγ : 0 < γ) (hfloor : HighFloor T β γ N)
    {g : ℝ → ℝ} (hg : MemLp g 2 volume) (hgm : Measurable g) (hgo : Function.Odd g)
    (hgs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → g t = 0)
    (hhead : ∀ n < N, sineCoefficient T g (n+1) = 0)
    (henergy : IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r g) (Ioi 0))
    (observed error finiteGram remote : ℝ)
    (hupper : |shiftedOddBorderedEnergy T β
        (finiteSine T (fun i : Fin M => x (i.val+1))) a - observed| ≤ error)
    (hfinite : (∑ n ∈ Finset.range (L-N), (literalAugmentedRow M T x a β (N+1+n)) ^ 2) ≤ finiteGram)
    (hremote : completeRemoteAllowance M L J T x a s ≤ remote) :
    observed - error - (finiteGram + remote) / γ ≤ shiftedOddBorderedEnergy T β
      (fun t => finiteSine T (fun i : Fin M => x (i.val+1)) t + g t) a := by
  let trial := fun i : Fin M => x (i.val+1)
  let cross := ∫ t : ℝ, g t * borderedTrialOutput T β trial a t
  let mass := ∫ t : ℝ, ‖g t‖ ^ 2
  let exactResid := (∑ n ∈ Finset.range (L-N), (literalAugmentedRow M T x a β (N+1+n)) ^ 2) +
    completeRemoteAllowance M L J T x a s
  have hmass : 0 ≤ mass := integral_nonneg (fun _ => sq_nonneg _)
  have hres := borderedTrialHighResidual_energy_le hNM hML hL hLJ T hT x a β s hs
  have hres0 : 0 ≤ exactResid := (integral_nonneg (fun _ => sq_nonneg _)).trans hres
  have hpair : |cross| ≤ Real.sqrt mass * Real.sqrt exactResid :=
    abs_borderedTrialHighResidual_pair_le hNM hML hL hLJ T hT x a β s hs hg hhead
  refine lower_from_coercive_variation (n := Real.sqrt mass) (rho := Real.sqrt exactResid)
    hγ (shiftedOddBorderedEnergy_add_finiteSine T hT β trial a hg hgm hgs henergy) ?_ ?_ ?_ hupper
  · simpa only [mul_comm, neg_mul] using (abs_le.mp hpair).1
  · rw [Real.sq_sqrt hmass]
    exact hfloor hg hgm hgo hgs hhead henergy
  · rw [Real.sq_sqrt hres0]
    exact add_le_add hfinite hremote

/-- Lower estimate using the sufficient high cutoff from the full prime mass. -/
theorem shiftedOddBorderedEnergy_lower_add_finiteSine {N M L J : ℕ}
    (hNM : N ≤ M) (hML : M ≤ L) (hL : 0 < L) (hLJ : L ≤ J)
    (T : ℝ) (hT : 0 < T) (x : ℕ → ℝ) (a β s γ : ℝ)
    (hs : 0 < s) (hγ : 0 < γ) (hcut : highCutoff T β 4 γ ≤ N)
    {g : ℝ → ℝ} (hg : MemLp g 2 volume) (hgm : Measurable g) (hgo : Function.Odd g)
    (hgs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → g t = 0)
    (hhead : ∀ n < N, sineCoefficient T g (n+1) = 0)
    (henergy : IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r g) (Ioi 0))
    (observed error finiteGram remote : ℝ)
    (hupper : |shiftedOddBorderedEnergy T β
        (finiteSine T (fun i : Fin M => x (i.val+1))) a - observed| ≤ error)
    (hfinite : (∑ n ∈ Finset.range (L-N), (literalAugmentedRow M T x a β (N+1+n)) ^ 2) ≤ finiteGram)
    (hremote : completeRemoteAllowance M L J T x a s ≤ remote) :
    observed - error - (finiteGram + remote) / γ ≤ shiftedOddBorderedEnergy T β
      (fun t => finiteSine T (fun i : Fin M => x (i.val+1)) t + g t) a :=
  shiftedOddBorderedEnergy_lower_add_finiteSine_with_floor hNM hML hL hLJ T hT x a β s γ hs hγ
    (HighFloor.of_exactHighCutoff T hT β γ hcut) hg hgm hgo hgs hhead henergy
    observed error finiteGram remote hupper hfinite hremote

private theorem sineCoefficient_trial_low {M : ℕ} (T : ℝ) (hT : 0 < T) (x : ℕ → ℝ)
    {n : ℕ} (hn : n < M) :
    sineCoefficient T (finiteSine T (fun i : Fin M => x (i.val+1))) (n+1) = x (n+1) := by
  rw [sineCoefficient_finiteSine T hT _ (by omega)]
  let j : Fin M := ⟨n, hn⟩
  rw [Finset.sum_eq_single j]
  · simp [j]
  · intro i _ hij
    refine ite_eq_right (fun he => hij (Fin.ext ?_))
    change i.val = n
    omega
  · simp

/-- The lower return applies to any supported odd finite-energy input whose
retained coordinates match the finite trial. -/
theorem shiftedOddBorderedEnergy_lower_of_matching_head_with_floor {N M L J : ℕ}
    (hNM : N ≤ M) (hML : M ≤ L) (hL : 0 < L) (hLJ : L ≤ J)
    (T : ℝ) (hT : 0 < T) (x : ℕ → ℝ) (a β s γ : ℝ)
    (hs : 0 < s) (hγ : 0 < γ) (hfloor : HighFloor T β γ N)
    {f : ℝ → ℝ} (hf : MemLp f 2 volume) (hfm : Measurable f) (hfo : Function.Odd f)
    (hfs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0)
    (hmatch : ∀ n < N, sineCoefficient T f (n+1) = x (n+1))
    (henergy : IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0))
    (observed error finiteGram remote : ℝ)
    (hupper : |shiftedOddBorderedEnergy T β
        (finiteSine T (fun i : Fin M => x (i.val+1))) a - observed| ≤ error)
    (hfinite : (∑ n ∈ Finset.range (L-N), (literalAugmentedRow M T x a β (N+1+n)) ^ 2) ≤ finiteGram)
    (hremote : completeRemoteAllowance M L J T x a s ≤ remote) :
    observed - error - (finiteGram + remote) / γ ≤ shiftedOddBorderedEnergy T β f a := by
  let trial := fun i : Fin M => x (i.val+1)
  let g := fun t => f t - finiteSine T trial t
  have hg : MemLp g 2 volume := hf.sub (finiteSine_memLp T trial)
  obtain ⟨K, hK⟩ := finiteSine_exists_lipschitzWith T hT trial
  have hgm : Measurable g := hfm.sub hK.continuous.measurable
  have hgo : Function.Odd g := by
    intro t
    dsimp [g]
    rw [hfo t, finiteSine_odd T trial t]
    ring
  have hgs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → g t = 0 := by
    filter_upwards [hfs] with t ht hnot
    simp [g, ht hnot, finiteSine_eq_zero_off_window T trial hnot]
  have hhead (n : ℕ) (hn : n < N) : sineCoefficient T g (n+1) = 0 := by
    have htest := memLp_zeroExtendedSine T (n+1)
    have h₁ : Integrable (fun t => zeroExtendedSine T (n+1) t * f t) :=
      htest.integrable_mul hf
    have h₂ : Integrable (fun t => zeroExtendedSine T (n+1) t * finiteSine T trial t) :=
      htest.integrable_mul (finiteSine_memLp T trial)
    calc
      _ = sineCoefficient T f (n+1) - sineCoefficient T (finiteSine T trial) (n+1) := by
        unfold sineCoefficient g
        simp only [mul_sub, integral_sub h₁ h₂]
      _ = _ := by rw [sineCoefficient_trial_low T hT x (hn.trans_le hNM), hmatch n hn, sub_self]
  have hgEnergy : IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r g) (Ioi 0) :=
    integrableOn_gammaEnergy_sub_finiteSine T hT trial hf hfm henergy
  have heq : (fun t => finiteSine T trial t + g t) = f := by
    funext t
    dsimp [g]
    ring
  rw [← heq]
  exact shiftedOddBorderedEnergy_lower_add_finiteSine_with_floor hNM hML hL hLJ T hT x a β s γ hs hγ hfloor
    hg hgm hgo hgs hhead hgEnergy observed error finiteGram remote hupper hfinite hremote

/-- Matching-head lower return using the sufficient high cutoff. -/
theorem shiftedOddBorderedEnergy_lower_of_matching_head {N M L J : ℕ}
    (hNM : N ≤ M) (hML : M ≤ L) (hL : 0 < L) (hLJ : L ≤ J)
    (T : ℝ) (hT : 0 < T) (x : ℕ → ℝ) (a β s γ : ℝ)
    (hs : 0 < s) (hγ : 0 < γ) (hcut : highCutoff T β 4 γ ≤ N)
    {f : ℝ → ℝ} (hf : MemLp f 2 volume) (hfm : Measurable f) (hfo : Function.Odd f)
    (hfs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0)
    (hmatch : ∀ n < N, sineCoefficient T f (n+1) = x (n+1))
    (henergy : IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0))
    (observed error finiteGram remote : ℝ)
    (hupper : |shiftedOddBorderedEnergy T β
        (finiteSine T (fun i : Fin M => x (i.val+1))) a - observed| ≤ error)
    (hfinite : (∑ n ∈ Finset.range (L-N), (literalAugmentedRow M T x a β (N+1+n)) ^ 2) ≤ finiteGram)
    (hremote : completeRemoteAllowance M L J T x a s ≤ remote) :
    observed - error - (finiteGram + remote) / γ ≤ shiftedOddBorderedEnergy T β f a :=
  shiftedOddBorderedEnergy_lower_of_matching_head_with_floor hNM hML hL hLJ T hT x a β s γ hs hγ
    (HighFloor.of_exactHighCutoff T hT β γ hcut) hf hfm hfo hfs hmatch henergy
    observed error finiteGram remote hupper hfinite hremote

/-- The shifted literal odd form, with the negative rank-one pole. -/
def shiftedOddWeilEnergy (T β : ℝ) (f : ℝ → ℝ) : ℝ :=
  shiftedOddCoreEnergy T β f - 2 * (∫ t : ℝ, f t * Real.sinh (t/2)) ^ 2

theorem shiftedOddBorderedEnergy_eq_weil_add_square (T β : ℝ) (f : ℝ → ℝ) (a : ℝ) :
    shiftedOddBorderedEnergy T β f a = shiftedOddWeilEnergy T β f +
      (a + 2 * (∫ t : ℝ, f t * Real.sinh (t/2))) ^ 2 / 2 := by
  unfold shiftedOddBorderedEnergy shiftedOddWeilEnergy
  ring

/-- Return finite nonnegativity to the whole literal odd window with the
actual high floor and the source observation comparisons. -/
theorem shiftedOddWeilEnergy_nonneg_of_positive_lower {N M L J : ℕ}
    (hNM : N ≤ M) (hML : M ≤ L) (hL : 0 < L) (hLJ : L ≤ J)
    (T : ℝ) (hT : 0 < T) (β s γ : ℝ) (hs : 0 < s) (hγ : 0 < γ)
    (hfloor : HighFloor T β γ N)
    (trial : (Fin N → ℝ) → ℝ → ℕ → ℝ)
    (htrial : ∀ u a (i : Fin N), trial u a (i.val+1) = u i)
    (lower : Matrix (Fin N ⊕ Unit) (Fin N ⊕ Unit) ℝ)
    (hpositive : ∀ v, 0 ≤ quadratic lower v)
    (hsource : ∀ u a, ∃ observed error finiteGram remote : ℝ,
      |shiftedOddBorderedEnergy T β
        (finiteSine T (fun i : Fin M => trial u a (i.val+1))) a - observed| ≤ error ∧
      (∑ n ∈ Finset.range (L-N),
        (literalAugmentedRow M T (trial u a) a β (N+1+n)) ^ 2) ≤ finiteGram ∧
      completeRemoteAllowance M L J T (trial u a) a s ≤ remote ∧
      quadratic lower (Sum.elim u (fun _ => a)) ≤
        observed - error - (finiteGram + remote) / γ)
    {f : ℝ → ℝ} (hf : MemLp f 2 volume) (hfm : Measurable f) (hfo : Function.Odd f)
    (hfs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0)
    (henergy : IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0)) :
    0 ≤ shiftedOddWeilEnergy T β f := by
  let u : Fin N → ℝ := fun i => sineCoefficient T f (i.val+1)
  let a := -2 * (∫ t : ℝ, f t * Real.sinh (t/2))
  obtain ⟨observed, error, finiteGram, remote, hupper, hfinite, hremote, hcompare⟩ := hsource u a
  have hmatch (n : ℕ) (hn : n < N) :
      sineCoefficient T f (n+1) = trial u a (n+1) := (htrial u a ⟨n, hn⟩).symm
  have hlower := shiftedOddBorderedEnergy_lower_of_matching_head_with_floor hNM hML hL hLJ T hT
    (trial u a) a β s γ hs hγ hfloor hf hfm hfo hfs hmatch henergy observed error finiteGram remote
    hupper hfinite hremote
  have hsign := hpositive (Sum.elim u (fun _ => a))
  have h := hsign.trans (hcompare.trans hlower)
  rw [shiftedOddBorderedEnergy_eq_weil_add_square] at h
  simpa [a] using h

/-- Return the sign of the checked rational lower matrix to the whole
literal odd window, with source observation and tail comparisons explicit. -/
theorem shiftedOddWeilEnergy_nonneg_of_checked_lower {N M L J : ℕ}
    (hNM : N ≤ M) (hML : M ≤ L) (hL : 0 < L) (hLJ : L ≤ J)
    (T : ℝ) (hT : 0 < T) (β s γ : ℝ) (hs : 0 < s) (hγ : 0 < γ)
    (hcut : highCutoff T β 4 γ ≤ N)
    (trial : (Fin N → ℝ) → ℝ → ℕ → ℝ)
    (htrial : ∀ u a (i : Fin N), trial u a (i.val+1) = u i)
    {ν : Type*} [Fintype ν] (lower : Matrix (Fin N ⊕ Unit) (Fin N ⊕ Unit) ℚ)
    (C : Certificate ℚ (Fin N ⊕ Unit) Empty Empty ν)
    (hcheck : check (matrixProblem lower) C = true)
    (hsource : ∀ u a, ∃ observed error finiteGram remote : ℝ,
      |shiftedOddBorderedEnergy T β
        (finiteSine T (fun i : Fin M => trial u a (i.val+1))) a - observed| ≤ error ∧
      (∑ n ∈ Finset.range (L-N),
        (literalAugmentedRow M T (trial u a) a β (N+1+n)) ^ 2) ≤ finiteGram ∧
      completeRemoteAllowance M L J T (trial u a) a s ≤ remote ∧
      quadratic (fun i j => (lower i j : ℝ)) (Sum.elim u (fun _ => a)) ≤
        observed - error - (finiteGram + remote) / γ)
    {f : ℝ → ℝ} (hf : MemLp f 2 volume) (hfm : Measurable f) (hfo : Function.Odd f)
    (hfs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0)
    (henergy : IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0)) :
    0 ≤ shiftedOddWeilEnergy T β f :=
  shiftedOddWeilEnergy_nonneg_of_positive_lower hNM hML hL hLJ T hT β s γ hs hγ
    (HighFloor.of_exactHighCutoff T hT β γ hcut) trial htrial _
    (checked_rational_matrix_nonneg lower C hcheck) hsource hf hfm hfo hfs henergy

end GRWTSK.NumberTheory.WeilQuadraticForm.OddLiteralWindow
