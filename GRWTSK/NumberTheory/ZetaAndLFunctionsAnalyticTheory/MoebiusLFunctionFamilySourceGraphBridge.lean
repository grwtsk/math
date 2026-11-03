/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDirichletHermitianHighGcdTransfer
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusLFunctionEulerSynthesis
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusLFunctionIdealNormFamilies
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Source graph bridge: complex family low/high gcd ledger

The previous family files already define:
  normalized Dirichlet coefficients a_L and actual mu_L=a_L^(-1),
  the original physical-time K_T(m,n), unchanged,
  the Hermitian weight mu_L(m)*star(mu_L(n)),
  familyCross(T), familyLowGcdCross(D,T),
  familyWeightedHighGcdCost(D,T),
  the characterwise POSITIVE high-gcd tail,
  Euler polynomial synthesis and exact ideal norm fibers.

The missing algebraic edge was the family-specific equivalent of
  original pickupCross=plainLowGcdCross+plainHighGcdCross.
This module proves that finite partition as a source candidate,
and proves the Hermitian high-gcd signed contribution cannot
exceed the true positive family-specific weighted high-gcd cost.
For complex characters, this requires both orientations and the
conjugated second factor. No 'real Mobius sign' shortcut is allowed.

For every Dirichlet character χ, the already-published positive
root-tail then supplies an elementary endpoint CROSS bound:
  familyCross χ T <=
    familyLowGcdCross χ D_*(T) T +32*T*exp(sqrt T), T>=4.
This is NOT the actual Dirichlet endpoint quadrature or a GRH
return; the family-specific prefix/Gram integral identity and
the Mellin/explicit-formula bridge remain OPEN.

Euler-family synthesis is reconciled with the existing exact
Dirichlet character coefficients ONLY under the explicitly
named and still UNPROVED DirichletEulerSourceIdentificationTarget.
The corresponding analytic return is not inserted as a theorem.

NO pinned Lean parsing, elaboration, fresh kernel or transitive axiom
audit was run for this source. The source body is CANDIDATE only.
-/

namespace GRWTSK.NumberTheory.Moebius.LFunctionFamilySourceGraphBridge

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.LFunctionFamilyInverse
open GRWTSK.NumberTheory.Moebius.LFunctionEulerSynthesis
open GRWTSK.NumberTheory.Moebius.LFunctionHermitianPickup
open GRWTSK.NumberTheory.Moebius.DirichletHermitianHighGcdTransfer
open GRWTSK.NumberTheory.Moebius.FixedSublinearCompensatedEndpoint

classical

/-- Original complete HIGH-gcd off-diagonal Hermitian source,
using the SAME real causal response Gram and actual complex mu_L.
No diagonal or physical/strong mask is inserted. -/
def familyHighGcdCross
    (F : NormalizedCoefficients) (D : ℕ) (T : ℝ) : ℝ :=
  (∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if m ≠ n ∧ D < Nat.gcd m n then
      familyHermitianKernel F T m n else 0).re

/-- Exact finite partition, valid for ANY normalized coefficient
family, independently of Euler products, analytic continuation or
any bound on coefficients. -/
theorem familyCross_eq_low_add_high
    (F : NormalizedCoefficients) (D : ℕ) (T : ℝ) :
    familyCross F T =
      familyLowGcdCross F D T + familyHighGcdCross F D T := by
  unfold familyCross familyLowGcdCross familyHighGcdCross
  rw [← Complex.add_re]
  congr 1
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hne : m ≠ n
  · by_cases hg : Nat.gcd m n ≤ D
    · have hnot : ¬ D < Nat.gcd m n := not_lt.mpr hg
      simp [hne, hg, hnot]
    · have hgt : D < Nat.gcd m n := lt_of_not_ge hg
      simp [hne, hg, hgt]
  · simp [hne]

/-- Real part commutes with a FINITE complex source sum,
with no analytic or arithmetic premise. -/
private theorem sum_re (S : Finset ℕ) (f : ℕ → ℂ) :
    (∑ n ∈ S, f n).re = ∑ n ∈ S, (f n).re := by
  induction S using Finset.induction_on with
  | empty => simp
  | @insert n S hn ih =>
      simp only [Finset.sum_insert hn, Complex.add_re, ih]

