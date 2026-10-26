/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtCharacterCorrection
import GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.SiegelRealZeroWindow
import Mathlib.Analysis.SpecialFunctions.Pow.Real
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
def selectedZeros (q : ℕ) (χ : DirichletCharacter ℂ q)
    (T : ℝ) (candidates : Finset ℂ) : Finset ℂ :=
  candidates.filter (fun ρ =>
    0 < ρ.re ∧ ρ.re < 1 ∧ |ρ.im| ≤ T ∧ χ.LFunction ρ = 0)

/-- The actual zero equation and all geometric cutoffs are preserved
when passing from a candidate list to its selected packet. -/
theorem selectedZeros_conditions
    (q : ℕ) (χ : DirichletCharacter ℂ q)
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
def reciprocalZeroMass (q : ℕ) (χ : DirichletCharacter ℂ q)
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
    (q N : ℕ) (T : ℝ)
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

end
end GRWTSK.NumberTheory.Primes.GoldbachDirichletZeroContribution
