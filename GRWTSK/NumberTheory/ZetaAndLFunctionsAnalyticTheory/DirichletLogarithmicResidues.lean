/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.FunctionsOfAComplexVariable.LogarithmicPrincipalPart
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletZeroMultiplicity
import Mathlib.Analysis.Complex.CauchyIntegral
import Mathlib.Analysis.SpecialFunctions.Gamma.Deligne
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum

/-!
# Local logarithmic residues of the actual Dirichlet sources

MSC2020: 11M26, 11M41, 30E20. The existing analytic multiplicity is the
coefficient of the logarithmic principal part, both before and after the
actual archimedean completion. Both gamma parities are regular and nonzero
in the open strip; this is proved, not supplied as a source-equivalence field.

Conductor-one completion has two genuine poles, at 0 and 1. Both logarithmic
residues are -1, although the residues of the completed function itself have
opposite signs. Local factorizations are derived from its exact pole-inclusive
formula. Arbitrary continuous complex weights are retained, including weights
that do not vanish at either pole. All statements concern punctured limits;
no totalized value at a pole or zero is used as a residue.

Consumer: the local singular terms needed by the full Weil contour formula.
No contour displacement, horizontal-edge bound, prime-power identity, gamma
integral evaluation, or arithmetic positivity is proved by these local results.
No RH/GRH hypothesis is used or conclusion asserted. SOURCE_PROOF_CANDIDATE:
elaboration, fresh kernel replay, transitive axiom audit and independent review
NOT_RUN. Novelty UNASSESSED. Pinned primary references and individual records
are adjacent. Coordination: math#1801.
-/

set_option autoImplicit false
noncomputable section

open Filter Set
open scoped Topology
open GRWTSK.FunctionsOfAComplexVariable.LogarithmicPrincipalPart

namespace GRWTSK.NumberTheory.WeilNegativeWitness

variable {N : ℕ} [NeZero N]

/-- Both genuine archimedean parity factors are analytic and nonzero when Re(s)>0.
Analyticity is recovered from the entire reciprocal only at a nonzero point. -/
theorem gammaFactor_regular_of_re_pos (chi : DirichletCharacter ℂ N)
    {s : ℂ} (hs : 0 < s.re) :
    AnalyticAt ℂ (DirichletCharacter.gammaFactor chi) s ∧
      DirichletCharacter.gammaFactor chi s ≠ 0 := by
  classical
  have hn : DirichletCharacter.gammaFactor chi s ≠ 0 := by
    unfold DirichletCharacter.gammaFactor
    split_ifs
    · exact Complex.Gammaℝ_ne_zero_of_re_pos hs
    · apply Complex.Gammaℝ_ne_zero_of_re_pos
      simp only [Complex.add_re, Complex.one_re]
      linarith
  have hd : Differentiable ℂ (fun w => (DirichletCharacter.gammaFactor chi w)⁻¹) := by
    by_cases he : chi.Even
    · simpa only [DirichletCharacter.gammaFactor, he, if_true] using
        Complex.differentiable_Gammaℝ_inv
    · simpa only [DirichletCharacter.gammaFactor, he, if_false, Function.comp_def] using
        Complex.differentiable_Gammaℝ_inv.comp (differentiable_id.add_const (1 : ℂ))
  have ha : AnalyticAt ℂ (fun w => (DirichletCharacter.gammaFactor chi w)⁻¹) s :=
    (hd.differentiableOn.analyticOnNhd isOpen_univ) s (mem_univ s)
  refine ⟨?_, hn⟩
  simpa only [inv_inv] using ha.inv (inv_ne_zero hn)

/-- Exact source equality in the right open half-plane, with the gamma divisor
excluded by its proved nonvanishing. This includes every original strip zero. -/
theorem completedLFunction_eq_LFunction_mul_gammaFactor_of_re_pos
    (chi : DirichletCharacter ℂ N) {s : ℂ} (hs : 0 < s.re) :
    DirichletCharacter.completedLFunction chi s =
      DirichletCharacter.LFunction chi s * DirichletCharacter.gammaFactor chi s := by
  have hs0 : s ≠ 0 := by intro h; simp [h] at hs
  exact ((eq_div_iff (gammaFactor_regular_of_re_pos chi hs).2).mp
    (chi.LFunction_eq_completed_div_gammaFactor s (.inl hs0))).symm

/-- The actual completion preserves the original analytic multiplicity at every
indexed zero. No simplicity or critical-line assumption enters this factorization. -/
theorem completedLFunction_zero_factorization (chi : DirichletCharacter ℂ N)
    (rho : CriticalStripZero chi) :
    ∃ g : ℂ → ℂ, AnalyticAt ℂ g rho.1 ∧ g rho.1 ≠ 0 ∧
      ∀ᶠ s in 𝓝 rho.1, DirichletCharacter.completedLFunction chi s =
        (s - rho.1) ^ zeroMultiplicity chi rho * g s := by
  obtain ⟨u, hu, hu0, heq⟩ := zeroMultiplicity_factorization chi rho
  have hgamma := gammaFactor_regular_of_re_pos chi rho.2.2.1
  refine ⟨fun s => u s * DirichletCharacter.gammaFactor chi s,
    hu.mul hgamma.1, mul_ne_zero hu0 hgamma.2, ?_⟩
  have hpos : ∀ᶠ s : ℂ in 𝓝 rho.1, 0 < s.re :=
    (Complex.continuous_re.tendsto rho.1).eventually (eventually_gt_nhds rho.2.2.1)
  filter_upwards [heq, hpos] with s hs hsr
  rw [completedLFunction_eq_LFunction_mul_gammaFactor_of_re_pos chi hsr, hs]
  ring

/-- Original L'/L has principal coefficient equal to the existing analytic order. -/
theorem LFunction_logDeriv_principal_part (chi : DirichletCharacter ℂ N)
    (rho : CriticalStripZero chi) :
    ∃ R : ℂ → ℂ, AnalyticAt ℂ R rho.1 ∧
      logDeriv (DirichletCharacter.LFunction chi) =ᶠ[𝓝[≠] rho.1]
        fun s => (zeroMultiplicity chi rho : ℂ) / (s - rho.1) + R s := by
  obtain ⟨g, hg, hg0, heq⟩ := zeroMultiplicity_factorization chi rho
  have heq' : DirichletCharacter.LFunction chi =ᶠ[𝓝[≠] rho.1]
      fun s => (s - rho.1) ^ (zeroMultiplicity chi rho : ℤ) * g s := by
    simpa only [zpow_natCast] using heq.filter_mono nhdsWithin_le_nhds
  simpa only [Int.cast_natCast] using
    exists_analytic_remainder (zeroMultiplicity chi rho : ℤ) hg hg0 heq'

/-- Completion has the same local coefficient, with an analytic regular remainder. -/
theorem completedLFunction_logDeriv_principal_part (chi : DirichletCharacter ℂ N)
    (rho : CriticalStripZero chi) :
    ∃ R : ℂ → ℂ, AnalyticAt ℂ R rho.1 ∧
      logDeriv (DirichletCharacter.completedLFunction chi) =ᶠ[𝓝[≠] rho.1]
        fun s => (zeroMultiplicity chi rho : ℂ) / (s - rho.1) + R s := by
  obtain ⟨g, hg, hg0, heq⟩ := completedLFunction_zero_factorization chi rho
  have heq' : DirichletCharacter.completedLFunction chi =ᶠ[𝓝[≠] rho.1]
      fun s => (s - rho.1) ^ (zeroMultiplicity chi rho : ℤ) * g s := by
    simpa only [zpow_natCast] using heq.filter_mono nhdsWithin_le_nhds
  simpa only [Int.cast_natCast] using
    exists_analytic_remainder (zeroMultiplicity chi rho : ℤ) hg hg0 heq'

/-- Every continuous complex weight evaluates at the full original zero location. -/
theorem LFunction_weighted_logDeriv_at_zero (chi : DirichletCharacter ℂ N)
    (rho : CriticalStripZero chi) (W : ℂ → ℂ) (hW : ContinuousAt W rho.1) :
    Tendsto (fun s => (s - rho.1) * (W s * logDeriv (DirichletCharacter.LFunction chi) s))
      (𝓝[≠] rho.1) (𝓝 ((zeroMultiplicity chi rho : ℂ) * W rho.1)) := by
  obtain ⟨g, hg, hg0, heq⟩ := zeroMultiplicity_factorization chi rho
  have heq' : DirichletCharacter.LFunction chi =ᶠ[𝓝[≠] rho.1]
      fun s => (s - rho.1) ^ (zeroMultiplicity chi rho : ℤ) * g s := by
    simpa only [zpow_natCast] using heq.filter_mono nhdsWithin_le_nhds
  simpa only [Int.cast_natCast] using
    tendsto_mul_weighted_logDeriv (zeroMultiplicity chi rho : ℤ) hg hg0 heq' hW

