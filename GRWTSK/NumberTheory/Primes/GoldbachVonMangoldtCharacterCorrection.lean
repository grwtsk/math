/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachUnitFiberPartition
import GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtNonunitComplexNorm
import Mathlib.Tactic
import Mathlib.NumberTheory.LSeries.Dirichlet
import Mathlib.NumberTheory.DirichletCharacter.Bounds
import Mathlib.Analysis.SpecialFunctions.Log.Monotone
import Mathlib.Analysis.Complex.ExponentialBounds
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics
import Mathlib.Analysis.SumIntegralComparisons
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


/-- For exponents greater than one, the antitonicity threshold lies
below three. -/
theorem exp_inv_le_three_of_one_lt
    (σ : ℝ) (hσ : 1 < σ) :
    Real.exp σ⁻¹ ≤ (3 : ℝ) := by
  have hσpos : 0 < σ := lt_trans zero_lt_one hσ
  have hinv : σ⁻¹ ≤ (1 : ℝ) := (inv_le_one₀ hσpos).mpr (le_of_lt hσ)
  exact (Real.exp_le_exp.mpr hinv).trans
    (le_of_lt Real.exp_one_lt_three)

/-- The logarithmic-power kernel is antitone on the integer-tail
domain starting at three. -/
theorem logarithmicPowerTailKernel_antitoneOn_three
    (σ : ℝ) (hσ : 1 < σ) :
    AntitoneOn (logarithmicPowerTailKernel σ) (Set.Ici (3 : ℝ)) := by
  apply (logarithmicPowerTailKernel_antitoneOn_exp σ hσ).mono
  exact Set.Ici_subset_Ici.mpr (exp_inv_le_three_of_one_lt σ hσ)


/-- The comparison power used for the logarithmic kernel is integrable
on every positive tail when σ > 1. This is a genuine integrability
supplier, but does not yet prove domination by the logarithmic kernel. -/
theorem integrableOn_comparison_rpow_Ioi
    (σ : ℝ) (N : ℕ) (hσ : 1 < σ) (hN : 3 ≤ N) :
    IntegrableOn (fun t : ℝ => t ^ (-(σ + 1) / 2))
      (Set.Ioi (N : ℝ)) := by
  apply Real.integrableOn_Ioi_rpow_of_lt
  · linarith
  · exact_mod_cast (show 0 < N by omega)


/-- Quantitative pointwise domination by an integrable negative power.
The comparison constant is explicit and positive for σ > 1. -/
theorem logarithmicPowerTailKernel_le_comparison
    (σ t : ℝ) (hσ : 1 < σ) (ht : 3 ≤ t) :
    logarithmicPowerTailKernel σ t ≤
      (2 / (σ - 1)) * t ^ (-(σ + 1) / 2) := by
  have htpos : 0 < t := by linarith
  have hδ : 0 < (σ - 1) / 2 := by linarith
  have hlog : Real.log t ≤ t ^ ((σ - 1) / 2) / ((σ - 1) / 2) :=
    Real.log_le_rpow_div htpos.le hδ
  have hpow : 0 < t ^ σ := Real.rpow_pos_of_pos htpos _
  unfold logarithmicPowerTailKernel
  calc
    Real.log t / t ^ σ ≤
        (t ^ ((σ - 1) / 2) / ((σ - 1) / 2)) / t ^ σ :=
      div_le_div_of_nonneg_right hlog hpow.le
    _ = (2 / (σ - 1)) * t ^ (-(σ + 1) / 2) := by
      rw [← div_div_eq_div_mul, ← Real.rpow_sub htpos]
      congr 1
      · ring
      · ring


/-- Integrability of the original logarithmic-power kernel follows
from the explicit negative-power majorant on the positive tail. -/
theorem logarithmicPowerTailKernel_integrableOn_Ioi
    (σ : ℝ) (N : ℕ) (hσ : 1 < σ) (hN : 3 ≤ N) :
    IntegrableOn (logarithmicPowerTailKernel σ) (Set.Ioi (N : ℝ)) := by
  have hconstant : 0 ≤ 2 / (σ - 1) := by positivity
  have hdom : IntegrableOn
      (fun t : ℝ => (2 / (σ - 1)) * t ^ (-(σ + 1) / 2))
      (Set.Ioi (N : ℝ)) :=
    (integrableOn_comparison_rpow_Ioi σ N hσ hN).const_mul _
  apply Integrable.mono' hdom (by fun_prop)
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  have htthree : 3 ≤ t := by
    have hNt : (N : ℝ) < t := Set.mem_Ioi.mp ht
    exact le_trans (by exact_mod_cast hN) hNt.le
  have hnonneg := logarithmicPowerTailKernel_nonneg σ t htthree
  have hbound := logarithmicPowerTailKernel_le_comparison σ t hσ htthree
  simpa [Real.norm_eq_abs, abs_of_nonneg hnonneg] using hbound


