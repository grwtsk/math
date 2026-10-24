/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentCorrectedArithmeticGram
import Mathlib.Tactic

set_option autoImplicit false

open MeasureTheory

/-!
# Exact moment kernel of the first three canonical square tents

The prior source constructs a nonzero combination of the actual stage-2,
stage-3 and stage-4 square tents whose positive-half-line ordinary and
reciprocal moments both vanish. The first two columns of this exact
moment matrix have a strictly positive determinant.

Here that determinant is used as a *supplier*, not as an assumption
about a new abstract matrix: for any three coefficients, both moment
equalities force the coefficient vector to be a scalar multiple of the
previously constructed cofactor vector. Conversely every such multiple
has both moments zero. The same characterization is proved for the
actual complex-valued three-tent function using the existing integral
linearity and canonical moment identities.

Thus this THREE-TENT coefficient kernel is a nonzero complex line, not
an injective three-dimensional family of corrected tests. Nothing here
constructs Bombieri's full admissible Weil test class, identifies the
classical Hermitian form with the arithmetic Gram, supplies a density
statement, or proves the Riemann Hypothesis.

SOURCE_DRAFT: Lean elaboration, kernel acceptance, and transitive
axiom audit require a separately authorized pinned toolchain replay.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThreeTentMomentKernelLine

open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentObstruction
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentRankObstruction
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThreeTentMomentCorrection
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentCorrectedArithmeticGram
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentPolarization

/-- Actual ordinary moment evaluated on the first three square-tent
coefficient columns, each at its genuine source stage. -/
noncomputable def ordinaryMomentRow (u : Combination 2) : ℂ :=
  u (0 : Fin 3) * (realOrdinaryMoment 0 : ℂ) +
    u (1 : Fin 3) * (realOrdinaryMoment 1 : ℂ) +
    u (2 : Fin 3) * (realOrdinaryMoment 2 : ℂ)

/-- Actual reciprocal moment, not a scalar multiple of the ordinary row. -/
noncomputable def reciprocalMomentRow (u : Combination 2) : ℂ :=
  u (0 : Fin 3) * (realMultiplicativeMoment 0 : ℂ) +
    u (1 : Fin 3) * (realMultiplicativeMoment 1 : ℂ) +
    u (2 : Fin 3) * (realMultiplicativeMoment 2 : ℂ)

/-- Every scalar multiple of the source cofactor vector cancels the
ordinary moment row. -/
theorem ordinaryMomentRow_cofactor_line (c : ℂ) :
    ordinaryMomentRow (fun i => c * correctedCoordinates i) = 0 := by
  change (c * cofactorZero) * (realOrdinaryMoment 0 : ℂ) +
    (c * cofactorOne) * (realOrdinaryMoment 1 : ℂ) +
    (c * cofactorTwo) * (realOrdinaryMoment 2 : ℂ) = 0
  calc
    _ = c * (cofactorZero * (realOrdinaryMoment 0 : ℂ) +
        cofactorOne * (realOrdinaryMoment 1 : ℂ) +
        cofactorTwo * (realOrdinaryMoment 2 : ℂ)) := by ring
    _ = 0 := by rw [cofactor_ordinary_balance]; ring

/-- The same coefficients cancel the reciprocal moment row. -/
theorem reciprocalMomentRow_cofactor_line (c : ℂ) :
    reciprocalMomentRow (fun i => c * correctedCoordinates i) = 0 := by
  change (c * cofactorZero) * (realMultiplicativeMoment 0 : ℂ) +
    (c * cofactorOne) * (realMultiplicativeMoment 1 : ℂ) +
    (c * cofactorTwo) * (realMultiplicativeMoment 2 : ℂ) = 0
  calc
    _ = c * (cofactorZero * (realMultiplicativeMoment 0 : ℂ) +
        cofactorOne * (realMultiplicativeMoment 1 : ℂ) +
        cofactorTwo * (realMultiplicativeMoment 2 : ℂ)) := by ring
    _ = 0 := by rw [cofactor_multiplicative_balance]; ring

