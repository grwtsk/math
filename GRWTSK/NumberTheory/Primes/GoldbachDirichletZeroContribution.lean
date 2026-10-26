/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtCharacterCorrection
import GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.SiegelRealZeroWindow
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic
import Mathlib.NumberTheory.LSeries.Deriv
import Mathlib.Analysis.SpecialFunctions.Pow.Continuity
import Mathlib.Tactic

/-!
# A finite Dirichlet zero-contribution budget for prime-weighted sums

This module makes the missing quantitative supplier between a *conditional*
Dirichlet zero-free half-plane and the existing finite von Mangoldt
character-reconstruction theorem explicit.

The selected finite zero packet is drawn from a **supplied finite candidate
set**, filtered by the actual L-function zero equation, the nontrivial
strip, and a height cutoff. The candidate set is NOT asserted to enumerate
every zero up to that height. A separate hExplicitFormula bounds the entire
finite von Mangoldt sum plus the selected zero contribution, retaining
ALL omitted zeros, contour errors, trivial-zero and endpoint terms in its
named remainder R. The zero-free proposition does not prove that remainder
bound or a zero-counting estimate.

The only exponent saving comes from the explicitly assumed proposition
HasDirichletSevenEighthsZeroFree. No external OAI theorem is imported,
no unconditional cancellation is proved, and no RH/GRH conclusion follows.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachDirichletZeroContribution

open scoped BigOperators
open GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.SiegelRealZeroWindow
open GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtCharacterCorrection
open GRWTSK.NumberTheory.Primes.GoldbachUnitCharacterPsi

noncomputable section

/-- Finite *selected* nontrivial zeros in a height window, not a claim
that the supplied candidate set lists every zero in that window. -/
def selectedZeros (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q)
    (T : ℝ) (candidates : Finset ℂ) : Finset ℂ :=
  candidates.filter (fun ρ =>
    0 < ρ.re ∧ ρ.re < 1 ∧ |ρ.im| ≤ T ∧ χ.LFunction ρ = 0)

/-- The actual zero equation and all geometric cutoffs are preserved
when passing from a candidate list to its selected packet. -/
theorem selectedZeros_conditions
    (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q)
    (T : ℝ) (candidates : Finset ℂ) {ρ : ℂ}
    (hρ : ρ ∈ selectedZeros q χ T candidates) :
    0 < ρ.re ∧ ρ.re < 1 ∧ |ρ.im| ≤ T ∧ χ.LFunction ρ = 0 := by
  classical
  unfold selectedZeros at hρ
  exact (Finset.mem_filter.mp hρ).2

/-- No pole-at-one exception is needed for a nonprincipal character.
This conditional real-part bound applies to **complex** zeros. -/
theorem nonprincipal_zero_realPart_le_seven_eighths
    {q : ℕ} [NeZero q]
    (hSeven : HasDirichletSevenEighthsZeroFree)
    (χ : DirichletCharacter ℂ q) (hNonprincipal : χ ≠ 1)
    (ρ : ℂ) (hZero : χ.LFunction ρ = 0) :
    ρ.re ≤ (7 / 8 : ℝ) := by
  by_contra hNot
  have hHalf : (7 / 8 : ℝ) < ρ.re := lt_of_not_ge hNot
  exact (hSeven q χ ρ hHalf (fun hpole => hNonprincipal hpole.1)) hZero

