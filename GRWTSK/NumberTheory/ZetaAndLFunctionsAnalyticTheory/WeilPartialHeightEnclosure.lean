/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveCofinalStageCriterion
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilCorrelationDecay
import Mathlib.Tactic

/-!
# Source-exact enclosures from partial primitive zero heads

MSC2020: 11M06, 11M26, 65G20. A partial head contains actual distinct zeros,
weighted by their actual analytic multiplicities. A certified upper bound for
the complete strict-height count pays for every unlisted multiplicity. The
zeroth-order Fourier envelope bounds this missing head; the existing first-order
height budget bounds the entire infinite complement. Evaluation error is a third,
separate charge. The consumers concern the original primitive arithmetic value
and DirichletCriticalLine, not an auxiliary positive form.

This does not enumerate zeros, verify a floating-point computation, supply the
count upper bound at a chosen height, or establish universal lower certificates.
The arithmetic consumer is for primitive nonprincipal characters; conductor-one
zeta is not silently included. The partial-head estimate itself allows q = 1.

SOURCE_PROOF_CANDIDATE. Elaboration, fresh kernel replay, transitive axiom audit,
and independent mathematical review: NOT_RUN. See the adjacent Markdown record.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set
open scoped BigOperators ContDiff

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open SourcePrimeCorrelation OddRootProjection
open GRWTSK.NumberTheory.Conditional (DirichletCriticalLine)
open GRWTSK.NumberTheory.WeilNegativeWitness
  (CriticalStripZero zeroMultiplicity spectralCoordinate spectralCoordinate_im
    heightWindow heightCount)
open GRWTSK.MeasureAndIntegration.FourierDerivativeDecay
  (derivativeL1Cost decayWeight_sq)

