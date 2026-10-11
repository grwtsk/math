/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing.
Classical constructions and conditional adapters; no originality claim. -/
import Mathlib.Analysis.Calculus.ContDiff.Deriv
import Mathlib.Analysis.Calculus.MeanValue
import Mathlib.Analysis.Calculus.SmoothSeries
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv
import Mathlib.Analysis.SpecificLimits.Normed
import Mathlib.LinearAlgebra.Matrix.Trace
import Mathlib.LinearAlgebra.Matrix.Notation
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.FunProp
import Mathlib.Analysis.Fourier.LpSpace

/-! Exact waveform roles. Mathematical proof is never an operational credential.
This module proves local algebra/analysis and conditional returns, not P04.
Angular-frequency Parseval needs a separately checked convention adapter. -/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.Waveform
open scoped BigOperators FourierTransform
open MeasureTheory

inductive Role where
  | arithmetic | procedural | potential
  deriving DecidableEq, Repr

/-- Finite descriptions name symbolic objects; they do not serialize arbitrary real functions. -/
structure SourceDescription where
  sourceId : String
  revision : String
  formula : String
  role : Role
  channels : ℕ
  attribution : String
  invalidationKey : String

/-- Observation metadata is distinct from a reconstruction theorem. -/
structure SamplingDescription where
  rate : ℚ
  origin : ℚ
  clockError : ℚ
  units : String
  calibration : String
  quantization : String
  antiAlias : String
  window : String
  synchronization : String
  missingSamplePolicy : String
  normalization : String
  reconstruction : String
  reconstructionError : ℚ
  sourceDigest : String

/-- Exact mathematical encoding; finite i64 representations have a separate bound. -/
def eta (s : ℤ) : ℝ := (s : ℝ) / (1 + |(s : ℝ)|)

theorem eta_abs_lt_one (s : ℤ) : |eta s| < 1 := by
  have hp : 0 < 1 + |(s : ℝ)| := by positivity
  rw [eta, abs_div, abs_of_pos hp, div_lt_one hp]
  linarith [abs_nonneg (s : ℝ)]

theorem eta_injective : Function.Injective eta := by
  intro a b h
  have ha : 0 < 1 + |(a : ℝ)| := by positivity
  have hb : 0 < 1 + |(b : ℝ)| := by positivity
  have hcross := (div_eq_div_iff ha.ne' hb.ne').mp h
  have heq : (a : ℝ) = b := by
    by_cases hA : 0 ≤ (a : ℝ) <;> by_cases hB : 0 ≤ (b : ℝ)
    · simp only [abs_of_nonneg hA, abs_of_nonneg hB] at hcross
      nlinarith
    · simp only [abs_of_nonneg hA, abs_of_neg (lt_of_not_ge hB)] at hcross
      nlinarith
    · simp only [abs_of_neg (lt_of_not_ge hA), abs_of_nonneg hB] at hcross
      nlinarith
    · simp only [abs_of_neg (lt_of_not_ge hA), abs_of_neg (lt_of_not_ge hB)] at hcross
      nlinarith
  exact_mod_cast heq

/-- Index zero represents the first harmonic, avoiding a constant coefficient. -/
def carrier (s : ℕ → ℤ) (k : ℕ) : ℝ := (1 / 2 : ℝ) ^ (k + 1) * eta (s k)
def coefficientWaveform (a : ℕ → ℝ) (x : ℝ) : ℝ :=
  ∑' k : ℕ, a k * Real.cos ((k + 1 : ℕ) * x)

theorem carrier_norm_bound (s : ℕ → ℤ) (k : ℕ) :
    ‖carrier s k‖ ≤ (1 / 2 : ℝ) ^ (k + 1) := by
  rw [carrier, norm_mul, Real.norm_eq_abs, abs_of_nonneg (by positivity)]
  simpa using mul_le_mul_of_nonneg_left (eta_abs_lt_one (s k)).le
    (by positivity : 0 ≤ (1 / 2 : ℝ) ^ (k + 1))

theorem carrier_summable (s : ℕ → ℤ) : Summable (fun k ↦ ‖carrier s k‖) := by
  apply Summable.of_nonneg_of_le (fun _ ↦ norm_nonneg _) (carrier_norm_bound s)
  simpa only [pow_succ] using (summable_geometric_of_abs_lt_one
    (by norm_num : |(1 / 2 : ℝ)| < 1)).mul_right (1 / 2)

