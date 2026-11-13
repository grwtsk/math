/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineParseval
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddHighComplement
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.WeilAdaptiveAllModeGrowth
import Mathlib.Tactic

/-!
# Negative physical tests return to an actual finite Weil sine matrix

The previous adaptive all-mode source assumed a matrix-level negative
witness. Here the source is an ORIGINAL real odd physical Weil test f.
The first theorem consumes the existing exact odd-sine Parseval identity to
obtain the finite Bessel norm bound for the LITERAL sineCoordinates T M f.
There is no assumed arbitrary matrix basis or artificially normalized trial.

The second bridge consumes one still-unformalized analytical input: the
source-specific epsilon-accurate return of the physical value Q_T(f) to
quadratic (A T M) (sineCoordinates T M f) for a sufficiently large M.
The attached mathematical source derives this input for smooth supported
odd f from sine H1 density, fixed-window full Weil H1 continuity and finite
source-matrix identity. This Lean file DOES NOT claim those analytic facts
are kernel checked.

Both physical sources are represented explicitly: zeta uses the old exact
shiftedOddCoreEnergy with the NEGATIVE odd pole, and the primitive
nonprincipal character uses the original gamma, conductor, parity and
full native pairedPrimeWeight inventory. The project predicates
RiemannHypothesis, DirichletCriticalLine and DirichletGRH are unchanged.

The root-to-negative-physical-source construction and the all-mode
subexponential arithmetic floor remain separately unproved hypotheses.
No RH/Dirichlet GRH conclusion is asserted without them.
Source status: manual Lean SOURCE_PROOF_CANDIDATE; elaboration, kernel check,
transitive axiom audit and independent mathematical review NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.PhysicalSineNegativeReturn

open GRWTSK.NumberTheory.WeilQuadraticForm.OddRootProjection
open GRWTSK.NumberTheory.WeilQuadraticForm.OddSineParseval
open GRWTSK.NumberTheory.WeilQuadraticForm.AdaptiveSineGrowth
open GRWTSK.NumberTheory.Conditional
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates

/-- This is a Bessel inequality for the actual zero-extended source sine
coefficients. The imported theorem is Parseval on the full real odd L2
carrier, not positivity of a Weil form. -/
theorem source_sine_bessel
    (T : ℝ) (hT : 0 < T) (f : ℝ → ℝ)
    (hf : MemLp f 2 volume) (hodd : Function.Odd f)
    (hsupport : ∀ t, t ∉ Icc (-T) T → f t = 0) (M : ℕ) :
    (∑ i : Fin M, (sineCoordinates T M f i) ^ 2) ≤
      ∫ t : ℝ, ‖f t‖ ^ 2 := by
  have h := hasSum_source_sineCoefficient_sq T hT hf hodd hsupport
  have hfin :
      (∑ n ∈ Finset.range M, sineCoefficient T f (n + 1) ^ 2) ≤
        ∑' n : ℕ, sineCoefficient T f (n + 1) ^ 2 :=
    h.summable.le_tsum (Finset.range M) (fun n _ => sq_nonneg _)
  rw [h.tsum_eq] at hfin
  simpa only [sineCoordinates_eq_sineCoefficient,
    Fin.sum_univ_eq_sum_range] using hfin

/-- Literal physical odd zeta source, including the negative signed pole.
No pole cancellation or periodized surrogate is introduced. -/
def zetaOddPhysicalValue (T : ℝ) (f : ℝ → ℝ) : ℝ :=
  GRWTSK.NumberTheory.WeilQuadraticForm.OddHighComplement.shiftedOddCoreEnergy
    T 0 f -
    2 * (∫ t : ℝ, f t * Real.sinh (t / 2)) ^ 2

/-- Full real conjugate-pair primitive nonprincipal source, retaining
character-dependent prime-power weights, actual conductor and gamma parity.
Both orientations of every prime translation are explicitly present. -/
def primitivePairedOddPhysicalValue {q : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q) (_hp : chi.IsPrimitive)
    (_hn : chi ≠ 1) (T : ℝ) (f : ℝ → ℝ) : ℝ :=
  gammaConstant q (gammaParity chi) * (∫ t : ℝ, (f t) ^ 2) +
    (∫ r in Ioi (0 : ℝ), parityKernel (gammaParity chi) r *
      (∫ t : ℝ, (f (t + r) - f t) ^ 2)) -
    (∑ n ∈ activePrimePowers T, pairedPrimeWeight chi n *
      ((∫ t : ℝ, f t * f (t + Real.log (n : ℝ))) +
       (∫ t : ℝ, f t * f (t - Real.log (n : ℝ)))))

/-- One exact analytical proposition still required to return the physical
value to the ORIGINAL finite sine matrix at fixed support. It demands the
literal sine coordinates and arbitrary positive error; it does not assume
a favorable eigenspace or matrix positivity. -/
def NativeProjectedEnergyUpper (A : AllModeSineFamily)
    (sourceValue : ℝ → (ℝ → ℝ) → ℝ)
    (T : ℝ) (f : ℝ → ℝ) : Prop :=
  ∀ epsilon : ℝ, 0 < epsilon →
    ∃ M : ℕ,
      quadratic (A T M) (sineCoordinates T M f) ≤
        sourceValue T f + epsilon

