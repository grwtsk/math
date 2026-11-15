/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineDeficitKernel
import Mathlib.Order.Interval.Set.Union

/-!
# Pair-cell envelopes for the original sine-deficit rectangle

Consecutive half-open intervals partition the entire frequency interval.
Their Cartesian products partition the square of integration. On each
pair-cell the deficit and absolute sinc-difference envelopes bound the
original nonnegative density. The integral of the constant upper bound
uses exactly the square of the cell width.

This proves the integral interface requested in
<https://github.com/grwtsk/hs/issues/2#issuecomment-6890916985>
and instantiates the grid with 32768 cells of width 1/128. The actual
numerical envelope tables are hypotheses of the interface.
Independent analytical review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

open Function MeasureTheory Set
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt

private def frequencyCell {N : ℕ} (Δ : ℝ) (i : Fin N) : Set ℝ :=
  Ioc ((i.val : ℝ) * Δ) (((i.val : ℝ) + 1) * Δ)

private theorem frequencyCell_subset {N : ℕ} {Δ : ℝ} (hΔ : 0 < Δ) (i : Fin N) :
    frequencyCell Δ i ⊆ Ioc 0 ((N : ℝ) * Δ) := by
  intro x hx
  have hi : (i.val : ℝ) + 1 ≤ (N : ℝ) := by
    exact_mod_cast Nat.succ_le_of_lt i.isLt
  exact ⟨lt_of_le_of_lt (by positivity) hx.1,
    hx.2.trans (mul_le_mul_of_nonneg_right hi hΔ.le)⟩

