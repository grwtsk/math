/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported mathematical sources retain upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceConstantTrial

/-!
# An explicit bound for the actual regulated Wilson logarithm

The actual normalized separation supplies a positive upper bracket for the
second variational value, without assuming that this value is positive.
The existing maximal-domain logarithm theorem then yields the displayed bound
on vectors whose entire principal spectral coordinate vanishes.
The coefficient depends on beta, volume and external positive spacing a.
No scaling family, regulator-uniform physical gap or continuum limit follows.
SOURCE_PROOF_CANDIDATE; compile, fresh replay, axiom and interface NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceExplicitLogGap
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceL2StrictPositivity
open GRWTSK.Geometry.GaugeTheory.WilsonSliceSpectralApproximation
open GRWTSK.Geometry.GaugeTheory.WilsonSlicePositivePrincipal
open GRWTSK.Geometry.GaugeTheory.WilsonSliceConstantTrial
variable (L : ℕ) [NeZero L]

local instance invariantSpace_nontrivial : Nontrivial (gaugeInvariantSpace L) :=
  ⟨⟨constantVector L, 0, constantVector_ne_zero L⟩⟩

theorem separationFactor_bounds (β : ℝ) (hβ : 0 < β) :
    0 < Real.exp (-24 * β * (L : ℝ)^3) ∧
      Real.exp (-24 * β * (L : ℝ)^3) < 1 := by
  have hL : (0 : ℝ) < L := Nat.cast_pos.mpr (Nat.pos_of_ne_zero (NeZero.ne L))
  constructor
  · exact Real.exp_pos _
  · apply Real.exp_lt_one_iff.mpr
    nlinarith [pow_pos hL 3]

/-- A bound on the actual maximal logarithmic domain, not on a surrogate operator. -/
theorem explicit_logarithmic_gap (β : ℝ) (hβ : 0 < β) {a : ℝ} (ha : 0 < a)
    (x : logarithmicDomain L β hβ.le a)
    (hperp : spectralCoordinates L β hβ.le (x : gaugeInvariantSpace L)
      (lambda0 L β hβ.le) = 0) :
    (-Real.log (1 - Real.exp (-24 * β * (L : ℝ)^3)) / a) *
      ‖(x : gaugeInvariantSpace L)‖^2 ≤
        inner ℝ (x : gaugeInvariantSpace L) (logarithmicOperator L β hβ.le a x) := by
  let d : ℝ := Real.exp (-24 * β * (L : ℝ)^3)
  have hd : 0 < d ∧ d < 1 := separationFactor_bounds L β hβ
  have hλ := lambda0_pos L β hβ
  have hone : 0 < 1 - d := sub_pos.mpr hd.2
  have hb : 0 < lambda0 L β hβ.le * (1 - d) := mul_pos hλ hone
  have hsep : lambda0 L β hβ.le * (1 - d) < lambda0 L β hβ.le := by
    nlinarith [mul_pos hλ hd.1]
  have hratio := normalized_difference_explicit L β hβ
  have hbT : lambda1 L β hβ.le ≤ lambda0 L β hβ.le * (1 - d) := by
    have hh : lambda1 L β hβ.le / lambda0 L β hβ.le ≤ 1 - d := by
      change d ≤ 1 - lambda1 L β hβ.le / lambda0 L β hβ.le at hratio
      linarith
    simpa only [mul_comm] using (div_le_iff₀ hλ).mp hh
  have hgap := GRWTSK.Analysis.InnerProductSpace.CompactPositiveLogarithm.logarithm_gap
    (invariantOperator L β hβ.le)
    (GRWTSK.Geometry.GaugeTheory.WilsonSliceCompactOperator.invariantOperator_isCompactOperator L β hβ.le)
    (invariantOperator_isSymmetric L β hβ.le) ha
    (invariantOperator_inner_pos L β hβ) (actualOperator_ne_zero L β hβ)
    hλ hb (le_refl _) hbT hsep x hperp
  have hcancel : lambda0 L β hβ.le / (lambda0 L β hβ.le * (1 - d)) = 1 / (1 - d) := by
    field_simp [hλ.ne', hone.ne']
  have hlog : Real.log (lambda0 L β hβ.le / (lambda0 L β hβ.le * (1 - d))) =
      -Real.log (1 - d) := by
    rw [hcancel, Real.log_div (by norm_num) hone.ne', Real.log_one, zero_sub]
  rw [hlog] at hgap
  exact hgap

end GRWTSK.Geometry.GaugeTheory.WilsonSliceExplicitLogGap
