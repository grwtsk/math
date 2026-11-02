/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDirichletResidueParseval
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDirichletLowGcdEnergySandwich
import GRWTSK.MeasureAndIntegration.GramDiagonalBound
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory Set

/-!
# Exact large-modulus Dirichlet-family mean square, ORIGINAL source

When q > N(T)=floor(exp T), residues of the original positive
indices 1..N are DISTINCT modulo q. Finite character
orthogonality therefore annihilates ALL OFFDIAGONAL original
ordered Möbius Gram pairs after summing over ALL χ mod q.
The full averaged Hermitian Gram is EXACTLY the unit-restricted
ORIGINAL source diagonal:
  sum_(chi mod q) E_chi,finite(T) =
    phi(q)*sum_(n<=N, IsUnit(n mod q)) mu(n)^2 K_T(n,n).

This is a genuine q-varying character-family averaging
identity, never an individual-character bound. Combined with
the old ORIGINAL quadratic diagonal estimate gives, T>=0:
  sum_chi E_chi,finite(T) <= phi(q)*2*T^2.

For q prime >N, all n in [1,N] are units and the RHS is
exactly phi(q)*pickupDiagonal(T). Even then q grows with N;
it is not a fixed primitive-character GRH conclusion.
No false transfer from all-characters average to primitive-only
or fixed-character arithmetic is made.

This source uses the EXACT previous Hermitian Gram-to-finite
energy candidate and pinned Mathlib character orthogonality,
not a synthetic statistical model. Lean native/kernel checks
are NOT_RUN; all declarations remain SOURCE PROOF CANDIDATES.
-/

namespace GRWTSK.NumberTheory.Moebius.DirichletLargeModulusEnergy

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.LFunctionFamilyInverse
open GRWTSK.NumberTheory.Moebius.LFunctionHermitianPickup
open GRWTSK.NumberTheory.Moebius.LFunctionComplexGramClosure
open GRWTSK.NumberTheory.Moebius.DirichletResidueOrthogonality
open GRWTSK.NumberTheory.Moebius.DirichletResidueParseval

variable (q : ℕ) [NeZero q]
classical

private theorem complex_re_sum {α : Type*} [DecidableEq α]
    (S : Finset α) (f : α → ℂ) :
    (∑ a ∈ S, f a).re = ∑ a ∈ S, (f a).re := by
  induction S using Finset.induction_on with
  | empty => simp
  | @insert a S ha ih =>
      simp only [Finset.sum_insert ha, Complex.add_re, ih]

/-- The actual Dirichlet family Hermitian pair is EXACTLY
classical mu(m)mu(n)K_T(m,n) with the true complex
character and its conjugate. -/
private theorem familyHermitianKernel_eq_character_source
    (χ : DirichletCharacter ℂ q) (T : ℝ) (m n : ℕ) :
    familyHermitianKernel (dirichletCharacterCoefficients χ) T m n =
      χ (m : ZMod q) * star (χ (n : ZMod q)) *
        originalSourcePair T m n := by
  unfold familyHermitianKernel originalSourcePair
  rw [dirichletCharacter_mobius_apply χ m,
    dirichletCharacter_mobius_apply χ n]
  simp only [star_mul, star_intCast]
  ring

/-- The literal source offdiagonal Hermitian character cross
is the REAL part of the exact original Möbius-weighted
character-source packet (no synthetic Fourier model). -/
private theorem familyCross_eq_originalOffdiag_re
    (χ : DirichletCharacter ℂ q) (T : ℝ) :
    familyCross (dirichletCharacterCoefficients χ) T =
      (∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
        χ (m : ZMod q) * star (χ (n : ZMod q)) *
          (if m ≠ n then originalSourcePair T m n else 0)).re := by
  unfold familyCross
  congr 1
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hne : m ≠ n
  · simp only [if_pos hne]
    exact familyHermitianKernel_eq_character_source q χ T m n
  · simp [hne]

