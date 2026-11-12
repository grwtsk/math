/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletZeroCounting
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletWeilIntegrand
import Mathlib.Data.Fintype.Card
import Mathlib.Tactic

/-!
# Quantitative simultaneous horizontal avoidance of the actual Dirichlet zeros

MSC2020: 11M26, 11M41, 05A05, 30C15.
A midpoint grid with one more point than forbidden indices supplies a positive
separation radius. Apply it to ABSOLUTE ordinates in the existing finite source
window; the same height then avoids BOTH horizontal lines. The original source
count supplies a displayed inverse-quadratic radius. No zero separation,
simplicity, critical-line assumption, or numerical zero list is used.

The final application is nonvanishing of the ACTUAL completedLFunction on both
whole horizontal lines, including conductor-one zeta. This excludes the real
poles by the positive selected height, not by using totalized values.

This file does NOT prove a bound for the regular part of the logarithmic
derivative. The adjacent analytical argument uses finite Blaschke division,
Jensen, a coefficient estimate for a normalized zero-free logarithm, the source
circle bound, and the Euler lower bound at 2+iT to supply that estimate. That
argument and its infinite explicit-formula consequence are WRITTEN proofs;
they have not been encoded as Lean declarations in this increment.

SOURCE_PROOF_CANDIDATE. Elaboration/build, fresh kernel replay, transitive axiom
audit, and independent review NOT_RUN. Novelty UNASSESSED. Coordination #1801.
Existing definitions, target, transform convention, and the versioned inverse-
character source-return correction are unchanged. Individual records are adjacent.
-/

set_option autoImplicit false
noncomputable section
open Set
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilNegativeWitness

/-- One of m+1 midpoint samples in an open unit interval avoids all m indexed
forbidden values by at least half the grid spacing. Repeated values are allowed. -/
theorem exists_gap_in_unit_interval {ι : Type*} (S : Finset ι)
    (y : ι → ℝ) (a : ℝ) :
    ∃ t : ℝ, t ∈ Ioo a (a + 1) ∧
      ∀ i ∈ S, 1 / (2 * ((S.card : ℝ) + 1)) ≤ |t - y i| := by
  classical
  let m : ℕ := S.card
  let d : ℝ := (m : ℝ) + 1
  have hd : 0 < d := by dsimp [d]; positivity
  let x : Fin (m + 1) → ℝ := fun j => a + ((j.val : ℝ) + 1 / 2) / d
  have hx (j : Fin (m + 1)) : x j ∈ Ioo a (a + 1) := by
    have hj : j.val ≤ m := Nat.le_of_lt_succ j.isLt
    have hjR : (j.val : ℝ) ≤ m := by exact_mod_cast hj
    have hlo : 0 < ((j.val : ℝ) + 1 / 2) / d := div_pos (by positivity) hd
    have hhi : ((j.val : ℝ) + 1 / 2) / d < 1 := by
      apply (div_lt_one hd).mpr
      dsimp [d]
      linarith
    exact ⟨by dsimp [x]; linarith, by dsimp [x]; linarith⟩
  by_contra hnone
  have hblock (j : Fin (m + 1)) :
      ∃ i : {i // i ∈ S}, |x j - y i.1| < 1 / (2 * d) := by
    have hbad : ¬ ∀ i ∈ S, 1 / (2 * d) ≤ |x j - y i| := by
      intro hgood
      apply hnone
      refine ⟨x j, hx j, ?_⟩
      simpa only [d, m] using hgood
    push_neg at hbad
    obtain ⟨i, hi, hgap⟩ := hbad
    exact ⟨⟨i, hi⟩, hgap⟩
  choose b hb using hblock
  have hinj : Function.Injective b := by
    intro j k hsame
    apply Fin.ext
    by_contra hne
    have hnum : (1 : ℝ) ≤ |(j.val : ℝ) - (k.val : ℝ)| := by
      rcases lt_or_gt_of_ne hne with hjk | hkj
      · have h : (j.val : ℝ) + 1 ≤ k.val := by
          exact_mod_cast Nat.succ_le_of_lt hjk
        rw [abs_of_nonpos (by linarith : (j.val : ℝ) - k.val ≤ 0)]
        linarith
      · have h : (k.val : ℝ) + 1 ≤ j.val := by
          exact_mod_cast Nat.succ_le_of_lt hkj
        rw [abs_of_nonneg (by linarith : 0 ≤ (j.val : ℝ) - k.val)]
        linarith
    have hspacing : 1 / d ≤ |x j - x k| := by
      have heq : x j - x k = ((j.val : ℝ) - (k.val : ℝ)) / d := by
        dsimp [x]
        ring
      rw [heq, abs_div, abs_of_pos hd]
      exact div_le_div_of_nonneg_right hnum hd.le
    have hk : |x k - y (b j).1| < 1 / (2 * d) := by
      rw [hsame]
      exact hb k
    have hshort : |x j - x k| < 1 / d := calc
      |x j - x k| ≤ |x j - y (b j).1| + |x k - y (b j).1| := by
        simpa only [abs_sub_comm (y (b j).1) (x k)] using
          abs_sub_le (x j) (y (b j).1) (x k)
      _ < 1 / (2 * d) + 1 / (2 * d) := add_lt_add (hb j) hk
      _ = 1 / d := by ring
    exact (not_lt_of_ge hspacing) hshort
  have hc := Fintype.card_le_of_injective b hinj
  have himpossible : m + 1 ≤ m := by simpa [m] using hc
  omega

variable {N : ℕ} [NeZero N]

/-- A deliberately coarse polynomial form of the already source-derived count.
It retains the actual analytic multiplicities and every height H >= 2. -/
theorem heightCount_le_quadratic_source_bound (chi : DirichletCharacter ℂ N)
    (hprim : chi.IsPrimitive) (H : ℝ) (hH : 2 ≤ H) :
    (heightCount chi hprim H : ℝ) ≤ 2 * sourceCountConstant chi * H ^ 2 := by
  have hH0 : 0 < H := by linarith
  have hlog : Real.log H + 3 ≤ 2 * H := by
    linarith [Real.log_le_sub_one_of_pos hH0]
  calc
    _ ≤ sourceCountConstant chi * H * (Real.log H + 3) :=
      heightCount_le_source_bound chi hprim H hH
    _ ≤ sourceCountConstant chi * H * (2 * H) :=
      mul_le_mul_of_nonneg_left hlog
        (mul_nonneg (sourceCountConstant_nonneg chi) hH0.le)
    _ = _ := by ring

/-- Source-dependent radius, independent of the test, the real coordinate,
and the sign of the horizontal edge. -/
def horizontalSeparationRadius (chi : DirichletCharacter ℂ N) (n : ℕ) : ℝ :=
  1 / (2 * (2 * sourceCountConstant chi + 1) * ((n : ℝ) + 4) ^ 2)

/-- No totalized division at a zero denominator enters height separation. -/
theorem horizontalSeparationRadius_pos (chi : DirichletCharacter ℂ N) (n : ℕ) :
    0 < horizontalSeparationRadius chi n := by
  have hD := sourceCountConstant_nonneg chi
  unfold horizontalSeparationRadius
  positivity

/-- Select a height in every unit window with a displayed gap from ALL absolute
ordinates of actual zeros. Zeros outside the finite selection window are included. -/
theorem exists_height_separated_from_absolute_ordinates
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive) (n : ℕ) :
    ∃ T : ℝ, (n : ℝ) + 2 < T ∧ T < (n : ℝ) + 3 ∧
      ∀ rho : CriticalStripZero chi,
        horizontalSeparationRadius chi n ≤ |T - |rho.1.im|| := by
  classical
  let H : ℝ := (n : ℝ) + 4
  let S := heightWindow chi hprim H
  have hH : 2 ≤ H := by
    dsimp [H]
    linarith [Nat.cast_nonneg (α := ℝ) n]
  obtain ⟨T, hT, hgap⟩ := exists_gap_in_unit_interval S
    (fun rho : CriticalStripZero chi => |rho.1.im|) ((n : ℝ) + 2)
  have hTlow : (n : ℝ) + 2 < T := hT.1
  have hTup : T < (n : ℝ) + 3 := by linarith [hT.2]
  have hcard : (S.card : ℝ) ≤ 2 * sourceCountConstant chi * H ^ 2 := by
    have hc : (S.card : ℝ) ≤ (heightCount chi hprim H : ℝ) := by
      exact_mod_cast card_heightWindow_le_heightCount chi hprim H
    exact hc.trans (heightCount_le_quadratic_source_bound chi hprim H hH)
  have hradius : horizontalSeparationRadius chi n ≤
      1 / (2 * ((S.card : ℝ) + 1)) := by
    unfold horizontalSeparationRadius
    apply one_div_le_one_div_of_le (by positivity)
    change 2 * ((S.card : ℝ) + 1) ≤ 2 * (2 * sourceCountConstant chi + 1) * H ^ 2
    have hsquare : 1 ≤ H ^ 2 := by nlinarith
    nlinarith
  have hsmall : 1 / (2 * ((S.card : ℝ) + 1)) ≤ 1 := by
    apply (div_le_one (by positivity)).mpr
    have hc : (0 : ℝ) ≤ S.card := Nat.cast_nonneg _
    linarith
  refine ⟨T, hTlow, hTup, fun rho => hradius.trans ?_⟩
  by_cases hrho : rho ∈ S
  · exact hgap rho hrho
  · have hfar : H ≤ |rho.1.im| := by
      apply le_of_not_gt
      intro h
      exact hrho ((mem_heightWindow chi hprim H rho).mpr h)
    have hdiff : 1 ≤ |T - |rho.1.im|| := by
      have hn : T - |rho.1.im| ≤ 0 := by dsimp [H] at hfar; linarith
      rw [abs_of_nonpos hn]
      dsimp [H] at hfar
      linarith
    exact hsmall.trans hdiff

