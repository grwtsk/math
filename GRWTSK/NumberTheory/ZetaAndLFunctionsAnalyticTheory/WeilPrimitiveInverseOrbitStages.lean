/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRightStripWitnessReturn
import Mathlib.NumberTheory.MulChar.Lemmas

/-!
# Inverse-character stage coverage on real Weil tests

For a real test its lifted autocorrelation is real at every shift.
Conjugating the Dirichlet coefficient therefore leaves each signed real
prime summand unchanged. The inverse character also has the same gamma
parity and conductor. Hence the very same real test and window have the
same arithmetic value and admissibility for the two characters.

This uses the real-correlation argument of `FrobeniusPhaseSurplus`
(`71090563bb1dba7e4c07f5350d6681b3651285a7`) and the inverse parity
argument of `DirichletWeilIntegrand`
(`441a08d9acef71161fe69fff2ae58967324962c4`), with direct pinned
Mathlib imports. On a complex coefficient and complex correlation the
identity fails in general: taking both to be `I` gives real products
`1` and `-1` in the two orientations.

The consumer is the right-strip return at
`7d64aec18be7ecaa87cbd0bd6d2371a76de04343`. The cofinal-stage theorem
at `0ae31ea65d2251195aab77ebf1e39ca4e5f68a81` can supply the stages for
either member of each inverse pair. The conductor-one RH, right-strip
witness and one stage family per inverse pair are hypotheses.
-/

set_option autoImplicit false
open scoped ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open MeasureTheory CharacterWindow SourcePrimeCorrelation OddRootProjection
open GRWTSK.NumberTheory.Conditional

private theorem inverse_apply {q : ℕ} (χ : DirichletCharacter ℂ q) (x : ZMod q) :
    χ⁻¹ x = conj (χ x) := by
  simpa only [RCLike.star_def] using (MulChar.star_apply' χ x).symm

private theorem inverse_parity {q : ℕ} (χ : DirichletCharacter ℂ q) :
    gammaParity χ⁻¹ = gammaParity χ := by
  classical
  have he : χ⁻¹ (-1) = 1 ↔ χ (-1) = 1 := by
    rw [inverse_apply]
    constructor
    · intro h
      simpa only [map_one, Complex.conj_conj] using congrArg (starRingEnd ℂ) h
    · intro h
      rw [h, map_one]
  simp only [gammaParity, he]

/-- On the original real lift, inverting the character preserves the signed form. -/
theorem primitiveArithmeticValue_inverse_liftReal {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) (hn : χ ≠ 1)
    (hpInv : (χ⁻¹).IsPrimitive) (hnInv : χ⁻¹ ≠ 1)
    (T : ℝ) (f : ℝ → ℝ) (hf : MemLp (liftReal f) 2 volume) :
    primitiveArithmeticValue χ⁻¹ hpInv hnInv T (liftReal f) =
      primitiveArithmeticValue χ hp hn T (liftReal f) := by
  have hreal (r : ℝ) : (correlation (liftReal f) r).im = 0 := by
    have him := integral_im (integrable_correlation_integrand hf r)
    simp only [RCLike.im_to_complex] at him
    unfold correlation
    rw [← him]
    simp [liftReal, Complex.mul_im]
  have hprime : twistedPrime T χ⁻¹ (fun n => correlation (liftReal f) (Real.log (n : ℝ))) =
      twistedPrime T χ (fun n => correlation (liftReal f) (Real.log (n : ℝ))) := by
    unfold twistedPrime
    congr 1
    apply Finset.sum_congr rfl
    intro n _
    rw [inverse_apply]
    simp only [Complex.mul_re, Complex.conj_re, hreal, mul_zero, sub_zero]
  simp only [primitiveArithmeticValue, inverse_parity, hprime]

/-- A stage family for the inverse supplies the original character's stages. -/
theorem smallConductorStages_of_inverse {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) (hn : χ ≠ 1)
    (hpInv : (χ⁻¹).IsPrimitive) (hnInv : χ⁻¹ ≠ 1)
    (hstage : SmallConductorStages χ⁻¹ hpInv hnInv) :
    SmallConductorStages χ hp hn := by
  intro j hconductor f hf
  have hconductorInv : (χ⁻¹).conductor < conductorFrontier (j + 1) := by
    simpa only [DirichletCharacter.conductor_inv] using hconductor
  rcases hf with ⟨hT, hdiff, hcompact, hodd, hLp, hsupport, harch⟩
  have hfInv : Admissible χ⁻¹ ((j : ℝ) + 1) f :=
    ⟨hT, hdiff, hcompact, hodd, hLp, hsupport, by simpa only [inverse_parity] using harch⟩
  rw [← primitiveArithmeticValue_inverse_liftReal χ hp hn hpInv hnInv _ f hLp]
  exact hstage j hconductorInv f hfInv

/-! A left-half zero reflects to a right-half zero of the inverse character.
The inverse witness has the same real lift, gamma parity and arithmetic value.
This recovers the original witness on both halves before applying any stage
lower bounds. At `1 - s` the character is inverted even at non-real character
values; ignoring that change is not justified by the functional equation. -/

/-- Right-half witness coverage supplies exactly the original off-line
witness interface, using the same test on reflection. -/
theorem primitiveNegativeWitness_iff_rightStrip :
    PrimitiveNegativeWitness ↔ PrimitiveRightStripNegativeWitness := by
  constructor
  · intro hw q hq χ hp hn s hs hs1 hz
    exact hw q χ hp hn s (by linarith) hs1 (ne_of_gt hs) hz
  · intro hw q hq χ hp hn s hs0 hs1 hoff hz
    rcases lt_or_gt_of_ne hoff with hleft | hright
    · have hre : (1 - s).re = 1 - s.re := by rw [Complex.sub_re, Complex.one_re]
      have hpInv : (χ⁻¹).IsPrimitive := by
        simpa only [DirichletCharacter.IsPrimitive, DirichletCharacter.conductor_inv] using hp
      have hnInv : χ⁻¹ ≠ 1 := by simpa only [ne_eq, inv_eq_one] using hn
      obtain ⟨T, f, hf, hneg⟩ := hw q χ⁻¹ hpInv hnInv (1 - s)
        (by linarith) (by linarith) (LFunction_zero_at_reflected_inverse χ hp hn hs0 hs1 hz)
      rcases hf with ⟨hT, hdiff, hcompact, hodd, hLp, hsupport, harch⟩
      refine ⟨T, f, ⟨hT, hdiff, hcompact, hodd, hLp, hsupport, ?_⟩, ?_⟩
      · simpa only [inverse_parity] using harch
      · rwa [primitiveArithmeticValue_inverse_liftReal χ hp hn hpInv hnInv T f hLp] at hneg
    · exact hw q χ hp hn s hright hs1 hz

/-- One certified stage family per inverse pair is sufficient for the right-strip return. -/
theorem dirichletGRH_of_rh_rightStrip_and_inverse_orbit_stages
    (hRH : _root_.RiemannHypothesis) (hwitness : PrimitiveRightStripNegativeWitness)
    (horbits : ∀ (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q)
      (hp : χ.IsPrimitive) (hn : χ ≠ 1),
      SmallConductorStages χ hp hn ∨
        SmallConductorStages χ⁻¹
          (by simpa only [DirichletCharacter.IsPrimitive, DirichletCharacter.conductor_inv] using hp)
          (by simpa only [ne_eq, inv_eq_one] using hn)) :
    DirichletGRH := by
  apply dirichletGRH_of_rh_and_rightStrip_witness hRH hwitness
  intro q hq χ hp hn
  rcases horbits q χ hp hn with h | h
  · exact h
  · exact smallConductorStages_of_inverse χ hp hn _ _ h

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