/-- The completed-source contour weight has the same genuine zero coefficient. -/
theorem completedLFunction_weighted_logDeriv_at_zero (chi : DirichletCharacter ℂ N)
    (rho : CriticalStripZero chi) (W : ℂ → ℂ) (hW : ContinuousAt W rho.1) :
    Tendsto (fun s => (s - rho.1) *
        (W s * logDeriv (DirichletCharacter.completedLFunction chi) s))
      (𝓝[≠] rho.1) (𝓝 ((zeroMultiplicity chi rho : ℂ) * W rho.1)) := by
  obtain ⟨g, hg, hg0, heq⟩ := completedLFunction_zero_factorization chi rho
  have heq' : DirichletCharacter.completedLFunction chi =ᶠ[𝓝[≠] rho.1]
      fun s => (s - rho.1) ^ (zeroMultiplicity chi rho : ℤ) * g s := by
    simpa only [zpow_natCast] using heq.filter_mono nhdsWithin_le_nhds
  simpa only [Int.cast_natCast] using
    tendsto_mul_weighted_logDeriv (zeroMultiplicity chi rho : ℤ) hg hg0 heq' hW

/-- At 0, the exact completed zeta source has order -1 and leading factor -1.
The second polar orientation remains in the analytic unit; it is not discarded. -/
theorem completedZeta_factorization_at_zero :
    ∃ g : ℂ → ℂ, AnalyticAt ℂ g 0 ∧ g 0 = -1 ∧
      completedRiemannZeta =ᶠ[𝓝[≠] (0 : ℂ)] fun s => (s - 0) ^ (-1 : ℤ) * g s := by
  let g : ℂ → ℂ := fun s => s * completedRiemannZeta₀ s - 1 - s / (1 - s)
  have hA : AnalyticAt ℂ completedRiemannZeta₀ 0 :=
    (differentiable_completedZeta₀.differentiableOn.analyticOnNhd isOpen_univ) 0 (mem_univ 0)
  refine ⟨g, ?_, by simp [g], ?_⟩
  · exact ((analyticAt_id.mul hA).sub analyticAt_const).sub
      (analyticAt_id.div (analyticAt_const.sub analyticAt_id) (by norm_num))
  · have hn1 : ∀ᶠ s : ℂ in 𝓝 (0 : ℂ), s ≠ 1 :=
      isOpen_compl_singleton.mem_nhds (by norm_num : (0 : ℂ) ∈ ({1}ᶜ : Set ℂ))
    filter_upwards [self_mem_nhdsWithin, hn1.filter_mono nhdsWithin_le_nhds] with s hs0 hs1
    rw [completedRiemannZeta_eq]
    dsimp [g]
    simp only [sub_zero, zpow_neg_one]
    field_simp [hs0, sub_ne_zero.mpr hs1.symm]
    <;> ring

/-- At 1, the exact completed zeta source has order -1 and leading factor +1. -/
theorem completedZeta_factorization_at_one :
    ∃ g : ℂ → ℂ, AnalyticAt ℂ g 1 ∧ g 1 = 1 ∧
      completedRiemannZeta =ᶠ[𝓝[≠] (1 : ℂ)] fun s => (s - 1) ^ (-1 : ℤ) * g s := by
  let g : ℂ → ℂ := fun s => (s - 1) * completedRiemannZeta₀ s - (s - 1) / s + 1
  have hA : AnalyticAt ℂ completedRiemannZeta₀ 1 :=
    (differentiable_completedZeta₀.differentiableOn.analyticOnNhd isOpen_univ) 1 (mem_univ 1)
  refine ⟨g, ?_, by simp [g], ?_⟩
  · exact (((analyticAt_id.sub analyticAt_const).mul hA).sub
      ((analyticAt_id.sub analyticAt_const).div analyticAt_id (by norm_num))).add analyticAt_const
  · have hn0 : ∀ᶠ s : ℂ in 𝓝 (1 : ℂ), s ≠ 0 :=
      isOpen_compl_singleton.mem_nhds (by norm_num : (1 : ℂ) ∈ ({0}ᶜ : Set ℂ))
    filter_upwards [self_mem_nhdsWithin, hn0.filter_mono nhdsWithin_le_nhds] with s hs1 hs0
    rw [completedRiemannZeta_eq]
    dsimp [g]
    rw [zpow_neg_one]
    field_simp [hs0, sub_ne_zero.mpr hs1, sub_ne_zero.mpr hs1.symm]
    <;> ring

