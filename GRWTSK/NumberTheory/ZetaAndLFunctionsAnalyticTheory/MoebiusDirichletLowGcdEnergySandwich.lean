/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusLFunctionDirichletFullGcdReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusLFunctionHigherDivisorReturn
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory Set

/-!
# Dirichlet low-gcd Hermitian energy sandwich

For any normalized coefficients F, the exact ORIGINAL complete
Hermitian energy is
  familyFiniteResponseEnergy(F,T)
  = familyLowGcdCross(F,D,T)
    + familyLowGcdSourceDiagonal(F,D,T)
    + familyHighGcdFullGram(F,D,T).
This counts the diagonal ONCE, and the complete high-gcd FULL
packet includes its diagonal n>D.

For actual complex Dirichlet χ, |mu(n)chi(n)|<=|mu(n)|.
Thus the truncated family source diagonal is between zero and
the ORIGINAL pickupDiagonal(T)<=2*T² (T>=0).
The previous complete positive divisor cover pays the FULL
high-gcd signed packet at the same fixed cutoff:
  |HighFull_chi(D_*(T),T)|<=32*T*exp(sqrt T), T>=4.

Consequently, for all χ and T>=4:
  |familyLowGcdCross_chi(D_*,T)
    - familyFiniteResponseEnergy_chi(T)|
       <=2*T²+32*T*exp(sqrt T).
The family signed low-gcd source is therefore subexponentially
close to NONNEGATIVE original causal square energy, just as for
ordinary μ. This does not bound its positive excursions; that
remains the RH/GRH-strength arithmetic requirement.

No analytic GRH return, signed prefix growth or kernel certificate
is asserted. All new Lean bodies are SOURCE PROOF CANDIDATES.
-/

namespace GRWTSK.NumberTheory.Moebius.DirichletLowGcdEnergySandwich

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.LFunctionFamilyInverse
open GRWTSK.NumberTheory.Moebius.LFunctionHermitianPickup
open GRWTSK.NumberTheory.Moebius.LFunctionFamilySieveBridge
open GRWTSK.NumberTheory.Moebius.LFunctionHermitianSieveClosure
open GRWTSK.NumberTheory.Moebius.LFunctionHigherDivisorReturn
open GRWTSK.NumberTheory.Moebius.LFunctionDirichletFullGcdReturn
open GRWTSK.NumberTheory.Moebius.DirichletHermitianHighGcdTransfer
open GRWTSK.NumberTheory.Moebius.FixedSublinearCompensatedEndpoint

classical

/-- This exact family-source ledger uses the full original
Hermitian finite energy, NOT an arbitrary positive Gram model. -/
theorem familyEnergy_eq_lowCross_add_diagonal_add_high
    (F : NormalizedCoefficients) (D : ℕ)
    {T : ℝ} (hT : 0 ≤ T) :
    familyFiniteResponseEnergy F T =
      familyLowGcdCross F D T +
      familyLowGcdSourceDiagonal F D T +
      familyHighGcdFullGram F D T := by
  have hf := familyFullGram_eq_lowGcdFull_add_high F D T
  have he := familyHermitianFiniteGram_proof F T hT
  have hd := familyLowGcdFullGram_eq_cross_add_diagonal F D T
  rw [he,hd] at hf
  linarith

private theorem diagonal_causal_nonneg
    (T : ℝ) (hT : 0 ≤ T) (n : ℕ) :
    0 ≤ pickupResponseGram T n n := by
  unfold pickupResponseGram
  exact intervalIntegral.integral_nonneg hT
    (fun u hu => by positivity)