/-- FOR q>N, all true Dirichlet-character signed OFFDIAGONAL
Möbius physical Grams sum to ZERO, with both original orders
and exact Hermitian conjugation. q is allowed to depend on T;
this is not a fixed-character GRH-strength estimate. -/
theorem allCharactersOffdiagCross_zero
    (T : ℝ) (hq : ⌊Real.exp T⌋₊ < q) :
    (∑ χ : DirichletCharacter ℂ q,
      familyCross (dirichletCharacterCoefficients χ) T) = 0 := by
  have hz :=
    originalOffdiag_characterAverage_zero_of_largeModulus q T hq
  have hre := congrArg Complex.re hz
  have heq :
      (∑ χ : DirichletCharacter ℂ q,
        ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
          χ (m : ZMod q) * star (χ (n : ZMod q)) *
            (if m ≠ n then originalSourcePair T m n else 0)).re =
        ∑ χ : DirichletCharacter ℂ q,
          familyCross (dirichletCharacterCoefficients χ) T := by
    rw [complex_re_sum]
    apply Finset.sum_congr rfl
    intro χ hχ
    exact (familyCross_eq_originalOffdiag_re q χ T).symm
  rw [heq] at hre
  simpa using hre

/-- Original actual full complex Hermitian ordered source,
averaged over the complete character family. This projection
keeps all diagonal pairs and both orientations. -/
theorem allCharactersFullGram_eq_residueProjection (T : ℝ) :
    (∑ χ : DirichletCharacter ℂ q,
      familyFullGram (dirichletCharacterCoefficients χ) T) =
      (q.totient : ℂ) *
        (∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
          if IsUnit (n : ZMod q) ∧
             (m : ZMod q) = (n : ZMod q)
          then originalSourcePair T m n else 0) := by
  calc
    _ = ∑ χ : DirichletCharacter ℂ q,
        ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
          χ (m : ZMod q) * star (χ (n : ZMod q)) *
            originalSourcePair T m n := by
      apply Finset.sum_congr rfl
      intro χ hχ
      unfold familyFullGram
      apply Finset.sum_congr rfl
      intro m hm
      apply Finset.sum_congr rfl
      intro n hn
      exact familyHermitianKernel_eq_character_source q χ T m n
    _ = _ := originalFullGram_characterAverage q T