private theorem iUnion_frequencyCell (N : ℕ) {Δ : ℝ} (hΔ : 0 < Δ) :
    (⋃ i : Fin N, frequencyCell Δ i) = Ioc 0 ((N : ℝ) * Δ) := by
  apply Subset.antisymm (iUnion_subset fun i => frequencyCell_subset hΔ i)
  intro x hx
  have hcover := Ioc_subset_biUnion_Ioc N (fun i => (i : ℝ) * Δ)
  have hx' : x ∈ Ioc ((0 : ℕ) * Δ) ((N : ℝ) * Δ) := by simpa using hx
  obtain ⟨i, hi, hxi⟩ := mem_iUnion₂.mp (hcover hx')
  refine mem_iUnion.mpr ⟨⟨i, Finset.mem_range.mp hi⟩, ?_⟩
  simpa only [frequencyCell, Nat.cast_add, Nat.cast_one] using hxi

private theorem frequencyCell_disjoint_of_lt {N : ℕ} {Δ : ℝ} (hΔ : 0 < Δ)
    {i j : Fin N} (hij : i < j) : Disjoint (frequencyCell Δ i) (frequencyCell Δ j) := by
  have hij' : (i.val : ℝ) + 1 ≤ (j.val : ℝ) := by
    exact_mod_cast Nat.succ_le_of_lt (show i.val < j.val from hij)
  refine disjoint_left.mpr fun x hi hj => ?_
  exact (not_lt_of_ge (hi.2.trans (mul_le_mul_of_nonneg_right hij' hΔ.le))) hj.1

/-- Nonnegative whole-cell envelopes bound the literal double-frequency integral.
Every pair is included and the Lebesgue area of each pair-cell is `Δ²`. -/
theorem sineDeficitRectangle_le_grid_envelope
    (N : ℕ) (Δ : ℝ) (hΔ : 0 < Δ) (d : ℝ → ℝ)
    (D : Fin N → ℝ) (A : Fin N × Fin N → ℝ)
    (hd : Measurable d)
    (hdi : IntegrableOn d (Ioc 0 ((N : ℝ) * Δ)))
    (hd0 : ∀ x ∈ Ioc 0 ((N : ℝ) * Δ), 0 ≤ d x)
    (hD0 : ∀ i, 0 ≤ D i)
    (hA0 : ∀ ij, 0 ≤ A ij)
    (hD : ∀ (i : Fin N) (x : ℝ),
      x ∈ Ioc ((i.val : ℝ) * Δ) (((i.val : ℝ) + 1) * Δ) → d x ≤ D i)
    (hA : ∀ (ij : Fin N × Fin N) (x y : ℝ),
      x ∈ Ioc ((ij.1.val : ℝ) * Δ) (((ij.1.val : ℝ) + 1) * Δ) →
      y ∈ Ioc ((ij.2.val : ℝ) * Δ) (((ij.2.val : ℝ) + 1) * Δ) →
      |Real.sinc (x - y) - Real.sinc (x + y)| ≤ A ij) :
    sineDeficitRectangle ((N : ℝ) * Δ) d ≤
      Finset.sum (Finset.univ : Finset (Fin N × Fin N)) (fun ij =>
        Δ ^ (2 : ℕ) * (D ij.1 * D ij.2 * (A ij) ^ (2 : ℕ) / Real.pi ^ (2 : ℕ))) := by
  let μ : Measure (ℝ × ℝ) := (volume : Measure ℝ).prod (volume : Measure ℝ)
  let I := Ioc (0 : ℝ) ((N : ℝ) * Δ)
  let cell := @frequencyCell N Δ
  let box (ij : Fin N × Fin N) := cell ij.1 ×ˢ cell ij.2
  let s (p : ℝ × ℝ) := Real.sinc (p.1 - p.2) - Real.sinc (p.1 + p.2)
  let F (p : ℝ × ℝ) := d p.1 * d p.2 * (s p ^ 2 / Real.pi ^ 2)
  let upper (ij : Fin N × Fin N) := D ij.1 * D ij.2 * (A ij) ^ 2 / Real.pi ^ 2
  have hmeas (ij) : MeasurableSet (box ij) := measurableSet_Ioc.prod measurableSet_Ioc
  have hsub (ij) : box ij ⊆ I ×ˢ I :=
    Set.prod_mono (frequencyCell_subset hΔ ij.1) (frequencyCell_subset hΔ ij.2)
  have hcover : (⋃ ij, box ij) = I ×ˢ I := by
    change (⋃ ij : Fin N × Fin N, cell ij.1 ×ˢ cell ij.2) = _
    rw [Set.iUnion_prod, iUnion_frequencyCell N hΔ]
  have hdisjoint : Pairwise (Disjoint on cell) := by
    intro i j hij
    rcases lt_or_gt_of_ne hij with h | h
    · exact frequencyCell_disjoint_of_lt hΔ h
    · exact (frequencyCell_disjoint_of_lt hΔ h).symm
  have hboxes : Pairwise (Disjoint on box) := by
    intro ij kl hne
    by_cases h : ij.1 = kl.1
    · exact (Set.disjoint_prod.mpr (.inr (hdisjoint (fun e => hne (Prod.ext h e)))))
    · exact Set.disjoint_prod.mpr (.inl (hdisjoint h))
  have hiF : IntegrableOn F (I ×ˢ I) μ := by
    change Integrable F (((volume : Measure ℝ).prod (volume : Measure ℝ)).restrict (I ×ˢ I))
    rw [← Measure.prod_restrict]
    refine ((hdi.mul_prod hdi).const_mul (4 / Real.pi ^ 2)).mono ?_ ?_
    · have hmf : Measurable F := by
        unfold F s
        fun_prop
      exact hmf.aestronglyMeasurable
    · refine Filter.Eventually.of_forall (fun p => ?_)
      have hs : |s p| ≤ 2 := (abs_sub _ _).trans (by
        linarith [Real.abs_sinc_le_one (p.1 - p.2), Real.abs_sinc_le_one (p.1 + p.2)])
      have hsq : s p ^ 2 ≤ 4 := by
        calc
          s p ^ 2 = |s p| ^ 2 := (sq_abs _).symm
          _ ≤ (2 : ℝ) ^ 2 := pow_le_pow_left₀ (abs_nonneg _) hs 2
          _ = 4 := by norm_num
      calc
        ‖F p‖ = ‖d p.1 * d p.2‖ * (s p ^ 2 / Real.pi ^ 2) := by
          change ‖(d p.1 * d p.2) * (s p ^ 2 / Real.pi ^ 2)‖ = _
          rw [norm_mul, Real.norm_of_nonneg (show 0 ≤ s p ^ 2 / Real.pi ^ 2 by positivity)]
        _ ≤ ‖d p.1 * d p.2‖ * (4 / Real.pi ^ 2) :=
          mul_le_mul_of_nonneg_left (div_le_div_of_nonneg_right hsq (by positivity))
            (norm_nonneg _)
        _ = ‖(4 / Real.pi ^ 2) * (d p.1 * d p.2)‖ := by
          rw [norm_mul (4 / Real.pi ^ 2),
            Real.norm_of_nonneg (show (0 : ℝ) ≤ 4 / Real.pi ^ 2 by positivity),
            mul_comm (4 / Real.pi ^ 2)]
  have hvol (i : Fin N) : (volume : Measure ℝ) (cell i) = ENNReal.ofReal Δ := by
    change (volume : Measure ℝ) (frequencyCell Δ i) = _
    rw [frequencyCell, Real.volume_Ioc]
    congr 1
    ring
  have hpvol (ij) : μ (box ij) = ENNReal.ofReal Δ * ENNReal.ofReal Δ := by
    change ((volume : Measure ℝ).prod (volume : Measure ℝ)) (cell ij.1 ×ˢ cell ij.2) = _
    rw [Measure.prod_prod, hvol, hvol]
  have hle (ij) (p : ℝ × ℝ) (hp : p ∈ box ij) : F p ≤ upper ij := by
    have hdy := hd0 p.2 (frequencyCell_subset hΔ ij.2 hp.2)
    have hdxy : d p.1 * d p.2 ≤ D ij.1 * D ij.2 :=
      mul_le_mul (hD _ _ hp.1) (hD _ _ hp.2) hdy (hD0 _)
    have hs : s p ^ 2 ≤ (A ij) ^ 2 := by
      rw [sq_le_sq, abs_of_nonneg (hA0 ij)]
      exact hA ij p.1 p.2 hp.1 hp.2
    dsimp [F, upper]
    simp only [← mul_div_assoc]
    exact div_le_div_of_nonneg_right
      (mul_le_mul hdxy hs (sq_nonneg _) (mul_nonneg (hD0 _) (hD0 _))) (sq_nonneg _)
  calc
    sineDeficitRectangle ((N : ℝ) * Δ) d = ∫ p in I ×ˢ I, F p ∂μ := by
      simp only [sineDeficitRectangle, Measure.prod_restrict, I, F, s, μ]
    _ = ∑ ij, ∫ p in box ij, F p ∂μ := by
      rw [← hcover, integral_iUnion_fintype hmeas hboxes (fun ij => hiF.mono_set (hsub ij))]
    _ ≤ ∑ ij, Δ ^ 2 * upper ij := by
      refine Finset.sum_le_sum (fun ij _ => ?_)
      have hc : IntegrableOn (fun _ => upper ij) (box ij) μ :=
        integrableOn_const (by rw [hpvol]; finiteness)
      refine (setIntegral_mono_on (hiF.mono_set (hsub ij)) hc (hmeas ij) (hle ij)).trans_eq ?_
      rw [setIntegral_const]
      change (μ (box ij)).toReal * upper ij = _
      rw [hpvol, ENNReal.toReal_mul, ENNReal.toReal_ofReal hΔ.le, pow_two]

/-- The grid used by the conductor-three radius-one checker covers the original
frequency rectangle at cutoff 256. -/
theorem q3_sineDeficitRectangle_le_grid_envelope (χ : DirichletCharacter ℂ 3)
    (D : Fin 32768 → ℝ) (A : Fin 32768 × Fin 32768 → ℝ)
    (hD0 : ∀ i, 0 ≤ D i)
    (hA0 : ∀ ij, 0 ≤ A ij)
    (hD : ∀ (i : Fin 32768) (x : ℝ),
      x ∈ Ioc ((i.val : ℝ) * (1 / 128)) (((i.val : ℝ) + 1) * (1 / 128)) →
      q3SineDeficit χ x ≤ D i)
    (hA : ∀ (ij : Fin 32768 × Fin 32768) (x y : ℝ),
      x ∈ Ioc ((ij.1.val : ℝ) * (1 / 128)) (((ij.1.val : ℝ) + 1) * (1 / 128)) →
      y ∈ Ioc ((ij.2.val : ℝ) * (1 / 128)) (((ij.2.val : ℝ) + 1) * (1 / 128)) →
      |Real.sinc (x - y) - Real.sinc (x + y)| ≤ A ij) :
    sineDeficitRectangle 256 (q3SineDeficit χ) ≤
      Finset.sum (Finset.univ : Finset (Fin 32768 × Fin 32768)) (fun ij =>
        (1 / 128 : ℝ) ^ (2 : ℕ) * (D ij.1 * D ij.2 * (A ij) ^ (2 : ℕ) / Real.pi ^ (2 : ℕ))) := by
  have hR : ((32768 : ℕ) : ℝ) * (1 / 128) = 256 := by norm_num
  rw [← hR]
  exact sineDeficitRectangle_le_grid_envelope 32768 (1 / 128) (by norm_num) _ D A
    (measurable_q3SineDeficit χ) (integrableOn_q3SineDeficit χ _)
    (fun _ _ => le_max_left _ _) hD0 hA0 hD hA

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt
