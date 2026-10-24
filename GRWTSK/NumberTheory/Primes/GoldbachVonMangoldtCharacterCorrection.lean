/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachUnitFiberPartition
import GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtNonunitComplexNorm
import Mathlib.Tactic
import Mathlib.NumberTheory.LSeries.Dirichlet
import Mathlib.NumberTheory.DirichletCharacter.Bounds
import Mathlib.Analysis.SpecialFunctions.Log.Monotone
import GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtPointwise

/-!
# Conditional finite character reconstruction with nonunit correction

The existing character hypotheses hχ, hprincipal, hunit and hE are
preserved verbatim. The unit-fiber partition and finite nonunit norm
bound supply the exact correction. No analytic cancellation or
zero-free-region estimate is inferred.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtCharacterCorrection

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachUnitCharacterPsi
open GRWTSK.NumberTheory.Primes.GoldbachPsiUnitNonunit
open GRWTSK.NumberTheory.Primes.GoldbachUnitFiberPartition
open GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtNonunitComplexNorm
open GRWTSK.NumberTheory.Primes.FiniteCharacterOrthogonality

/-- Character reconstruction relative to the complete finite psi sum
with the nonunit correction explicitly bounded. -/
theorem norm_character_reconstruction_fullPsi_le
    (q N : ℕ) (hq : q ≠ 0)
    {κ : Type*} [Fintype κ]
    (χ : κ → (ZMod q)ˣ → ℂ)
    (a : (ZMod q)ˣ) (principal : κ) (E : κ → ℝ)
    (hχ : OrthogonalAt χ a)
    (hprincipal : ∀ b : (ZMod q)ˣ, χ principal b = 1)
    (hunit : ∀ k : κ, ‖χ k a‖ ≤ 1)
    (hE : ∀ k ∈ Finset.univ.erase principal,
      ‖∑ b : (ZMod q)ˣ, unitPsiWeight q N b * χ k b‖ ≤ E k) :
    ‖(Fintype.card κ : ℂ) * unitPsiWeight q N a -
      (∑ n ∈ Finset.range (N + 1),
        (GRWTSK.NumberTheory.Primes.GoldbachPrimePowerCorrection.primePowerWeight n : ℂ))‖ ≤
      (∑ k ∈ Finset.univ.erase principal, E k) +
        ((GRWTSK.NumberTheory.Primes.GoldbachNonunitPrimeSupport.finitePrimeDivisorCount q N : ℝ) *
          Real.log (N : ℝ) +
          (Nat.log2 N : ℝ) * Real.log (q : ℝ)) := by
  rw [totalPsi_eq_unit_add_nonunit q N]
  have hchar := norm_unitPsi_reconstruction_error_le
    q N χ a principal E hχ hprincipal hunit hE
  rw [unitPsiWeight_sum_eq_unitPsiTotal q N] at hchar
  calc
    _ = ‖((Fintype.card κ : ℂ) * unitPsiWeight q N a -
          unitPsiTotal q N) - nonunitPsiTotal q N‖ := by
      congr 1
      ring
    _ ≤ ‖(Fintype.card κ : ℂ) * unitPsiWeight q N a -
          unitPsiTotal q N‖ + ‖nonunitPsiTotal q N‖ :=
      norm_sub_le _ _
    _ ≤ (∑ k ∈ Finset.univ.erase principal, E k) +
          ((GRWTSK.NumberTheory.Primes.GoldbachNonunitPrimeSupport.finitePrimeDivisorCount q N : ℝ) *
            Real.log (N : ℝ) +
            (Nat.log2 N : ℝ) * Real.log (q : ℝ)) :=
      add_le_add hchar (norm_nonunitPsiTotal_le_log_correction q N hq)


/-- Concrete complex Dirichlet reconstruction relative to the full
finite prime-power mass. The nonunit contribution is charged by the
existing arithmetic bound; only nonprincipal cancellation is supplied. -/
theorem norm_dirichlet_reconstruction_fullPsi_le
    (q N : ℕ) (hq : q ≠ 0)
    [NeZero q]
    [HasEnoughRootsOfUnity ℂ (Monoid.exponent (ZMod q)ˣ)]
    (a : (ZMod q)ˣ)
    (E : DirichletCharacter ℂ q → ℝ)
    (hE : ∀ χ ∈ Finset.univ.erase (1 : DirichletCharacter ℂ q),
      ‖∑ b : (ZMod q)ˣ, unitPsiWeight q N b * χ (b : ZMod q)‖ ≤ E χ) :
    ‖(Nat.totient q : ℂ) * unitPsiWeight q N a -
      (∑ n ∈ Finset.range (N + 1),
        (GRWTSK.NumberTheory.Primes.GoldbachPrimePowerCorrection.primePowerWeight n : ℂ))‖ ≤
      (∑ χ ∈ Finset.univ.erase (1 : DirichletCharacter ℂ q), E χ) +
        ((GRWTSK.NumberTheory.Primes.GoldbachNonunitPrimeSupport.finitePrimeDivisorCount q N : ℝ) *
          Real.log (N : ℝ) +
          (Nat.log2 N : ℝ) * Real.log (q : ℝ)) := by
  have h := norm_character_reconstruction_fullPsi_le q N hq
    (fun χ : DirichletCharacter ℂ q =>
      fun b : (ZMod q)ˣ => χ (b : ZMod q))
    a (1 : DirichletCharacter ℂ q) E
    (complexDirichlet_orthogonalAt q a)
    (complexDirichlet_principal_on_units q)
    (fun χ => (complexDirichlet_norm_on_units q χ a).le)
    hE
  rw [card_complexDirichlet_eq_totient q] at h
  exact h


/-- Unconditional finite bound for an actual Dirichlet twist of the
reduced-residue prime-power packet. This is the triangle-inequality
baseline, NOT nonprincipal cancellation or a power saving. -/
theorem norm_dirichlet_twist_le_unit_mass_norms
    (q N : ℕ) (χ : DirichletCharacter ℂ q) :
    ‖∑ b : (ZMod q)ˣ, unitPsiWeight q N b * χ (b : ZMod q)‖ ≤
      ∑ b : (ZMod q)ˣ, ‖unitPsiWeight q N b‖ := by
  calc
    ‖∑ b : (ZMod q)ˣ, unitPsiWeight q N b * χ (b : ZMod q)‖ ≤
        ∑ b : (ZMod q)ˣ,
          ‖unitPsiWeight q N b * χ (b : ZMod q)‖ :=
      norm_sum_le _ _
    _ = ∑ b : (ZMod q)ˣ, ‖unitPsiWeight q N b‖ := by
      apply Finset.sum_congr rfl
      intro b hb
      rw [norm_mul, complexDirichlet_norm_on_units q χ b, mul_one]


