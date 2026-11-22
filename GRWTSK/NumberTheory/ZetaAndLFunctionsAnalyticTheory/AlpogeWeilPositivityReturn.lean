/-
Copyright (c) 2026 grwtsk contributors.
SPDX-License-Identifier: Apache-2.0
Authors: grwtsk contributors (adaptation).
Portions adapted from Kuberwastaken/riemann RiemannFormal/Criterion.lean
under Apache License 2.0; see source pin and attribution below.

Source adaptation and mathematical provenance:
  Kuberwastaken/riemann@94fa51e8f26794ef2d206c6c12e7adb4d85cbeaf
  formal/RiemannFormal/Criterion.lean
  Git blob 47aa70097604b71a1bafa236a3dd1af40e7ff87c (Apache-2.0).
  Underlying explicit formula: anthropics/zeta-23-lean, reused through
  the isolated grwtsk/math WeilZetaExplicitFormula adaptation.
  Original RH proof: Alpoge, mirror tamnd/riemann-lean
  @af705e0d9a5904326eb0693310e36d9484df7f8f (Lean v4.33.1).
This source *depends on* an explicit parameter hRH of the original
Mathlib RiemannHypothesis and does NOT import Alpoge/Main into the
incompatible grwtsk/math Lean v4.34.1 root environment.
Full source elaboration, kernel replay and transitive axioms: NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilZetaOddCriterion
import Zeta23.ZeroSide

/-!
# The actual Weil arithmetic form is positive under Alpoge's RH theorem

This bridge states a source-faithful, not an independent, consequence of RH.
The LHS is the ORIGINAL zero-independent Zeta23 literatureRHS, containing
its complete prime-power/pole/archimedean contributions. The crucial
identity is the original explicit formula for autocorrelations, *not*
positivity of a surrogate graph or of each arithmetic term separately.

The second theorem supplies the grwtsk/math literal real odd energy,
which the repository has already identified with its actual signed
prime/gamma/pole expression. The third theorem transports positivity
through any smoothing map preserving C² and compact support; Gaussian
heat itself is NOT covered without a separate cutoff/limit theorem.

Under the external Alpoge Lean theorem, hRH is available in its original
v4.33.1 build. An actual cross-edition port / isolated combined replay is
required before any of these declarations can be called Lean-verified.
-/

set_option autoImplicit false
noncomputable section
open Zeta23 MeasureTheory Complex Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.AlpogeWeilPositivityReturn

open GRWTSK.NumberTheory.WeilQuadraticForm.RealWeilSource

/-- Complete zeta Weil positivity for ALL complex C² compactly-supported
tests, using the original signed literature-form arithmetic source. -/
def FullWeilPositive : Prop :=
  ∀ f : ℝ → ℂ, ContDiff ℝ 2 f → HasCompactSupport f →
    0 ≤ (Zeta23.EF.literatureRHS (Zeta23.EF.weilTest f f)).re

/-- The mathematical substance of the RH -> Weil PSD direction.
No proposed Hilbert-Pólya operator and no pre-assumed source positivity.
This proof follows the source-pinned criterion proof's Fourier/multiplicity
identity and the exact Zeta23 literature-form explicit formula. -/
theorem full_weil_positive_of_riemannHypothesis
    (hRH : _root_.RiemannHypothesis) : FullWeilPositive := by
  intro f hf hfs
  have hk2 : ContDiff ℝ 2 (Zeta23.EF.weilTest f f) :=
    Zeta23.EF.weilTest_contDiff hf hf.continuous hfs
  have hkc : HasCompactSupport (Zeta23.EF.weilTest f f) :=
    Zeta23.EF.weilTest_hasCompactSupport hfs hfs
  obtain ⟨hSum, hEq⟩ :=
    Zeta23.WeilEF.EF_lit_zetaZeroConfig (Zeta23.EF.weilTest f f) hk2 hkc
  have hterm : ∀ ρ : zetaZeroConfig.carrier,
      (zetaZeroConfig.mult ρ : ℂ) *
          paperFT (Zeta23.EF.weilTest f f) (gammaOf ρ) =
      (((zetaZeroConfig.mult ρ : ℝ) *
          Complex.normSq (paperFT f (gammaOf ρ)) : ℝ) : ℂ) := by
    intro ρ
    have hz : IsNontrivialZero (ρ : ℂ) := ρ.2
    have hre : (ρ : ℂ).re = 1 / 2 :=
      Zeta23.RH_implies_on_line hRH hz
    have hγ : gammaOf (ρ : ℂ) = ((ρ : ℂ).im : ℂ) :=
      Zeta23.ZeroSide.gammaOf_of_re_eq_half hre
    have hconj : (starRingEnd ℂ) (gammaOf (ρ : ℂ)) =
        gammaOf (ρ : ℂ) := by
      rw [hγ, Complex.conj_ofReal]
    rw [Zeta23.EF.paperFT_weilTest hf.continuous hf.continuous hfs hfs,
      hconj, Complex.mul_conj]
    push_cast
    ring
  have hnonneg : ∀ ρ : zetaZeroConfig.carrier,
      0 ≤ ((zetaZeroConfig.mult ρ : ℂ) *
        paperFT (Zeta23.EF.weilTest f f) (gammaOf ρ)).re := by
    intro ρ
    rw [hterm ρ, Complex.ofReal_re]
    exact mul_nonneg (Nat.cast_nonneg _) (Complex.normSq_nonneg _)
  rw [← hEq, Complex.re_tsum hSum]
  exact tsum_nonneg hnonneg

