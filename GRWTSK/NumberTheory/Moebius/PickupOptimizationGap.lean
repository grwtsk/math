/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteSpinAveraging
import GRWTSK.NumberTheory.Moebius.PickupScaleTransport

/-!
# The actual pickup optimum and its precise arithmetic gap

Construct the finite optimum, rather than postulating an optimizer. Uniform
spin averaging gives optimum <= 0. The same causal Gram and unchanged diagonal
give optimum >= -pickupDiagonal >= -2*T^2. Hence a subexponential ABSOLUTE gap
between the fixed Mobius assignment and this actual optimum is equivalent to
DyadicBirthBound. It is not necessary to ask for a per-spin SK limit.

A finite-depth or measured trial retains its exact source-return defect. The
finite weighted-moment bound prices observing one distinguished assignment.
Certified optimization of approximate objective values pays twice their
uniform absolute error; counting runtime is not an objective bound.

No Gaussian-to-arithmetic, Kakeya-to-pickup or SAT-to-growth theorem is assumed
or claimed. No witness of the equivalent arithmetic gap bound is supplied.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Moebius.PickupOptimizationGap

open MeasureTheory
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinCutEnergy
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteSpinAveraging
open GRWTSK.NumberTheory.Moebius.MertensSignedPairDescent
open GRWTSK.NumberTheory.Moebius.PickupSpinCutComparison
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential

/-- All signs vary, but the source magnitudes, births and Gram stay fixed. -/
def trialCoefficient (s : ℕ → Bool) (n : ℕ) : ℝ :=
  |moebiusReal n| * spin (s n)

theorem trialCoefficient_sq (s : ℕ → Bool) (n : ℕ) :
    trialCoefficient s n ^ 2 = moebiusReal n ^ 2 := by
  simp only [trialCoefficient, mul_pow, spin_sq, sq_abs, mul_one]