/-- The elementary primitive for the logarithmic-power tail, with
an explicit positive-distance denominator. -/
def logarithmicPowerTailPrimitive (σ t : ℝ) : ℝ :=
  -(t ^ (1 - σ) *
    (Real.log t / (σ - 1) + 1 / (σ - 1) ^ 2))

/-- Source-level derivative candidate on the positive half-line.
The real-power and logarithmic product rule are the only calculus inputs. -/
theorem logarithmicPowerTailPrimitive_hasDerivAt
    (σ t : ℝ) (hσ : 1 < σ) (ht : 0 < t) :
    HasDerivAt (logarithmicPowerTailPrimitive σ)
      (logarithmicPowerTailKernel σ t) t := by
  have hden : σ - 1 ≠ 0 := ne_of_gt (by linarith)
  have hpow : HasDerivAt (fun x : ℝ => x ^ (1 - σ))
      ((1 - σ) * t ^ ((1 - σ) - 1)) t :=
    (hasDerivAt_id t).rpow_const (Or.inl ht.ne')
  have hlog : HasDerivAt (fun x : ℝ => Real.log x)
      t⁻¹ t := Real.hasDerivAt_log ht.ne'
  have hinner : HasDerivAt
      (fun x : ℝ => Real.log x / (σ - 1) + 1 / (σ - 1) ^ 2)
      (t⁻¹ / (σ - 1)) t := by
    convert (hlog.div_const (σ - 1)).add_const (1 / (σ - 1) ^ 2) using 1
    simp
  unfold logarithmicPowerTailPrimitive logarithmicPowerTailKernel
  convert (hpow.mul hinner).neg using 1
  · field_simp
    rw [← Real.rpow_sub ht]
    field_simp
    ring
  · rfl


/-- The negative-power factor in the logarithmic-tail primitive vanishes
at positive infinity. The logarithmic product remains a separate limit. -/
theorem logarithmicPowerTailPrimitive_power_tendsto_zero
    (σ : ℝ) (hσ : 1 < σ) :
    Filter.Tendsto (fun t : ℝ => t ^ (1 - σ))
      Filter.atTop (nhds (0 : ℝ)) := by
  convert Real.tendsto_rpow_neg_atTop (show 0 < σ - 1 by linarith) using 1
  · ext t
    congr 1
    ring


/-- The logarithm is negligible compared to every positive real
power at infinity. This is the exact asymptotic input for the
logarithmic factor in the primitive. -/
theorem logarithmicPowerTailPrimitive_log_isLittleO
    (σ : ℝ) (hσ : 1 < σ) :
    Real.log =o[Filter.atTop] (fun t : ℝ => t ^ ((σ - 1) / 2)) := by
  exact Real.isLittleO_log_rpow_atTop (show 0 < (σ - 1) / 2 by linarith)


/-- The logarithmic factor divided by its positive-power benchmark
vanishes at infinity. This is the ratio consequence of the
already pinned little-o estimate, before multiplication by the
remaining negative power. -/
theorem logarithmicPowerTailPrimitive_log_ratio_tendsto_zero
    (σ : ℝ) (hσ : 1 < σ) :
    Filter.Tendsto
      (fun t : ℝ => Real.log t / t ^ ((σ - 1) / 2))
      Filter.atTop (nhds (0 : ℝ)) := by
  exact (logarithmicPowerTailPrimitive_log_isLittleO σ hσ).tendsto_div_nhds_zero


/-- The logarithmic term of the tail primitive vanishes at infinity
for every exponent strictly above one. -/
theorem logarithmicPowerTailPrimitive_log_power_tendsto_zero
    (σ : ℝ) (hσ : 1 < σ) :
    Filter.Tendsto (fun t : ℝ => t ^ (1 - σ) * Real.log t)
      Filter.atTop (nhds (0 : ℝ)) := by
  have hhalf : 0 < (σ - 1) / 2 := by linarith
  have hratio := logarithmicPowerTailPrimitive_log_ratio_tendsto_zero σ hσ
  have hpower := Real.tendsto_rpow_neg_atTop hhalf
  have hmul := hratio.mul hpower
  have heq : (fun t : ℝ =>
      (Real.log t / t ^ ((σ - 1) / 2)) * t ^ (-((σ - 1) / 2))) =ᶠ[Filter.atTop]
      (fun t : ℝ => t ^ (1 - σ) * Real.log t) := by
    filter_upwards [Filter.eventually_gt_atTop (0 : ℝ)] with t ht
    have hpow : t ^ ((σ - 1) / 2) ≠ 0 := ne_of_gt (Real.rpow_pos_of_pos ht _)
    rw [div_eq_mul_inv, ← Real.rpow_neg ht.le, ← mul_assoc,
      ← Real.rpow_add ht]
    congr 1
    ring
  exact hmul.congr' heq


/-- The entire logarithmic-power primitive tends to zero at positive
infinity. This is a boundary-limit supplier, not yet an integral formula. -/
theorem logarithmicPowerTailPrimitive_tendsto_zero
    (σ : ℝ) (hσ : 1 < σ) :
    Filter.Tendsto (logarithmicPowerTailPrimitive σ)
      Filter.atTop (nhds (0 : ℝ)) := by
  have hlog := logarithmicPowerTailPrimitive_log_power_tendsto_zero σ hσ
  have hpow := logarithmicPowerTailPrimitive_power_tendsto_zero σ hσ
  have hsum :=
    (hlog.div_const (σ - 1)).add
      (hpow.mul_const (1 / (σ - 1) ^ 2))
  have hneg := hsum.neg
  convert hneg using 1
  · ext t
    simp only [logarithmicPowerTailPrimitive]
    ring
  · simp


/-- Exact positive-tail integral of the logarithmic-power kernel.
This invokes the improper fundamental theorem with its derivative,
integrability and boundary-limit premises separately supplied. -/
theorem logarithmicPowerTailKernel_integral_Ioi
    (σ : ℝ) (N : ℕ) (hσ : 1 < σ) (hN : 3 ≤ N) :
    (∫ t in Set.Ioi (N : ℝ), logarithmicPowerTailKernel σ t) =
      (N : ℝ) ^ (1 - σ) *
        (Real.log (N : ℝ) / (σ - 1) + 1 / (σ - 1) ^ 2) := by
  have hderiv :
      ∀ t ∈ Set.Ici (N : ℝ),
        HasDerivAt (logarithmicPowerTailPrimitive σ)
          (logarithmicPowerTailKernel σ t) t := by
    intro t ht
    apply logarithmicPowerTailPrimitive_hasDerivAt σ t hσ
    have hNpos : (0 : ℝ) < (N : ℝ) := by exact_mod_cast (show 0 < N by omega)
    exact lt_of_lt_of_le hNpos ht
  have hftc :=
    MeasureTheory.integral_Ioi_of_hasDerivAt_of_tendsto'
      hderiv (logarithmicPowerTailKernel_integrableOn_Ioi σ N hσ hN)
      (logarithmicPowerTailPrimitive_tendsto_zero σ hσ)
  simpa [logarithmicPowerTailPrimitive] using hftc


/-- Explicit upper bound for the reindexed logarithmic Dirichlet
series tail beyond N. No cancellation or zero-free region is used. -/
theorem logarithmicPowerTailKernel_tsum_add_le
    (σ : ℝ) (N : ℕ) (hσ : 1 < σ) (hN : 3 ≤ N) :
    (∑' n : ℕ, logarithmicPowerTailKernel σ ((n + N + 1 : ℕ) : ℝ)) ≤
      (N : ℝ) ^ (1 - σ) *
        (Real.log (N : ℝ) / (σ - 1) + 1 / (σ - 1) ^ 2) := by
  have hanti :
      AntitoneOn (logarithmicPowerTailKernel σ) (Set.Ici (N : ℝ)) :=
    (logarithmicPowerTailKernel_antitoneOn_three σ hσ).mono
      (Set.Ici_subset_Ici.mpr (by exact_mod_cast hN))
  have hnonneg :
      ∀ t ∈ Set.Ioi (N : ℝ), 0 ≤ logarithmicPowerTailKernel σ t := by
    intro t ht
    apply logarithmicPowerTailKernel_nonneg
    exact le_trans (by exact_mod_cast hN) (le_of_lt ht)
  calc
    (∑' n : ℕ, logarithmicPowerTailKernel σ ((n + N + 1 : ℕ) : ℝ)) ≤
        ∫ t in Set.Ioi (N : ℝ), logarithmicPowerTailKernel σ t :=
      hanti.tsum_comp_add_le_integral N
        (logarithmicPowerTailKernel_integrableOn_Ioi σ N hσ hN) hnonneg
    _ = _ := logarithmicPowerTailKernel_integral_Ioi σ N hσ hN


/-- Finite reindexing of the strict tail: the terms numbered
N+1,...,N+K coincide with the first K shifted terms.
An infinite-tsum identification requires its own summability bridge. -/
theorem logarithmicPowerTailKernel_sum_Ico_eq_range
    (σ : ℝ) (N K : ℕ) :
    (∑ n ∈ Finset.Ico (N + 1) (N + 1 + K),
      logarithmicPowerTailKernel σ (n : ℝ)) =
    ∑ k ∈ Finset.range K,
      logarithmicPowerTailKernel σ ((k + N + 1 : ℕ) : ℝ) := by
  rw [Finset.sum_Ico_eq_sum_range]
  congr 1
  ext k
  simp only [add_assoc, add_comm, add_left_comm]


/-- Absolute summability of the real logarithmic-power sequence.
This supplies the convergence prerequisite for passing from finite
strict-tail reindexing to a full infinite-tail identity. -/
theorem logarithmicPowerTailKernel_summable_nat
    (σ : ℝ) (hσ : 1 < σ) :
    Summable (fun n : ℕ => logarithmicPowerTailKernel σ (n : ℝ)) := by
  have hanti :
      AntitoneOn (logarithmicPowerTailKernel σ) (Set.Ici (3 : ℝ)) :=
    logarithmicPowerTailKernel_antitoneOn_three σ hσ
  have hint :
      IntegrableOn (logarithmicPowerTailKernel σ) (Set.Ioi (3 : ℝ)) :=
    logarithmicPowerTailKernel_integrableOn_Ioi σ 3 hσ (by omega)
  have hnonneg :
      ∀ t ∈ Set.Ioi (3 : ℝ), 0 ≤ logarithmicPowerTailKernel σ t := by
    intro t ht
    exact logarithmicPowerTailKernel_nonneg σ t (le_of_lt ht)
  exact hanti.summable_of_integrableOn_Ioi hint hnonneg


/-- Infinite shifted tail as the full convergent logarithmic-power
series minus its initial segment. This is a summability-based
infinite reindexing, with no formal conditional-sum assumptions. -/
theorem logarithmicPowerTailKernel_tsum_shift_eq_sub_prefix
    (σ : ℝ) (N : ℕ) (hσ : 1 < σ) :
    (∑' k : ℕ, logarithmicPowerTailKernel σ ((k + N + 1 : ℕ) : ℝ)) =
      (∑' n : ℕ, logarithmicPowerTailKernel σ (n : ℝ)) -
      ∑ n ∈ Finset.range (N + 1), logarithmicPowerTailKernel σ (n : ℝ) := by
  have hs := logarithmicPowerTailKernel_summable_nat σ hσ
  have hsplit := hs.sum_add_tsum_nat_add (N + 1)
  rw [hsplit]
  ring


/-- Quantitative estimate for the full logarithmic-power series
after removal of the finite prefix through N. This presentation is
independent of any indicator-sum reindexing convention. -/
theorem logarithmicPowerTailKernel_tsum_sub_prefix_le
    (σ : ℝ) (N : ℕ) (hσ : 1 < σ) (hN : 3 ≤ N) :
    (∑' n : ℕ, logarithmicPowerTailKernel σ (n : ℝ)) -
        ∑ n ∈ Finset.range (N + 1), logarithmicPowerTailKernel σ (n : ℝ) ≤
      (N : ℝ) ^ (1 - σ) *
        (Real.log (N : ℝ) / (σ - 1) + 1 / (σ - 1) ^ 2) := by
  rw [← logarithmicPowerTailKernel_tsum_shift_eq_sub_prefix σ N hσ]
  exact logarithmicPowerTailKernel_tsum_add_le σ N hσ hN


/-- Exact complex-power denominator norm at positive natural indices.
This isolates the analytic normalization needed for coefficient bounds. -/
theorem norm_nat_cpow_neg_eq_rpow
    (n : ℕ) (s : ℂ) (hn : 0 < n) :
    ‖((n : ℂ) ^ (-s))‖ = (n : ℝ) ^ (-s.re) := by
  have hnreal : (0 : ℝ) < n := by exact_mod_cast hn
  rw [← Complex.ofReal_natCast]
  simpa only [Complex.neg_re] using
    (Complex.norm_cpow_eq_rpow_re_of_pos hnreal (-s))


/-- Pointwise upper bound for the exact complex Dirichlet-twisted
von Mangoldt coefficient after multiplying by its complex-power
Dirichlet-series weight. This is an absolute bound, not cancellation. -/
theorem norm_dirichletVonMangoldtCoefficient_mul_cpow_le
    (q n : ℕ) (χ : DirichletCharacter ℂ q) (s : ℂ)
    (hn : 0 < n) :
    ‖dirichletVonMangoldtCoefficient q χ n * ((n : ℂ) ^ (-s))‖ ≤
      logarithmicPowerTailKernel s.re (n : ℝ) := by
  have hnreal : (0 : ℝ) < n := by exact_mod_cast hn
  have hpow : 0 ≤ (n : ℝ) ^ (-s.re) := Real.rpow_nonneg hnreal.le _
  rw [norm_mul, norm_nat_cpow_neg_eq_rpow n s hn]
  unfold logarithmicPowerTailKernel
  rw [Real.rpow_neg hnreal.le, div_eq_mul_inv]
  exact mul_le_mul_of_nonneg_right
    (norm_dirichletVonMangoldtCoefficient_le_log q n χ) hpow


/-- Shifted absolute Dirichlet terms are summable in the open
right half-plane, by the established logarithmic majorant. -/
theorem summable_norm_dirichletVonMangoldt_shifted
    (q N : ℕ) (χ : DirichletCharacter ℂ q)
    (s : ℂ) (hs : 1 < s.re) :
    Summable (fun k : ℕ =>
      ‖dirichletVonMangoldtCoefficient q χ (k + N + 1) *
        (((k + N + 1 : ℕ) : ℂ) ^ (-s))‖) := by
  have hmajor : Summable (fun k : ℕ =>
      logarithmicPowerTailKernel s.re (((k + N + 1 : ℕ) : ℝ))) :=
    (logarithmicPowerTailKernel_summable_nat s.re hs).comp_injective
      (fun i j hij => by omega)
  apply Summable.of_nonneg_of_le (fun _ => norm_nonneg _) (fun k => ?_) hmajor
  exact norm_dirichletVonMangoldtCoefficient_mul_cpow_le q (k + N + 1) χ s
    (by omega)


/-- Explicit shifted complex Dirichlet-tail norm bound in the
half-plane of absolute convergence. No character cancellation is used. -/
theorem norm_tsum_dirichletVonMangoldt_shifted_le
    (q N : ℕ) (χ : DirichletCharacter ℂ q)
    (s : ℂ) (hs : 1 < s.re) (hN : 3 ≤ N) :
    ‖∑' k : ℕ, dirichletVonMangoldtCoefficient q χ (k + N + 1) *
        (((k + N + 1 : ℕ) : ℂ) ^ (-s))‖ ≤
      (N : ℝ) ^ (1 - s.re) *
        (Real.log (N : ℝ) / (s.re - 1) + 1 / (s.re - 1) ^ 2) := by
  have hnorm := summable_norm_dirichletVonMangoldt_shifted q N χ s hs
  have hterms : ∀ k : ℕ,
      ‖dirichletVonMangoldtCoefficient q χ (k + N + 1) *
          (((k + N + 1 : ℕ) : ℂ) ^ (-s))‖ ≤
        logarithmicPowerTailKernel s.re (((k + N + 1 : ℕ) : ℝ)) := by
    intro k
    exact norm_dirichletVonMangoldtCoefficient_mul_cpow_le q (k + N + 1) χ s
      (by omega)
  calc
    ‖∑' k : ℕ, dirichletVonMangoldtCoefficient q χ (k + N + 1) *
        (((k + N + 1 : ℕ) : ℂ) ^ (-s))‖ ≤
      ∑' k : ℕ, ‖dirichletVonMangoldtCoefficient q χ (k + N + 1) *
        (((k + N + 1 : ℕ) : ℂ) ^ (-s))‖ := norm_tsum_le_tsum_norm hnorm
    _ ≤ ∑' k : ℕ,
        logarithmicPowerTailKernel s.re (((k + N + 1 : ℕ) : ℝ)) := by
      exact Summable.tsum_le_tsum hterms hnorm
        ((logarithmicPowerTailKernel_summable_nat s.re hs).comp_injective
          (fun i j hij => by omega))
    _ ≤ _ := logarithmicPowerTailKernel_tsum_add_le s.re N hs hN


/-- The actual Mathlib L-series term agrees with the GRWTSK
coefficient times the negative complex power at positive indices.
The exceptional zero index is handled by Mathlib's term definition. -/
theorem dirichletVonMangoldt_LSeries_term_pos
    (q n : ℕ) (χ : DirichletCharacter ℂ q) (s : ℂ)
    (hn : 0 < n) :
    LSeries.term (dirichletVonMangoldtCoefficient q χ) s n =
      dirichletVonMangoldtCoefficient q χ n * ((n : ℂ) ^ (-s)) := by
  have hn0 : n ≠ 0 := Nat.ne_of_gt hn
  simpa only [LSeries.term_of_ne_zero hn0, cpow_neg, div_eq_mul_inv] using
    (show dirichletVonMangoldtCoefficient q χ n / (n : ℂ) ^ s =
      dirichletVonMangoldtCoefficient q χ n * ((n : ℂ) ^ (-s)) by
      rw [cpow_neg, div_eq_mul_inv])

/-- In the open half-plane of absolute convergence, the actual
Mathlib L-series is its first N+1 terms plus the shifted tail. -/
theorem dirichletVonMangoldt_LSeries_eq_prefix_add_shifted
    (q N : ℕ) (χ : DirichletCharacter ℂ q)
    (s : ℂ) (hs : 1 < s.re) :
    LSeries.L (dirichletVonMangoldtCoefficient q χ) s =
      (∑ n ∈ Finset.range (N + 1),
        LSeries.term (dirichletVonMangoldtCoefficient q χ) s n) +
      (∑' k : ℕ,
        dirichletVonMangoldtCoefficient q χ (k + N + 1) *
          (((k + N + 1 : ℕ) : ℂ) ^ (-s))) := by
  have hsum :
      Summable (LSeries.term (dirichletVonMangoldtCoefficient q χ) s) :=
    dirichlet_coefficient_LSeriesSummable q χ s hs
  have hsplit := hsum.sum_add_tsum_nat_add (N + 1)
  change (∑' n : ℕ, LSeries.term (dirichletVonMangoldtCoefficient q χ) s n) = _
  calc
    (∑' n : ℕ, LSeries.term (dirichletVonMangoldtCoefficient q χ) s n) =
        (∑ n ∈ Finset.range (N + 1),
          LSeries.term (dirichletVonMangoldtCoefficient q χ) s n) +
        (∑' k : ℕ,
          LSeries.term (dirichletVonMangoldtCoefficient q χ) s (k + (N + 1))) :=
      hsplit
    _ = _ := by
      congr 1
      apply tsum_congr
      intro k
      simpa only [add_assoc] using
        (dirichletVonMangoldt_LSeries_term_pos q (k + N + 1) χ s (by omega))


/-- Explicit finite-prefix truncation error for the actual Mathlib
von Mangoldt–Dirichlet L-series in its absolute convergence region.
This is not a cancellation or analytic-continuation statement. -/
theorem norm_dirichletVonMangoldt_LSeries_sub_prefix_le
    (q N : ℕ) (χ : DirichletCharacter ℂ q)
    (s : ℂ) (hs : 1 < s.re) (hN : 3 ≤ N) :
    ‖LSeries.L (dirichletVonMangoldtCoefficient q χ) s -
        (∑ n ∈ Finset.range (N + 1),
          LSeries.term (dirichletVonMangoldtCoefficient q χ) s n)‖ ≤
      (N : ℝ) ^ (1 - s.re) *
        (Real.log (N : ℝ) / (s.re - 1) + 1 / (s.re - 1) ^ 2) := by
  have hdecomp := dirichletVonMangoldt_LSeries_eq_prefix_add_shifted q N χ s hs
  have htail := norm_tsum_dirichletVonMangoldt_shifted_le q N χ s hs hN
  rw [hdecomp]
  simpa only [add_sub_cancel_left] using htail

end GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtCharacterCorrection
