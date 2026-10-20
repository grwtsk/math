/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSeventeenBandSeed

set_option autoImplicit false
set_option maxRecDepth 8192

/-!
# Exact same-cutoff overlap at height sixteen

The old and new polynomials use different centers and coefficients. Their actual
finite source is the SAME F8, so its infinite tail cancels before taking norms.
Only the two finite-jet errors and two rounding errors are charged in the seam
bound. This is not equality of the polynomials or an invertible coordinate map.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.SeventeenBandOverlap
open Complex Finset Set
open CenteredMellin
noncomputable section

def seam : Set ℂ := {s | (1/2 : ℝ) ≤ s.re ∧ s.re ≤ 1 ∧ s.im = 16}

/-- Both complete finite/rounding defects are retained; the exact common source cancels. -/
theorem same_cutoff_telescope (s : ℂ) :
    SeventeenBandJet.polynomial s - SixteenBandJet.polynomial s =
      (SeventeenBandJet.polynomial s - SexticPrimitive.finiteModel 8 s) +
      (SexticPrimitive.finiteModel 8 s - SixteenBandJet.polynomial s) := by ring

lemma powerError_eq (i : Fin 8) :
    SeventeenBandJet.powerError i = SixteenBandJet.powerError i := rfl

lemma finite_seam_budget :
    (18*(∑ i : Fin 8, SeventeenBandJet.powerError i)+22*SeventeenBandJet.powerError 7+1/1048576) +
    (17*(∑ i : Fin 8, SixteenBandJet.powerError i)+22*SixteenBandJet.powerError 7+1/1048576) ≤
      (1/16 : ℝ) := by
  simp_rw [powerError_eq]
  norm_num [SixteenBandJet.powerError,SixteenBandJet.logRadius,SixteenBandJet.sampleRadius,
    SixteenBandJet.logCenter,CutoffEightJet.logRadius,CutoffEightJet.sampleRadius,
    CutoffEightJet.logCenter,complexExpTaylorRadius,Fin.sum_univ_succ]

theorem model_distance {s : ℂ} (hs : s ∈ seam) :
    ‖SeventeenBandJet.polynomial s-SixteenBandJet.polynomial s‖ ≤ (1/16 : ℝ) := by
  rcases hs with ⟨hx,hx1,ht⟩
  have h16 : (16 : ℝ) ≤ s.im := ht.ge
  have h16' : s.im ≤ (16 : ℝ) := ht.le
  have h15 : (15 : ℝ) ≤ s.im := by linarith
  have h17 : s.im ≤ (17 : ℝ) := by linarith
  have hnew := SeventeenBandJet.finiteModel_jet_error hx hx1 h16 h17
  have hold := SixteenBandJet.finiteModel_jet_error hx hx1 h15 h16'
  have rn := SeventeenBandJet.polynomial_rounding
    (SeventeenBandJet.band_geometry hx hx1 h16 h17).1
  have ro := SixteenBandJet.polynomial_rounding
    (SixteenBandJet.band_geometry hx hx1 h15 h16').1
  have en : ‖SexticPrimitive.finiteModel 8 s-SeventeenBandJet.polynomial s‖ ≤
      18*(∑ i : Fin 8, SeventeenBandJet.powerError i)+22*SeventeenBandJet.powerError 7+1/1048576 := by
    calc
      _ = ‖(SexticPrimitive.finiteModel 8 s-SeventeenBandJet.sourcePolynomial s)+
          (SeventeenBandJet.sourcePolynomial s-SeventeenBandJet.polynomial s)‖ := by congr 1; ring
      _ ≤ _ := (norm_add_le _ _).trans (add_le_add hnew rn)
  have eo : ‖SexticPrimitive.finiteModel 8 s-SixteenBandJet.polynomial s‖ ≤
      17*(∑ i : Fin 8, SixteenBandJet.powerError i)+22*SixteenBandJet.powerError 7+1/1048576 := by
    calc
      _ = ‖(SexticPrimitive.finiteModel 8 s-SixteenBandJet.sourcePolynomial s)+
          (SixteenBandJet.sourcePolynomial s-SixteenBandJet.polynomial s)‖ := by congr 1; ring
      _ ≤ _ := (norm_add_le _ _).trans (add_le_add hold ro)
  rw [same_cutoff_telescope]
  have en' : ‖SeventeenBandJet.polynomial s-SexticPrimitive.finiteModel 8 s‖ ≤
      18*(∑ i : Fin 8, SeventeenBandJet.powerError i)+22*SeventeenBandJet.powerError 7+1/1048576 := by
    simpa only [norm_sub_rev] using en
  exact ((norm_add_le _ _).trans (add_le_add en' eo)).trans finite_seam_budget

/-- Explicit nonempty overlap, not a vacuous compatibility condition. -/
theorem seam_nonempty : seam.Nonempty := by
  refine ⟨⟨3/4,16⟩, ?_⟩
  norm_num [seam]

/-- The seam lies in both admitted closed bands; both source bounds are available. -/
theorem source_lower_on_seam {s : ℂ} (hs : s ∈ seam) :
    (71/8 : ℝ) ≤ ‖poleNormalizedZeta s‖ := by
  rcases hs with ⟨hx,hx1,ht⟩
  exact SeventeenBandJet.source_norm_lower hx hx1 ht.ge (by linarith)

/-- These paths are literally the same negative-reference path; no new cocycle is assumed. -/
theorem same_deformation (t : ℝ) (s : ℂ) :
    SeventeenBandJet.deformation t s = SixteenBandJet.deformation t s := rfl

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.SeventeenBandOverlap
