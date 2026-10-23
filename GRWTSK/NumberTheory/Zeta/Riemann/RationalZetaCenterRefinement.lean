/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.RationalZetaCenterEvaluation

set_option autoImplicit false

/-!
# Rational joint computation encloses the actual zeta value and derivative

Exact coefficient and logarithm-product identities refine the SAME finite
Euler--Maclaurin expressions. The inherited finite source theorem supplies
both complete tails. Final value and slope rounding are proved separately.
No sampled derivative, finite-difference slope, or assumed zeta enclosure is
used. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.RationalZetaCenterEvaluation

open scoped BigOperators
open GRWTSK.Analysis.Complex.RationalRoundedArithmetic
open GRWTSK.Analysis.Complex.IntervalMellinKernel
open GRWTSK.Analysis.Complex.FiniteExponentialEnclosure
open FiniteCubicZetaApproximation FiniteCubicZetaTail

@[simp] theorem embed_sourceExponent (c : QComplex) :
    QComplex.embed (sourceExponent c) = -QComplex.embed c := by
  simp [sourceExponent]

@[simp] theorem cast_cutoffQ (N : ℕ) : (cutoffQ N : ℝ) = cutoff N := by
  simp [cutoffQ, cutoff]

@[simp] theorem embed_sumQ {N : ℕ} (f : Fin N → QComplex) :
    QComplex.embed (sumQ f) = ∑ i, QComplex.embed (f i) := by
  apply Complex.ext <;> simp [sumQ, QComplex.embed]

@[simp] theorem embed_factorQ (N : ℕ) (c : QComplex) :
    QComplex.embed (factorQ N c) = terminalFactor N (QComplex.embed c) := by
  simp [factorQ, terminalFactor, div_eq_mul_inv, mul_comm, mul_left_comm, mul_assoc]

@[simp] theorem embed_factorSlopeQ (N : ℕ) (c : QComplex) :
    QComplex.embed (factorSlopeQ N c) = terminalSlope N (QComplex.embed c) := by
  simp [factorSlopeQ, terminalSlope, div_eq_mul_inv, mul_comm, mul_left_comm, mul_assoc]

/-- Both local values and errors are those of the already maintained power theorem. -/
theorem powerLog_refines (q : ℚ) (c : QComplex)
    (p : GRWTSK.Analysis.Complex.RationalPowerEvaluation.Schedule)
    (hp : GRWTSK.Analysis.Complex.RationalPowerEvaluation.Admissible q (sourceExponent c) p) :
    QComplex.embed (powerLogValue q c p) = FiniteZetaPowerEnclosure.logValue
        (GRWTSK.Analysis.Complex.RationalPowerEvaluation.toSpec q (sourceExponent c) p hp) ∧
      (powerLogError q c p : ℝ) = FiniteZetaPowerEnclosure.logError
        (GRWTSK.Analysis.Complex.RationalPowerEvaluation.toSpec q (sourceExponent c) p hp) := by
  have he := GRWTSK.Analysis.Complex.RationalPowerEvaluation.compute_refines
    q (sourceExponent c) p hp
  have hl : (GRWTSK.Analysis.Complex.RationalPowerEvaluation.toSpec
      q (sourceExponent c) p hp).base.logarithm.center =
      GRWTSK.Analysis.Complex.RationalPowerEvaluation.logCenter q p := rfl
  have hg : (GRWTSK.Analysis.Complex.RationalPowerEvaluation.toSpec
      q (sourceExponent c) p hp).base.logarithm.error =
      GRWTSK.Analysis.Complex.RationalPowerEvaluation.logError q p := rfl
  constructor
  · simp only [powerLogValue, QComplex.embed_smul, Rat.cast_neg, Complex.ofReal_neg,
      FiniteZetaPowerEnclosure.logValue, hl, he.1]
  · simp only [powerLogError, Rat.cast_add, Rat.cast_mul, Rat.cast_abs,
      QComplex.cast_rect, FiniteZetaPowerEnclosure.logError, hl, hg, he.1, he.2]

