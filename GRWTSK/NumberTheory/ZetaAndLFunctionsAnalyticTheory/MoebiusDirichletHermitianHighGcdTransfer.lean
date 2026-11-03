/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusLFunctionHermitianPickup
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusCompleteHighGcdElementaryClosure
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Transfer the ORIGINAL positive high-gcd Mobius payment to Dirichlet χ

For EVERY Dirichlet character χ (including imprimitive), its exact
generalized Mobius coefficients are mu_χ(n)=mu(n)*χ(n).
Mathlib DirichletCharacter.norm_le_one gives |χ(n)|<=1, so
  |mu_χ(n)|<=|mu(n)| <=1.
The proper complex/Hermitian signed causal Gram is
  mu_χ(m)*conj(mu_χ(n))*K_T(m,n).
Its positive absolute high-gcd bill is bounded termwise by
the ORIGINAL absolute high-gcd Mobius source, with all original
causal birth supports, ordered orientations and diagonals handled.

Thus the prior elementary complete divisor-cover source gives
  familyWeightedHighGcdCost χ D T <=16*T*N(T)/D, D>=1,T>=0.
For the SAME fixed cutoff D_*(T), the all-rate amount is
  <=32*T*exp(sqrt T).
The all-positive-rate scalar supplier is already authored in
CompleteHighGcdElementaryClosure.

This is a genuine family arithmetic advance, but it supplies
NO signed all-rate bound for familyLowGcdCross χ and NO
Dirichlet-GRH proof. The analytic completion must use the
actual character conductor, gamma factor, principal poles,
complex conjugation and primitive-character GRH target.
-/

namespace GRWTSK.NumberTheory.Moebius.DirichletHermitianHighGcdTransfer

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.LFunctionFamilyInverse
open GRWTSK.NumberTheory.Moebius.LFunctionHermitianPickup
open GRWTSK.NumberTheory.Moebius.UnmaskedLowGcdEndpoint
open GRWTSK.NumberTheory.Moebius.CompleteHighGcdDivisorCover
open GRWTSK.NumberTheory.Moebius.CompleteHighGcdElementaryClosure
open GRWTSK.NumberTheory.Moebius.OriginalGramRootFloorSuppliers
open GRWTSK.NumberTheory.Moebius.FixedSublinearCompensatedEndpoint

classical

/-- The literal character-twisted Mobius coefficient is no larger
than the original real Mobius coefficient in absolute value. -/
theorem twistedMobius_norm_le_original
    {q : ℕ} (χ : DirichletCharacter ℂ q) (n : ℕ) :
    ‖(dirichletCharacterCoefficients χ).mobius n‖ ≤
      |moebiusReal n| := by
  rw [dirichletCharacter_mobius_apply, norm_mul,
    Complex.norm_intCast]
  have hχ : ‖χ (n : ZMod q)‖ ≤ 1 := χ.norm_le_one _
  have hμ : 0 ≤ |(ArithmeticFunction.moebius n : ℝ)| :=
    abs_nonneg _
  calc
    ‖χ (n : ZMod q)‖ *
      |(ArithmeticFunction.moebius n : ℝ)| ≤
      (1 : ℝ)*|(ArithmeticFunction.moebius n : ℝ)| :=
        mul_le_mul_of_nonneg_right hχ hμ
    _ = |moebiusReal n| := by simp [moebiusReal]