/-- The logarithmic pole coefficient at 0 is -W(0), despite residue -1 of Lambda itself. -/
theorem completedZeta_weighted_logDeriv_at_zero (W : ℂ → ℂ) (hW : ContinuousAt W 0) :
    Tendsto (fun s => s * (W s * logDeriv completedRiemannZeta s))
      (𝓝[≠] (0 : ℂ)) (𝓝 (-W 0)) := by
  obtain ⟨g, hg, hg0, heq⟩ := completedZeta_factorization_at_zero
  have hn : g 0 ≠ 0 := by rw [hg0]; norm_num
  simpa using tendsto_mul_weighted_logDeriv (-1) hg hn heq hW

/-- The other logarithmic pole coefficient is also -W(1), not +W(1). -/
theorem completedZeta_weighted_logDeriv_at_one (W : ℂ → ℂ) (hW : ContinuousAt W 1) :
    Tendsto (fun s => (s - 1) * (W s * logDeriv completedRiemannZeta s))
      (𝓝[≠] (1 : ℂ)) (𝓝 (-W 1)) := by
  obtain ⟨g, hg, hg1, heq⟩ := completedZeta_factorization_at_one
  have hn : g 1 ≠ 0 := by rw [hg1]; norm_num
  simpa using tendsto_mul_weighted_logDeriv (-1) hg hn heq hW

/-- Explicit conductor-one zero application, retaining the original indexed multiplicity. -/
theorem completedZeta_weighted_logDeriv_at_strip_zero
    (rho : CriticalStripZero (1 : DirichletCharacter ℂ 1))
    (W : ℂ → ℂ) (hW : ContinuousAt W rho.1) :
    Tendsto (fun s => (s - rho.1) * (W s * logDeriv completedRiemannZeta s))
      (𝓝[≠] rho.1)
      (𝓝 ((zeroMultiplicity (1 : DirichletCharacter ℂ 1) rho : ℂ) * W rho.1)) := by
  simpa only [DirichletCharacter.completedLFunction_modOne_eq] using
    completedLFunction_weighted_logDeriv_at_zero (1 : DirichletCharacter ℂ 1) rho W hW

/-- Both exponential pole orientations for every real r. This is the local
kernel calculation underlying the two pole terms, not the global Weil identity. -/
theorem completedZeta_two_oriented_exponential_limits (r : ℝ) :
    Tendsto (fun s : ℂ => s *
        (Complex.exp ((s - 1 / 2) * (r : ℂ)) * logDeriv completedRiemannZeta s))
      (𝓝[≠] (0 : ℂ)) (𝓝 (-Complex.exp (-(r : ℂ) / 2))) ∧
    Tendsto (fun s : ℂ => (s - 1) *
        (Complex.exp ((s - 1 / 2) * (r : ℂ)) * logDeriv completedRiemannZeta s))
      (𝓝[≠] (1 : ℂ)) (𝓝 (-Complex.exp ((r : ℂ) / 2))) := by
  constructor
  · simpa only [show ((0 : ℂ) - 1 / 2) * (r : ℂ) = -(r : ℂ) / 2 by ring] using
      completedZeta_weighted_logDeriv_at_zero
        (fun s => Complex.exp ((s - 1 / 2) * (r : ℂ))) (by fun_prop)
  · simpa only [show ((1 : ℂ) - 1 / 2) * (r : ℂ) = (r : ℂ) / 2 by ring] using
      completedZeta_weighted_logDeriv_at_one
        (fun s => Complex.exp ((s - 1 / 2) * (r : ℂ))) (by fun_prop)

end GRWTSK.NumberTheory.WeilNegativeWitness