theorem power_sound (q : ℚ) (c : QComplex)
    (p : GRWTSK.Analysis.Complex.RationalPowerEvaluation.Schedule)
    (hp : GRWTSK.Analysis.Complex.RationalPowerEvaluation.Admissible q (sourceExponent c) p) :
    ‖logPower (q : ℝ) (-QComplex.embed c) -
      QComplex.embed (GRWTSK.Analysis.Complex.RationalPowerEvaluation.compute
        q (sourceExponent c) p).value‖ ≤
      ((GRWTSK.Analysis.Complex.RationalPowerEvaluation.compute q (sourceExponent c) p).error : ℝ) := by
  simpa only [embed_sourceExponent] using
    GRWTSK.Analysis.Complex.RationalPowerEvaluation.compute_sound q (sourceExponent c) p hp

theorem powerLog_sound (q : ℚ) (c : QComplex)
    (p : GRWTSK.Analysis.Complex.RationalPowerEvaluation.Schedule)
    (hp : GRWTSK.Analysis.Complex.RationalPowerEvaluation.Admissible q (sourceExponent c) p) :
    ‖-(Real.log (q : ℝ) : ℂ) * logPower (q : ℝ) (-QComplex.embed c) -
      QComplex.embed (powerLogValue q c p)‖ ≤ (powerLogError q c p : ℝ) := by
  rw [(powerLog_refines q c p hp).1, (powerLog_refines q c p hp).2]
  simpa only [embed_sourceExponent] using FiniteZetaPowerEnclosure.logValue_sound
    (GRWTSK.Analysis.Complex.RationalPowerEvaluation.toSpec q (sourceExponent c) p hp)

/-- No whole-prefix error certificate is supplied: each error is recomputed. -/
theorem finite_sound (N : ℕ) (c : QComplex) (p : Plan N) (hp : Admissible N c p) :
    ‖approximation N (QComplex.embed c) - QComplex.embed (finiteValueQ N c p)‖ ≤
        (finiteValueErrorQ N c p : ℝ) ∧
      ‖approximationSlope N (QComplex.embed c) - QComplex.embed (finiteSlopeQ N c p)‖ ≤
        (finiteSlopeErrorQ N c p : ℝ) := by
  have hv : ‖(∑ i : Fin N, logPower ((i.1 : ℝ) + 1) (-QComplex.embed c)) -
      ∑ i : Fin N, QComplex.embed (GRWTSK.Analysis.Complex.RationalPowerEvaluation.compute
        ((i.1 : ℚ) + 1) (sourceExponent c) (p.prefix i)).value‖ ≤
      ∑ i : Fin N, ((GRWTSK.Analysis.Complex.RationalPowerEvaluation.compute
        ((i.1 : ℚ) + 1) (sourceExponent c) (p.prefix i)).error : ℝ) := by
    rw [← Finset.sum_sub_distrib]
    refine (norm_sum_le _ _).trans (Finset.sum_le_sum ?_)
    intro i _
    simpa only [Rat.cast_add, Rat.cast_natCast, Rat.cast_one] using
      power_sound ((i.1 : ℚ) + 1) c (p.prefix i) (hp.2.2.2.1 i)
  have hd : ‖(∑ i : Fin N, -(Real.log ((i.1 : ℝ) + 1) : ℂ) *
        logPower ((i.1 : ℝ) + 1) (-QComplex.embed c)) -
      ∑ i : Fin N, QComplex.embed (powerLogValue ((i.1 : ℚ) + 1) c (p.prefix i))‖ ≤
      ∑ i : Fin N, (powerLogError ((i.1 : ℚ) + 1) c (p.prefix i) : ℝ) := by
    rw [← Finset.sum_sub_distrib]
    refine (norm_sum_le _ _).trans (Finset.sum_le_sum ?_)
    intro i _
    simpa only [Rat.cast_add, Rat.cast_natCast, Rat.cast_one] using
      powerLog_sound ((i.1 : ℚ) + 1) c (p.prefix i) (hp.2.2.2.1 i)
  have ht := power_sound (cutoffQ N) c p.terminal hp.2.2.2.2
  have hl := powerLog_sound (cutoffQ N) c p.terminal hp.2.2.2.2
  simp only [cast_cutoffQ] at ht hl
  have hH := FiniteZetaPowerEnclosure.PowerPacket.coefficient_error
    (terminalFactor N (QComplex.embed c)) _ _ _ ht
  have hJ := FiniteZetaPowerEnclosure.PowerPacket.coefficient_error
    (terminalSlope N (QComplex.embed c)) _ _ _ ht
  have hL := FiniteZetaPowerEnclosure.PowerPacket.coefficient_error
    (terminalFactor N (QComplex.embed c)) _ _ _ hl
  constructor
  · simp only [finiteValueQ, QComplex.embed_add, embed_sumQ, QComplex.embed_mul,
      embed_factorQ, approximation, finiteValueErrorQ, Rat.cast_add, Rat.cast_sum,
      Rat.cast_mul, QComplex.cast_rect]
    rw [add_sub_add_comm]
    exact (norm_add_le _ _).trans (add_le_add hv hH)
  · simp only [finiteSlopeQ, QComplex.embed_add, embed_sumQ, QComplex.embed_mul,
      embed_factorQ, embed_factorSlopeQ, approximationSlope, finiteSlopeErrorQ,
      Rat.cast_add, Rat.cast_sum, Rat.cast_mul, QComplex.cast_rect]
    rw [add_sub_add_comm, add_sub_add_comm]
    exact (norm_add_le _ _).trans
      (add_le_add hd ((norm_add_le _ _).trans (add_le_add hJ hL)))