/-- A single finite zero term has exponent at most 7/8, provided N≥1.
The inverse norm remains explicit; no zero-separation estimate is inferred. -/
theorem norm_cpow_div_le_seven_eighths
    (N : ℕ) (hN : 1 ≤ N) (ρ : ℂ)
    (hρ : ρ.re ≤ (7 / 8 : ℝ)) :
    ‖(N : ℂ) ^ ρ / ρ‖ ≤
      (N : ℝ) ^ (7 / 8 : ℝ) * (‖ρ‖)⁻¹ := by
  have hNreal : (1 : ℝ) ≤ (N : ℝ) := by
    exact_mod_cast hN
  have hNpos : (0 : ℝ) < (N : ℝ) := lt_of_lt_of_le zero_lt_one hNreal
  have hpow : ‖(N : ℂ) ^ ρ‖ = (N : ℝ) ^ ρ.re := by
    simpa only [Complex.ofReal_natCast] using
      (Complex.norm_cpow_eq_rpow_re_of_pos hNpos ρ)
  have hbound : (N : ℝ) ^ ρ.re ≤ (N : ℝ) ^ (7 / 8 : ℝ) :=
    Real.rpow_le_rpow_of_exponent_le hNreal hρ
  calc
    ‖(N : ℂ) ^ ρ / ρ‖ =
        (N : ℝ) ^ ρ.re / ‖ρ‖ := by rw [norm_div, hpow]
    _ ≤ (N : ℝ) ^ (7 / 8 : ℝ) / ‖ρ‖ :=
      div_le_div_of_nonneg_right hbound (norm_nonneg ρ)
    _ = (N : ℝ) ^ (7 / 8 : ℝ) * (‖ρ‖)⁻¹ := by
      rw [div_eq_mul_inv]

/-- The reciprocal-size budget for the selected, finite zero packet.
The expression remains sensitive to modulus, character, cutoff, and
candidate coverage. It is not bounded by a zero-counting theorem here. -/
def reciprocalZeroMass (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q)
    (T : ℝ) (candidates : Finset ℂ) : ℝ :=
  ∑ ρ ∈ selectedZeros q χ T candidates, (‖ρ‖)⁻¹

/-- A zero-free half-plane, supplied as a proposition, bounds the entire
SELECTED finite zero contribution with the explicit 7/8 exponent. -/
theorem norm_selected_zero_contribution_le
    (q N : ℕ) [NeZero q] (hN : 1 ≤ N)
    (χ : DirichletCharacter ℂ q) (hNonprincipal : χ ≠ 1)
    (T : ℝ) (candidates : Finset ℂ)
    (hSeven : HasDirichletSevenEighthsZeroFree) :
    ‖∑ ρ ∈ selectedZeros q χ T candidates,
        (N : ℂ) ^ ρ / ρ‖ ≤
      (N : ℝ) ^ (7 / 8 : ℝ) * reciprocalZeroMass q χ T candidates := by
  classical
  unfold reciprocalZeroMass
  calc
    ‖∑ ρ ∈ selectedZeros q χ T candidates,
        (N : ℂ) ^ ρ / ρ‖ ≤
      ∑ ρ ∈ selectedZeros q χ T candidates,
        ‖(N : ℂ) ^ ρ / ρ‖ := norm_sum_le _ _
    _ ≤ ∑ ρ ∈ selectedZeros q χ T candidates,
        (N : ℝ) ^ (7 / 8 : ℝ) * (‖ρ‖)⁻¹ := by
      apply Finset.sum_le_sum
      intro ρ hρ
      have hZero : χ.LFunction ρ = 0 :=
        (selectedZeros_conditions q χ T candidates hρ).2.2.2
      exact norm_cpow_div_le_seven_eighths N hN ρ
        (nonprincipal_zero_realPart_le_seven_eighths
          hSeven χ hNonprincipal ρ hZero)
    _ = (N : ℝ) ^ (7 / 8 : ℝ) *
        ∑ ρ ∈ selectedZeros q χ T candidates, (‖ρ‖)⁻¹ := by
      rw [Finset.mul_sum]

/-- The named, exact proposed finite-twist error budget.
Its numeric value is NOT supplied by the zero-free proposition alone. -/
def finiteZeroFormulaBudget
    (q N : ℕ) [NeZero q] (T : ℝ)
    (candidates : DirichletCharacter ℂ q → Finset ℂ)
    (R : DirichletCharacter ℂ q → ℝ)
    (χ : DirichletCharacter ℂ q) : ℝ :=
  (N : ℝ) ^ (7 / 8 : ℝ) *
    reciprocalZeroMass q χ T (candidates χ) + R χ

