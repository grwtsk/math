/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.WeilNegativeWitness
import Mathlib.NumberTheory.LSeries.ZetaZeros
import Mathlib.Analysis.Analytic.Order
import Mathlib.Data.Set.Finite.Basic

/-!
# Genuine Dirichlet zero multiplicities and finite height windows

MSC2020: 11M26, 11M41, 30C15.

The index type below is exactly the zero predicate used by the existing
`criticalStripStatement`, before imposing its critical-line conclusion. Its
weights are the analytic orders of the existing analytically continued
`DirichletCharacter.LFunction`. No series outside convergence is used.

Nonvanishing at 2 and connectedness of the punctured plane exclude infinite
analytic order at every point other than 1. This exclusion is proved BEFORE
natural-valued order is interpreted as multiplicity. At every indexed zero the
multiplicity is positive and has a local analytic factorization certificate.

For a primitive nonprincipal character, entire analyticity and nonvanishing
at 2 give a closed discrete zero set. A primitive principal character has
level 1; that case uses the literal zeta identity and Mathlib's pole-aware
closed/discrete zeta-zero theorem, not false analyticity at the pole.

Finite height windows and their multiplicity counts are consequently derived
for the actual source. A separate, still-unproved H*log(H) growth estimate
supplies the previously implemented whole-divisor correlation consumer.
Compact finiteness alone supplies neither that growth nor summability.

SOURCE_PROOF_CANDIDATE: elaboration, fresh kernel replay, transitive axiom
audit and independent review NOT_RUN. Novelty UNASSESSED. Issue math#1801.
Individual source-bound records and the full analytical argument are adjacent.
-/

set_option autoImplicit false
noncomputable section

open Set Filter MeasureTheory
open scoped Topology

namespace GRWTSK.NumberTheory.WeilNegativeWitness

variable {N : ℕ} [NeZero N]

/-- The actual source is analytic off its possible pole, for every character. -/
theorem analyticOnNhd_LFunction_compl_one (chi : DirichletCharacter ℂ N) :
    AnalyticOnNhd ℂ (DirichletCharacter.LFunction chi) ({1}ᶜ : Set ℂ) := by
  refine DifferentiableOn.analyticOnNhd ?_ isOpen_compl_singleton
  intro s hs
  exact (chi.differentiableAt_LFunction s (.inl hs)).differentiableWithinAt

/-- Nonvanishing at 2 propagates finite order throughout the connected punctured plane. -/
theorem analyticOrderAt_LFunction_ne_top (chi : DirichletCharacter ℂ N)
    (rho : ℂ) (hrho : rho ≠ 1) :
    analyticOrderAt (DirichletCharacter.LFunction chi) rho ≠ ⊤ := by
  have ha := analyticOnNhd_LFunction_compl_one chi
  have htwo : DirichletCharacter.LFunction chi (2 : ℂ) ≠ 0 :=
    chi.LFunction_ne_zero_of_one_le_re (.inr (by norm_num)) (by norm_num)
  have ho : analyticOrderAt (DirichletCharacter.LFunction chi) (2 : ℂ) = 0 :=
    (ha 2 (by norm_num)).analyticOrderAt_eq_zero.mpr htwo
  exact ha.analyticOrderAt_ne_top_of_isPreconnected
    (isConnected_compl_singleton_of_one_lt_rank (by simp) (1 : ℂ)).isPreconnected
    (by norm_num) hrho (by rw [ho]; exact ENat.zero_ne_top)