/-- No positive term in the complex Dirichlet high-gcd source
exceeds the corresponding unchanged REAL original Mobius bill. -/
theorem dirichletHighGcdCost_le_original
    {q : ℕ} (χ : DirichletCharacter ℂ q)
    (D : ℕ) (T : ℝ) :
    familyWeightedHighGcdCost (dirichletCharacterCoefficients χ)
      D T ≤ plainHighGcdAbsoluteCost D T := by
  unfold familyWeightedHighGcdCost plainHighGcdAbsoluteCost
  apply Finset.sum_le_sum
  intro m hm
  apply Finset.sum_le_sum
  intro n hn
  by_cases hsel : m ≠ n ∧ D < Nat.gcd m n
  · simp only [if_pos hsel]
    have hmμ := twistedMobius_norm_le_original χ m
    have hnμ := twistedMobius_norm_le_original χ n
    have hprod :
        ‖(dirichletCharacterCoefficients χ).mobius m‖ *
          ‖(dirichletCharacterCoefficients χ).mobius n‖ ≤
        |moebiusReal m| * |moebiusReal n| :=
      mul_le_mul hmμ hnμ (norm_nonneg _) (abs_nonneg _)
    have hk := mul_le_mul_of_nonneg_right hprod
      (abs_nonneg (pickupResponseGram T m n))
    simpa [sourceKernel, abs_mul, mul_assoc] using hk
  · simp only [if_neg hsel, le_refl]

/-- Exact positive root-tail for ALL complex characters.
It uses no hypothesis on the character, no conductor-uniform
constant and no signed cancellation. -/
theorem dirichletHighGcdCost_le_root
    {q : ℕ} (χ : DirichletCharacter ℂ q)
    (D : ℕ) (T : ℝ) (hT : 0 ≤ T) (hD : 1 ≤ D) :
    familyWeightedHighGcdCost (dirichletCharacterCoefficients χ)
      D T ≤ 16*T*(⌊Real.exp T⌋₊ : ℝ)/(D : ℝ) := by
  calc
    _ ≤ plainHighGcdAbsoluteCost D T :=
      dirichletHighGcdCost_le_original χ D T
    _ ≤ highGcdDivisorCoverCost D T :=
      plainHighGcdAbsoluteCost_le_divisorCover D T
    _ ≤ _ := divisorCoverRootTail_proof D T hT hD

/-- Fixed original D_*(T), no rate-dependent mask and no
character-dependent positive-tail constant. -/
theorem dirichletHighGcdCost_fixed_sublinear
    {q : ℕ} (χ : DirichletCharacter ℂ q)
    {T : ℝ} (hT : 4 ≤ T) :
    familyWeightedHighGcdCost
      (dirichletCharacterCoefficients χ) (fixedGcdCutoff T) T ≤
      32*T*Real.exp (Real.sqrt T) := by
  have hT0 : 0 ≤ T := by linarith
  have hd := fixedGcdCutoff_pos T
  have hroot :=
    dirichletHighGcdCost_le_root χ
      (fixedGcdCutoff T) T hT0 hd
  have hr := fixedGcdRatio_proof T hT
  calc
    _ ≤ 16*T*(⌊Real.exp T⌋₊ : ℝ)/(fixedGcdCutoff T : ℝ) :=
      hroot
    _ = (16*T)*
      ((⌊Real.exp T⌋₊ : ℝ)/(fixedGcdCutoff T : ℝ)) := by ring
    _ ≤ (16*T)*(2*Real.exp (Real.sqrt T)) :=
      mul_le_mul_of_nonneg_left hr (by positivity)
    _ = 32*T*Real.exp (Real.sqrt T) := by ring

/-- All-positive-rate positive tail for the entire Dirichlet
character family, same cutoff. No signed GRH arithmetic premise. -/
theorem dirichletHighGcdCost_all_rates
    {q : ℕ} (χ : DirichletCharacter ℂ q) :
    FamilyWeightedHighGcdEveryRate
      (dirichletCharacterCoefficients χ) fixedGcdCutoff := by
  intro ε hε
  obtain ⟨C,R,hC,hR,hScalar⟩ :=
    completeHighGcdScalarEveryRate_proof ε hε
  refine ⟨C,R,hC,by linarith,?_⟩
  intro T hTR
  exact (dirichletHighGcdCost_fixed_sublinear χ (hR.trans hTR)).trans
    (hScalar T hTR)

end GRWTSK.NumberTheory.Moebius.DirichletHermitianHighGcdTransfer