/-- Conditional finite explicit-formula transfer: the zero-free
hypothesis bounds the selected zero terms, while hExplicitFormula
still supplies every omitted zero, trivial-zero, contour and
endpoint contribution through R. This does NOT derive hExplicitFormula. -/
theorem norm_twisted_vonMangoldt_prefix_le_of_finite_zero_formula
    (q N : ℕ) [NeZero q] (hN : 1 ≤ N)
    (χ : DirichletCharacter ℂ q) (hNonprincipal : χ ≠ 1)
    (T : ℝ) (candidates : Finset ℂ) (R : ℝ)
    (hSeven : HasDirichletSevenEighthsZeroFree)
    (hExplicitFormula :
      ‖(∑ n ∈ Finset.range (N + 1),
          dirichletVonMangoldtCoefficient q χ n) +
        (∑ ρ ∈ selectedZeros q χ T candidates,
          (N : ℂ) ^ ρ / ρ)‖ ≤ R) :
    ‖∑ n ∈ Finset.range (N + 1),
        dirichletVonMangoldtCoefficient q χ n‖ ≤
      (N : ℝ) ^ (7 / 8 : ℝ) *
        reciprocalZeroMass q χ T candidates + R := by
  let P : ℂ := ∑ n ∈ Finset.range (N + 1),
    dirichletVonMangoldtCoefficient q χ n
  let Z : ℂ := ∑ ρ ∈ selectedZeros q χ T candidates,
    (N : ℂ) ^ ρ / ρ
  have hZeroBudget := norm_selected_zero_contribution_le
    q N hN χ hNonprincipal T candidates hSeven
  change ‖Z‖ ≤ (N : ℝ) ^ (7 / 8 : ℝ) *
    reciprocalZeroMass q χ T candidates at hZeroBudget
  change ‖P + Z‖ ≤ R at hExplicitFormula
  change ‖P‖ ≤ (N : ℝ) ^ (7 / 8 : ℝ) *
    reciprocalZeroMass q χ T candidates + R
  calc
    ‖P‖ = ‖(P + Z) - Z‖ := by congr 1; ring
    _ ≤ ‖P + Z‖ + ‖Z‖ := norm_sub_le _ _
    _ ≤ R + ((N : ℝ) ^ (7 / 8 : ℝ) *
          reciprocalZeroMass q χ T candidates) :=
      add_le_add hExplicitFormula hZeroBudget
    _ = (N : ℝ) ^ (7 / 8 : ℝ) *
          reciprocalZeroMass q χ T candidates + R := by ring

/-- Quantitative finite prime-progression estimate with separately
retained character-specific finite-zero remainders AND global ψ error.
A zero-free region alone supplies neither hFormula nor hGlobal.