/-- Dirichlet chi's TRUNCATED diagonal has the original
positive source payment <=2*T², without assuming GRH. -/
theorem dirichletLowGcdDiagonal_le_quadratic
    {q : ℕ} (χ : DirichletCharacter ℂ q)
    (D : ℕ) {T : ℝ} (hT : 0 ≤ T) :
    0 ≤ familyLowGcdSourceDiagonal
      (dirichletCharacterCoefficients χ) D T ∧
    familyLowGcdSourceDiagonal
      (dirichletCharacterCoefficients χ) D T ≤ 2*T^2 := by
  let F := dirichletCharacterCoefficients χ
  have hnonn :
      0 ≤ familyLowGcdSourceDiagonal F D T := by
    unfold familyLowGcdSourceDiagonal
    apply Finset.sum_nonneg
    intro n hn
    by_cases hd : n ≤ D
    · simp only [if_pos hd]
      exact mul_nonneg (sq_nonneg _) (diagonal_causal_nonneg T hT n)
    · simp [hd]
  have hcomp : familyLowGcdSourceDiagonal F D T ≤
      pickupDiagonal T := by
    unfold familyLowGcdSourceDiagonal pickupDiagonal
    apply Finset.sum_le_sum
    intro n hn
    have hK := diagonal_causal_nonneg T hT n
    have hμ := twistedMobius_norm_le_original χ n
    have hsq :
        ‖F.mobius n‖^2 ≤ (moebiusReal n)^2 := by
      have hs := (sq_le_sq₀ (norm_nonneg _)
        (abs_nonneg _)).mpr hμ
      simpa only [sq_abs] using hs
    by_cases hd : n ≤ D
    · simpa only [if_pos hd] using
        mul_le_mul_of_nonneg_right hsq hK
    · simp only [if_neg hd]
      exact mul_nonneg (sq_nonneg _) hK
  constructor
  · exact hnonn
  · exact hcomp.trans (pickupDiagonal_quadratic_bound hT).2

/-- The signed fixed Dirichlet low-gcd Hermitian source is
within a SUBEXPONENTIAL elementary allowance of the original
nonnegative complex causal full energy. All ordered source
orientations and the correct truncated diagonal are retained. -/
theorem dirichletLowGcd_fixed_energy_abs_le
    {q : ℕ} (χ : DirichletCharacter ℂ q)
    {T : ℝ} (hT : 4 ≤ T) :
    |familyLowGcdCross (dirichletCharacterCoefficients χ)
      (fixedGcdCutoff T) T -
      familyFiniteResponseEnergy
        (dirichletCharacterCoefficients χ) T| ≤
      2*T^2+32*T*Real.exp (Real.sqrt T) := by
  have hT0 : 0 ≤ T := by linarith
  have he := familyEnergy_eq_lowCross_add_diagonal_add_high
    (dirichletCharacterCoefficients χ)
    (fixedGcdCutoff T) hT0
  have hd := dirichletLowGcdDiagonal_le_quadratic χ
    (fixedGcdCutoff T) hT0
  have hh := dirichletFullHighGcd_fixed_abs_le χ hT
  have hdiff :
      familyLowGcdCross (dirichletCharacterCoefficients χ)
        (fixedGcdCutoff T) T -
        familyFiniteResponseEnergy
          (dirichletCharacterCoefficients χ) T =
      -(familyLowGcdSourceDiagonal
        (dirichletCharacterCoefficients χ)
          (fixedGcdCutoff T) T +
        familyHighGcdFullGram
          (dirichletCharacterCoefficients χ)
          (fixedGcdCutoff T) T) := by
    linarith
  rw [hdiff,abs_neg]
  calc
    _ ≤ |familyLowGcdSourceDiagonal
        (dirichletCharacterCoefficients χ)
        (fixedGcdCutoff T) T| +
      |familyHighGcdFullGram
        (dirichletCharacterCoefficients χ)
        (fixedGcdCutoff T) T| := abs_add_le _ _
    _ ≤ 2*T^2+32*T*Real.exp (Real.sqrt T) := by
      rw [abs_of_nonneg hd.1]
      linarith

/-- Positivity of the actual original complex square energy
already pays every sufficiently negative excursion of the
signed low-gcd character source. Only its positive upper
bound is GRH-strength. -/
theorem dirichletLowGcd_fixed_lower
    {q : ℕ} (χ : DirichletCharacter ℂ q)
    {T : ℝ} (hT : 4 ≤ T) :
    -(2*T^2+32*T*Real.exp (Real.sqrt T)) ≤
      familyLowGcdCross (dirichletCharacterCoefficients χ)
        (fixedGcdCutoff T) T := by
  have hE := familyFiniteResponseEnergy_nonneg
    (dirichletCharacterCoefficients χ) (by linarith : 0 ≤ T)
  have hlow := (abs_le.mp
    (dirichletLowGcd_fixed_energy_abs_le χ hT)).1
  linarith

end GRWTSK.NumberTheory.Moebius.DirichletLowGcdEnergySandwich
