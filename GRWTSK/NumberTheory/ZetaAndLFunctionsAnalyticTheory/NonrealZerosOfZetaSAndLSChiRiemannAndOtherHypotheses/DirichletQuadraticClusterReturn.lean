/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib results retain their upstream authorship and licenses. -/
import GRWTSK.FunctionsOfAComplexVariable.QuadraticClusterReality
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.WeilNegativeWitness

set_option autoImplicit false

/-!
# Returning quadratic cluster certificates to Dirichlet L-functions

RP-OC-05, backwards from the critical-strip Dirichlet GRH target. The source
is Mathlib's analytically continued `DirichletCharacter.LFunction`, NOT the
totalized naive L-series. All characters and all radii remain quantified.
No certificate family satisfying the coverage premise is constructed here.
The target explicitly concerns 0 < re(s) < 1. Equivalence with the completed
entire-source formulation, boundary exclusion, conductor normalization and
the general higher-multiplicity chart construction remain separate obligations.
Elaboration, kernel replay, axiom audit and independent review: NOT_RUN.
-/

noncomputable section

namespace GRWTSK.NumberTheory.DirichletQuadraticClusterReturn

open GRWTSK.Analysis.ComplexAnalysis.QuadraticClusterReality
open GRWTSK.NumberTheory.WeilNegativeWitness (spectralCoordinate criticalStripStatement)

-- Reuse the canonical spectral coordinate and open-strip target from RP-OC-02.
-- Their actual LFunction source and domain are not replaced by new predicates.

/-- The inverse affine coordinate, with a fixed sign convention. -/
def arithmeticCoordinate (z : ℂ) : ℂ := (1 / 2 : ℂ) + Complex.I * z

theorem arithmeticCoordinate_spectralCoordinate (s : ℂ) :
    arithmeticCoordinate (spectralCoordinate s) = s := by
  apply Complex.ext <;>
    simp [arithmeticCoordinate, spectralCoordinate, Complex.mul_re, Complex.mul_im] <;> ring

/-- A local certificate refers to the actual arithmetic source through its chart. -/
theorem critical_line_of_source_chart {N : ℕ} [NeZero N]
    (χ : DirichletCharacter ℂ N)
    (C : SourceChart (fun z => DirichletCharacter.LFunction χ (arithmeticCoordinate z)))
    {s : ℂ} (hmem : spectralCoordinate s ∈ C.domain)
    (hd : 0 ≤ C.discriminant) (hzero : DirichletCharacter.LFunction χ s = 0) :
    s.re = 1 / 2 := by
  have hz : DirichletCharacter.LFunction χ
      (arithmeticCoordinate (spectralCoordinate s)) = 0 := by
    simpa only [arithmeticCoordinate_spectralCoordinate] using hzero
  exact (WeilNegativeWitness.spectralCoordinate_im_eq_zero_iff s).mp (C.im_eq_zero_of_zero hd hmem hz)

/-- Exhaustion is universal in the radius. A finite verified window cannot
supply this premise. Positive multiplicity powers remain in each source chart;
general cluster construction and coverage are not established here. -/
theorem critical_strip_of_quadratic_chart_exhaustion {N : ℕ} [NeZero N]
    (χ : DirichletCharacter ℂ N)
    (hcover : ∀ (n : ℕ) (s : ℂ), 0 < s.re → s.re < 1 → ‖s‖ < (n : ℝ) →
      DirichletCharacter.LFunction χ s = 0 →
      ∃ C : SourceChart (fun z => DirichletCharacter.LFunction χ (arithmeticCoordinate z)),
        spectralCoordinate s ∈ C.domain ∧ HermiteNonnegative C.center C.discriminant) :
    criticalStripStatement χ := by
  intro s hz hs0 hs1
  obtain ⟨n, hn⟩ := exists_nat_gt ‖s‖
  obtain ⟨C, hmem, hH⟩ := hcover n s hs0 hs1 hn hz
  exact critical_line_of_source_chart χ C hmem
    ((hermiteNonnegative_iff C.center C.discriminant).mp hH) hz

/-- The exact primitive-Dirichlet critical-strip target of this module.
The conductor-one case is included. No equivalence with every version of GRH
is silently asserted. -/
def PrimitiveDirichletCriticalStripGRH : Prop :=
  ∀ (N : ℕ) [NeZero N] (χ : DirichletCharacter ℂ N), χ.IsPrimitive →
    criticalStripStatement χ

/-- Conditional source-return theorem, not a proof that the certificates exist. -/
theorem primitive_dirichlet_critical_strip_of_quadratic_chart_exhaustion
    (hcover : ∀ (N : ℕ) [NeZero N] (χ : DirichletCharacter ℂ N), χ.IsPrimitive →
      ∀ (n : ℕ) (s : ℂ), 0 < s.re → s.re < 1 → ‖s‖ < (n : ℝ) →
        DirichletCharacter.LFunction χ s = 0 →
        ∃ C : SourceChart (fun z => DirichletCharacter.LFunction χ (arithmeticCoordinate z)),
          spectralCoordinate s ∈ C.domain ∧ HermiteNonnegative C.center C.discriminant) :
    PrimitiveDirichletCriticalStripGRH := by
  intro N hN χ hχ
  exact critical_strip_of_quadratic_chart_exhaustion χ (hcover N χ hχ)

end GRWTSK.NumberTheory.DirichletQuadraticClusterReturn