No unconditional prime-density or arithmetic-progression asymptotic
is claimed. All nonprincipal characters are treated, not only primitive
or real characters; the supplied analytic proposition has that scope. -/
theorem norm_residuePsi_linear_main_le_of_finite_zero_formulas
    (q N : ℕ) (hq : q ≠ 0) (hN : 1 ≤ N)
    [NeZero q]
    [HasEnoughRootsOfUnity ℂ (Monoid.exponent (ZMod q)ˣ)]
    (a : (ZMod q)ˣ) (T : ℝ)
    (candidates : DirichletCharacter ℂ q → Finset ℂ)
    (R : DirichletCharacter ℂ q → ℝ) (M : ℝ)
    (hSeven : HasDirichletSevenEighthsZeroFree)
    (hFormula : ∀ χ ∈ Finset.univ.erase (1 : DirichletCharacter ℂ q),
      ‖(∑ n ∈ Finset.range (N + 1),
          dirichletVonMangoldtCoefficient q χ n) +
        (∑ ρ ∈ selectedZeros q χ T (candidates χ),
          (N : ℂ) ^ ρ / ρ)‖ ≤ R χ)
    (hGlobal :
      ‖(∑ n ∈ Finset.range (N + 1),
        (GRWTSK.NumberTheory.Primes.GoldbachPrimePowerCorrection.primePowerWeight n : ℂ)) -
          (N : ℂ)‖ ≤ M) :
    ‖(Nat.totient q : ℂ) * unitPsiWeight q N a - (N : ℂ)‖ ≤
      ((∑ χ ∈ Finset.univ.erase (1 : DirichletCharacter ℂ q),
          finiteZeroFormulaBudget q N T candidates R χ) +
        ((GRWTSK.NumberTheory.Primes.GoldbachNonunitPrimeSupport.finitePrimeDivisorCount q N : ℝ) *
          Real.log (N : ℝ) +
          (Nat.log2 N : ℝ) * Real.log (Nat.radical q : ℝ))) + M := by
  apply norm_dirichlet_residuePsi_linear_main_le_of_twist_and_global
    q N hq a (finiteZeroFormulaBudget q N T candidates R) M
  · intro χ hχ
    change ‖∑ n ∈ Finset.range (N + 1),
        dirichletVonMangoldtCoefficient q χ n‖ ≤
      (N : ℝ) ^ (7 / 8 : ℝ) *
        reciprocalZeroMass q χ T (candidates χ) + R χ
    exact norm_twisted_vonMangoldt_prefix_le_of_finite_zero_formula
      q N hN χ (Finset.mem_erase.mp hχ).1
      T (candidates χ) (R χ) hSeven (hFormula χ hχ)
  · exact hGlobal


/-!
## A quantitative right-edge Perron truncation supplier

This only treats the absolutely convergent **right vertical line**
Re(s)=sigma>1. It bounds the difference between the full Dirichlet
series and its inclusive N-prefix *after* multiplication by the
Perron weight N^s/s. It does not shift contours, cross zero poles,
establish a finite Perron inversion identity, or bound the other sides
of a contour. The separate interval-integrability premise prevents
nonintegrable interval integrals from being silently interpreted as
genuine contour contributions.

The real parameter integral is unnormalized: a complete Perron
formula must separately insert the orientation and 1/(2*pi)
factor, plus all remaining errors.
-/

/-- The right-edge Perron integrand contributed by truncating the
actual von Mangoldt/Dirichlet L-series after the inclusive N term.
This is a genuine analytic series difference, NOT the full explicit
formula remainder. -/
def rightPerronTruncation
    (q N : ℕ) (χ : DirichletCharacter ℂ q) (σ t : ℝ) : ℂ :=
  let s : ℂ := ⟨σ, t⟩
  (LSeries.L (dirichletVonMangoldtCoefficient q χ) s -
      (∑ n ∈ Finset.range (N + 1),
        LSeries.term (dirichletVonMangoldtCoefficient q χ) s n)) *
    ((N : ℂ) ^ s / s)

/-- Explicit magnitude bound on the right-line Perron truncation.
The factor (sigma-1) reflects distance from the abscissa of
absolute convergence; there is no saving from zero-freeness. -/
def rightPerronTruncationBudget (N : ℕ) (σ : ℝ) : ℝ :=
  ((N : ℝ) ^ (1 - σ) *
    (Real.log (N : ℝ) / (σ - 1) + 1 / (σ - 1) ^ 2)) *
    ((N : ℝ) ^ σ / σ)

/-- Pointwise right-edge truncation error, uniform in imaginary height.
The existing L-series tail estimate and a bound on the Perron
weight are the only analytic suppliers. -/
theorem norm_rightPerronTruncation_le
    (q N : ℕ) (χ : DirichletCharacter ℂ q)
    (σ : ℝ) (hσ : 1 < σ) (hN : 3 ≤ N) (t : ℝ) :
    ‖rightPerronTruncation q N χ σ t‖ ≤
      rightPerronTruncationBudget N σ := by
  let s : ℂ := ⟨σ, t⟩
  have hsre : s.re = σ := rfl
  have hs : 1 < s.re := by simpa only [hsre] using hσ
  have hσpos : 0 < σ := by linarith
  have hσdelta : 0 < σ - 1 := by linarith
  have hNreal : (0 : ℝ) < (N : ℝ) := by
    exact_mod_cast (show 0 < N by omega)
  have hNone : (1 : ℝ) ≤ (N : ℝ) := by
    exact_mod_cast (show 1 ≤ N by omega)
  have hlog : 0 ≤ Real.log (N : ℝ) := Real.log_nonneg hNone
  have hseries :
      ‖LSeries.L (dirichletVonMangoldtCoefficient q χ) s -
        (∑ n ∈ Finset.range (N + 1),
          LSeries.term (dirichletVonMangoldtCoefficient q χ) s n)‖ ≤
      (N : ℝ) ^ (1 - σ) *
        (Real.log (N : ℝ) / (σ - 1) + 1 / (σ - 1) ^ 2) := by
    simpa only [hsre] using
      (norm_dirichletVonMangoldt_LSeries_sub_prefix_le q N χ s hs hN)
  have hpower : ‖(N : ℂ) ^ s‖ = (N : ℝ) ^ σ := by
    rw [← Complex.ofReal_natCast]
    simpa only [hsre] using
      (Complex.norm_cpow_eq_rpow_re_of_pos hNreal s)
  have hdenom : σ ≤ ‖s‖ := by
    simpa only [hsre] using (Complex.re_le_norm s)
  have hkernel : ‖(N : ℂ) ^ s / s‖ ≤ (N : ℝ) ^ σ / σ := by
    calc
      ‖(N : ℂ) ^ s / s‖ = (N : ℝ) ^ σ / ‖s‖ := by
        rw [norm_div, hpower]
      _ ≤ (N : ℝ) ^ σ / σ :=
        div_le_div_of_nonneg_left (Real.rpow_nonneg hNreal.le σ)
          hσpos hdenom
  have hseriesNonneg :
      0 ≤ (N : ℝ) ^ (1 - σ) *
        (Real.log (N : ℝ) / (σ - 1) + 1 / (σ - 1) ^ 2) := by
    positivity
  change
    ‖(LSeries.L (dirichletVonMangoldtCoefficient q χ) s -
      (∑ n ∈ Finset.range (N + 1),
        LSeries.term (dirichletVonMangoldtCoefficient q χ) s n)) *
      ((N : ℂ) ^ s / s)‖ ≤
      ((N : ℝ) ^ (1 - σ) *
        (Real.log (N : ℝ) / (σ - 1) + 1 / (σ - 1) ^ 2)) *
      ((N : ℝ) ^ σ / σ)
  rw [norm_mul]
  calc
    _ ≤ ((N : ℝ) ^ (1 - σ) *
          (Real.log (N : ℝ) / (σ - 1) + 1 / (σ - 1) ^ 2)) *
          ‖(N : ℂ) ^ s / s‖ :=
      mul_le_mul_of_nonneg_right hseries (norm_nonneg _)
    _ ≤ ((N : ℝ) ^ (1 - σ) *
          (Real.log (N : ℝ) / (σ - 1) + 1 / (σ - 1) ^ 2)) *
          ((N : ℝ) ^ σ / σ) :=
      mul_le_mul_of_nonneg_left hkernel hseriesNonneg