/-- Distinct complex zeros in the unchanged target's open critical strip.
No simplicity, real-height projection, or nonempty index type is assumed. -/
abbrev CriticalStripZero (chi : DirichletCharacter ℂ N) :=
  {rho : ℂ // DirichletCharacter.LFunction chi rho = 0 ∧ 0 < rho.re ∧ rho.re < 1}

/-- A source zero in the open strip cannot be the pole location. -/
theorem CriticalStripZero.ne_one {chi : DirichletCharacter ℂ N}
    (rho : CriticalStripZero chi) : rho.1 ≠ 1 := by
  intro h
  have hr := rho.2.2.2
  simpa only [h, Complex.one_re, lt_self_iff_false] using hr

/-- Genuine analytic multiplicity; finiteness and positivity are proved below. -/
def zeroMultiplicity (chi : DirichletCharacter ℂ N) (rho : CriticalStripZero chi) : ℕ :=
  analyticOrderNatAt (DirichletCharacter.LFunction chi) rho.1

/-- Natural conversion loses no infinite order for this actual source. -/
theorem zeroMultiplicity_cast (chi : DirichletCharacter ℂ N) (rho : CriticalStripZero chi) :
    (zeroMultiplicity chi rho : ℕ∞) =
      analyticOrderAt (DirichletCharacter.LFunction chi) rho.1 := by
  exact Nat.cast_analyticOrderNatAt (analyticOrderAt_LFunction_ne_top chi rho.1 (CriticalStripZero.ne_one rho))

/-- Every indexed zero contributes at least one; no totalized zero weight is hidden. -/
theorem zeroMultiplicity_pos (chi : DirichletCharacter ℂ N) (rho : CriticalStripZero chi) :
    0 < zeroMultiplicity chi rho := by
  apply Nat.pos_of_ne_zero
  intro h
  have ha := analyticOnNhd_LFunction_compl_one chi rho.1 (CriticalStripZero.ne_one rho)
  have ho := ha.analyticOrderAt_ne_zero.mpr rho.2.1
  apply ho
  rw [← zeroMultiplicity_cast chi rho, h, Nat.cast_zero]

/-- The weight is the exponent in the local factorization of the actual L-function. -/
theorem zeroMultiplicity_factorization (chi : DirichletCharacter ℂ N)
    (rho : CriticalStripZero chi) :
    ∃ g : ℂ → ℂ, AnalyticAt ℂ g rho.1 ∧ g rho.1 ≠ 0 ∧
      ∀ᶠ s in 𝓝 rho.1,
        DirichletCharacter.LFunction chi s = (s - rho.1) ^ zeroMultiplicity chi rho * g s := by
  have ha := analyticOnNhd_LFunction_compl_one chi rho.1 (CriticalStripZero.ne_one rho)
  simpa only [zeroMultiplicity, smul_eq_mul] using
    ha.analyticOrderAt_ne_top.mp (analyticOrderAt_LFunction_ne_top chi rho.1 (CriticalStripZero.ne_one rho))

/-- The principal primitive case is zeta, handled with its pole-aware zero theorem. -/
theorem primitive_LFunction_zeros_closed_discrete (chi : DirichletCharacter ℂ N)
    (hprim : chi.IsPrimitive) :
    IsClosed {s : ℂ | DirichletCharacter.LFunction chi s = 0} ∧
      IsDiscrete {s : ℂ | DirichletCharacter.LFunction chi s = 0} := by
  by_cases hchi : chi = 1
  · subst chi
    have hN : N = 1 := by
      change DirichletCharacter.conductor (1 : DirichletCharacter ℂ N) = N at hprim
      rw [DirichletCharacter.conductor_one] at hprim
      exact hprim.symm
    subst N
    simp only [DirichletCharacter.LFunction_modOne_eq]
    change IsClosed riemannZetaZeros ∧ IsDiscrete riemannZetaZeros
    exact ⟨isClosed_riemannZetaZeros, isDiscrete_riemannZetaZeros⟩
  · have ha : AnalyticOnNhd ℂ (DirichletCharacter.LFunction chi) univ :=
      (DirichletCharacter.differentiable_LFunction hchi).differentiableOn.analyticOnNhd isOpen_univ
    have htwo : DirichletCharacter.LFunction chi (2 : ℂ) ≠ 0 :=
      chi.LFunction_ne_zero_of_one_le_re (.inr (by norm_num)) (by norm_num)
    have hd : {s : ℂ | DirichletCharacter.LFunction chi s = 0}ᶜ ∈ codiscrete ℂ :=
      ha.preimage_zero_mem_codiscrete htwo
    simpa only [compl_compl] using (mem_codiscrete'.mp hd)

/-- Compact zero finiteness is derived for the actual primitive source, including zeta. -/
theorem compact_inter_primitive_LFunction_zeros_finite (chi : DirichletCharacter ℂ N)
    (hprim : chi.IsPrimitive) {K : Set ℂ} (hK : IsCompact K) :
    (K ∩ {s : ℂ | DirichletCharacter.LFunction chi s = 0}).Finite := by
  obtain ⟨hc, hd⟩ := primitive_LFunction_zeros_closed_discrete chi hprim
  apply (hK.inter_right hc).finite
  exact hd.mono Set.inter_subset_right

/-- Bounded absolute height gives a finite set of actual strip zeros.
The argument includes central zeros and both signs of the height. -/
theorem criticalStrip_height_finite (chi : DirichletCharacter ℂ N)
    (hprim : chi.IsPrimitive) (H : ℝ) :
    {rho : CriticalStripZero chi | |rho.1.im| < H}.Finite := by
  have hK := compact_inter_primitive_LFunction_zeros_finite chi hprim
    (isCompact_closedBall (0 : ℂ) (1 + |H|))
  refine Set.Finite.of_injOn (f := fun rho : CriticalStripZero chi => rho.1)
    (t := Metric.closedBall 0 (1 + |H|) ∩
      {s : ℂ | DirichletCharacter.LFunction chi s = 0}) ?_
    Subtype.val_injective.injOn hK
  intro rho hrho
  refine ⟨?_, rho.2.1⟩
  rw [Metric.mem_closedBall, dist_zero_right]
  calc
    ‖rho.1‖ ≤ |rho.1.re| + |rho.1.im| := Complex.norm_le_abs_re_add_abs_im _
    _ ≤ 1 + |H| := add_le_add
      (by rw [abs_of_pos rho.2.2.1]; exact rho.2.2.2.le)
      (hrho.le.trans (le_abs_self H))

/-- Exact finite height window, not a computable enumeration or a numerical certificate. -/
def heightWindow (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive) (H : ℝ) :
    Finset (CriticalStripZero chi) := (criticalStrip_height_finite chi hprim H).toFinset

@[simp]
theorem mem_heightWindow (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive)
    (H : ℝ) (rho : CriticalStripZero chi) :
    rho ∈ heightWindow chi hprim H ↔ |rho.1.im| < H := by
  simp [heightWindow]

/-- The finite sum counts analytic multiplicities, not just distinct locations. -/
def heightCount (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive) (H : ℝ) : ℕ :=
  ∑ rho ∈ heightWindow chi hprim H, zeroMultiplicity chi rho

/-- Distinct-zero cardinality is bounded by the genuine multiplicity count. -/
theorem heightWindow_card_le_heightCount (chi : DirichletCharacter ℂ N)
    (hprim : chi.IsPrimitive) (H : ℝ) :
    (heightWindow chi hprim H).card ≤ heightCount chi hprim H := by
  classical
  calc
    _ = ∑ _rho ∈ heightWindow chi hprim H, (1 : ℕ) := by simp
    _ ≤ _ := Finset.sum_le_sum (fun rho _ => Nat.succ_le_of_lt (zeroMultiplicity_pos chi rho))

/-- Increasing the height never loses multiplicity mass. -/
theorem heightCount_mono (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive) :
    Monotone (heightCount chi hprim) := by
  classical
  intro H K hHK
  unfold heightCount
  apply Finset.sum_le_sum_of_subset_of_nonneg
  · intro rho hrho
    exact (mem_heightWindow chi hprim K rho).mpr
      (((mem_heightWindow chi hprim H rho).mp hrho).trans_le hHK)
  · intro rho _ _
    exact Nat.zero_le _

/-- Every actual zero occurs in a finite window; no finite-check coverage is claimed. -/
theorem heightWindow_exhausts (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive)
    (rho : CriticalStripZero chi) :
    ∃ H : ℝ, 2 ≤ H ∧ rho ∈ heightWindow chi hprim H := by
  refine ⟨|rho.1.im| + 2, by linarith [abs_nonneg rho.1.im], ?_⟩
  rw [mem_heightWindow]
  linarith

/-- Exact correspondence between a bound on the genuine finite count and the
all-finite-subsets premise consumed by the dyadic theorem. It proves no growth bound. -/
theorem heightCount_le_iff (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive)
    (H B : ℝ) :
    (heightCount chi hprim H : ℝ) ≤ B ↔
      ∀ s : Finset (CriticalStripZero chi), (∀ rho ∈ s, |rho.1.im| < H) →
        (∑ rho ∈ s, (zeroMultiplicity chi rho : ℝ)) ≤ B := by
  classical
  constructor
  · intro h s hs
    have hsub : s ⊆ heightWindow chi hprim H :=
      fun rho hrho => (mem_heightWindow chi hprim H rho).mpr (hs rho hrho)
    calc
      _ ≤ ∑ rho ∈ heightWindow chi hprim H, (zeroMultiplicity chi rho : ℝ) :=
        Finset.sum_le_sum_of_subset_of_nonneg hsub (fun rho _ _ => Nat.cast_nonneg _)
      _ = (heightCount chi hprim H : ℝ) := by simp only [heightCount, Nat.cast_sum]
      _ ≤ B := h
  · intro h
    simpa only [heightCount, Nat.cast_sum] using
      h (heightWindow chi hprim H) (fun rho hrho => (mem_heightWindow chi hprim H rho).mp hrho)

/-- Exact return of the zero index and coordinate to the unchanged arithmetic target.
This equivalence proves neither side. -/
theorem criticalStripStatement_iff_zero_coordinates_real (chi : DirichletCharacter ℂ N) :
    criticalStripStatement chi ↔
      ∀ rho : CriticalStripZero chi, (spectralCoordinate rho.1).im = 0 := by
  constructor
  · intro h rho
    exact (spectralCoordinate_im_eq_zero_iff rho.1).mpr
      (h rho.1 rho.2.1 rho.2.2.1 rho.2.2.2)
  · intro h rho hz hl hr
    exact (spectralCoordinate_im_eq_zero_iff rho).mp (h ⟨rho, hz, hl, hr⟩)

end GRWTSK.NumberTheory.WeilNegativeWitness