/-- Absolute-ordinate avoidance controls both signed lines in the full complex
metric. No projection of the zero in the resulting conclusion is made. -/
theorem absolute_ordinate_gap_le_horizontal_distance (T sigma epsilon : ℝ)
    (hT : 0 ≤ T) (hepsilon : epsilon = -1 ∨ epsilon = 1) (rho : ℂ) :
    |T - |rho.im|| ≤
      ‖(sigma : ℂ) + Complex.I * ((epsilon * T : ℝ) : ℂ) - rho‖ := by
  have he : |epsilon * T| = T := by
    rcases hepsilon with rfl | rfl <;> simp [abs_of_nonneg hT]
  calc
    |T - |rho.im|| = ||epsilon * T| - |rho.im|| := by rw [he]
    _ ≤ |epsilon * T - rho.im| := abs_abs_sub_abs_le_abs_sub _ _
    _ ≤ _ := by
      simpa [Complex.add_im, Complex.sub_im, Complex.mul_im] using Complex.abs_im_le_norm
        ((sigma : ℂ) + Complex.I * ((epsilon * T : ℝ) : ℂ) - rho)

/-- Closed right-boundary nonvanishing excludes the actual pole, rather than
using the value assigned to the completed function there. -/
theorem completedLFunction_ne_zero_closed_right_away_one
    (chi : DirichletCharacter ℂ N) {s : ℂ} (hs : 1 ≤ s.re) (hs1 : s ≠ 1) :
    DirichletCharacter.completedLFunction chi s ≠ 0 := by
  have hp : 0 < s.re := by linarith
  rw [completedLFunction_eq_LFunction_mul_gammaFactor_of_re_pos chi hp]
  exact mul_ne_zero (chi.LFunction_ne_zero_of_one_le_re (.inr hs1) hs)
    (gammaFactor_regular_of_re_pos chi hp).2

/-- At a nonreal point, avoiding the existing original strip-zero subtype
suffices for nonvanishing of the actual primitive completed source. The left
half-plane is supplied by the genuine dual-character functional equation. -/
theorem completedLFunction_ne_zero_of_nonreal_avoiding_strip_zeros
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive) {s : ℂ}
    (him : s.im ≠ 0) (havoid : ∀ rho : CriticalStripZero chi, s ≠ rho.1) :
    DirichletCharacter.completedLFunction chi s ≠ 0 := by
  have hs1 : s ≠ 1 := by intro h; apply him; simp [h]
  by_cases hp : 0 < s.re
  · by_cases hr : 1 ≤ s.re
    · exact completedLFunction_ne_zero_closed_right_away_one chi hr hs1
    · have hL : DirichletCharacter.LFunction chi s ≠ 0 := by
        intro hz
        exact havoid ⟨s, hz, hp, lt_of_not_ge hr⟩ rfl
      rw [completedLFunction_eq_LFunction_mul_gammaFactor_of_re_pos chi hp]
      exact mul_ne_zero hL (gammaFactor_regular_of_re_pos chi hp).2
  · have ht : 1 ≤ (1 - s).re := by simp only [Complex.sub_re, Complex.one_re]; linarith
    have ht1 : 1 - s ≠ 1 := by
      intro h
      have hi := congrArg Complex.im h
      simp only [Complex.sub_im, Complex.one_im] at hi
      apply him
      linarith
    have hdual := completedLFunction_ne_zero_closed_right_away_one chi⁻¹ ht ht1
    have hN : (N : ℂ) ≠ 0 := by exact_mod_cast (NeZero.ne N)
    have hfe := hprim.completedLFunction_one_sub (1 - s)
    rw [show (1 - (1 - s) : ℂ) = s by ring] at hfe
    rw [hfe]
    exact mul_ne_zero
      (mul_ne_zero (Complex.cpow_ne_zero_iff.mpr (.inl hN))
        (rootNumber_ne_zero_from_completed_source chi hprim)) hdual