/-- A negative compact supported physical source test at every sufficiently
large support, with a common L2 mass K. The projection return is charged
separately and permits a different cutoff M for each source test. -/
def NegativePhysicalSourceFamily (A : AllModeSineFamily)
    (sourceValue : ℝ → (ℝ → ℝ) → ℝ)
    (T : ℕ → ℝ) (a c K : ℝ) : Prop :=
  ∃ J : ℕ, ∀ j : ℕ, J ≤ j →
    ∃ f : ℝ → ℝ,
      0 < T j ∧
      MemLp f 2 volume ∧
      Function.Odd f ∧
      (∀ t, t ∉ Icc (-(T j)) (T j) → f t = 0) ∧
      (∫ t : ℝ, ‖f t‖ ^ 2) ≤ K ∧
      sourceValue (T j) f ≤ -(2 * c * Real.exp (a * T j)) ∧
      NativeProjectedEnergyUpper A sourceValue (T j) f

/-- A raw negative matrix witness retains its finite coefficient norm
instead of taking an unnecessary square root to normalize it. -/
def BoundedRawSineWitness (A : AllModeSineFamily)
    (T : ℕ → ℝ) (a c K : ℝ) : Prop :=
  ∃ J : ℕ, ∀ j : ℕ, J ≤ j →
    ∃ (M : ℕ) (x : Fin M → ℝ),
      (∑ i : Fin M, x i ^ 2) ≤ K ∧
      quadratic (A (T j) M) x ≤ -(c * Real.exp (a * T j))

/-- The genuine Parseval mass bound and one epsilon-accurate source
projection turn NEGATIVE PHYSICAL VALUES into bounded raw negative
finite matrix vectors. No norm-1 witness is postulated. -/
theorem negative_physical_to_bounded_raw
    (A : AllModeSineFamily) (sourceValue : ℝ → (ℝ → ℝ) → ℝ)
    (T : ℕ → ℝ) (a c K : ℝ) (hc : 0 < c)
    (h : NegativePhysicalSourceFamily A sourceValue T a c K) :
    BoundedRawSineWitness A T a c K := by
  obtain ⟨J, hw⟩ := h
  refine ⟨J, ?_⟩
  intro j hj
  obtain ⟨f, hT, hf, hodd, hsup, hmass, hnegative, hreturn⟩ := hw j hj
  have hepsilon : 0 < c * Real.exp (a * T j) :=
    mul_pos hc (Real.exp_pos _)
  obtain ⟨M, hproj⟩ := hreturn (c * Real.exp (a * T j)) hepsilon
  refine ⟨M, sineCoordinates (T j) M f, ?_, ?_⟩
  · exact (source_sine_bessel (T j) hT f hf hodd hsup M).trans hmass
  · linarith

