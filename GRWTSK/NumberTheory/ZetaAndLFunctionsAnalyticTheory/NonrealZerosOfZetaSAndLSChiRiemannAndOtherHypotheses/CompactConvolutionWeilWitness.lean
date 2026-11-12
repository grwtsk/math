/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.FunctionalAnalysis.WeightedConjugatePairing
import Mathlib.Analysis.Real.Sqrt

/-!
# Geometric bounds for compact convolution witnesses

Source: CompactConvolutionWeilWitness.md, Sections 4–5, equations (8), (14)–(19).
Coordination: grwtsk/math#1801.

The inputs are sample values of the fixed selector and seeds, a conjugation-closed
head, and a whole-divisor multiplicity moment. This module proves the infinite
signed tail estimate and half-margin from the exact normalized head value.
The physical-space construction and arithmetic identification are separate inputs
to the eventual detector for
`WeilNegativeWitness.criticalStripStatement_of_detection_and_nonnegativity`.

Elaboration, fresh kernel replay, transitive axiom audit, and independent
analytical review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.CompactConvolutionWeilWitness

open ComplexConjugate
open GRWTSK.FunctionalAnalysis.WeightedConjugatePairing

/-- The pointwise bound for an arbitrary complex coefficient vector in (17). -/
theorem norm_seed_sum_le {κ : Type*} [Fintype κ]
    (u v : κ → ℂ) (D : κ → ℝ) (w : ℝ) (hw : 0 ≤ w)
    (hv : ∀ k, ‖v k‖ ≤ D k * w) :
    ‖∑ k, u k * v k‖ ≤
      Real.sqrt (∑ k, ‖u k‖ ^ 2) * Real.sqrt (∑ k, D k ^ 2) * w := by
  calc
    ‖∑ k, u k * v k‖ ≤ ∑ k, ‖u k * v k‖ := norm_sum_le _ _
    _ ≤ ∑ k, ‖u k‖ * (D k * w) := by
      apply Finset.sum_le_sum
      intro k _
      rw [norm_mul]
      exact mul_le_mul_of_nonneg_left (hv k) (norm_nonneg _)
    _ = (∑ k, ‖u k‖ * D k) * w := by
      simp only [Finset.sum_mul, mul_assoc]
    _ ≤ _ := mul_le_mul_of_nonneg_right
      (Real.sum_mul_le_sqrt_mul_sqrt Finset.univ (fun k => ‖u k‖) D) hw