/-- No two distinct source indices inside [1,N] have equal
ZMod q residues when q>N. This is literally the ZMod
natCast modulus equivalence, not a probabilistic property. -/
private theorem endpoint_residue_injective
    {T : ℝ} (hq : ⌊Real.exp T⌋₊ < q)
    {m n : ℕ}
    (hm : m ∈ endpointIndex T)
    (hn : n ∈ endpointIndex T)
    (h : (m : ZMod q) = (n : ZMod q)) : m = n := by
  have hm_lt : m < q := (Finset.mem_Icc.mp hm).2.trans_lt hq
  have hn_lt : n < q := (Finset.mem_Icc.mp hn).2.trans_lt hq
  have heq := (ZMod.natCast_eq_natCast_iff' m n q).mp h
  simpa [Nat.mod_eq_of_lt hm_lt,
    Nat.mod_eq_of_lt hn_lt] using heq

/-- At q>N, even the FULL original Hermitian averaged source
reduces to the unit-supported literal ORIGINAL source diagonal. -/
theorem allCharactersFullGram_eq_unitDiagonal
    (T : ℝ) (hq : ⌊Real.exp T⌋₊ < q) :
    (∑ χ : DirichletCharacter ℂ q,
      familyFullGram (dirichletCharacterCoefficients χ) T) =
      (q.totient : ℂ) *
        (∑ n ∈ endpointIndex T,
          if IsUnit (n : ZMod q)
          then originalSourcePair T n n else 0) := by
  rw [allCharactersFullGram_eq_residueProjection q T]
  congr 1
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hu : IsUnit (n : ZMod q)
  · calc
      (∑ m ∈ endpointIndex T,
        if IsUnit (n : ZMod q) ∧
           (m : ZMod q) = (n : ZMod q)
        then originalSourcePair T m n else 0) =
          ∑ m ∈ endpointIndex T,
            if m = n then originalSourcePair T m n else 0 := by
          apply Finset.sum_congr rfl
          intro m hm
          by_cases hmn : m = n
          · subst m
            simp [hu]
          · have hne :
                (m : ZMod q) ≠ (n : ZMod q) := by
              intro h
              exact hmn (endpoint_residue_injective q hq hm hn h)
            simp [hu, hmn, hne]
      _ = originalSourcePair T n n := by simp [hn]
      _ = if IsUnit (n : ZMod q)
            then originalSourcePair T n n else 0 := by simp [hu]
  · simp [hu]

/-- The actual original μ(n)² diagonal is a REAL-valued
complex source entry with no loss of coefficient magnitude. -/
private theorem originalSourcePair_diagonal
    (T : ℝ) (n : ℕ) :
    originalSourcePair T n n =
      (((moebiusReal n)^2 * pickupResponseGram T n n : ℝ) : ℂ) := by
  unfold originalSourcePair moebiusReal
  push_cast
  ring

/-- Exact finite family MEAN SQUARE for any modulus q>N.
All characters include principal and imprimitive characters;
no assumption on the arithmetic signs and no GRH. -/
theorem allCharactersEnergy_eq_unitDiagonal
    (T : ℝ) (hT : 0 ≤ T) (hq : ⌊Real.exp T⌋₊ < q) :
    (∑ χ : DirichletCharacter ℂ q,
      familyFiniteResponseEnergy
        (dirichletCharacterCoefficients χ) T) =
      (q.totient : ℝ) *
        (∑ n ∈ endpointIndex T,
          if IsUnit (n : ZMod q)
          then (moebiusReal n)^2 *
            pickupResponseGram T n n else 0) := by
  have hE (χ : DirichletCharacter ℂ q) :
      familyFiniteResponseEnergy
        (dirichletCharacterCoefficients χ) T =
        (familyFullGram
          (dirichletCharacterCoefficients χ) T).re :=
    (familyHermitianFiniteGram_proof
      (dirichletCharacterCoefficients χ) T hT).symm
  have hfull := allCharactersFullGram_eq_unitDiagonal q T hq
  have hreal := congrArg Complex.re hfull
  have hleft :
      (∑ χ : DirichletCharacter ℂ q,
        familyFullGram
          (dirichletCharacterCoefficients χ) T).re =
        ∑ χ : DirichletCharacter ℂ q,
          (familyFullGram
            (dirichletCharacterCoefficients χ) T).re := by
    exact complex_re_sum Finset.univ _
  rw [hleft] at hreal
  have hright :
      ((q.totient : ℂ) *
        (∑ n ∈ endpointIndex T,
          if IsUnit (n : ZMod q)
          then originalSourcePair T n n else 0)).re =
        (q.totient : ℝ) *
          (∑ n ∈ endpointIndex T,
            if IsUnit (n : ZMod q)
            then (moebiusReal n)^2 *
              pickupResponseGram T n n else 0) := by
    simp_rw [originalSourcePair_diagonal]
    norm_cast
  rw [hright] at hreal
  calc
    _ = ∑ χ : DirichletCharacter ℂ q,
        (familyFullGram
          (dirichletCharacterCoefficients χ) T).re := by
      apply Finset.sum_congr rfl
      intro χ hχ
      exact hE χ
    _ = _ := hreal

private theorem diagonal_causal_nonneg
    (T : ℝ) (hT : 0 ≤ T) (n : ℕ) :
    0 ≤ pickupResponseGram T n n := by
  unfold pickupResponseGram
  exact intervalIntegral.integral_nonneg hT
    (fun u hu => sq_nonneg _)

/-- Original diagonal control holds for EVERY finite q>N,
even composite q, because omitting the nonunit diagonal
terms only decreases the sum of nonnegative original costs. -/
theorem allCharactersEnergy_le_quadraticAverage
    (T : ℝ) (hT : 0 ≤ T) (hq : ⌊Real.exp T⌋₊ < q) :
    (∑ χ : DirichletCharacter ℂ q,
      familyFiniteResponseEnergy
        (dirichletCharacterCoefficients χ) T) ≤
      (q.totient : ℝ) * (2*T^2) := by
  rw [allCharactersEnergy_eq_unitDiagonal q T hT hq]
  have hsum :
      (∑ n ∈ endpointIndex T,
        if IsUnit (n : ZMod q)
        then (moebiusReal n)^2 *
          pickupResponseGram T n n else 0) ≤
      pickupDiagonal T := by
    unfold pickupDiagonal
    apply Finset.sum_le_sum
    intro n hn
    by_cases hu : IsUnit (n : ZMod q)
    · simp [hu]
    · simp only [if_neg hu]
      exact mul_nonneg (sq_nonneg _) (diagonal_causal_nonneg T hT n)
  exact mul_le_mul_of_nonneg_left
    (hsum.trans (pickupDiagonal_quadratic_bound hT).2)
    (by positivity)

end GRWTSK.NumberTheory.Moebius.DirichletLargeModulusEnergy