theorem coefficientWaveform_summable (a : ℕ → ℝ) (ha : Summable fun k ↦ ‖a k‖) (x : ℝ) :
    Summable (fun k ↦ a k * Real.cos ((k + 1 : ℕ) * x)) := by
  apply Summable.of_norm_bounded ha
  intro k
  rw [norm_mul]
  exact (mul_le_mul_of_nonneg_left (by simpa [Real.norm_eq_abs] using Real.abs_cos_le_one ((k+1:ℕ)*x)) (norm_nonneg _)).trans_eq (mul_one _)

theorem coefficientWaveform_continuous (a : ℕ → ℝ)
    (ha : Summable fun k ↦ ‖a k‖) : Continuous (coefficientWaveform a) := by
  apply continuous_tsum
  · intro k; fun_prop
  · exact ha
  · intro k x
    rw [norm_mul]
    exact (mul_le_mul_of_nonneg_left (by simpa [Real.norm_eq_abs] using Real.abs_cos_le_one ((k+1:ℕ)*x)) (norm_nonneg _)).trans_eq (mul_one _)

theorem coefficientWaveform_periodic (a : ℕ → ℝ) :
    Function.Periodic (coefficientWaveform a) (2 * Real.pi) := by
  intro x
  unfold coefficientWaveform
  apply tsum_congr
  intro k
  congr 1
  rw [mul_add]
  have h := Real.cos_add_nat_mul_two_pi ((k+1:ℕ)*x) (k+1)
  simpa [mul_comm (2 * Real.pi)] using h

/-- Uniform derivative envelope is explicit; it is not inferred from convergence of a alone. -/
theorem coefficientWaveform_hasDerivAt (a : ℕ → ℝ)
    (ha : Summable fun k ↦ ‖a k‖)
    (hderiv : Summable fun k ↦ ‖a k‖ * (k + 1 : ℕ)) (x : ℝ) :
    HasDerivAt (coefficientWaveform a)
      (∑' k : ℕ, -(a k * (k + 1 : ℕ)) * Real.sin ((k + 1 : ℕ) * x)) x := by
  unfold coefficientWaveform
  refine hasDerivAt_tsum (g := fun k y => a k * Real.cos ((k+1:ℕ)*y))
    (g' := fun k y => -(a k * (k+1:ℕ)) * Real.sin ((k+1:ℕ)*y)) hderiv ?_ ?_
    (coefficientWaveform_summable a ha 0) x
  · intro k y
    simpa [mul_comm, mul_left_comm, mul_assoc] using
      (((hasDerivAt_id y).const_mul ((k+1:ℕ):ℝ)).cos.const_mul (a k))
  · intro k y
    rw [norm_mul, norm_neg, norm_mul, Real.norm_natCast]
    exact (mul_le_mul_of_nonneg_left (by simpa [Real.norm_eq_abs] using Real.abs_sin_le_one ((k+1:ℕ)*y)) (by positivity)).trans_eq (mul_one _)

theorem carrier_derivative_summable (s : ℕ → ℤ) :
    Summable (fun k => ‖carrier s k‖ * (k+1:ℕ)) := by
  have hr : ‖(1/2:ℝ)‖ < 1 := by norm_num
  have hg := summable_geometric_of_norm_lt_one hr
  have hn := summable_pow_mul_geometric_of_norm_lt_one (R := ℝ) 1 hr
  have hmajor : Summable (fun k : ℕ => (1/2:ℝ)^(k+1)*(k+1:ℕ)) := by
    apply ((hn.add hg).mul_right (1/2:ℝ)).congr
    intro k
    simp only [pow_succ, Nat.cast_add, Nat.cast_one]
    ring
  exact Summable.of_nonneg_of_le (fun k => by positivity)
    (fun k => mul_le_mul_of_nonneg_right (carrier_norm_bound s k) (by positivity)) hmajor

theorem coefficientWaveform_contDiff (a : ℕ → ℝ)
    (ha : Summable fun k => ‖a k‖) (hderiv : Summable fun k => ‖a k‖*(k+1:ℕ)) :
    ContDiff ℝ 1 (coefficientWaveform a) := by
  apply contDiff_one_iff_deriv.mpr
  constructor
  · intro x; exact (coefficientWaveform_hasDerivAt a ha hderiv x).differentiableAt
  · have hd : deriv (coefficientWaveform a) =
        fun x => ∑' k : ℕ, -(a k * (k+1:ℕ))*Real.sin ((k+1:ℕ)*x) := by
      funext x; exact (coefficientWaveform_hasDerivAt a ha hderiv x).deriv
    rw [hd]
    apply continuous_tsum
    · intro k; fun_prop
    · exact hderiv
    · intro k x
      rw [norm_mul,norm_neg,norm_mul,Real.norm_natCast]
      exact (mul_le_mul_of_nonneg_left
        (by simpa [Real.norm_eq_abs] using Real.abs_sin_le_one ((k+1:ℕ)*x))
        (by positivity)).trans_eq (mul_one _)

theorem coefficientWaveform_lipschitz (a : ℕ → ℝ)
    (ha : Summable fun k => ‖a k‖) (hderiv : Summable fun k => ‖a k‖*(k+1:ℕ)) :
    LipschitzWith ⟨∑' k : ℕ, ‖a k‖*(k+1:ℕ), tsum_nonneg (fun _ => by positivity)⟩
      (coefficientWaveform a) := by
  apply lipschitzWith_of_nnnorm_deriv_le
  · intro x; exact (coefficientWaveform_hasDerivAt a ha hderiv x).differentiableAt
  · intro x
    apply NNReal.coe_le_coe.mp
    change ‖deriv (coefficientWaveform a) x‖ ≤ _
    rw [(coefficientWaveform_hasDerivAt a ha hderiv x).deriv]
    have hb : ∀ k : ℕ, ‖-(a k*(k+1:ℕ))*Real.sin ((k+1:ℕ)*x)‖ ≤ ‖a k‖*(k+1:ℕ) := by
      intro k
      rw [norm_mul,norm_neg,norm_mul,Real.norm_natCast]
      exact (mul_le_mul_of_nonneg_left
        (by simpa [Real.norm_eq_abs] using Real.abs_sin_le_one ((k+1:ℕ)*x))
        (by positivity)).trans_eq (mul_one _)
    have hs := Summable.of_nonneg_of_le (fun k => norm_nonneg _) hb hderiv
    exact (norm_tsum_le_tsum_norm hs).trans (hs.tsum_le_tsum hb hderiv)

theorem encoded_sequence_contDiff (s : ℕ → ℤ) :
    ContDiff ℝ 1 (coefficientWaveform (carrier s)) :=
  coefficientWaveform_contDiff _ (carrier_summable s) (carrier_derivative_summable s)

/-- Integer frequencies can grow arbitrarily; the envelope pays their magnitude. -/
def frequencyAmplitude (s : ℕ → ℤ) (k : ℕ) : ℝ :=
  (1 / 2 : ℝ) ^ (k + 1) / (1 + |(s k : ℝ)|)

theorem frequency_derivative_bound (s : ℕ → ℤ) (k : ℕ) :
    |frequencyAmplitude s k * (s k : ℝ)| ≤ (1 / 2 : ℝ) ^ (k + 1) := by
  have hp : 0 < 1 + |(s k : ℝ)| := by positivity
  rw [frequencyAmplitude, abs_mul, abs_div, abs_of_nonneg (by positivity), abs_of_pos hp]
  have hc : |(s k : ℝ)| / (1 + |(s k : ℝ)|) ≤ 1 := (div_le_one hp).mpr (by linarith)
  calc
    _ = (1 / 2 : ℝ) ^ (k + 1) * (|(s k : ℝ)| / (1 + |(s k : ℝ)|)) := by ring
    _ ≤ _ := by simpa using mul_le_mul_of_nonneg_left hc (by positivity : 0 ≤ (1/2:ℝ)^(k+1))

/-- Correct starvation obligation: prefix work must cover a pinned enumeration. -/
def workClock (batch : ℕ → ℕ) : ℕ → ℕ
  | 0 => 0
  | n+1 => workClock batch n + batch n

theorem workClock_ge_index (batch : ℕ → ℕ) (hb : ∀ n, 1 ≤ batch n) :
    ∀ n, n ≤ workClock batch n := by
  intro n
  induction n with
  | zero => simp [workClock]
  | succ n ih => simp only [workClock]; have := hb n; omega

theorem prefix_obligation_covered (batch : ℕ → ℕ) (hb : ∀ n, 1 ≤ batch n) (j : ℕ) :
    ∃ n, j < workClock batch n := ⟨j+1, by have := workClock_ge_index batch hb (j+1); omega⟩

/-- Actual batch formula, with an integer cap and normalized scalar sample. -/
def batchSize (B : ℕ) (v : ℝ) : ℕ := 1 + ⌊((B : ℝ) - 1) / 2 * (1 + v)⌋₊

theorem batchSize_bounds {B : ℕ} (hB : 1 ≤ B) {v : ℝ} (hv : -1 ≤ v ∧ v ≤ 1) :
    1 ≤ batchSize B v ∧ batchSize B v ≤ B := by
  constructor
  · simp [batchSize]
  · have hBr : (1 : ℝ) ≤ B := by exact_mod_cast hB
    have hx : ((B : ℝ)-1)/2*(1+v) ≤ (B-1 : ℕ) := by
      rw [Nat.cast_sub hB]; nlinarith
    have hf := Nat.floor_le_of_le hx
    unfold batchSize; omega

/-- Work can diverge while every allocation is sent to channel zero. -/
theorem unbounded_clock_does_not_imply_channel_service :
    (∀ n : ℕ, n ≤ workClock (fun _ ↦ 1) n) ∧
    (¬ ∃ _n : ℕ, (0 : ℕ) = 1) := by
  exact ⟨workClock_ge_index _ (fun _ ↦ le_rfl), by norm_num⟩

theorem fractional_rounding_starves : ⌊(1 / 2 : ℝ)⌋₊ = 0 := by norm_num

/-- The scalar value of a real potential, with angular phase and integer sites. -/
def sampledPotential (v : ℝ → ℝ) (α θ : ℝ) (n : ℤ) : ℝ :=
  v (θ + 2 * Real.pi * α * n)
def transfer (E V : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := !![E-V, -1; 1, 0]

theorem transfer_det (E V : ℝ) : (transfer E V).det = 1 := by
  simp [transfer, Matrix.det_fin_two]
theorem transfer_trace (E V : ℝ) : Matrix.trace (transfer E V) = E - V := by
  simp [transfer, Matrix.trace, Fin.sum_univ_two]
theorem transfer_unbounded_trace (K : ℝ) :
    ∃ E V, (transfer E V).det = 1 ∧ K < Matrix.trace (transfer E V) := by
  exact ⟨K+1,0,transfer_det _ _,by rw [transfer_trace]; linarith⟩

/-- Completed finite square, retaining all ordered off-diagonal terms. -/
theorem finite_ordered_energy {ι : Type*} [DecidableEq ι]
    (S : Finset ι) (x : ι → ℝ) :
    (∑ i ∈ S, x i)^2 = (∑ i ∈ S, (x i)^2) +
      ∑ i ∈ S, ∑ j ∈ S, if i ≠ j then x i * x j else 0 := by
  rw [pow_two, Finset.sum_mul_sum, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro i hi
  have hd : x i ^ 2 = ∑ j ∈ S, if i = j then x i * x j else 0 := by simp [hi,pow_two]
  rw [hd, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro j _
  by_cases h : i=j <;> simp [h]

/-- Native L² Fourier normalization is an isometry; angular rescaling is not implicit. -/
theorem l2_parseval (f : Lp (α := ℝ) ℂ 2) : ‖𝓕 f‖^2 = ‖f‖^2 := by
  rw [MeasureTheory.Lp.norm_fourier_eq]
theorem l2_cross_parseval (f g : Lp (α := ℝ) ℂ 2) :
    inner ℂ (𝓕 f) (𝓕 g) = inner ℂ f g := MeasureTheory.Lp.inner_fourier_eq _ _

/-- Generic exact return, preserving real exponents and the complete error. -/
theorem polynomial_return {X R e : ℝ → ℝ} {CR Ce r s : ℝ}
    (hCR : 0 ≤ CR) (hCe : 0 ≤ Ce)
    (hid : ∀ T, 0 ≤ T → X T = R T + e T)
    (hR : ∀ T, 0 ≤ T → R T ≤ CR * (1+T)^r)
    (he : ∀ T, 0 ≤ T → |e T| ≤ Ce * (1+T)^s) :
    ∀ T, 0 ≤ T → X T ≤ (CR+Ce)*(1+T)^(max r s) := by
  intro T hT
  have hb : 1 ≤ 1+T := by linarith
  have hpR := Real.rpow_le_rpow_of_exponent_le hb (le_max_left r s)
  have hpE := Real.rpow_le_rpow_of_exponent_le hb (le_max_right r s)
  rw [hid T hT]
  calc
    R T + e T ≤ CR*(1+T)^r + Ce*(1+T)^s := add_le_add (hR T hT) ((le_abs_self _).trans (he T hT))
    _ ≤ CR*(1+T)^(max r s) + Ce*(1+T)^(max r s) :=
      add_le_add (mul_le_mul_of_nonneg_left hpR hCR) (mul_le_mul_of_nonneg_left hpE hCe)
    _ = _ := by ring

/-- Total squared magnitude alone cannot identify contributions of two channels. -/
theorem same_total_different_diagonal :
    ((1:ℝ)+0)^2 = ((1/2:ℝ)+(1/2))^2 ∧
    (1:ℝ)^2+0^2 ≠ (1/2:ℝ)^2+(1/2)^2 := by norm_num

end GRWTSK.Analysis.Waveform