/-- Right-edge interval-integral budget for a genuine integrable
Perron truncation. The integrability premise remains explicit;
the numerical estimate follows from the proven pointwise bound.
This is only one component of an eventual explicit-formula R. -/
theorem norm_rightPerronTruncation_intervalIntegral_le
    (q N : ℕ) (χ : DirichletCharacter ℂ q)
    (σ : ℝ) (hσ : 1 < σ) (hN : 3 ≤ N)
    (T : ℝ) (hT : 0 ≤ T)
    (_hIntegrable : IntervalIntegrable
      (rightPerronTruncation q N χ σ)
      MeasureTheory.volume (-T) T) :
    ‖∫ t in (-T)..T, rightPerronTruncation q N χ σ t‖ ≤
      (2 * T) * rightPerronTruncationBudget N σ := by
  have hBound :
      ‖∫ t in (-T)..T, rightPerronTruncation q N χ σ t‖ ≤
        rightPerronTruncationBudget N σ * |T - (-T)| :=
    intervalIntegral.norm_integral_le_of_norm_le_const
      (fun t _ht => norm_rightPerronTruncation_le q N χ σ hσ hN t)
  have hLength : |T - (-T)| = 2 * T := by
    rw [abs_of_nonneg (show 0 ≤ T - (-T) by linarith)]
    ring
  calc
    _ ≤ rightPerronTruncationBudget N σ * |T - (-T)| := hBound
    _ = (2 * T) * rightPerronTruncationBudget N σ := by
      rw [hLength]
      ring


/-!
## Intrinsic integrability on the right Perron line

The previous interval norm bound required an explicit integrability
hypothesis. Here the necessary regularity follows from the existing
half-plane of *absolute* convergence, strictly to the right of one.

The coefficient Dirichlet series converges absolutely at every real
part greater than one. Choosing a fixed real midpoint between one
and sigma places every point of the vertical line strictly to the
right of the abscissa of absolute convergence. Pinned Mathlib then
supplies a derivative (hence continuity) of the full L-series.
Individual L-series terms are entire in the parameter. The finite
prefix and Perron kernel are continuous because N >= 3 and sigma > 1.
No contour shift, analytic continuation across Re(s)=1, zero
residue, or global explicit formula is used.

This does NOT alter or reaccept the previous source theorem: a new
corollary removes the integrability obligation for its consumers.
-/