/-- Reindex the actual finite unit-fiber Dirichlet twist into one
integer-indexed von Mangoldt-weighted sum. The inner unit filter
is retained exactly: it vanishes on nonunit residues without
pretending that a unit-group character is defined there. -/
theorem dirichlet_unitPsi_twist_eq_vonMangoldt_integer_sum
    (q N : ℕ) (χ : DirichletCharacter ℂ q) :
    (∑ b : (ZMod q)ˣ, unitPsiWeight q N b * χ (b : ZMod q)) =
      ∑ n ∈ Finset.range (N + 1),
        ∑ b : (ZMod q)ˣ,
          if (n : ZMod q) = (b : ZMod q) then
            (ArithmeticFunction.vonMangoldt n : ℂ) * χ (b : ZMod q)
          else 0 := by
  classical
  calc
    (∑ b : (ZMod q)ˣ, unitPsiWeight q N b * χ (b : ZMod q)) =
      ∑ b : (ZMod q)ˣ,
        ∑ n ∈ Finset.range (N + 1),
          if (n : ZMod q) = (b : ZMod q) then
            (GRWTSK.NumberTheory.Primes.GoldbachPrimePowerCorrection.primePowerWeight n : ℂ) *
              χ (b : ZMod q)
          else 0 := by
      apply Finset.sum_congr rfl
      intro b hb
      unfold unitPsiWeight
      rw [Finset.sum_filter, Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro n hn
      split_ifs <;> simp
    _ = ∑ n ∈ Finset.range (N + 1),
          ∑ b : (ZMod q)ˣ,
            if (n : ZMod q) = (b : ZMod q) then
              (GRWTSK.NumberTheory.Primes.GoldbachPrimePowerCorrection.primePowerWeight n : ℂ) *
                χ (b : ZMod q)
            else 0 := by
      rw [Finset.sum_comm]
    _ = ∑ n ∈ Finset.range (N + 1),
          ∑ b : (ZMod q)ˣ,
            if (n : ZMod q) = (b : ZMod q) then
              (ArithmeticFunction.vonMangoldt n : ℂ) * χ (b : ZMod q)
            else 0 := by
      apply Finset.sum_congr rfl
      intro n hn
      rw [GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtPointwise.primePowerWeight_eq_vonMangoldt n]


/-- The exact unit-fiber sum equals the direct Dirichlet evaluation.
For nonunits, both sides vanish by the multiplicative-character
nonunit law; no restriction to a coprime progression is hidden. -/
theorem dirichlet_unit_fiber_sum_eq_apply
    (q n : ℕ) (χ : DirichletCharacter ℂ q) :
    (∑ b : (ZMod q)ˣ,
      if (n : ZMod q) = (b : ZMod q) then χ (b : ZMod q) else 0) =
      χ (n : ZMod q) := by
  classical
  by_cases hn : IsUnit (n : ZMod q)
  · obtain ⟨u, hu, huniq⟩ :=
      GRWTSK.NumberTheory.Primes.GoldbachUnitFiberRepresentative.exists_unique_unit_rep q n hn
    have hsingle (b : (ZMod q)ˣ) :
        ((n : ZMod q) = (b : ZMod q)) ↔ b = u := by
      constructor
      · intro hb
        exact huniq b hb.symm
      · intro hb
        subst b
        exact hu.symm
    simp [hsingle, hu]
  · have hnone (b : (ZMod q)ˣ) :
        ¬ ((n : ZMod q) = (b : ZMod q)) := by
      intro hb
      exact hn (GRWTSK.NumberTheory.Primes.GoldbachUnitFiberMembership.unit_fiber_implies_isUnit q n b hb)
    simp [hnone, MulChar.map_nonunit χ hn]


/-- Full finite reduction of the unit-fiber Dirichlet twist to the
canonical von Mangoldt-weighted sum. Nonunit character values are
zero by definition, so no nonunit correction is introduced here. -/
theorem dirichlet_unitPsi_twist_eq_vonMangoldt_sum
    (q N : ℕ) (χ : DirichletCharacter ℂ q) :
    (∑ b : (ZMod q)ˣ, unitPsiWeight q N b * χ (b : ZMod q)) =
      ∑ n ∈ Finset.range (N + 1),
        (ArithmeticFunction.vonMangoldt n : ℂ) * χ (n : ZMod q) := by
  rw [dirichlet_unitPsi_twist_eq_vonMangoldt_integer_sum]
  apply Finset.sum_congr rfl
  intro n hn
  calc
    (∑ b : (ZMod q)ˣ,
      if (n : ZMod q) = (b : ZMod q) then
        (ArithmeticFunction.vonMangoldt n : ℂ) * χ (b : ZMod q)
      else 0) =
      (ArithmeticFunction.vonMangoldt n : ℂ) *
        (∑ b : (ZMod q)ˣ,
          if (n : ZMod q) = (b : ZMod q) then χ (b : ZMod q) else 0) := by
        rw [Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro b hb
        split_ifs <;> simp
    _ = _ := by rw [dirichlet_unit_fiber_sum_eq_apply]


/-- A named coefficient sequence shared by the finite GRWTSK packet
and Mathlib's analytic twisted von Mangoldt L-series. -/
def dirichletVonMangoldtCoefficient
    (q : ℕ) (χ : DirichletCharacter ℂ q) (n : ℕ) : ℂ :=
  χ (n : ZMod q) * (ArithmeticFunction.vonMangoldt n : ℂ)

/-- The exact finite GRWTSK twist is a partial sum of the coefficients
appearing in Mathlib's L-series logarithmic derivative identity. -/
theorem dirichlet_unitPsi_twist_eq_coefficient_sum
    (q N : ℕ) (χ : DirichletCharacter ℂ q) :
    (∑ b : (ZMod q)ˣ, unitPsiWeight q N b * χ (b : ZMod q)) =
      ∑ n ∈ Finset.range (N + 1), dirichletVonMangoldtCoefficient q χ n := by
  rw [dirichlet_unitPsi_twist_eq_vonMangoldt_sum]
  apply Finset.sum_congr rfl
  intro n hn
  unfold dirichletVonMangoldtCoefficient
  ring

/-- Analytic identification of the same coefficient function, valid
only in the half-plane Re(s)>1. This supplies no finite cutoff error,
contour shift, or cancellation bound. -/
theorem dirichlet_coefficient_LSeries_eq_log_derivative
    (q : ℕ) (χ : DirichletCharacter ℂ q)
    (s : ℂ) (hs : 1 < s.re) :
    LSeries.L (dirichletVonMangoldtCoefficient q χ) s =
      -deriv (LSeries.L (χ : ℕ → ℂ)) s /
        LSeries.L (χ : ℕ → ℂ) s := by
  simpa only [dirichletVonMangoldtCoefficient, mul_comm] using
    (DirichletCharacter.LSeries_twist_vonMangoldt_eq χ hs)


/-- Absolute convergence of the actual finite-twist coefficient
sequence's L-series in the right half-plane. This gives only a
qualitative tail limit, not a quantitative Perron remainder. -/
theorem dirichlet_coefficient_LSeriesSummable
    (q : ℕ) (χ : DirichletCharacter ℂ q)
    (s : ℂ) (hs : 1 < s.re) :
    LSeriesSummable (dirichletVonMangoldtCoefficient q χ) s := by
  simpa only [dirichletVonMangoldtCoefficient, mul_comm] using
    (DirichletCharacter.LSeriesSummable_twist_vonMangoldt χ hs)


/-- Pointwise logarithmic envelope for the exact Dirichlet-twist
coefficient. This is an elementary majorant, not cancellation. -/
theorem norm_dirichletVonMangoldtCoefficient_le_log
    (q n : ℕ) (χ : DirichletCharacter ℂ q) :
    ‖dirichletVonMangoldtCoefficient q χ n‖ ≤ Real.log (n : ℝ) := by
  unfold dirichletVonMangoldtCoefficient
  rw [norm_mul]
  have hχ := DirichletCharacter.norm_le_one χ (n : ZMod q)
  have hΛ := ArithmeticFunction.vonMangoldt_nonneg (n := n)
  have hΛlog := ArithmeticFunction.vonMangoldt_le_log (n := n)
  have hnorm : ‖(ArithmeticFunction.vonMangoldt n : ℂ)‖ =
      ArithmeticFunction.vonMangoldt n := by
    simp [Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg hΛ]
  rw [hnorm]
  calc
    ‖χ (n : ZMod q)‖ * ArithmeticFunction.vonMangoldt n ≤
        1 * ArithmeticFunction.vonMangoldt n :=
      mul_le_mul_of_nonneg_right hχ hΛ
    _ = ArithmeticFunction.vonMangoldt n := one_mul _
    _ ≤ Real.log (n : ℝ) := hΛlog


/-- Real logarithmic-power kernel used in the explicit absolute tail
comparison. This is not a Perron kernel. -/
def logarithmicPowerTailKernel (σ t : ℝ) : ℝ :=
  Real.log t / t ^ σ

/-- The logarithmic-power kernel is nonnegative on t ≥ 3.
Monotonicity, integrability, and the improper integral remain separate. -/
theorem logarithmicPowerTailKernel_nonneg
    (σ t : ℝ) (ht : 3 ≤ t) :
    0 ≤ logarithmicPowerTailKernel σ t := by
  have htpos : 0 < t := by linarith
  have hlog : 0 ≤ Real.log t := Real.log_nonneg (by linarith)
  unfold logarithmicPowerTailKernel
  positivity


/-- Exact antitonicity threshold supplied by Mathlib for the
logarithmic-power kernel. For σ>1 the threshold exp(1/σ)
is below 3; that endpoint comparison is a separate supplier. -/
theorem logarithmicPowerTailKernel_antitoneOn_exp
    (σ : ℝ) (hσ : 1 < σ) :
    AntitoneOn (logarithmicPowerTailKernel σ)
      (Set.Ici (Real.exp σ⁻¹)) := by
  exact Real.log_div_self_rpow_antitoneOn (lt_trans zero_lt_one hσ)

end GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtCharacterCorrection
