/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFirstPrimeWindowReturn
import Mathlib.LinearAlgebra.Dual.Lemmas
import Mathlib.Tactic

/-!
# Signed Weil readout through finite real-linear observations

A row acts by the real part of the product with each complex correlation
sample. This represents a real-linear observation, allowing heat and
unit phases before taking a real channel. The decoder needs to recover
one specific row with its original inverse-character phase.

On the full sample space, recovery is equivalent to kernel containment,
or to exact equality of the synthesized row with the source row.
On the original test domain, the signed difference and a two-sided
error bound follow directly from the literal correlation energy bound.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.WindowRowRecovery

variable {I J : Type*} [Fintype I] [Fintype J]

/-- A complex row defines a real-linear channel with full signed phase. -/
def realRow (row : I → ℂ) : (I → ℂ) →ₗ[ℝ] ℝ where
  toFun x := ∑ i, (row i * x i).re
  map_add' x y := by
    simp [Pi.add_apply, mul_add, Complex.add_re, Finset.sum_add_distrib]
  map_smul' c x := by
    change (∑ i, (row i * (c • x i)).re) = c * ∑ i, (row i * x i).re
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro i _
    rw [Complex.real_smul, ← mul_left_comm (c : ℂ), Complex.mul_re]
    simp

@[simp]
theorem realRow_apply (row x : I → ℂ) :
    realRow row x = ∑ i, (row i * x i).re := rfl

theorem realRow_sub_apply (row target x : I → ℂ) :
    realRow (row - target) x = realRow row x - realRow target x := by
  simp only [realRow_apply, Pi.sub_apply, sub_mul, Complex.sub_re, Finset.sum_sub_distrib]

theorem realRow_single [DecidableEq I] (row : I → ℂ) (i : I) (z : ℂ) :
    realRow row (Pi.single i z) = (row i * z).re := by
  rw [realRow_apply, Finset.sum_eq_single i]
  · simp
  · intro j _ hji
    simp [Pi.single_eq_of_ne hji]
  · simp

theorem realRow_injective : Function.Injective (realRow (I := I)) := by
  classical
  intro row target eq
  funext i
  apply Complex.ext
  · have re := LinearMap.congr_fun eq (Pi.single i 1)
    simpa only [realRow_single, mul_one] using re
  · have im := LinearMap.congr_fun eq (Pi.single i Complex.I)
    simpa only [realRow_single, Complex.mul_re, Complex.I_re, Complex.I_im, mul_zero,
      mul_one, zero_sub, neg_inj] using im

/-- The observed channels, before additive measurement error. -/
def observe (rows : J → I → ℂ) : (I → ℂ) →ₗ[ℝ] (J → ℝ) :=
  LinearMap.pi (fun j => realRow (rows j))

/-- Move the already defined heat and phase multiplier into each measured row. -/
def heatWaveRows (rows : J → I → ℂ) (time rate : I → ℝ) (phase : I → ℂ) : J → I → ℂ :=
  fun j i => rows j i * WindowFilterLedger.heatWaveReadout (time i) (rate i) (phase i) 1

omit [Fintype J] in
theorem observe_heatWaveRows (rows : J → I → ℂ) (time rate : I → ℝ) (phase x : I → ℂ) :
    observe (heatWaveRows rows time rate phase) x =
      observe rows (fun i => WindowFilterLedger.heatWaveReadout (time i) (rate i) (phase i) (x i)) := by
  funext j
  change realRow (heatWaveRows rows time rate phase j) x =
    realRow (rows j) (fun i => WindowFilterLedger.heatWaveReadout (time i) (rate i) (phase i) (x i))
  simp only [realRow_apply, heatWaveRows, WindowFilterLedger.heatWaveReadout, mul_one, mul_assoc]

/-- Real weights combine measured channels into the signed return. -/
def decode (weights : J → ℝ) : (J → ℝ) →ₗ[ℝ] ℝ :=
  ∑ j, weights j • LinearMap.proj j

@[simp]
theorem decode_apply (weights y : J → ℝ) :
    decode weights y = ∑ j, weights j * y j := by
  simp [decode, LinearMap.sum_apply]

/-- The row obtained by composing the measurement and the decoder. -/
def effectiveRow (rows : J → I → ℂ) (weights : J → ℝ) : I → ℂ :=
  fun i => ∑ j, (weights j : ℂ) * rows j i