/-- The actual Dirichlet-series Perron truncation is continuous on the
right vertical line Re(s)=sigma>1. The positivity of N excludes the
zero-base complex power, and the positive real part excludes s=0. -/
theorem continuous_rightPerronTruncation
    (q N : ℕ) (χ : DirichletCharacter ℂ q)
    (σ : ℝ) (hσ : 1 < σ) (hN : 3 ≤ N) :
    Continuous (rightPerronTruncation q N χ σ) := by
  let f : ℕ → ℂ := dirichletVonMangoldtCoefficient q χ
  let v : ℝ → ℂ := fun t => (σ : ℂ) + (t : ℂ) * Complex.I
  have hv : Continuous v := by
    dsimp [v]
    fun_prop
  have hre (t : ℝ) : (v t).re = σ := by
    simp [v]
  have hv_eq (t : ℝ) : v t = (⟨σ, t⟩ : ℂ) := by
    apply Complex.ext <;> simp [v]
  have hmid : (1 : ℝ) < (1 + σ) / 2 := by linarith
  have hmid_lt : (1 + σ) / 2 < σ := by linarith
  have hsummable :
      LSeriesSummable f (((1 + σ) / 2 : ℝ) : ℂ) := by
    exact dirichlet_coefficient_LSeriesSummable q χ _ (by simpa using hmid)
  have habscissa :
      LSeries.abscissaOfAbsConv f ≤ (((1 + σ) / 2 : ℝ) : EReal) := by
    simpa only [Complex.ofReal_re] using hsummable.abscissaOfAbsConv_le
  have hstrict : LSeries.abscissaOfAbsConv f < (σ : EReal) :=
    habscissa.trans_lt (by exact_mod_cast hmid_lt)
  have hfull : Continuous (fun t : ℝ => LSeries.L f (v t)) := by
    apply continuous_iff_continuousAt.mpr
    intro t
    have hpoint : LSeries.abscissaOfAbsConv f < (v t).re := by
      rw [hre t]
      exact hstrict
    exact (LSeries_hasDerivAt hpoint).continuousAt.comp t hv.continuousAt
  have hterm (n : ℕ) :
      Continuous (fun t : ℝ => LSeries.term f (v t) n) := by
    apply continuous_iff_continuousAt.mpr
    intro t
    exact (LSeries.hasDerivAt_term f n (v t)).continuousAt.comp
      t hv.continuousAt
  have hprefix (F : Finset ℕ) :
      Continuous (fun t : ℝ => ∑ n ∈ F, LSeries.term f (v t) n) := by
    classical
    induction F using Finset.induction_on with
    | empty =>
        simpa using (continuous_const : Continuous (fun _ : ℝ => (0 : ℂ)))
    | @insert n F hn ih =>
        simpa only [Finset.sum_insert hn] using (hterm n).add ih
  have hN0 : (N : ℂ) ≠ 0 := by
    exact_mod_cast (show N ≠ 0 by omega)
  have hpow : Continuous (fun t : ℝ => (N : ℂ) ^ (v t)) :=
    hv.const_cpow (Or.inl hN0)
  have hdenom (t : ℝ) : v t ≠ 0 := by
    intro hz
    have hreal := congrArg Complex.re hz
    have hσ0 : σ = 0 := by simpa only [hre t, Complex.zero_re] using hreal
    linarith
  have hweight : Continuous (fun t : ℝ => (N : ℂ) ^ (v t) / v t) :=
    hpow.div hv hdenom
  have hmain : Continuous (fun t : ℝ =>
      (LSeries.L f (v t) -
        (∑ n ∈ Finset.range (N + 1), LSeries.term f (v t) n)) *
        ((N : ℂ) ^ (v t) / v t)) :=
    (hfull.sub (hprefix (Finset.range (N + 1)))).mul hweight
  change Continuous (fun t : ℝ =>
    (LSeries.L (dirichletVonMangoldtCoefficient q χ) (⟨σ, t⟩ : ℂ) -
      (∑ n ∈ Finset.range (N + 1),
        LSeries.term (dirichletVonMangoldtCoefficient q χ) (⟨σ, t⟩ : ℂ) n)) *
      ((N : ℂ) ^ (⟨σ, t⟩ : ℂ) / (⟨σ, t⟩ : ℂ)))
  simpa only [f, hv_eq] using hmain

/-- No independent integrability hypothesis is needed on any bounded
right vertical-line interval, given sigma>1 and N>=3. -/
theorem intervalIntegrable_rightPerronTruncation
    (q N : ℕ) (χ : DirichletCharacter ℂ q)
    (σ : ℝ) (hσ : 1 < σ) (hN : 3 ≤ N)
    (a b : ℝ) :
    IntervalIntegrable (rightPerronTruncation q N χ σ)
      MeasureTheory.volume a b :=
  (continuous_rightPerronTruncation q N χ σ hσ hN).intervalIntegrable a b

/-- Right-edge interval norm bound with integrability actually
derived from absolute convergence. This preserves the prior
hypothesis-bearing theorem as a separate, source-pinned interface. -/
theorem norm_rightPerronTruncation_intervalIntegral_le_of_continuity
    (q N : ℕ) (χ : DirichletCharacter ℂ q)
    (σ : ℝ) (hσ : 1 < σ) (hN : 3 ≤ N)
    (T : ℝ) (hT : 0 ≤ T) :
    ‖∫ t in (-T)..T, rightPerronTruncation q N χ σ t‖ ≤
      (2 * T) * rightPerronTruncationBudget N σ := by
  exact norm_rightPerronTruncation_intervalIntegral_le
    q N χ σ hσ hN T hT
    (intervalIntegrable_rightPerronTruncation
      q N χ σ hσ hN (-T) T)

end
end GRWTSK.NumberTheory.Primes.GoldbachDirichletZeroContribution