/-- The all-mode arithmetic floor contradicts bounded-mass raw witnesses
of any exponential rate strictly above the logarithmic budget rate. -/
theorem no_raw_sine_witness_above_budget_rate
    {A : AllModeSineFamily} {T B : ℕ → ℝ}
    {sigma a c K : ℝ} (hbudget : LogRateUpperBudget T B sigma)
    (hlower : NativeAllModeLower A T B)
    (ha : sigma < a) (hc : 0 < c) (hK : 0 < K) :
    ¬ BoundedRawSineWitness A T a c K := by
  rintro ⟨J, hw⟩
  obtain ⟨H, hsmall⟩ := eventual_dominance_above_rate
    hbudget a (c / K) ha (div_pos hc hK)
  let j := max J H
  obtain ⟨M, x, hmass, hnegative⟩ := hw j (le_max_left J H)
  have hfloor := hlower j M x
  have hBK :
      B j * (∑ i : Fin M, x i ^ 2) ≤ B j * K :=
    mul_le_mul_of_nonneg_left hmass (hbudget.nonneg j)
  have hbound : B j * K < c * Real.exp (a * T j) := by
    calc
      _ < ((c / K) * Real.exp (a * T j)) * K :=
        mul_lt_mul_of_pos_right (hsmall j (le_max_right J H)) hK
      _ = c * Real.exp (a * T j) := by
        field_simp [hK.ne']
        ring
  linarith

/-- The source-side form of the missing off-critical-zero amplification:
for every exponent below 2b, the actual physical Weil form has a family
of compact negative tests with bounded L2 mass and a sound sine return. -/
def PhysicalAmplifiesBelowDoubleDisplacement
    (A : AllModeSineFamily)
    (sourceValue : ℝ → (ℝ → ℝ) → ℝ)
    (T : ℕ → ℝ) (b : ℝ) : Prop :=
  ∀ a : ℝ, 0 < a → a < 2 * b →
    ∃ c K : ℝ, 0 < c ∧ 0 < K ∧
      NegativePhysicalSourceFamily A sourceValue T a c K

/-- A rate-sigma all-mode source bound restricts every displacement
that supplies the full physical-source amplification. -/
theorem physical_displacement_le_rate
    {A : AllModeSineFamily}
    {sourceValue : ℝ → (ℝ → ℝ) → ℝ}
    {T B : ℕ → ℝ} {sigma b : ℝ}
    (hbudget : LogRateUpperBudget T B sigma)
    (hlower : NativeAllModeLower A T B)
    (hb : 0 < b)
    (hamplifies : PhysicalAmplifiesBelowDoubleDisplacement
      A sourceValue T b) :
    2 * b ≤ sigma := by
  by_contra hfailure
  have hfast : sigma < 2 * b := lt_of_not_ge hfailure
  let a : ℝ := (sigma + 2 * b) / 2
  have ha : 0 < a := by
    dsimp [a]
    linarith [hbudget.rate_nonneg]
  have hσa : sigma < a := by
    dsimp [a]
    linarith
  have ha2b : a < 2 * b := by
    dsimp [a]
    linarith
  obtain ⟨c, K, hc, hK, hsource⟩ := hamplifies a ha ha2b
  have hraw := negative_physical_to_bounded_raw
    A sourceValue T a c K hc hsource
  exact (no_raw_sine_witness_above_budget_rate hbudget hlower
    hσa hc hK) hraw

/-- CONDITIONAL Mathlib RH consumer. The off-line source tests are now
physical and use the actual sine coordinates; the analytic amplifier and
subexponential all-mode floor remain explicit unproved inputs. -/
theorem rh_of_physical_negative_sine_return
    (T B : ℕ → ℝ)
    (hbudget : LogSublinearUpperBudget T B)
    (hlower : NativeAllModeLower zetaAllModes T B)
    (hoffline : ∀ s : ℂ, s ∈ rightCriticalStrip →
      riemannZeta s = 0 →
      PhysicalAmplifiesBelowDoubleDisplacement
        zetaAllModes zetaOddPhysicalValue T
        (s.re - (1 / 2 : ℝ))) :
    _root_.RiemannHypothesis := by
  apply (rh_iff_nonzero_rightStrip).2
  intro s hs hz
  have hb : 0 < s.re - (1 / 2 : ℝ) := sub_pos.mpr hs.1
  have hband := physical_displacement_le_rate
    (zero_rate_of_sublinear hbudget) hlower hb (hoffline s hs hz)
  linarith

/-- CONDITIONAL primitive nonprincipal sector: both off-critical sides
are included, and the character's physical gamma and phase are retained. -/
theorem primitive_critical_line_of_physical_negative_return
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q)
    (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (T B : ℕ → ℝ)
    (hbudget : LogSublinearUpperBudget T B)
    (hlower : NativeAllModeLower (pairedAllModes chi hp hn) T B)
    (hoffline : ∀ s : ℂ, s ∈ offCriticalStrip →
      chi.LFunction s = 0 →
      PhysicalAmplifiesBelowDoubleDisplacement
        (pairedAllModes chi hp hn)
        (primitivePairedOddPhysicalValue chi hp hn) T
        |s.re - (1 / 2 : ℝ)|) :
    DirichletCriticalLine chi := by
  apply (critical_line_iff_nonzero_offStrip chi).2
  intro s hs hz
  have hb : 0 < |s.re - (1 / 2 : ℝ)| :=
    abs_pos.mpr (sub_ne_zero.mpr hs.2.2)
  have hband := physical_displacement_le_rate
    (zero_rate_of_sublinear hbudget) hlower hb (hoffline s hs hz)
  linarith


/-- Conditional full Dirichlet-GRH assembly. The primitive principal case
remains an independent actual-source obligation, and the inherited
primitive-to-imprimitive Euler-factor theorem is reused verbatim. -/
theorem dirichlet_grh_of_physical_negative_returns
    (hprincipal : ∀ (q : ℕ) [NeZero q]
      (chi : DirichletCharacter ℂ q), chi.IsPrimitive → chi = 1 →
        DirichletCriticalLine chi)
    (hnonprincipal : ∀ (q : ℕ) [NeZero q]
      (chi : DirichletCharacter ℂ q)
      (hp : chi.IsPrimitive) (hn : chi ≠ 1),
        ∃ (T B : ℕ → ℝ),
          LogSublinearUpperBudget T B ∧
          NativeAllModeLower (pairedAllModes chi hp hn) T B ∧
          (∀ s : ℂ, s ∈ offCriticalStrip →
            chi.LFunction s = 0 →
            PhysicalAmplifiesBelowDoubleDisplacement
              (pairedAllModes chi hp hn)
              (primitivePairedOddPhysicalValue chi hp hn) T
                |s.re - (1 / 2 : ℝ)|)) :
    DirichletGRH := by
  apply (dirichletGRH_iff_primitive).2
  intro q hq chi hp
  by_cases hprincipalChi : chi = 1
  · exact hprincipal q chi hp hprincipalChi
  · obtain ⟨T, B, hbudget, hlower, hoffline⟩ :=
      hnonprincipal q chi hp hprincipalChi
    exact primitive_critical_line_of_physical_negative_return
      chi hp hprincipalChi T B hbudget hlower hoffline

end GRWTSK.NumberTheory.WeilQuadraticForm.PhysicalSineNegativeReturn