/-- Exact all-window positivity of grwtsk/math's literal signed odd form.
This is the direct Alpoge -> (local RH -> local Weil criterion) implication. -/
theorem odd_literal_weil_positive_of_riemannHypothesis
    (hRH : _root_.RiemannHypothesis)
    {T : ℝ} {f : ℝ → ℝ} (hT : 0 < T)
    (hf : ContDiff ℝ 2 f) (hfc : HasCompactSupport f)
    (hOdd : Function.Odd f)
    (hs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0) :
    0 ≤ OddLiteralWindow.shiftedOddWeilEnergy T 0 f :=
  (riemannHypothesis_iff_literal_odd_nonneg.mp hRH) hT hf hfc hOdd hs

/-- The literal real odd positivity is equivalent to the ORIGINAL Mathlib
RiemannHypothesis. Consequently importing Alpoge's theorem does not
constitute an independent proof of this implication back to RH. -/
theorem odd_literal_positive_iff_riemannHypothesis :
    (∀ {T : ℝ} {f : ℝ → ℝ}, 0 < T →
        ContDiff ℝ 2 f → HasCompactSupport f → Function.Odd f →
        (∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0) →
        0 ≤ OddLiteralWindow.shiftedOddWeilEnergy T 0 f) ↔
      _root_.RiemannHypothesis :=
  riemannHypothesis_iff_literal_odd_nonneg.symm

/-- A certified negative complete arithmetic Weil source contradicts RH.
This is a genuine falsifier, not a finite-grid estimate or a new proof
that such a negative source exists. -/
theorem negative_full_weil_source_implies_not_riemannHypothesis
    (f : ℝ → ℂ) (hf : ContDiff ℝ 2 f) (hfc : HasCompactSupport f)
    (hnegative : (Zeta23.EF.literatureRHS
       (Zeta23.EF.weilTest f f)).re < 0) :
    ¬ _root_.RiemannHypothesis := by
  intro hRH
  have hpos := full_weil_positive_of_riemannHypothesis hRH f hf hfc
  exact (not_lt_of_ge hpos) hnegative

/-- Source positivity survives any diffusion/cutoff map that preserves
the ACTUAL smooth compact test domain. Pure Gaussian heat is not
compact-support preserving and needs a separate limiting argument. -/
theorem full_weil_positive_after_admissible_diffusion
    (hRH : _root_.RiemannHypothesis)
    (D : (ℝ → ℂ) → (ℝ → ℂ))
    (hD : ∀ f : ℝ → ℂ, ContDiff ℝ 2 f → HasCompactSupport f →
      ContDiff ℝ 2 (D f) ∧ HasCompactSupport (D f))
    (f : ℝ → ℂ) (hf : ContDiff ℝ 2 f)
    (hfc : HasCompactSupport f) :
    0 ≤ (Zeta23.EF.literatureRHS
      (Zeta23.EF.weilTest (D f) (D f))).re := by
  obtain ⟨hdiff, hcompact⟩ := hD f hf hfc
  exact full_weil_positive_of_riemannHypothesis hRH (D f)
    hdiff hcompact

end GRWTSK.NumberTheory.WeilQuadraticForm.AlpogeWeilPositivityReturn