/-- A single chosen height for each unit window works for every zero, every real
coordinate, and BOTH edge signs. Nonvanishing is a source theorem, not a premise.
The logarithmic-derivative magnitude estimate is not asserted in this declaration. -/
theorem exists_zero_avoiding_horizontal_heights
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive) :
    ∃ T : ℕ → ℝ,
      (∀ n, (n : ℝ) + 2 < T n ∧ T n < (n : ℝ) + 3) ∧
      (∀ n (rho : CriticalStripZero chi) (sigma epsilon : ℝ),
        epsilon = -1 ∨ epsilon = 1 →
        horizontalSeparationRadius chi n ≤
          ‖(sigma : ℂ) + Complex.I * ((epsilon * T n : ℝ) : ℂ) - rho.1‖) ∧
      (∀ n (sigma epsilon : ℝ), epsilon = -1 ∨ epsilon = 1 →
        DirichletCharacter.completedLFunction chi
          ((sigma : ℂ) + Complex.I * ((epsilon * T n : ℝ) : ℂ)) ≠ 0) := by
  classical
  choose T hlo hhi hgap using exists_height_separated_from_absolute_ordinates chi hprim
  have hpos (n : ℕ) : 0 < T n := by linarith [hlo n, Nat.cast_nonneg (α := ℝ) n]
  have hdist (n : ℕ) (rho : CriticalStripZero chi) (sigma epsilon : ℝ)
      (he : epsilon = -1 ∨ epsilon = 1) :
      horizontalSeparationRadius chi n ≤
        ‖(sigma : ℂ) + Complex.I * ((epsilon * T n : ℝ) : ℂ) - rho.1‖ :=
    (hgap n rho).trans
      (absolute_ordinate_gap_le_horizontal_distance (T n) sigma epsilon (hpos n).le he rho.1)
  refine ⟨T, fun n => ⟨hlo n, hhi n⟩, hdist, ?_⟩
  intro n sigma epsilon he
  apply completedLFunction_ne_zero_of_nonreal_avoiding_strip_zeros chi hprim
  · have he0 : epsilon ≠ 0 := by rcases he with rfl | rfl <;> norm_num
    simpa [Complex.add_im, Complex.mul_im] using mul_ne_zero he0 (hpos n).ne'
  · intro rho heq
    have hh := hdist n rho sigma epsilon he
    rw [heq, sub_self, norm_zero] at hh
    exact (not_le_of_gt (horizontalSeparationRadius_pos chi n)) hh

/-- The norm of a finite sum of original multiplicity principal parts is paid
by the same actual height count and a proved distance floor. This is not a
partial-fraction representation of a logarithmic derivative. -/
theorem norm_finite_zero_principal_parts_le
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive)
    (H : ℝ) (S : Finset (CriticalStripZero chi))
    (hS : ∀ rho ∈ S, |rho.1.im| < H) (z : ℂ) (delta : ℝ) (hdelta : 0 < delta)
    (hsep : ∀ rho ∈ S, delta ≤ ‖z - rho.1‖) :
    ‖∑ rho ∈ S, (zeroMultiplicity chi rho : ℂ) / (z - rho.1)‖ ≤
      (heightCount chi hprim H : ℝ) / delta := by
  calc
    _ ≤ ∑ rho ∈ S, ‖(zeroMultiplicity chi rho : ℂ) / (z - rho.1)‖ := norm_sum_le _ _
    _ ≤ ∑ rho ∈ S, (zeroMultiplicity chi rho : ℝ) / delta := by
      apply Finset.sum_le_sum
      intro rho hrho
      rw [norm_div, Complex.norm_natCast]
      exact div_le_div_of_nonneg_left (Nat.cast_nonneg _) hdelta (hsep rho hrho)
    _ = (∑ rho ∈ S, (zeroMultiplicity chi rho : ℝ)) / delta := by
      rw [Finset.sum_div]
    _ ≤ _ := div_le_div_of_nonneg_right
      (sum_multiplicity_le_heightCount chi hprim H S hS) hdelta.le

/-- The same two-sided height theorem specialized literally to completed zeta.
Both real poles remain in the contour identity; neither lies on these lines. -/
theorem exists_zeta_zero_avoiding_horizontal_heights :
    ∃ T : ℕ → ℝ,
      (∀ n, (n : ℝ) + 2 < T n ∧ T n < (n : ℝ) + 3) ∧
      (∀ n (rho : CriticalStripZero (1 : DirichletCharacter ℂ 1)) (sigma epsilon : ℝ),
        epsilon = -1 ∨ epsilon = 1 →
        horizontalSeparationRadius (1 : DirichletCharacter ℂ 1) n ≤
          ‖(sigma : ℂ) + Complex.I * ((epsilon * T n : ℝ) : ℂ) - rho.1‖) ∧
      (∀ n (sigma epsilon : ℝ), epsilon = -1 ∨ epsilon = 1 →
        completedRiemannZeta ((sigma : ℂ) + Complex.I * ((epsilon * T n : ℝ) : ℂ)) ≠ 0) := by
  simpa only [DirichletCharacter.completedLFunction_modOne_eq] using
    exists_zero_avoiding_horizontal_heights (1 : DirichletCharacter ℂ 1)
      DirichletCharacter.isPrimitive_one_level_one

end GRWTSK.NumberTheory.WeilNegativeWitness