/-- The squared guard excludes the actual pole before any raw-zeta theorem is used. -/
theorem center_ne_one (N : ℕ) (c : QComplex) (p : Plan N) (hp : Admissible N c p) :
    QComplex.embed c ≠ 1 := by
  have h : (0 : ℝ) < (QComplex.normSq (QComplex.sub c QComplex.one) : ℝ) := by
    exact_mod_cast hp.2.2.1
  rw [QComplex.cast_normSq, QComplex.embed_sub, QComplex.embed_one] at h
  intro he
  simp [he] at h

/-- Both complete analytic tails and both final rounding operations are internal. -/
theorem compute_sound (N : ℕ) (c : QComplex) (p : Plan N) (hp : Admissible N c p) :
    ‖riemannZeta (QComplex.embed c) - QComplex.embed (compute N c p).value.value‖ ≤
        ((compute N c p).value.error : ℝ) ∧
      ‖deriv riemannZeta (QComplex.embed c) - QComplex.embed (compute N c p).slope.value‖ ≤
        ((compute N c p).slope.error : ℝ) := by
  have hr : (0 : ℝ) < (p.cauchyRadius : ℝ) := by exact_mod_cast hp.1
  have hc : (p.cauchyRadius : ℝ) ≤ (QComplex.embed c).re := by
    change (p.cauchyRadius : ℝ) ≤ (c.re : ℝ)
    exact (Rat.cast_le (K := ℝ)).2 hp.2.1
  have hf := finite_sound N c p hp
  have ha := center_enclosures_of_finite N (QComplex.embed c) (p.cauchyRadius : ℝ)
    hr hc (center_ne_one N c p hp) (QComplex.embed (finiteValueQ N c p))
    (QComplex.embed (finiteSlopeQ N c p)) (finiteValueErrorQ N c p : ℝ)
    (finiteSlopeErrorQ N c p : ℝ) hf.1 hf.2
  constructor
  · apply initialState_sound p.valueBits (finiteValueQ N c p)
      (FiniteNewtonCenter.diskBudgetQ N c 0 + finiteValueErrorQ N c p)
    simpa only [Rat.cast_add, FiniteNewtonCenter.cast_diskBudgetQ, Rat.cast_zero] using ha.1
  · apply initialState_sound p.slopeBits (finiteSlopeQ N c p)
      (FiniteNewtonCenter.diskBudgetQ N c p.cauchyRadius / p.cauchyRadius + finiteSlopeErrorQ N c p)
    simpa only [Rat.cast_add, Rat.cast_div, FiniteNewtonCenter.cast_diskBudgetQ] using ha.2

/-- Acceptance is tied to the actual source at the externally fixed exact center. -/
theorem verify_sound (N : ℕ) (c : QComplex) (p : Plan N)
    (valueTol slopeTol : ℚ) (out : CenterState)
    (hv : verify N c p valueTol slopeTol out = true) :
    (‖riemannZeta (QComplex.embed c) - QComplex.embed out.value.value‖ ≤ (out.value.error : ℝ) ∧
      ‖deriv riemannZeta (QComplex.embed c) - QComplex.embed out.slope.value‖ ≤ (out.slope.error : ℝ)) ∧
      out.value.error ≤ valueTol ∧ out.slope.error ≤ slopeTol := by
  obtain ⟨hg, ht, rfl⟩ := (verify_iff N c p valueTol slopeTol out).mp hv
  exact ⟨compute_sound N c p hg, ht⟩

end GRWTSK.RiemannHypothesis.RationalZetaCenterEvaluation