theorem trialCross_spin_sum (T : ℝ) (s : ℕ → Bool) :
    trialCross T s = ∑ z ∈ sourcePairs T,
      |signedAtom T z.1 z.2| * (spin (s z.1) * spin (s z.2)) := by
  unfold trialCross absoluteCross orderedCut
  rw [Finset.mul_sum, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro z _
  rw [spin_product_eq_cut]
  ring

theorem trialCross_eq_coefficient_sum {T : ℝ} (hT : 0 ≤ T) (s : ℕ → Bool) :
    trialCross T s = ∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
      ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        if m ≠ n then trialCoefficient s m * trialCoefficient s n *
          pickupResponseGram T m n else 0 := by
  rw [trialCross_spin_sum, sourcePairs, Finset.sum_product]
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hmn : m ≠ n
  · simp only [signedAtom, if_pos hmn, abs_mul,
      abs_of_nonneg (responseGram_nonneg (Finset.mem_Icc.mp hm).1
        (Finset.mem_Icc.mp hn).1 hT), trialCoefficient]
    ring
  · simp [signedAtom, hmn]

/-- The complete finite Gram is a square integral for arbitrary real coefficients. -/
theorem response_gram_quadratic_identity (T : ℝ) (c : ℕ → ℝ) :
    (∫ u in (0 : ℝ)..T,
      (∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, c n * pickupResponse n u) ^ 2) =
      ∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
          c m * c n * pickupResponseGram T m n := by
  let S := Finset.Icc 1 ⌊Real.exp T⌋₊
  have hc (m : ℕ) (hm : m ∈ S) (n : ℕ) (hn : n ∈ S) :
      Continuous (fun u => c m * c n * (pickupResponse m u * pickupResponse n u)) :=
    continuous_const.mul ((pickupResponse_continuous (Finset.mem_Icc.mp hm).1).mul
      (pickupResponse_continuous (Finset.mem_Icc.mp hn).1))
  calc
    _ = ∫ u in (0 : ℝ)..T, ∑ m ∈ S, ∑ n ∈ S,
        c m * c n * (pickupResponse m u * pickupResponse n u) := by
      apply intervalIntegral.integral_congr
      intro u _
      rw [pow_two, Finset.sum_mul_sum]
      apply Finset.sum_congr rfl
      intro m _
      apply Finset.sum_congr rfl
      intro n _
      ring
    _ = _ := by
      rw [intervalIntegral.integral_finsetSum]
      · apply Finset.sum_congr rfl
        intro m hm
        rw [intervalIntegral.integral_finsetSum]
        · apply Finset.sum_congr rfl
          intro n _
          exact intervalIntegral.integral_const_mul _ _
        · intro n hn
          exact (hc m hm n hn).intervalIntegrable _ _
      · intro m hm
        apply Continuous.intervalIntegrable
        apply continuous_finsetSum
        intro n hn
        exact hc m hm n hn

/-- Full mixed terms and the unchanged squarefree diagonal are present. -/
theorem trial_energy_identity {T : ℝ} (hT : 0 ≤ T) (s : ℕ → Bool) :
    (∫ u in (0 : ℝ)..T,
      (∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        trialCoefficient s n * pickupResponse n u) ^ 2) =
      pickupDiagonal T + trialCross T s := by
  rw [response_gram_quadratic_identity, complete_gram_split,
    ← trialCross_eq_coefficient_sum hT]
  congr 1
  unfold pickupDiagonal
  apply Finset.sum_congr rfl
  intro n _
  rw [trialCoefficient_sq]

/-- An unconditional lower bound for EVERY trial assignment of this source. -/
theorem trialCross_lower {T : ℝ} (hT : 0 ≤ T) (s : ℕ → Bool) :
    -pickupDiagonal T ≤ trialCross T s := by
  have he := trial_energy_identity hT s
  have hn : 0 ≤ ∫ u in (0 : ℝ)..T,
      (∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        trialCoefficient s n * pickupResponse n u) ^ 2 := by
    rw [intervalIntegral.integral_of_le hT]
    exact integral_nonneg (fun _ => sq_nonneg _)
  linarith

/-- Index zero is harmless: sourcePairs still uses exactly 1 through floor(exp T). -/
abbrev Configuration (T : ℝ) := Fin (⌊Real.exp T⌋₊ + 1) → Bool

def extend (T : ℝ) (s : Configuration T) (n : ℕ) : Bool :=
  if hn : n < ⌊Real.exp T⌋₊ + 1 then s ⟨n, hn⟩ else false

theorem extend_at (T : ℝ) (s : Configuration T) (n : ℕ)
    (hn : n < ⌊Real.exp T⌋₊ + 1) : extend T s n = s ⟨n, hn⟩ := by
  simp only [extend, dif_pos hn]

def finiteTrial (T : ℝ) (s : Configuration T) : ℝ := trialCross T (extend T s)

theorem trialCross_congr (T : ℝ) (s t : ℕ → Bool)
    (h : ∀ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, s n = t n) :
    trialCross T s = trialCross T t := by
  have hc : orderedCut T s = orderedCut T t := by
    unfold orderedCut
    apply Finset.sum_congr rfl
    intro z hz
    obtain ⟨hm, hn⟩ := Finset.mem_product.mp hz
    rw [h z.1 hm, h z.2 hn]
  unfold trialCross
  rw [hc]

theorem finiteTrial_restrict (T : ℝ) (s : ℕ → Bool) :
    finiteTrial T (fun i => s i) = trialCross T s := by
  apply trialCross_congr
  intro n hn
  have hi : n < ⌊Real.exp T⌋₊ + 1 := by
    have := (Finset.mem_Icc.mp hn).2
    omega
  exact extend_at T (fun i => s i) n hi

/-- Exact uniform finite average: no randomness premise on the Mobius assignment. -/
theorem sum_finiteTrial_zero (T : ℝ) :
    (∑ s : Configuration T, finiteTrial T s) = 0 := by
  classical
  simp_rw [finiteTrial, trialCross_spin_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_eq_zero
  intro z hz
  obtain ⟨hm, hn⟩ := Finset.mem_product.mp hz
  by_cases hmn : z.1 ≠ z.2
  · have hm' : z.1 < ⌊Real.exp T⌋₊ + 1 := by
      have := (Finset.mem_Icc.mp hm).2
      omega
    have hn' : z.2 < ⌊Real.exp T⌋₊ + 1 := by
      have := (Finset.mem_Icc.mp hn).2
      omega
    let i : Fin (⌊Real.exp T⌋₊ + 1) := ⟨z.1, hm'⟩
    let k : Fin (⌊Real.exp T⌋₊ + 1) := ⟨z.2, hn'⟩
    have hik : i ≠ k := by
      intro he
      exact hmn (congrArg Fin.val he)
    simp_rw [extend_at T _ z.1 hm', extend_at T _ z.2 hn']
    rw [← Finset.mul_sum]
    have hs := sum_spin_mul_eq_zero i k hik
    change |signedAtom T z.1 z.2| *
      (∑ s : Configuration T, spin (s i) * spin (s k)) = 0
    rw [hs, mul_zero]
  · simp [signedAtom, hmn]

def trialValues (T : ℝ) : Finset ℝ := by
  classical
  exact Finset.univ.image (finiteTrial T)

theorem trialValues_nonempty (T : ℝ) : (trialValues T).Nonempty := by
  classical
  exact ⟨finiteTrial T (fun _ => false),
    Finset.mem_image.mpr ⟨(fun _ => false), Finset.mem_univ _, rfl⟩⟩

/-- The actual minimum on the finite source graph, not a postulated optimizer. -/
def optimum (T : ℝ) : ℝ := (trialValues T).min' (trialValues_nonempty T)

theorem optimum_attained (T : ℝ) :
    ∃ s : Configuration T, finiteTrial T s = optimum T := by
  classical
  obtain ⟨s, _hs, he⟩ := Finset.mem_image.mp
    (Finset.min'_mem (trialValues T) (trialValues_nonempty T))
  exact ⟨s, he⟩

theorem optimum_le_finiteTrial (T : ℝ) (s : Configuration T) :
    optimum T ≤ finiteTrial T s := by
  classical
  exact Finset.min'_le (trialValues T) _
    (Finset.mem_image.mpr ⟨s, Finset.mem_univ _, rfl⟩)

theorem optimum_le_trialCross (T : ℝ) (s : ℕ → Bool) : optimum T ≤ trialCross T s := by
  have h := optimum_le_finiteTrial T (fun i => s i)
  rw [finiteTrial_restrict] at h
  exact h

theorem optimum_nonpositive (T : ℝ) : optimum T ≤ 0 := by
  classical
  by_contra hn
  have hp : 0 < optimum T := lt_of_not_ge hn
  have hs : 0 < ∑ s : Configuration T, finiteTrial T s :=
    Finset.sum_pos (fun s _ => hp.trans_le (optimum_le_finiteTrial T s))
      Finset.univ_nonempty
  rw [sum_finiteTrial_zero] at hs
  linarith

/-- The optimum has an unconditional polynomial band at every nonnegative time. -/
theorem optimum_bounds {T : ℝ} (hT : 0 ≤ T) :
    -pickupDiagonal T ≤ optimum T ∧ optimum T ≤ 0 := by
  obtain ⟨s, hs⟩ := optimum_attained T
  have hl := trialCross_lower hT (extend T s)
  change -pickupDiagonal T ≤ finiteTrial T s at hl
  rw [hs] at hl
  exact ⟨hl, optimum_nonpositive T⟩

theorem optimum_quadratic_band {T : ℝ} (hT : 0 ≤ T) :
    -(2 * T ^ 2) ≤ optimum T ∧ optimum T ≤ 0 := by
  have hd := (pickupDiagonal_quadratic_bound hT).2
  have ho := optimum_bounds hT
  constructor <;> linarith [ho.1, ho.2]

def optimalityGap (T : ℝ) : ℝ := pickupCross T - optimum T

def trialGap (T : ℝ) (s : ℕ → Bool) : ℝ := trialCross T s - optimum T

theorem trialGap_nonnegative (T : ℝ) (s : ℕ → Bool) : 0 ≤ trialGap T s :=
  sub_nonneg.mpr (optimum_le_trialCross T s)

theorem optimalityGap_nonnegative {T : ℝ} (hT : 0 ≤ T) : 0 ≤ optimalityGap T := by
  have h := trialGap_nonnegative T sourceSpin
  simpa only [trialGap, trial_source_eq_cross hT, optimalityGap] using h

/-- Only the already-paid diagonal separates the gap from the arithmetic cross sum. -/
theorem cross_gap_bounds {T : ℝ} (hT : 0 ≤ T) :
    pickupCross T ≤ optimalityGap T ∧
      optimalityGap T ≤ pickupCross T + pickupDiagonal T := by
  have ho := optimum_bounds hT
  unfold optimalityGap
  constructor <;> linarith [ho.1, ho.2]

/-- The source gap is not an independently stronger terminal arithmetic premise. -/
theorem gap_subexponential_iff {G : Set ℝ} :
    SubexponentialOn optimalityGap G ↔ SubexponentialOn pickupCross G := by
  constructor
  · intro h
    exact subexponentialOn_mono h (fun T _ hT => (cross_gap_bounds hT).1)
  · intro h
    exact subexponentialOn_mono (add_global h pickupDiagonal_subexponential)
      (fun T _ hT => (cross_gap_bounds hT).2)

theorem dyadicBirthBound_iff_optimalityGap :
    DyadicBirthBound ↔ SubexponentialOn optimalityGap dyadicScales :=
  dyadicBirthBound_iff_endpoint.trans
    (dyadicEndpointBound_iff_good_scales.trans
      (endpoint_subexponential_iff.trans gap_subexponential_iff.symm))

theorem riemannHypothesis_of_optimalityGap
    (h : SubexponentialOn optimalityGap dyadicScales) : _root_.RiemannHypothesis :=
  riemannHypothesis_of_dyadicBirthBound (dyadicBirthBound_iff_optimalityGap.mpr h)

/-- A QAOA or other trial pays its optimization error AND its exact source return. -/
theorem gap_return_exact {T : ℝ} (hT : 0 ≤ T) (s : ℕ → Bool) :
    optimalityGap T = trialGap T s + returnDefect T s := by
  unfold optimalityGap trialGap
  rw [source_return_exact hT s]
  ring

/-- Average trial excess alone does not bound one distinguished source assignment.
The observation weight and complete moment remain explicitly visible. -/
theorem weighted_trialGap_power_le {ι : Type*} (s : Finset ι)
    (w : ι → ℝ) (config : ι → ℕ → Bool) (T : ℝ) (q : ℕ)
    (hw : ∀ i ∈ s, 0 ≤ w i) {i : ι} (hi : i ∈ s) :
    w i * trialGap T (config i) ^ q ≤
      ∑ k ∈ s, w k * trialGap T (config k) ^ q := by
  exact Finset.single_le_sum
    (fun k hk => mul_nonneg (hw k hk) (pow_nonneg (trialGap_nonnegative T _) q)) hi

/-- Exact finite optimization of certified approximate values pays twice the
uniform objective error. No bit-cost or all-scale estimate follows automatically. -/
theorem approximate_optimizer_gap (T : ℝ) (value : Configuration T → ℝ)
    (s : Configuration T) (ε : ℝ)
    (herror : ∀ t : Configuration T, |value t - finiteTrial T t| ≤ ε)
    (hmin : ∀ t : Configuration T, value s ≤ value t) :
    trialGap T (extend T s) ≤ 2 * ε := by
  obtain ⟨t, ht⟩ := optimum_attained T
  have hs := (abs_le.mp (herror s)).1
  have he := (abs_le.mp (herror t)).2
  have hm := hmin t
  change finiteTrial T s - optimum T ≤ 2 * ε
  rw [ht] at he
  linarith

end GRWTSK.NumberTheory.Moebius.PickupOptimizationGap