/-- Each positive Hermitian source pair is bounded by the
actual coefficient magnitudes and unmodified real causal K_T. -/
private theorem pair_re_abs_le_weightedCost
    (F : NormalizedCoefficients) (T : ℝ) (m n : ℕ) :
    |(familyHermitianKernel F T m n).re| ≤
      ‖F.mobius m‖ * ‖F.mobius n‖ *
        |pickupResponseGram T m n| := by
  calc
    _ ≤ ‖familyHermitianKernel F T m n‖ :=
      Complex.abs_re_le_norm _
    _ = _ := by
      simp [familyHermitianKernel, norm_mul, norm_star,
        Complex.norm_real, mul_assoc]

/-- The literal SIGNED high-gcd family cross has absolute cost
at most its OWN positive weighted source. Unlike the real
ordinary-Mobius source, this proof is complex/Hermitian. -/
theorem familyHighGcdCross_abs_le_weightedCost
    (F : NormalizedCoefficients) (D : ℕ) (T : ℝ) :
    |familyHighGcdCross F D T| ≤ familyWeightedHighGcdCost F D T := by
  let S : Finset ℕ := endpointIndex T
  let K : ℕ → ℕ → ℂ := fun m n =>
    if m ≠ n ∧ D < Nat.gcd m n
    then familyHermitianKernel F T m n else 0
  have hpoint (m n : ℕ) :
      |(K m n).re| ≤
        if m ≠ n ∧ D < Nat.gcd m n then
          ‖F.mobius m‖ * ‖F.mobius n‖ *
            |pickupResponseGram T m n| else 0 := by
    by_cases h : m ≠ n ∧ D < Nat.gcd m n
    · simpa only [K, if_pos h] using
        pair_re_abs_le_weightedCost F T m n
    · simp [K, h]
  have hre :
      (∑ m ∈ S, ∑ n ∈ S, K m n).re =
        ∑ m ∈ S, ∑ n ∈ S, (K m n).re := by
    calc
      _ = ∑ m ∈ S, (∑ n ∈ S, K m n).re := sum_re S _
      _ = ∑ m ∈ S, ∑ n ∈ S, (K m n).re := by
        apply Finset.sum_congr rfl
        intro m hm
        exact sum_re S _
  change
    |(∑ m ∈ S, ∑ n ∈ S, K m n).re| ≤
    ∑ m ∈ S, ∑ n ∈ S,
      if m ≠ n ∧ D < Nat.gcd m n then
        ‖F.mobius m‖ * ‖F.mobius n‖ *
          |pickupResponseGram T m n| else 0
  calc
    _ = |∑ m ∈ S, ∑ n ∈ S, (K m n).re| := congrArg abs hre
    _ ≤ ∑ m ∈ S, |∑ n ∈ S, (K m n).re| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ m ∈ S, ∑ n ∈ S, |(K m n).re| := by
      apply Finset.sum_le_sum
      intro m hm
      exact Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ m ∈ S, ∑ n ∈ S,
        if m ≠ n ∧ D < Nat.gcd m n then
          ‖F.mobius m‖ * ‖F.mobius n‖ *
            |pickupResponseGram T m n| else 0 := by
      apply Finset.sum_le_sum
      intro m hm
      apply Finset.sum_le_sum
      intro n hn
      exact hpoint m n

/-- The family-independent EXACT arithmetic consumer:
the only loss is its genuine positive high-gcd COST. -/
theorem familyCross_le_low_add_weightedCost
    (F : NormalizedCoefficients) (D : ℕ) (T : ℝ) :
    familyCross F T ≤
      familyLowGcdCross F D T +
        familyWeightedHighGcdCost F D T := by
  have hsplit := familyCross_eq_low_add_high F D T
  have hcost := (abs_le.mp
    (familyHighGcdCross_abs_le_weightedCost F D T)).2
  linarith