theorem decode_observe (rows : J → I → ℂ) (weights : J → ℝ) (x : I → ℂ) :
    decode weights (observe rows x) = realRow (effectiveRow rows weights) x := by
  simp only [decode_apply, observe, LinearMap.pi_apply, realRow_apply, effectiveRow,
    Finset.sum_mul, Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro i _
  change (∑ j, weights j * (rows j i * x i).re) =
    Complex.reAddGroupHom (∑ j, (weights j : ℂ) * rows j i * x i)
  rw [map_sum]
  apply Finset.sum_congr rfl
  intro j _
  simp [mul_assoc, Complex.mul_re]

/-- Kernel containment is exactly the row-span condition, including
filters with fewer output channels than the number of source samples. -/
theorem exists_effectiveRow_eq_iff (rows : J → I → ℂ) (target : I → ℂ) :
    (∃ weights, effectiveRow rows weights = target) ↔
      (observe rows).ker ≤ (realRow target).ker := by
  constructor
  · rintro ⟨weights, rfl⟩ x hx
    have hz := LinearMap.mem_ker.mp hx
    apply LinearMap.mem_ker.mpr
    rw [← decode_observe, hz, map_zero]
  · intro h
    have hc : (⨅ j, (realRow (rows j)).ker) ≤ (realRow target).ker := by
      simpa only [observe, LinearMap.ker_pi] using h
    obtain ⟨weights, hw⟩ := (Submodule.mem_span_range_iff_exists_fun ℝ).1
      (mem_span_of_iInf_ker_le_ker hc)
    refine ⟨weights, realRow_injective ?_⟩
    ext x
    rw [← decode_observe]
    simpa [decode, observe, LinearMap.sum_apply] using LinearMap.congr_fun hw x

/-- Even allowing an arbitrary function of the measurements gives the
same criterion on the full complex sample space. -/
theorem exists_decoder_iff_kernel (rows : J → I → ℂ) (target : I → ℂ) :
    (∃ recover : (J → ℝ) → ℝ, ∀ x, recover (observe rows x) = realRow target x) ↔
      (observe rows).ker ≤ (realRow target).ker := by
  constructor
  · rintro ⟨recover, hr⟩ x hx
    have hz := LinearMap.mem_ker.mp hx
    apply LinearMap.mem_ker.mpr
    rw [← hr, hz, ← (observe rows).map_zero, hr, map_zero]
  · intro h
    obtain ⟨weights, hw⟩ := (exists_effectiveRow_eq_iff rows target).2 h
    exact ⟨decode weights, fun x => by rw [decode_observe, hw]⟩

/-- A measured vector equal to zero on a hidden direction of nonzero signed
value defeats every decoder on the ambient sample space. -/
theorem no_decoder_of_hidden_row (rows : J → I → ℂ) (target x : I → ℂ)
    (hidden : observe rows x = 0) (signed : realRow target x ≠ 0) :
    ¬ ∃ recover : (J → ℝ) → ℝ, ∀ y, recover (observe rows y) = realRow target y := by
  intro h
  exact signed (LinearMap.mem_ker.mp
    ((exists_decoder_iff_kernel rows target).1 h (LinearMap.mem_ker.mpr hidden)))

/-- Omitting a sample with a nonzero signed coefficient gives a concrete
hidden direction. The imaginary probe handles purely imaginary weights. -/
theorem no_decoder_of_omitted_coordinate (rows : J → I → ℂ) (target : I → ℂ) (i : I)
    (omitted : ∀ j, rows j i = 0) (nonzero : target i ≠ 0) :
    ¬ ∃ recover : (J → ℝ) → ℝ, ∀ x, recover (observe rows x) = realRow target x := by
  classical
  intro h
  have ker := (exists_decoder_iff_kernel rows target).1 h
  have zeroAt (z : ℂ) : realRow target (Pi.single i z) = 0 := by
    apply LinearMap.mem_ker.mp (ker ?_)
    apply LinearMap.mem_ker.mpr
    funext j
    change realRow (rows j) (Pi.single i z) = 0
    rw [realRow_single, omitted j, zero_mul, Complex.zero_re]
  have hre := zeroAt 1
  have him := zeroAt Complex.I
  simp only [realRow_single, mul_one] at hre
  simp only [realRow_single, Complex.mul_re, Complex.I_re, Complex.I_im, mul_zero, mul_one,
    zero_sub, neg_eq_zero] at him
  exact nonzero (Complex.ext (by simpa using hre) (by simpa using him))

theorem noisy_decode_sub_source (rows : J → I → ℂ) (weights : J → ℝ)
    (target x : I → ℂ) (noise : J → ℝ) :
    decode weights (observe rows x + noise) - realRow target x =
      realRow (effectiveRow rows weights - target) x + decode weights noise := by
  rw [map_add, decode_observe, realRow_sub_apply]
  ring

theorem abs_realRow_le (row x : I → ℂ) (E : ℝ) (bound : ∀ i, ‖x i‖ ≤ E) :
    |realRow row x| ≤ (∑ i, ‖row i‖) * E := by
  rw [realRow_apply, Finset.sum_mul]
  refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun i _ => ?_)
  exact (Complex.abs_re_le_norm _).trans
    (by rw [norm_mul]; exact mul_le_mul_of_nonneg_left (bound i) (norm_nonneg _))

theorem abs_decode_le (weights noise : J → ℝ) :
    |decode weights noise| ≤ ∑ j, |weights j| * |noise j| := by
  simpa only [decode_apply, abs_mul] using
    Finset.abs_sum_le_sum_abs (fun j => weights j * noise j) Finset.univ

theorem abs_noisy_decode_sub_source_le (rows : J → I → ℂ) (weights : J → ℝ)
    (target x : I → ℂ) (noise : J → ℝ) (E : ℝ) (bound : ∀ i, ‖x i‖ ≤ E) :
    |decode weights (observe rows x + noise) - realRow target x| ≤
      (∑ i, ‖effectiveRow rows weights i - target i‖) * E +
      ∑ j, |weights j| * |noise j| := by
  rw [noisy_decode_sub_source]
  exact (abs_add_le _ _).trans (add_le_add (abs_realRow_le _ _ E bound) (abs_decode_le _ _))

/-! ## The original first-window Weil row -/

open FirstPrimeWindow SourcePrimeCorrelation LowSchur

/-- One coordinate per active prime power in the first 95 bases. -/
abbrev Power (A : ℝ) := ↥(firstPowers A)

def samples (A : ℝ) (f : ℝ → ℂ) : Power A → ℂ :=
  fun n => correlation f (Real.log (n.val : ℝ))

def sourceRow {q : ℕ} (χ : DirichletCharacter ℂ q) (A : ℝ) : Power A → ℂ :=
  fun n => 2 * (primeWeight n.val : ℂ) * conj (χ⁻¹ n.val)

theorem realRow_sourceRow {q : ℕ} (χ : DirichletCharacter ℂ q) (A : ℝ) (f : ℝ → ℂ) :
    realRow (sourceRow χ A) (samples A f) = signedWindowValue χ A f := by
  rw [realRow_apply, signedWindowValue, primeReadout, Finset.mul_sum]
  simp only [samples, sourceRow, ← Finset.sum_attach (firstPowers A)
    (fun n => 2 * (primeAtom χ⁻¹ (fun m => correlation f (Real.log (m : ℝ))) n).re)]
  apply Finset.sum_congr rfl
  intro n _
  rw [primeAtom]
  simp [mul_assoc, Complex.mul_re]

theorem exact_source_decode {q : ℕ} (χ : DirichletCharacter ℂ q) (A : ℝ)
    (rows : J → Power A → ℂ) (weights : J → ℝ)
    (certificate : effectiveRow rows weights = sourceRow χ A) (f : ℝ → ℂ) :
    decode weights (observe rows (samples A f)) = signedWindowValue χ A f := by
  rw [decode_observe, certificate, realRow_sourceRow]

/-- If the original zero sum is supplied, use the exact compressed readout
in the whole expression while retaining the source index and summands. -/
theorem hasSum_compressed {q : ℕ} {Z : Type*} (z : Z → ℂ) (χ : DirichletCharacter ℂ q)
    (A : ℝ) (f : ℝ → ℂ) (hsource : HasSum z (physicalValue χ A f))
    (rows : J → Power A → ℂ) (weights : J → ℝ)
    (certificate : effectiveRow rows weights = sourceRow χ A) :
    HasSum z (windowValue χ A f (decode weights (observe rows (samples A f)))) := by
  rw [exact_source_decode χ A rows weights certificate, ← physicalValue_eq_windowValue]
  exact hsource

/-- Only the signed prime-window part changes. Conductor, gamma, poles
and the later prime-power subtotal are carried unchanged by windowValue. -/
theorem physicalValue_sub_windowValue {q : ℕ} (χ : DirichletCharacter ℂ q) (A : ℝ)
    (f : ℝ → ℂ) (reported : ℝ) :
    physicalValue χ A f - windowValue χ A f reported =
      ((reported - signedWindowValue χ A f : ℝ) : ℂ) := by
  rw [physicalValue_eq_windowValue]
  unfold windowValue
  push_cast
  ring

theorem native_signed_error {q : ℕ} (χ : DirichletCharacter ℂ q) (A : ℝ) (f : ℝ → ℂ)
    (rows : J → Power A → ℂ) (weights noise : J → ℝ) :
    physicalValue χ A f -
        windowValue χ A f (decode weights (observe rows (samples A f) + noise)) =
      ((realRow (effectiveRow rows weights - sourceRow χ A) (samples A f) +
        decode weights noise : ℝ) : ℂ) := by
  rw [physicalValue_sub_windowValue, ← realRow_sourceRow, noisy_decode_sub_source]

theorem native_error_budget {q : ℕ} (χ : DirichletCharacter ℂ q) (A : ℝ)
    {f : ℝ → ℂ} (hf : MemLp f 2 volume) (rows : J → Power A → ℂ)
    (weights noise : J → ℝ) :
    ‖physicalValue χ A f -
        windowValue χ A f (decode weights (observe rows (samples A f) + noise))‖ ≤
      (∑ i, ‖effectiveRow rows weights i - sourceRow χ A i‖) * energy f +
      ∑ j, |weights j| * |noise j| := by
  rw [physicalValue_sub_windowValue, Complex.norm_real, Real.norm_eq_abs, ← realRow_sourceRow]
  exact abs_noisy_decode_sub_source_le rows weights _ _ noise _
    (fun i => norm_correlation_le_energy hf _)

end GRWTSK.NumberTheory.WeilQuadraticForm.WindowRowRecovery
