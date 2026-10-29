/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib sources retain their upstream licenses. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.PickupDiffusionCriterion

/-!
# Attained optimum of the actual sinc-weighted pickup graph

The complete phase Gram is a positive quadratic form for arbitrary real
coefficients. This is proved by the original real/imaginary square integrals,
not inferred from entrywise positivity. Consequently every sign trial has
lower bound minus the unchanged original diagonal. Exact finite spin averaging
constructs an attained optimum at most zero.

The actual Mobius assignment's absolute optimum gap, and its weighted-cut
shortfall, have exactly the original all-positive-rate growth obligation.
Uniform approximation of all finite trial values pays twice its absolute
error; the signed return to the Mobius cut is retained. No efficient optimizer,
QAOA convergence, SK ensemble identification or arithmetic witness is asserted.
SOURCE_PROOF_CANDIDATE / compilation, fresh kernel replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Moebius.PickupPhaseOptimizationGap

open MeasureTheory
open GRWTSK.RiemannHypothesis.CCC
open PickupOptimizationGap PickupSpinCutComparison MertensSignedPairDescent
open PickupPhaseQuadratic PickupDiffusionCriterion PickupDyadicEndpoint
open GoodScaleEnergyCriterion
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinCutEnergy
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteSpinAveraging
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential

/-- Full quadratic form at one actual phase and arbitrary real coefficients. -/
def quadraticAt (T τ : ℝ) (c : ℕ → ℝ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
    (c m * c n * pickupResponseGram T m n) *
      Real.cos (τ * separation T m n)

theorem quadraticAt_eq_square_integrals (T τ : ℝ) (c : ℕ → ℝ) :
    quadraticAt T τ c =
      (∫ u in (0 : ℝ)..T,
        (∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
          (c n * Real.cos (phase T τ n)) * pickupResponse n u)^2) +
      (∫ u in (0 : ℝ)..T,
        (∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
          (c n * Real.sin (phase T τ n)) * pickupResponse n u)^2) := by
  rw [response_gram_quadratic_identity, response_gram_quadratic_identity,
    ← Finset.sum_add_distrib]
  unfold quadraticAt
  apply Finset.sum_congr rfl
  intro m _
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n _
  have he : τ * separation T m n = phase T τ m - phase T τ n := by
    unfold phase separation
    ring
  rw [he, Real.cos_sub]
  ring

theorem quadraticAt_nonnegative {T : ℝ} (hT : 0 ≤ T) (τ : ℝ) (c : ℕ → ℝ) :
    0 ≤ quadraticAt T τ c := by
  rw [quadraticAt_eq_square_integrals,
    intervalIntegral.integral_of_le hT, intervalIntegral.integral_of_le hT]
  exact add_nonneg (integral_nonneg (fun _ => sq_nonneg _))
    (integral_nonneg (fun _ => sq_nonneg _))

theorem quadraticAt_continuous (T : ℝ) (c : ℕ → ℝ) :
    Continuous (fun τ => quadraticAt T τ c) := by
  unfold quadraticAt
  fun_prop

/-- Full sinc form; its diagonal is present until explicitly split. -/
def quadratic (T : ℝ) (c : ℕ → ℝ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
    c m * c n * phaseGram T m n

theorem average_quadraticAt (T : ℝ) (c : ℕ → ℝ) :
    average (fun τ => quadraticAt T τ c) = quadratic T c := by
  unfold quadraticAt
  rw [average_sum]
  · unfold quadratic
    apply Finset.sum_congr rfl
    intro m _
    rw [average_sum]
    · apply Finset.sum_congr rfl
      intro n _
      rw [average_const_mul, average_cos]
      unfold phaseGram
      ring
    · intro n _
      fun_prop
  · intro m _
    fun_prop

/-- Actual positive semidefiniteness, for every coefficient vector. -/
theorem quadratic_nonnegative {T : ℝ} (hT : 0 ≤ T) (c : ℕ → ℝ) :
    0 ≤ quadratic T c := by
  rw [← average_quadraticAt]
  unfold average
  apply div_nonneg _ (by norm_num)
  rw [intervalIntegral.integral_of_le (by norm_num : (-1 : ℝ) ≤ 1)]
  exact integral_nonneg (fun τ => quadraticAt_nonnegative hT τ c)

/-- Trial graph retains the original coefficient magnitudes and all ordered pairs. -/
def trial (T : ℝ) (s : ℕ → Bool) : ℝ :=
  phaseAbsolute T - 2 * phaseOrderedCut T s

theorem trial_spin_sum (T : ℝ) (s : ℕ → Bool) :
    trial T s =
      ∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        |phaseAtom T m n| * (spin (s m) * spin (s n)) := by
  unfold trial phaseAbsolute phaseOrderedCut
  rw [Finset.mul_sum, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro m _
  rw [Finset.mul_sum, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n _
  rw [spin_product_eq_cut]
  ring

theorem trial_eq_coefficient_sum {T : ℝ} (hT : 0 ≤ T) (s : ℕ → Bool) :
    trial T s =
      ∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        if m ≠ n then trialCoefficient s m * trialCoefficient s n * phaseGram T m n
        else 0 := by
  rw [trial_spin_sum]
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hmn : m ≠ n
  · simp only [phaseAtom, if_pos hmn, abs_mul,
      abs_of_nonneg (phaseGram_nonnegative hT hm hn), trialCoefficient]
    ring
  · simp [phaseAtom, hmn]

/-- The original diagonal, including all zero symbols, is invariant under trials. -/
theorem trial_quadratic_identity {T : ℝ} (hT : 0 ≤ T) (s : ℕ → Bool) :
    quadratic T (trialCoefficient s) = pickupDiagonal T + trial T s := by
  unfold quadratic
  rw [complete_gram_split, ← trial_eq_coefficient_sum hT]
  congr 1
  unfold pickupDiagonal
  apply Finset.sum_congr rfl
  intro n _
  rw [trialCoefficient_sq, phaseGram_diagonal]

theorem trial_lower {T : ℝ} (hT : 0 ≤ T) (s : ℕ → Bool) :
    -pickupDiagonal T ≤ trial T s := by
  have hn := quadratic_nonnegative hT (trialCoefficient s)
  rw [trial_quadratic_identity hT s] at hn
  linarith

theorem trial_source {T : ℝ} (hT : 0 ≤ T) : trial T sourceSpin = phaseCross T :=
  (phaseCross_eq_cut hT).symm

/-- Use the existing finite carrier, retaining index zero as an inactive label. -/
def finiteTrial (T : ℝ) (s : PickupOptimizationGap.Configuration T) : ℝ :=
  trial T (PickupOptimizationGap.extend T s)

theorem trial_congr (T : ℝ) (s t : ℕ → Bool)
    (h : ∀ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, s n = t n) : trial T s = trial T t := by
  have hc : phaseOrderedCut T s = phaseOrderedCut T t := by
    unfold phaseOrderedCut
    apply Finset.sum_congr rfl
    intro m hm
    apply Finset.sum_congr rfl
    intro n hn
    rw [h m hm, h n hn]
  unfold trial
  rw [hc]

theorem finiteTrial_restrict (T : ℝ) (s : ℕ → Bool) :
    finiteTrial T (fun i => s i) = trial T s := by
  apply trial_congr
  intro n hn
  have hi : n < ⌊Real.exp T⌋₊ + 1 := by
    have := (Finset.mem_Icc.mp hn).2
    omega
  exact extend_at T (fun i => s i) n hi

/-- Uniform spin averaging is exact, not an assumption about arithmetic randomness. -/
theorem sum_finiteTrial_zero (T : ℝ) :
    (∑ s : PickupOptimizationGap.Configuration T, finiteTrial T s) = 0 := by
  classical
  simp_rw [finiteTrial, trial_spin_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_eq_zero
  intro m hm
  rw [Finset.sum_comm]
  apply Finset.sum_eq_zero
  intro n hn
  by_cases hmn : m ≠ n
  · have hm' : m < ⌊Real.exp T⌋₊ + 1 := by
      have := (Finset.mem_Icc.mp hm).2
      omega
    have hn' : n < ⌊Real.exp T⌋₊ + 1 := by
      have := (Finset.mem_Icc.mp hn).2
      omega
    let i : Fin (⌊Real.exp T⌋₊ + 1) := ⟨m, hm'⟩
    let k : Fin (⌊Real.exp T⌋₊ + 1) := ⟨n, hn'⟩
    have hik : i ≠ k := by
      intro he
      exact hmn (congrArg Fin.val he)
    simp_rw [extend_at T _ m hm', extend_at T _ n hn']
    rw [← Finset.mul_sum]
    have hs := sum_spin_mul_eq_zero i k hik
    change |phaseAtom T m n| *
      (∑ s : PickupOptimizationGap.Configuration T, spin (s i) * spin (s k)) = 0
    rw [hs, mul_zero]
  · simp [phaseAtom, hmn]

def values (T : ℝ) : Finset ℝ := by
  classical
  exact Finset.univ.image (finiteTrial T)

theorem values_nonempty (T : ℝ) : (values T).Nonempty := by
  classical
  exact ⟨finiteTrial T (fun _ => false),
    Finset.mem_image.mpr ⟨(fun _ => false), Finset.mem_univ _, rfl⟩⟩

/-- The attained minimum of the literal sinc-weighted source, not a supplied field. -/
def optimum (T : ℝ) : ℝ := (values T).min' (values_nonempty T)

theorem optimum_attained (T : ℝ) :
    ∃ s : PickupOptimizationGap.Configuration T, finiteTrial T s = optimum T := by
  classical
  obtain ⟨s, _, he⟩ := Finset.mem_image.mp
    (Finset.min'_mem (values T) (values_nonempty T))
  exact ⟨s, he⟩

theorem optimum_le_finiteTrial (T : ℝ) (s : PickupOptimizationGap.Configuration T) :
    optimum T ≤ finiteTrial T s := by
  classical
  exact Finset.min'_le (values T) _
    (Finset.mem_image.mpr ⟨s, Finset.mem_univ _, rfl⟩)

theorem optimum_le_trial (T : ℝ) (s : ℕ → Bool) : optimum T ≤ trial T s := by
  have h := optimum_le_finiteTrial T (fun i => s i)
  rw [finiteTrial_restrict] at h
  exact h

theorem optimum_nonpositive (T : ℝ) : optimum T ≤ 0 := by
  classical
  by_contra hn
  have hp : 0 < optimum T := lt_of_not_ge hn
  have hs : 0 < ∑ s : PickupOptimizationGap.Configuration T, finiteTrial T s :=
    Finset.sum_pos (fun s _ => hp.trans_le (optimum_le_finiteTrial T s))
      Finset.univ_nonempty
  rw [sum_finiteTrial_zero] at hs
  linarith

theorem optimum_bounds {T : ℝ} (hT : 0 ≤ T) :
    -pickupDiagonal T ≤ optimum T ∧ optimum T ≤ 0 := by
  obtain ⟨s, hs⟩ := optimum_attained T
  have hl := trial_lower hT (PickupOptimizationGap.extend T s)
  change -pickupDiagonal T ≤ finiteTrial T s at hl
  rw [hs] at hl
  exact ⟨hl, optimum_nonpositive T⟩

def optimalityGap (T : ℝ) : ℝ := phaseCross T - optimum T

theorem optimalityGap_nonnegative {T : ℝ} (hT : 0 ≤ T) : 0 ≤ optimalityGap T := by
  have h := optimum_le_trial T sourceSpin
  rw [trial_source hT] at h
  exact sub_nonneg.mpr h

theorem gap_bounds {T : ℝ} (hT : 0 ≤ T) :
    phaseCross T ≤ optimalityGap T ∧
      optimalityGap T ≤ phaseCross T + pickupDiagonal T := by
  have ho := optimum_bounds hT
  unfold optimalityGap
  constructor <;> linarith [ho.1, ho.2]

/-- Exact every-positive-rate equivalence; the polynomial diagonal is already paid. -/
theorem gap_subexponential_iff {G : Set ℝ} :
    SubexponentialOn optimalityGap G ↔ SubexponentialOn phaseCross G := by
  constructor
  · intro h
    exact subexponentialOn_mono h (fun T _ hT => (gap_bounds hT).1)
  · intro h
    exact subexponentialOn_mono (add_global h pickupDiagonal_subexponential)
      (fun T _ hT => (gap_bounds hT).2)

theorem gap_bound_iff_dyadicBirthBound :
    SubexponentialOn optimalityGap dyadicScales ↔ DyadicBirthBound :=
  gap_subexponential_iff.trans phase_bound_iff_dyadicBirthBound

/-- Half the complete ordered absolute mass is the unordered edge mass. -/
def edgeMass (T : ℝ) : ℝ := phaseAbsolute T / 2

def cutMass (T : ℝ) (s : ℕ → Bool) : ℝ := phaseOrderedCut T s / 2

/-- Defined from the attained minimum; the following two theorems prove that
this is precisely the maximum of the actual unordered weighted cut. -/
def maxCut (T : ℝ) : ℝ := (phaseAbsolute T - optimum T) / 4

theorem cutMass_le_maxCut (T : ℝ) (s : ℕ → Bool) : cutMass T s ≤ maxCut T := by
  have h := optimum_le_trial T s
  unfold trial at h
  unfold cutMass maxCut
  linarith

theorem maxCut_attained (T : ℝ) : ∃ s : ℕ → Bool, cutMass T s = maxCut T := by
  obtain ⟨s, hs⟩ := optimum_attained T
  refine ⟨PickupOptimizationGap.extend T s, ?_⟩
  unfold finiteTrial trial at hs
  unfold cutMass maxCut
  linarith

/-- The optimum itself needs only the inherited diagonal allowance. -/
theorem maxCut_band {T : ℝ} (hT : 0 ≤ T) :
    edgeMass T / 2 ≤ maxCut T ∧
      maxCut T ≤ edgeMass T / 2 + pickupDiagonal T / 4 := by
  have h := optimum_bounds hT
  unfold edgeMass maxCut
  constructor <;> linarith [h.1, h.2]

theorem gap_eq_cut_shortfall {T : ℝ} (hT : 0 ≤ T) :
    optimalityGap T = 4 * (maxCut T - cutMass T sourceSpin) := by
  rw [optimalityGap, phaseCross_eq_cut hT]
  unfold maxCut cutMass
  ring

/-- Certified optimization of a uniformly approximated finite objective pays
2*epsilon. No running-time or exact-real evaluation claim is made. -/
theorem approximate_trial_gap (T : ℝ)
    (approx : PickupOptimizationGap.Configuration T → ℝ)
    (ε : ℝ) (selected : PickupOptimizationGap.Configuration T)
    (herror : ∀ s, |approx s - finiteTrial T s| ≤ ε)
    (hmin : ∀ s, approx selected ≤ approx s) :
    finiteTrial T selected - optimum T ≤ 2 * ε := by
  obtain ⟨s, hs⟩ := optimum_attained T
  have he1 := (abs_le.mp (herror selected)).1
  have he2 := (abs_le.mp (herror s)).2
  have hm := hmin s
  rw [hs] at he2
  linarith

/-- Keep the actual signed difference between the trial and Mobius cuts. -/
theorem source_gap_from_approximate_trial {T : ℝ} (hT : 0 ≤ T)
    (approx : PickupOptimizationGap.Configuration T → ℝ)
    (ε : ℝ) (selected : PickupOptimizationGap.Configuration T)
    (herror : ∀ s, |approx s - finiteTrial T s| ≤ ε)
    (hmin : ∀ s, approx selected ≤ approx s) :
    optimalityGap T ≤ 2 * ε +
      4 * (cutMass T (PickupOptimizationGap.extend T selected) - cutMass T sourceSpin) := by
  have ha := approximate_trial_gap T approx ε selected herror hmin
  have hr := phase_trial_return hT (PickupOptimizationGap.extend T selected)
  unfold optimalityGap cutMass finiteTrial trial at *
  linarith

end GRWTSK.NumberTheory.Moebius.PickupPhaseOptimizationGap