/-- All complex Dirichlet characters inherit the ORIGINAL
positive gcd-tail at the SAME fixed cutoff D_*(T), T>=4.
This conclusion is for the Hermitian CROSS, not a family-specific
Mellin/Dirichlet endpoint or an automatic GRH return. -/
theorem dirichlet_familyCross_le_fixedLow
    {q : ℕ} (χ : DirichletCharacter ℂ q)
    {T : ℝ} (hT : 4 ≤ T) :
    familyCross (dirichletCharacterCoefficients χ) T ≤
      familyLowGcdCross (dirichletCharacterCoefficients χ)
        (fixedGcdCutoff T) T +
      32*T*Real.exp (Real.sqrt T) := by
  have hledger :=
    familyCross_le_low_add_weightedCost
      (dirichletCharacterCoefficients χ) (fixedGcdCutoff T) T
  have htail := dirichletHighGcdCost_fixed_sublinear χ hT
  linarith

/-- A genuinely noncircular conditional BRIDGE: if the previously
explicit unproved coefficient IDENTIFICATION for the actual
Dirichlet Euler source is supplied, its synthesized global inverse
agrees with the already-built exact character-twisted Möbius. -/
theorem dirichlet_eulerMobius_eq_characterMobius_of_identification
    {q : ℕ} (χ : DirichletCharacter ℂ q)
    (hIdentification : DirichletEulerSourceIdentificationTarget χ) :
    (dirichletEulerSource χ).mobius =
      dirichletCharacterMobius χ := by
  have hcoeff :
      (dirichletEulerSource χ).family.coeff =
      (dirichletCharacterCoefficients χ).coeff :=
    hIdentification
  have hright :
      (dirichletCharacterCoefficients χ).coeff *
        (dirichletEulerSource χ).family.mobius = 1 := by
    rw [← hcoeff]
    exact (dirichletEulerSource χ).family.mul_mobius
  calc
    (dirichletEulerSource χ).mobius =
        (dirichletEulerSource χ).family.mobius :=
      ((dirichletEulerSource χ).family_mobius_eq).symm
    _ = (dirichletCharacterCoefficients χ).mobius := by
      exact ((dirichletCharacterCoefficients χ).mobius_unique
        (dirichletEulerSource χ).family.mobius hright).symm
    _ = dirichletCharacterMobius χ :=
      dirichletCharacter_mobius_eq_twist χ

/-- The missing signed frontier for the ACTUAL primitive
Dirichlet family. Different χ may have DIFFERENT constants.
This is deliberately only a PROP, never an axiom or theorem. -/
def PrimitiveDirichletFamilyLowGcdEveryRate : Prop :=
  ∀ (q : ℕ) (_hq : 0 < q),
    ∀ χ : DirichletCharacter ℂ q,
      χ.IsPrimitive →
        FamilyLowGcdEveryRateDyadic
          (dirichletCharacterCoefficients χ) fixedGcdCutoff

/-- NONVACUOUS missing causal-to-prefix bridge, with the ACTUAL
character-specific twisted-Möbius prefix (not an arbitrary constant).
A bound for the positive original family energy does NOT by itself
provide this without the causal spike/descent estimate.
Even this prefix theorem would still require the separate
L-series analytic continuation/zero return before claiming GRH. -/
def PrimitiveDirichletCausalToPrefixBridgeTarget : Prop :=
  ∀ (q : ℕ) (_hq : 0 < q),
    ∀ χ : DirichletCharacter ℂ q,
      χ.IsPrimitive →
        FamilyLowGcdEveryRateDyadic
          (dirichletCharacterCoefficients χ) fixedGcdCutoff →
        ∀ ε : ℝ, 0 < ε →
          ∃ C : ℝ, 0 ≤ C ∧
            ∀ N : ℕ, 1 ≤ N →
              ‖familyMobiusPrefix (dirichletCharacterCoefficients χ)
                (N : ℝ)‖ ≤
              C*(N : ℝ)^(1/2+ε)

end GRWTSK.NumberTheory.Moebius.LFunctionFamilySourceGraphBridge