/-- The original signed contour sum on a finite set of actual distinct zeros. -/
def partialHeightContribution {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (f : ℝ → ℂ)
    (S : Finset (CriticalStripZero χ)) : ℝ :=
  (∑ ρ ∈ S, (zeroMultiplicity χ ρ : ℂ) *
    ∫ r : ℝ, correlation f r * Complex.exp ((ρ.1 - 1 / 2) * (r : ℂ))).re

/-- Analytic multiplicity mass, not the number of distinct listed points. -/
def partialHeightMultiplicity {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (S : Finset (CriticalStripZero χ)) : ℕ :=
  ∑ ρ ∈ S, zeroMultiplicity χ ρ

/-- A uniform zeroth-order envelope on the actual open critical strip. -/
def partialHeightUnitBudget (f : ℝ → ℂ) (T : ℝ) : ℝ :=
  Real.exp T * derivativeL1Cost f 0 ^ 2

/-- This charge is used only with source inclusion and a genuine count upper bound. -/
def partialHeightMissingBudget {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (f : ℝ → ℂ) (T : ℝ)
    (S : Finset (CriticalStripZero χ)) (M : ℕ) : ℝ :=
  ((M - partialHeightMultiplicity χ S : ℕ) : ℝ) * partialHeightUnitBudget f T

@[simp] theorem partialHeightContribution_full {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) (f : ℝ → ℂ) (H : ℝ) :
    partialHeightContribution χ f (heightWindow χ hp H) =
      primitiveHeightContribution χ hp f H := rfl

@[simp] theorem partialHeightMultiplicity_full {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) (H : ℝ) :
    partialHeightMultiplicity χ (heightWindow χ hp H) = heightCount χ hp H := rfl

@[simp] theorem partialHeightMissingBudget_full {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) (f : ℝ → ℂ) (T H : ℝ) :
    partialHeightMissingBudget χ f T (heightWindow χ hp H) (heightCount χ hp H) = 0 := by
  simp [partialHeightMissingBudget]

/-- Nat subtraction cannot hide an overfull listed mass under valid source inclusion. -/
theorem partialHeightMultiplicity_le_count_upper {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) (H : ℝ)
    (S : Finset (CriticalStripZero χ)) (M : ℕ)
    (hS : S ⊆ heightWindow χ hp H) (hM : heightCount χ hp H ≤ M) :
    partialHeightMultiplicity χ S ≤ M := by
  classical
  have hsplit : (∑ ρ ∈ heightWindow χ hp H \ S, zeroMultiplicity χ ρ) +
      partialHeightMultiplicity χ S = heightCount χ hp H :=
    Finset.sum_sdiff hS
  omega

/-- The literal correlation weight, with complex locations retained, has a
uniform envelope per unit of missing multiplicity. No critical-line premise. -/
theorem norm_contourWeight_le_partialHeightUnitBudget {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (f : ℝ → ℂ) (T : ℝ) (hT : 0 ≤ T)
    (hf : WeilNegativeWitness.Admissible f) (hs : tsupport f ⊆ Icc (-T) T)
    (ρ : CriticalStripZero χ) :
    ‖∫ r : ℝ, correlation f r * Complex.exp ((ρ.1 - 1 / 2) * (r : ℂ))‖ ≤
      partialHeightUnitBudget f T := by
  have h := norm_fourier_correlation_le_decay f T hf hs 0 (spectralCoordinate ρ.1)
  have hcoord : Complex.I * spectralCoordinate ρ.1 = ρ.1 - 1 / 2 := by
    unfold spectralCoordinate
    calc
      Complex.I * (-Complex.I * (ρ.1 - 1 / 2)) =
          (-(Complex.I * Complex.I)) * (ρ.1 - 1 / 2) := by ring
      _ = ρ.1 - 1 / 2 := by rw [Complex.I_mul_I]; ring
  simp_rw [hcoord] at h
  rw [decayWeight_sq] at h
  simp only [mul_zero, pow_zero, div_one] at h
  have him : |(spectralCoordinate ρ.1).im| ≤ (1 / 2 : ℝ) := by
    rw [spectralCoordinate_im]
    exact abs_le.mpr ⟨by linarith [ρ.2.2.2], by linarith [ρ.2.2.1]⟩
  have he : 2 * T * |(spectralCoordinate ρ.1).im| ≤ T := by
    have hm := mul_le_mul_of_nonneg_left him (show 0 ≤ 2 * T by positivity)
    linarith
  calc
    _ ≤ derivativeL1Cost f 0 ^ 2 * Real.exp (2 * T * |(spectralCoordinate ρ.1).im|) := h
    _ ≤ derivativeL1Cost f 0 ^ 2 * Real.exp T :=
      mul_le_mul_of_nonneg_left (Real.exp_le_exp.mpr he) (sq_nonneg _)
    _ = partialHeightUnitBudget f T := by unfold partialHeightUnitBudget; ring

/-- A partial head is enclosed by charging all omitted analytic multiplicity.
The strict height endpoint is unchanged: zeros at equality belong to the tail. -/
theorem abs_heightContribution_sub_partial_le {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive)
    (f : ℝ → ℂ) (T H : ℝ) (hT : 0 ≤ T)
    (hf : WeilNegativeWitness.Admissible f) (hs : tsupport f ⊆ Icc (-T) T)
    (S : Finset (CriticalStripZero χ)) (M : ℕ)
    (hS : S ⊆ heightWindow χ hp H) (hM : heightCount χ hp H ≤ M) :
    |primitiveHeightContribution χ hp f H - partialHeightContribution χ f S| ≤
      partialHeightMissingBudget χ f T S M := by
  classical
  let W : CriticalStripZero χ → ℂ := fun ρ => (zeroMultiplicity χ ρ : ℂ) *
    ∫ r : ℝ, correlation f r * Complex.exp ((ρ.1 - 1 / 2) * (r : ℂ))
  have hsplit : (∑ ρ ∈ heightWindow χ hp H \ S, W ρ) + ∑ ρ ∈ S, W ρ =
      ∑ ρ ∈ heightWindow χ hp H, W ρ := Finset.sum_sdiff hS
  have he : primitiveHeightContribution χ hp f H - partialHeightContribution χ f S =
      (∑ ρ ∈ heightWindow χ hp H \ S, W ρ).re := by
    have hr := congrArg Complex.re hsplit
    simp only [Complex.add_re] at hr
    change (∑ ρ ∈ heightWindow χ hp H, W ρ).re - (∑ ρ ∈ S, W ρ).re = _
    linarith
  have hmass : (∑ ρ ∈ heightWindow χ hp H \ S, zeroMultiplicity χ ρ) +
      partialHeightMultiplicity χ S = heightCount χ hp H := Finset.sum_sdiff hS
  have hmissing : (∑ ρ ∈ heightWindow χ hp H \ S, zeroMultiplicity χ ρ) ≤
      M - partialHeightMultiplicity χ S := by omega
  have hmissingR : ((∑ ρ ∈ heightWindow χ hp H \ S, zeroMultiplicity χ ρ : ℕ) : ℝ) ≤
      ((M - partialHeightMultiplicity χ S : ℕ) : ℝ) := by exact_mod_cast hmissing
  have hW (ρ : CriticalStripZero χ) :
      ‖W ρ‖ ≤ (zeroMultiplicity χ ρ : ℝ) * partialHeightUnitBudget f T := by
    dsimp only [W]
    rw [norm_mul, Complex.norm_natCast]
    exact mul_le_mul_of_nonneg_left
      (norm_contourWeight_le_partialHeightUnitBudget χ f T hT hf hs ρ) (Nat.cast_nonneg _)
  rw [he]
  calc
    _ ≤ ‖∑ ρ ∈ heightWindow χ hp H \ S, W ρ‖ := Complex.abs_re_le_norm _
    _ ≤ ∑ ρ ∈ heightWindow χ hp H \ S, ‖W ρ‖ := norm_sum_le _ _
    _ ≤ ∑ ρ ∈ heightWindow χ hp H \ S,
          (zeroMultiplicity χ ρ : ℝ) * partialHeightUnitBudget f T :=
      Finset.sum_le_sum (fun ρ _ => hW ρ)
    _ = ((∑ ρ ∈ heightWindow χ hp H \ S, zeroMultiplicity χ ρ : ℕ) : ℝ) *
          partialHeightUnitBudget f T := by simp only [Nat.cast_sum, Finset.sum_mul]
    _ ≤ partialHeightMissingBudget χ f T S M :=
      mul_le_mul_of_nonneg_right hmissingR (by unfold partialHeightUnitBudget; positivity)

private theorem partial_smoothLift_admissible {q : ℕ} [NeZero q]
    {χ : DirichletCharacter ℂ q} {T : ℝ} {f : ℝ → ℝ}
    (hf : Admissible χ T f) (hsmooth : ContDiff ℝ ∞ f) :
    WeilNegativeWitness.Admissible (liftReal f) ∧ tsupport (liftReal f) ⊆ Icc (-T) T := by
  refine ⟨⟨Complex.ofRealCLM.contDiff.comp hsmooth,
    hf.2.2.1.comp_left Complex.ofReal_zero⟩, ?_⟩
  apply closure_minimal _ isClosed_Icc
  intro t ht
  by_contra hout
  exact ht (hf.2.2.2.2.2.1 t hout)

/-- Full-source enclosure: high-height tail plus omitted finite-head mass
plus a validated finite-evaluation error. The latter is an explicit premise. -/
theorem abs_primitiveArithmeticValue_sub_partial_estimate_le
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1)
    {D L : ℝ} (hD : 0 ≤ D) (hL : 0 ≤ L)
    (hcount : ∀ U : ℝ, 2 ≤ U → (heightCount χ hp U : ℝ) ≤ D * U * (Real.log U + L))
    {T H : ℝ} {f : ℝ → ℝ} (hf : Admissible χ T f) (hsmooth : ContDiff ℝ ∞ f)
    (J : ℕ) (hJ : (2 : ℝ) ^ J ≤ 1 + H)
    (S : Finset (CriticalStripZero χ)) (M : ℕ)
    (hS : S ⊆ heightWindow χ hp H) (hM : heightCount χ hp H ≤ M)
    (v r : ℝ) (heval : |partialHeightContribution χ (liftReal f) S - v| ≤ r) :
    |primitiveArithmeticValue χ hp hn T (liftReal f) - v| ≤
      primitiveHeightTailBudget D L (liftReal f) T J +
        partialHeightMissingBudget χ (liftReal f) T S M + r := by
  obtain ⟨hlift, hs⟩ := partial_smoothLift_admissible hf hsmooth
  have htail := abs_primitiveArithmeticValue_sub_heightContribution_le
    χ hp hn hD hL hcount hf hsmooth J hJ
  have hhead := abs_heightContribution_sub_partial_le χ hp (liftReal f) T H
    hf.1.le hlift hs S M hS hM
  have hfirst := (abs_sub_le (primitiveArithmeticValue χ hp hn T (liftReal f))
    (primitiveHeightContribution χ hp (liftReal f) H)
    (partialHeightContribution χ (liftReal f) S)).trans (add_le_add htail hhead)
  exact (abs_sub_le _ (partialHeightContribution χ (liftReal f) S) v).trans
    (add_le_add hfirst heval)

/-- A negative upper enclosure is a genuine obstruction to the original
primitive critical-line assertion, even when the certified head is incomplete. -/
theorem not_criticalLine_of_negative_partial_estimate
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1)
    {D L : ℝ} (hD : 0 ≤ D) (hL : 0 ≤ L)
    (hcount : ∀ U : ℝ, 2 ≤ U → (heightCount χ hp U : ℝ) ≤ D * U * (Real.log U + L))
    {T H : ℝ} {f : ℝ → ℝ} (hf : Admissible χ T f) (hsmooth : ContDiff ℝ ∞ f)
    (J : ℕ) (hJ : (2 : ℝ) ^ J ≤ 1 + H)
    (S : Finset (CriticalStripZero χ)) (M : ℕ)
    (hS : S ⊆ heightWindow χ hp H) (hM : heightCount χ hp H ≤ M)
    (v r : ℝ) (heval : |partialHeightContribution χ (liftReal f) S - v| ≤ r)
    (hnegative : v + (primitiveHeightTailBudget D L (liftReal f) T J +
      partialHeightMissingBudget χ (liftReal f) T S M + r) < 0) :
    ¬ DirichletCriticalLine χ := by
  intro hline
  have hnneg := primitiveArithmeticValue_nonneg_of_criticalLine_smooth χ hp hn hline hf hsmooth
  have herr := abs_primitiveArithmeticValue_sub_partial_estimate_le
    χ hp hn hD hL hcount hf hsmooth J hJ S M hS hM v r heval
  linarith [(abs_le.mp herr).2]

/-- All-test, all-accuracy lower enclosures suffice. This theorem does not
supply them: height, partial head, count ceiling and accuracy may depend on
this very test. No finite list or uniform-in-conductor schedule is inferred. -/
theorem criticalLine_of_partial_lower_enclosures
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1)
    {D L : ℝ} (hD : 0 ≤ D) (hL : 0 ≤ L)
    (hcount : ∀ U : ℝ, 2 ≤ U → (heightCount χ hp U : ℝ) ≤ D * U * (Real.log U + L))
    (certificates : ∀ (T : ℝ) (f : ℝ → ℝ), Admissible χ T f → ContDiff ℝ ∞ f →
      ∀ ε : ℝ, 0 < ε → ∃ (J : ℕ) (H : ℝ) (S : Finset (CriticalStripZero χ))
        (M : ℕ) (v r : ℝ), (2 : ℝ) ^ J ≤ 1 + H ∧ S ⊆ heightWindow χ hp H ∧
        heightCount χ hp H ≤ M ∧ |partialHeightContribution χ (liftReal f) S - v| ≤ r ∧
        -ε ≤ v - (primitiveHeightTailBudget D L (liftReal f) T J +
          partialHeightMissingBudget χ (liftReal f) T S M + r)) :
    DirichletCriticalLine χ := by
  apply (smallConductorStages_iff_criticalLine χ hp hn).mp
  apply (smallConductorStages_iff_finiteHeightBounds χ hp hn hD hL hcount).mpr
  intro T f hf hsmooth ε hε
  obtain ⟨J, H, S, M, v, r, hJ, hS, hM, heval, hlower⟩ :=
    certificates T f hf hsmooth ε hε
  obtain ⟨hlift, hs⟩ := partial_smoothLift_admissible hf hsmooth
  have hhead := abs_heightContribution_sub_partial_le χ hp (liftReal f) T H
    hf.1.le hlift hs S M hS hM
  refine ⟨J, H, hJ, ?_⟩
  linarith [(abs_le.mp hhead).1, (abs_le.mp heval).1]

/-- Allowing incomplete, validated heads with explicit charges changes the
certificate interface, not the original critical-line assertion. The reverse
construction uses the full exact head and exact evaluation, not an algorithm. -/
theorem criticalLine_iff_partial_lower_enclosures
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1)
    {D L : ℝ} (hD : 0 ≤ D) (hL : 0 ≤ L)
    (hcount : ∀ U : ℝ, 2 ≤ U → (heightCount χ hp U : ℝ) ≤ D * U * (Real.log U + L)) :
    DirichletCriticalLine χ ↔
      ∀ (T : ℝ) (f : ℝ → ℝ), Admissible χ T f → ContDiff ℝ ∞ f →
        ∀ ε : ℝ, 0 < ε → ∃ (J : ℕ) (H : ℝ) (S : Finset (CriticalStripZero χ))
          (M : ℕ) (v r : ℝ), (2 : ℝ) ^ J ≤ 1 + H ∧ S ⊆ heightWindow χ hp H ∧
          heightCount χ hp H ≤ M ∧ |partialHeightContribution χ (liftReal f) S - v| ≤ r ∧
          -ε ≤ v - (primitiveHeightTailBudget D L (liftReal f) T J +
            partialHeightMissingBudget χ (liftReal f) T S M + r) := by
  constructor
  · intro hline T f hf hsmooth ε hε
    have hstages := (smallConductorStages_iff_criticalLine χ hp hn).mpr hline
    obtain ⟨J, H, hJ, hbound⟩ :=
      (smallConductorStages_iff_finiteHeightBounds χ hp hn hD hL hcount).mp hstages
        T f hf hsmooth ε hε
    refine ⟨J, H, heightWindow χ hp H, heightCount χ hp H,
      primitiveHeightContribution χ hp (liftReal f) H, 0, hJ,
      (fun _ h => h), le_rfl, ?_, ?_⟩
    · simp
    · simpa only [partialHeightMissingBudget_full, add_zero] using hbound
  · exact criticalLine_of_partial_lower_enclosures χ hp hn hD hL hcount

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