/-- Equations (17)–(19), with the exact head (16) supplied by the normalized
opposite seed values. The norm estimate and absolute convergence apply at every
exponent. The real-part margin uses the stopping inequality. -/
theorem pairing_bounds_of_compact_samples {ι κ : Type*} [Fintype κ]
    (head : Finset ι) (j : ι → ι) (z : ι → ℂ) (m : ι → ℝ)
    (G : ι → ℂ) (V : κ → ι → ℂ) (D : κ → ℝ) (M : ℝ)
    (u : κ → ℂ) (N : ℕ)
    (_hj : ∀ i, j (j i) = i) (hz : ∀ i, z (j i) = conj (z i))
    (hhead : ∀ i, j i ∈ head ↔ i ∈ head)
    (hm : ∀ i, 0 ≤ m i) (_hmj : ∀ i, m (j i) = m i)
    (hGhead : ∀ i ∈ head, G i ^ N * (∑ k, u k * V k i) = ∑ k, u k * V k i)
    (hGtail : ∀ i ∉ head, ‖G i‖ ≤ 1 / 2)
    (hV : ∀ k i, ‖V k i‖ ≤ D k * (1 / (1 + ‖z i‖) ^ 2))
    (hs : Summable (fun i => m i * (1 / (1 + ‖z i‖) ^ 2) ^ 2))
    (hM : (∑' i, m i * (1 / (1 + ‖z i‖) ^ 2) ^ 2) ≤ M)
    (hvalue : (∑ i ∈ head, term m j (fun i => ∑ k, u k * V k i)
        (fun i => ∑ k, u k * V k i) i) = -((∑ k, ‖u k‖ ^ 2 : ℝ) : ℂ)) :
    let F := fun i => G i ^ N * (∑ k, u k * V k i)
    let E := ∑ k, ‖u k‖ ^ 2
    let C := M * ∑ k, D k ^ 2
    Summable (fun i => ‖term m j F F i‖) ∧
      ‖pairing m j F F + (E : ℂ)‖ ≤ C / (4 : ℝ) ^ N * E ∧
      (2 * C ≤ (4 : ℝ) ^ N → (pairing m j F F).re ≤ -(1 / 2) * E) := by
  classical
  intro F E C
  let w := fun i => 1 / (1 + ‖z i‖) ^ 2
  let A := Real.sqrt E * Real.sqrt (∑ k, D k ^ 2)
  let B := (1 / 2 : ℝ) ^ N * A
  let tail := fun i => if i ∈ head then 0 else F i
  let low := fun i => if i ∈ head then term m j F F i else 0
  have hw (i : ι) : 0 ≤ w i := by dsimp [w]; positivity
  have hwj (i : ι) : w (j i) = w i := by simp only [w, hz, Complex.norm_conj]
  have hE : 0 ≤ E := by dsimp [E]; positivity
  have hD : 0 ≤ ∑ k, D k ^ 2 := Finset.sum_nonneg (fun _ _ => sq_nonneg _)
  have hB : 0 ≤ B := by dsimp [B, A]; positivity
  have htail (i : ι) : ‖tail i‖ ≤ B * w i := by
    by_cases hi : i ∈ head
    · simpa [tail, hi] using mul_nonneg hB (hw i)
    · rw [show tail i = F i by simp [tail, hi]]
      change ‖G i ^ N * (∑ k, u k * V k i)‖ ≤ B * w i
      rw [norm_mul, norm_pow]
      calc
        _ ≤ (1 / 2 : ℝ) ^ N * (A * w i) :=
          mul_le_mul (pow_le_pow_left₀ (norm_nonneg _) (hGtail i hi) N)
            (norm_seed_sum_le u (fun k => V k i) D (w i) (hw i) (fun k => hV k i))
            (norm_nonneg _) (by positivity)
        _ = B * w i := by simp [B, mul_assoc]
  have hsplit (i : ι) : term m j F F i = low i + term m j tail tail i := by
    by_cases hi : i ∈ head
    · simp [low, tail, term, hi]
    · have hji : j i ∉ head := fun h => hi ((hhead i).mp h)
      simp [low, tail, term, hi, hji]
  have hzero : ∀ i ∉ head, low i = 0 := fun i hi => by simp [low, hi]
  have hl : Summable low := summable_of_ne_finset_zero hzero
  have hln : Summable (fun i => ‖low i‖) :=
    summable_of_ne_finset_zero (s := head) (fun i hi => by rw [hzero i hi, norm_zero])
  have htn := summable_norm_term m w j tail tail B B hm hw hwj hB htail htail hs
  have hfull : Summable (fun i => ‖term m j F F i‖) := by
    apply (hln.add htn).of_norm_bounded
    intro i
    rw [norm_norm, hsplit]
    exact norm_add_le _ _
  have hlow : (∑' i, low i) = -(E : ℂ) := by
    rw [tsum_eq_sum hzero]
    refine Eq.trans (Finset.sum_congr rfl ?_) hvalue
    intro i hi
    have hji := (hhead i).mpr hi
    simp only [low, if_pos hi, term]
    change (m i : ℂ) * (G i ^ N * _) * conj (G (j i) ^ N * _) = _
    rw [hGhead i hi, hGhead (j i) hji]
  have hsum : pairing m j F F = -(E : ℂ) + pairing m j tail tail := by
    unfold pairing
    rw [tsum_congr hsplit, hl.tsum_add htn.of_norm, hlow]
  have hbudget : M * B * B = C / (4 : ℝ) ^ N * E := by
    have hpow : ((1 / 2 : ℝ) ^ N) ^ 2 = 1 / (4 : ℝ) ^ N := by
      rw [← pow_mul, Nat.mul_comm, pow_mul]
      norm_num [div_pow]
    calc
      M * B * B =
          M * (((1 / 2 : ℝ) ^ N) ^ 2 * ((Real.sqrt E) ^ 2 *
            (Real.sqrt (∑ k, D k ^ 2)) ^ 2)) := by dsimp [B, A]; ring
      _ = C / (4 : ℝ) ^ N * E := by
        rw [hpow, Real.sq_sqrt hE, Real.sq_sqrt hD]
        dsimp [C]
        simp only [div_eq_mul_inv, one_mul]
        ring
  have herr : ‖pairing m j F F + (E : ℂ)‖ ≤ C / (4 : ℝ) ^ N * E := by
    have hcancel : pairing m j F F + (E : ℂ) = pairing m j tail tail := by
      rw [hsum]
      abel
    rw [hcancel, ← hbudget]
    exact norm_pairing_le m w j tail tail B B M hm hw hwj hB hB htail htail hs hM
  refine ⟨hfull, herr, ?_⟩
  intro hstop
  have hhalf : C / (4 : ℝ) ^ N ≤ 1 / 2 := by
    apply (div_le_iff₀ (by positivity : 0 < (4 : ℝ) ^ N)).mpr
    linarith
  have herror := (Complex.re_le_norm (pairing m j F F + (E : ℂ))).trans
    (herr.trans (mul_le_mul_of_nonneg_right hhalf hE))
  simp only [Complex.add_re, Complex.ofReal_re] at herror
  linarith

end GRWTSK.NumberTheory.CompactConvolutionWeilWitness