/-- The source-proved two-tent nonzero determinant eliminates two
coefficients once the third is fixed. No moment equation is discarded. -/
theorem coefficient_line_of_two_moments
    (u : Combination 2)
    (hordinary : ordinaryMomentRow u = 0)
    (hreciprocal : reciprocalMomentRow u = 0) :
    ∃ c : ℂ, ∀ i : Fin 3, u i = c * correctedCoordinates i := by
  have hA :
      u (0 : Fin 3) * (realOrdinaryMoment 0 : ℂ) +
        u (1 : Fin 3) * (realOrdinaryMoment 1 : ℂ) +
        u (2 : Fin 3) * (realOrdinaryMoment 2 : ℂ) = 0 := hordinary
  have hB :
      u (0 : Fin 3) * (realMultiplicativeMoment 0 : ℂ) +
        u (1 : Fin 3) * (realMultiplicativeMoment 1 : ℂ) +
        u (2 : Fin 3) * (realMultiplicativeMoment 2 : ℂ) = 0 := hreciprocal
  have hfirst :
      u (0 : Fin 3) * cofactorTwo = u (2 : Fin 3) * cofactorZero := by
    unfold cofactorTwo cofactorZero
    linear_combination
      (realOrdinaryMoment 1 : ℂ) * hB -
        (realMultiplicativeMoment 1 : ℂ) * hA
  have hsecond :
      u (1 : Fin 3) * cofactorTwo = u (2 : Fin 3) * cofactorOne := by
    unfold cofactorTwo cofactorOne
    linear_combination
      (realMultiplicativeMoment 0 : ℂ) * hA -
        (realOrdinaryMoment 0 : ℂ) * hB
  let c : ℂ := u (2 : Fin 3) / cofactorTwo
  have hc0 : u (0 : Fin 3) = c * cofactorZero := by
    dsimp [c]
    calc
      u (0 : Fin 3) =
          (u (0 : Fin 3) * cofactorTwo) / cofactorTwo := by
        field_simp [cofactorTwo_ne_zero]
      _ = (u (2 : Fin 3) * cofactorZero) / cofactorTwo := by rw [hfirst]
      _ = (u (2 : Fin 3) / cofactorTwo) * cofactorZero := by ring
  have hc1 : u (1 : Fin 3) = c * cofactorOne := by
    dsimp [c]
    calc
      u (1 : Fin 3) =
          (u (1 : Fin 3) * cofactorTwo) / cofactorTwo := by
        field_simp [cofactorTwo_ne_zero]
      _ = (u (2 : Fin 3) * cofactorOne) / cofactorTwo := by rw [hsecond]
      _ = (u (2 : Fin 3) / cofactorTwo) * cofactorOne := by ring
  have hc2 : u (2 : Fin 3) = c * cofactorTwo := by
    dsimp [c]
    field_simp [cofactorTwo_ne_zero]
  refine ⟨c, ?_⟩
  intro i
  fin_cases i
  · simpa [correctedCoordinates] using hc0
  · simpa [correctedCoordinates] using hc1
  · simpa [correctedCoordinates] using hc2

/-- Exact algebraic two-moment kernel, not just the constructed
existential witness from the earlier module. -/
theorem momentRows_zero_iff_cofactor_line (u : Combination 2) :
    (ordinaryMomentRow u = 0 ∧ reciprocalMomentRow u = 0) ↔
      ∃ c : ℂ, ∀ i : Fin 3, u i = c * correctedCoordinates i := by
  constructor
  · rintro ⟨hA, hB⟩
    exact coefficient_line_of_two_moments u hA hB
  · rintro ⟨c, hc⟩
    have hu : u = fun i => c * correctedCoordinates i := by
      funext i
      exact hc i
    rw [hu]
    exact ⟨ordinaryMomentRow_cofactor_line c,
      reciprocalMomentRow_cofactor_line c⟩

/-- Physical function built from exactly those three literal square tents. -/
noncomputable def actualThreeTentFunction (u : Combination 2) (x : ℝ) : ℂ :=
  (u (0 : Fin 3) * canonicalTentComplex 0 x +
    u (1 : Fin 3) * canonicalTentComplex 1 x) +
    u (2 : Fin 3) * canonicalTentComplex 2 x

/-- This physical function at the corrected vector is the original
nonzero zero-moment function, definitionally preserving its source. -/
theorem actualThreeTentFunction_corrected (x : ℝ) :
    actualThreeTentFunction correctedCoordinates x = correctedThreeTent x := by
  simpa only [actualThreeTentFunction] using
    (correctedThreeTent_eq_coordinate_realization x).symm

/-- Actual positive-half-line ordinary Lebesgue integral, by imported
integrability of the three original square tents. -/
theorem actualThreeTentFunction_ordinaryMoment_eq (u : Combination 2) :
    bombieriOrdinaryMoment (actualThreeTentFunction u) = ordinaryMomentRow u := by
  have h0 := (canonicalTentComplex_integrableOn 0).const_mul (u (0 : Fin 3))
  have h1 := (canonicalTentComplex_integrableOn 1).const_mul (u (1 : Fin 3))
  have h2 := (canonicalTentComplex_integrableOn 2).const_mul (u (2 : Fin 3))
  unfold bombieriOrdinaryMoment actualThreeTentFunction ordinaryMomentRow
  have hadd := integral_add (h0.add h1) h2
  have hadd01 := integral_add h0 h1
  simp only [Pi.add_apply] at hadd hadd01
  rw [hadd, hadd01]
  rw [integral_const_mul, integral_const_mul, integral_const_mul]
  change u (0 : Fin 3) * bombieriOrdinaryMoment (canonicalTentComplex 0) +
      u (1 : Fin 3) * bombieriOrdinaryMoment (canonicalTentComplex 1) +
      u (2 : Fin 3) * bombieriOrdinaryMoment (canonicalTentComplex 2) = _
  rw [bombieriOrdinaryMoment_canonicalTent_eq 0,
    bombieriOrdinaryMoment_canonicalTent_eq 1,
    bombieriOrdinaryMoment_canonicalTent_eq 2]
  rfl

/-- Actual reciprocal integral, with precisely the original 1/x
denominator and the positive-half-line integration domain. -/
theorem actualThreeTentFunction_reciprocalMoment_eq (u : Combination 2) :
    bombieriMultiplicativeMoment (actualThreeTentFunction u) =
      reciprocalMomentRow u := by
  have h0 := (canonicalTentComplex_div_integrableOn 0).const_mul (u (0 : Fin 3))
  have h1 := (canonicalTentComplex_div_integrableOn 1).const_mul (u (1 : Fin 3))
  have h2 := (canonicalTentComplex_div_integrableOn 2).const_mul (u (2 : Fin 3))
  unfold bombieriMultiplicativeMoment actualThreeTentFunction reciprocalMomentRow
  simp_rw [add_div, mul_div_assoc]
  have hadd := integral_add (h0.add h1) h2
  have hadd01 := integral_add h0 h1
  simp only [Pi.add_apply] at hadd hadd01
  rw [hadd, hadd01]
  rw [integral_const_mul, integral_const_mul, integral_const_mul]
  change u (0 : Fin 3) * bombieriMultiplicativeMoment (canonicalTentComplex 0) +
      u (1 : Fin 3) * bombieriMultiplicativeMoment (canonicalTentComplex 1) +
      u (2 : Fin 3) * bombieriMultiplicativeMoment (canonicalTentComplex 2) = _
  rw [bombieriMultiplicativeMoment_canonicalTent_eq 0,
    bombieriMultiplicativeMoment_canonicalTent_eq 1,
    bombieriMultiplicativeMoment_canonicalTent_eq 2]

/-- Source-faithful characterization: precisely the scalar cofactor line
in the *three-tent coefficient space* satisfies Bombieri's TWO displayed
moment equalities. Full Weil test-class membership is not asserted. -/
theorem physicalTwoMoments_iff_cofactor_line (u : Combination 2) :
    BombieriZeroMomentConditions (actualThreeTentFunction u) ↔
      ∃ c : ℂ, ∀ i : Fin 3, u i = c * correctedCoordinates i := by
  constructor
  · intro h
    apply (momentRows_zero_iff_cofactor_line u).mp
    constructor
    · rw [← actualThreeTentFunction_ordinaryMoment_eq]
      exact h.ordinaryMoment_zero
    · rw [← actualThreeTentFunction_reciprocalMoment_eq]
      exact h.multiplicativeMoment_zero
  · intro h
    obtain ⟨hA, hB⟩ := (momentRows_zero_iff_cofactor_line u).mpr h
    constructor
    · change bombieriMultiplicativeMoment (actualThreeTentFunction u) = 0
      rw [actualThreeTentFunction_reciprocalMoment_eq]
      exact hB
    · change bombieriOrdinaryMoment (actualThreeTentFunction u) = 0
      rw [actualThreeTentFunction_ordinaryMoment_eq]
      exact hA

/-- Any two coefficient vectors obeying both moments inhabit the SAME
complex cofactor line. This is not a density or infinite-test-space theorem. -/
theorem twoMomentVectors_share_line
    (u v : Combination 2)
    (hu : BombieriZeroMomentConditions (actualThreeTentFunction u))
    (hv : BombieriZeroMomentConditions (actualThreeTentFunction v)) :
    ∃ c d : ℂ,
      (∀ i : Fin 3, u i = c * correctedCoordinates i) ∧
      (∀ i : Fin 3, v i = d * correctedCoordinates i) := by
  obtain ⟨c, hc⟩ := (physicalTwoMoments_iff_cofactor_line u).mp hu
  obtain ⟨d, hd⟩ := (physicalTwoMoments_iff_cofactor_line v).mp hv
  exact ⟨c, d, hc, hd⟩

/-- The characterized coefficient line is nontrivial: its generator
was already shown nonzero using the *actual* two-tent source determinant. -/
theorem corrected_generator_nonzero : correctedCoordinates ≠ 0 :=
  correctedCoordinates_ne_zero

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThreeTentMomentKernelLine
