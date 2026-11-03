/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusLFunctionDivisorPrimeWeightedEnergy
import Mathlib.Data.Nat.Squarefree

/-!
# The complete signed divisor comparison, with its exact nonnegative slack

Local mathematical attribution: grwtsk contributors.
Baseline: math@efc465c408c6bcaf53ce662938070a707fee1b9c, weighted prime module
blob 50dd33631aa481cf933036813c539eeb7c2dbd2d. That source supplies the
one-prime weighted inequalities and a one-prime negative-collar consumer.
The coefficient recurrence, endpoint adapter and weighted translation are
CONSUMED here, not regenerated.

## Exact mathematical increment

For genuine chi at a positive presentation modulus, lambda>=0, T>=0, put
r_p=primeDelayNorm chi p lambda. For squarefree d define

  B_-(d)=product_(p|d) [r_p/(1+r_p)]^2,
  B_+(d)=product_(p|d) [r_p/(1-r_p)]^2,
  H_d=(T-log d)_+.

Set BOTH B factors to zero for nonsquarefree d, rather than using its
radical as if the original Mobius coefficient were nonzero. Then

  B_-(d) E_(1,lambda)(H_d) <= E_(d,lambda)(T)
    <= B_+(d) E_(1,lambda)(H_d).

The empty product gives d=1 exactly. A prime dividing the modulus has
r_p=0, so both sides and the original restricted response vanish.

Primary argument: induct on a finite set of DISTINCT primes. Its new
prime cannot divide the previous product; Nat.primeFactors_prod supplies
that guard. Apply the existing prime bounds and the induction hypothesis
at the shortened horizon. The exact clamp identity
max(0,max(0,T-a)-b)=max(0,T-(a+b)), b>=0, and log multiplication preserve
ALL accumulated delays. Nat.prod_primeFactors_of_squarefree returns the
result to the original integer d. For nonsquarefree d, every multiple n
is nonsquarefree and its ACTUAL Mobius coefficient is zero.

At zero damping let L_d=B_-(d)E_1(H_d), U_d=B_+(d)E_1(H_d),
c_d=lowGcdSieveWeight D d, c_d^+=max(c_d,0), c_d^-=max(-c_d,0).
Apply the existing complete Hermitian divisor sieve, obtaining

  LowCross(D,T) <= sum_(1<=d<=floor(exp T)) (c_d^+ U_d-c_d^- L_d)
                    - SourceDiagonal(D,T).

No sign is assigned to the higher-divisor remainder. Negative coefficients
use the LOWER bound, positive coefficients the UPPER bound. Every index
occurs once, with its unchanged coefficient; no extracted collar is added
again. The exact loss of this comparison is ALSO proved:

  Envelope - LowCross
    = sum_d [c_d^+(U_d-E_d)+c_d^-(E_d-L_d)] >= 0.

The separate complete-collar consumer uses every d in D<d<=min(2D,N),
including composite squarefree d, and leaves the entire complement exact.
It therefore improves the available negative credit without imposing the
upper envelope on any positive term. The two consumers are alternatives,
not additive credits to apply simultaneously.

This is a finite, source-specific inequality and exact slack identity,
not a wrapper assuming the desired arithmetic estimate. It extends the
one-prime consumer to the ENTIRE signed expression. The squarefree
iteration was already argued analytically in the predecessor recurrence
module; no theorem-level priority or independent human review is claimed.
The formal source binding and complete sign-aware consumer are the delta.

## Failed bootstrap and remaining input

The d=1 term of the envelope is E_1(T) with coefficient one when D>=1.
This source does NOT assume or prove an independent all-positive-rate cap
for the delayed signed sum. Its nonnegative slack need not have a small
asymptotic bound. Therefore the inequality alone is NOT a strict renewal
contraction or an RH/GRH proof. The published positive higher-remainder
counterexample is preserved, not rerun or claimed as new here. A useful
next independent estimate must control the complete net expression (or
its slack), including positive higher terms, at the actual cutoff.

External operative source: Mathlib@d13f23b723b8a846827a245b89c10fc7d3f11612,
Mathlib/Data/Nat/Squarefree.lean: prod_primeFactors_of_squarefree and
primeFactors_prod, with their proof bodies inspected. They supply the
squarefree/product identification and fresh-prime guard, not cancellation.
The finite sign identity is elementary order algebra. New proofs and
finite diagnostic design are assistant-generated; source publication and
numerical agreement are not Lean compilation or transitive trust audits.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.LFunctionSignedDivisorEnvelope

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.LFunctionFamilyInverse
open GRWTSK.NumberTheory.Moebius.LFunctionHermitianPickup
open GRWTSK.NumberTheory.Moebius.LFunctionFamilySieveBridge
open GRWTSK.NumberTheory.Moebius.LFunctionHermitianSieveClosure
open GRWTSK.NumberTheory.Moebius.LFunctionDivisorPrimeWeightedEnergy
open GRWTSK.NumberTheory.Moebius.LowGcdSieveSquareEnergy

private theorem clipped_sub_add (T a b : ℝ) (hb : 0 ≤ b) :
    max 0 (max 0 (T-a)-b) = max 0 (T-(a+b)) := by
  by_cases h : 0 ≤ T-a
  · rw [max_eq_right h]
    congr 1
    ring
  · have hta : T-a ≤ 0 := (lt_of_not_ge h).le
    rw [max_eq_left hta, zero_sub, max_eq_left (neg_nonpos.mpr hb),
      max_eq_left (by linarith : T-(a+b) ≤ 0)]

/-- Iterate the maintained prime theorem without forgetting accumulated
birth delays. Distinct prime coordinates, not a list allowing repetitions. -/
theorem familyWeightedDivisorEnergy_primeSet_bounds {q : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q) (P : Finset ℕ)
    (hP : ∀ p ∈ P, p.Prime) (lambda T : ℝ)
    (hl : 0 ≤ lambda) (hT : 0 ≤ T) :
    (∏ p ∈ P, (primeDelayNorm chi p lambda/(1+primeDelayNorm chi p lambda))^2) *
        familyWeightedDivisorEnergy (dirichletCharacterCoefficients chi) 1 lambda
          (max 0 (T-Real.log ((∏ p ∈ P, p : ℕ) : ℝ))) ≤
      familyWeightedDivisorEnergy (dirichletCharacterCoefficients chi)
        (∏ p ∈ P, p) lambda T ∧
    familyWeightedDivisorEnergy (dirichletCharacterCoefficients chi)
        (∏ p ∈ P, p) lambda T ≤
      (∏ p ∈ P, (primeDelayNorm chi p lambda/(1-primeDelayNorm chi p lambda))^2) *
        familyWeightedDivisorEnergy (dirichletCharacterCoefficients chi) 1 lambda
          (max 0 (T-Real.log ((∏ p ∈ P, p : ℕ) : ℝ))) := by
  classical
  revert hP T
  induction P using Finset.induction_on with
  | empty =>
      intro hP T hT
      simp [max_eq_right hT]
  | @insert p P hpnot ih =>
      intro hP T hT
      have hp : p.Prime := hP p (Finset.mem_insert_self p P)
      have hs : ∀ k ∈ P, k.Prime := fun k hk => hP k (Finset.mem_insert_of_mem hk)
      let d : ℕ := ∏ k ∈ P, k
      have hdpos : 0 < d := Finset.prod_pos (fun k hk => (hs k hk).pos)
      have hdR : 0 < (d : ℝ) := by exact_mod_cast hdpos
      have hpR : 0 < (p : ℝ) := by exact_mod_cast hp.pos
      have hpd : ¬ p ∣ d := by
        intro h
        have hm : p ∈ d.primeFactors := Nat.mem_primeFactors.mpr
          ⟨hp, h, Nat.ne_of_gt hdpos⟩
        change p ∈ (∏ k ∈ P, k : ℕ).primeFactors at hm
        rw [Nat.primeFactors_prod hs] at hm
        exact hpnot hm
      have hdlog : 0 ≤ Real.log (d : ℝ) :=
        Real.log_nonneg (by exact_mod_cast (Nat.succ_le_of_lt hdpos))
      have hshift :
          max 0 (max 0 (T-Real.log (p : ℝ))-Real.log (d : ℝ)) =
            max 0 (T-Real.log ((p*d : ℕ) : ℝ)) := by
        rw [clipped_sub_add T (Real.log (p : ℝ)) (Real.log (d : ℝ)) hdlog,
          Nat.cast_mul, Real.log_mul (ne_of_gt hpR) (ne_of_gt hdR)]
      have H := familyWeightedDivisorEnergy_prime_bounds chi d p hp hpd lambda T hl hT
      dsimp only at H
      rw [Nat.mul_comm d p] at H
      have IH := ih hs (max 0 (T-Real.log (p : ℝ))) (le_max_left _ _)
      change
        (∏ k ∈ P, (primeDelayNorm chi k lambda/(1+primeDelayNorm chi k lambda))^2) *
            familyWeightedDivisorEnergy (dirichletCharacterCoefficients chi) 1 lambda
              (max 0 (max 0 (T-Real.log (p : ℝ))-Real.log (d : ℝ))) ≤
          familyWeightedDivisorEnergy (dirichletCharacterCoefficients chi) d lambda
            (max 0 (T-Real.log (p : ℝ))) ∧
        familyWeightedDivisorEnergy (dirichletCharacterCoefficients chi) d lambda
            (max 0 (T-Real.log (p : ℝ))) ≤
          (∏ k ∈ P, (primeDelayNorm chi k lambda/(1-primeDelayNorm chi k lambda))^2) *
            familyWeightedDivisorEnergy (dirichletCharacterCoefficients chi) 1 lambda
              (max 0 (max 0 (T-Real.log (p : ℝ))-Real.log (d : ℝ))) at IH
      rw [hshift] at IH
      simp only [Finset.prod_insert hpnot]
      constructor
      · have h := (mul_le_mul_of_nonneg_left IH.1
          (sq_nonneg (primeDelayNorm chi p lambda/(1+primeDelayNorm chi p lambda)))).trans H.1
        simpa only [mul_assoc] using h
      · have h := H.2.trans (mul_le_mul_of_nonneg_left IH.2
          (sq_nonneg (primeDelayNorm chi p lambda/(1-primeDelayNorm chi p lambda))))
        simpa only [mul_assoc] using h

/-- Both factors explicitly vanish on nonsquarefree divisors. -/
def divisorLowerFactor {q : ℕ} (chi : DirichletCharacter ℂ q) (lambda : ℝ) (d : ℕ) : ℝ :=
  if Squarefree d then
    ∏ p ∈ d.primeFactors, (primeDelayNorm chi p lambda/(1+primeDelayNorm chi p lambda))^2
  else 0

def divisorUpperFactor {q : ℕ} (chi : DirichletCharacter ℂ q) (lambda : ℝ) (d : ℕ) : ℝ :=
  if Squarefree d then
    ∏ p ∈ d.primeFactors, (primeDelayNorm chi p lambda/(1-primeDelayNorm chi p lambda))^2
  else 0

/-- The actual divisor waveform is zero, not the waveform of its radical. -/
theorem familyDivisorRestrictedResponse_eq_zero_of_not_squarefree {q : ℕ}
    (chi : DirichletCharacter ℂ q) (d : ℕ) (hd : ¬ Squarefree d) (T u : ℝ) :
    familyDivisorRestrictedResponse (dirichletCharacterCoefficients chi) d T u = 0 := by
  classical
  unfold familyDivisorRestrictedResponse
  apply Finset.sum_eq_zero
  intro n hn
  by_cases hdn : d ∣ n
  · have hn : ¬ Squarefree n := fun h => hd (h.squarefree_of_dvd hdn)
    simp [hdn, dirichletCharacter_mobius_apply,
      ArithmeticFunction.moebius_eq_zero_of_not_squarefree hn]
  · simp [hdn]

theorem familyWeightedDivisorEnergy_eq_zero_of_not_squarefree {q : ℕ}
    (chi : DirichletCharacter ℂ q) (d : ℕ) (hd : ¬ Squarefree d) (lambda T : ℝ) :
    familyWeightedDivisorEnergy (dirichletCharacterCoefficients chi) d lambda T = 0 := by
  change (∫ u in (0 : ℝ)..T, Real.exp (-lambda*u) *
    ‖familyDivisorRestrictedResponse (dirichletCharacterCoefficients chi) d T u‖^2) = 0
  simp only [familyDivisorRestrictedResponse_eq_zero_of_not_squarefree chi d hd,
    norm_zero, zero_pow (by decide : 2 ≠ 0), mul_zero, intervalIntegral.integral_zero]

/-- Full weighted divisor bounds for the unchanged character source.
All original divisor labels survive; nonsquarefree cases are proved zero. -/
theorem familyWeightedDivisorEnergy_divisor_bounds {q : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q) (d : ℕ) (lambda T : ℝ)
    (hl : 0 ≤ lambda) (hT : 0 ≤ T) :
    divisorLowerFactor chi lambda d *
        familyWeightedDivisorEnergy (dirichletCharacterCoefficients chi) 1 lambda
          (max 0 (T-Real.log (d : ℝ))) ≤
      familyWeightedDivisorEnergy (dirichletCharacterCoefficients chi) d lambda T ∧
    familyWeightedDivisorEnergy (dirichletCharacterCoefficients chi) d lambda T ≤
      divisorUpperFactor chi lambda d *
        familyWeightedDivisorEnergy (dirichletCharacterCoefficients chi) 1 lambda
          (max 0 (T-Real.log (d : ℝ))) := by
  classical
  by_cases hd : Squarefree d
  · have H := familyWeightedDivisorEnergy_primeSet_bounds chi d.primeFactors
      (fun p hp => Nat.prime_of_mem_primeFactors hp) lambda T hl hT
    rw [Nat.prod_primeFactors_of_squarefree hd] at H
    simpa only [divisorLowerFactor, divisorUpperFactor, if_pos hd] using H
  · simp [divisorLowerFactor, divisorUpperFactor, hd,
      familyWeightedDivisorEnergy_eq_zero_of_not_squarefree chi d hd lambda T]

/-- Positive coefficients pay upper cost; negative coefficients retain lower
credit. This is a derived numerical interval for the source, not a premise. -/
def signedDivisorEnvelopeTerm {q : ℕ} (chi : DirichletCharacter ℂ q)
    (D d : ℕ) (T : ℝ) : ℝ :=
  (max (lowGcdSieveWeight D d) 0 * divisorUpperFactor chi 0 d -
    max (-lowGcdSieveWeight D d) 0 * divisorLowerFactor chi 0 d) *
      familyDivisorRestrictedEnergy (dirichletCharacterCoefficients chi) 1
        (max 0 (T-Real.log (d : ℝ)))

/-- Actual slack in the signed comparison, retaining both sign sectors. -/
def signedDivisorSlack {q : ℕ} (chi : DirichletCharacter ℂ q)
    (D d : ℕ) (T : ℝ) : ℝ :=
  let E := familyDivisorRestrictedEnergy (dirichletCharacterCoefficients chi) d T
  let H := familyDivisorRestrictedEnergy (dirichletCharacterCoefficients chi) 1
    (max 0 (T-Real.log (d : ℝ)))
  max (lowGcdSieveWeight D d) 0 * (divisorUpperFactor chi 0 d * H-E) +
    max (-lowGcdSieveWeight D d) 0 * (E-divisorLowerFactor chi 0 d * H)

private theorem signed_interval_identity (c L E U : ℝ) :
    max c 0 * U - max (-c) 0 * L - c*E =
      max c 0 * (U-E) + max (-c) 0 * (E-L) := by
  by_cases hc : 0 ≤ c
  · rw [max_eq_left hc, max_eq_right (neg_nonpos.mpr hc)]
    ring
  · have hc' : c ≤ 0 := (lt_of_not_ge hc).le
    rw [max_eq_right hc', max_eq_left (neg_nonneg.mpr hc')]
    ring

theorem signedDivisorEnvelopeTerm_sub_source {q : ℕ}
    (chi : DirichletCharacter ℂ q) (D d : ℕ) (T : ℝ) :
    signedDivisorEnvelopeTerm chi D d T - lowGcdSieveWeight D d *
        familyDivisorRestrictedEnergy (dirichletCharacterCoefficients chi) d T =
      signedDivisorSlack chi D d T := by
  unfold signedDivisorEnvelopeTerm signedDivisorSlack
  dsimp only
  rw [sub_mul, mul_assoc, mul_assoc]
  exact signed_interval_identity _ _ _ _

theorem signedDivisorSlack_nonneg {q : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q) (D d : ℕ) (T : ℝ) (hT : 0 ≤ T) :
    0 ≤ signedDivisorSlack chi D d T := by
  have H := familyWeightedDivisorEnergy_divisor_bounds chi d 0 T le_rfl hT
  simp only [familyWeightedDivisorEnergy_zero] at H
  exact add_nonneg
    (mul_nonneg (le_max_right _ _) (sub_nonneg.mpr H.2))
    (mul_nonneg (le_max_right _ _) (sub_nonneg.mpr H.1))

/-- Exact complete-source comparison loss. No coefficient or diagonal is
removed and no negative collar can be counted twice through this identity. -/
theorem familyLowGcdCross_signedEnvelope_gap {q : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q) (D : ℕ) (T : ℝ) (hT : 0 ≤ T) :
    (∑ d ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, signedDivisorEnvelopeTerm chi D d T) -
        familyLowGcdSourceDiagonal (dirichletCharacterCoefficients chi) D T -
        familyLowGcdCross (dirichletCharacterCoefficients chi) D T =
      ∑ d ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, signedDivisorSlack chi D d T := by
  rw [familyHermitianDivisorSieve_proof (dirichletCharacterCoefficients chi) D T hT]
  calc
    _ = (∑ d ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, signedDivisorEnvelopeTerm chi D d T) -
        ∑ d ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, lowGcdSieveWeight D d *
          familyDivisorRestrictedEnergy (dirichletCharacterCoefficients chi) d T := by ring
    _ = _ := by
      rw [← Finset.sum_sub_distrib]
      apply Finset.sum_congr rfl
      intro d hd
      exact signedDivisorEnvelopeTerm_sub_source chi D d T

/-- Consumer of all divisor bounds in the ORIGINAL full signed sieve.
An all-positive-rate estimate for the right side is NOT an assumption here
and is NOT proved by this finite comparison. -/
theorem familyLowGcdCross_le_signed_divisor_envelope {q : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q) (D : ℕ) (T : ℝ) (hT : 0 ≤ T) :
    familyLowGcdCross (dirichletCharacterCoefficients chi) D T ≤
      (∑ d ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, signedDivisorEnvelopeTerm chi D d T) -
        familyLowGcdSourceDiagonal (dirichletCharacterCoefficients chi) D T := by
  have H := familyLowGcdCross_signedEnvelope_gap chi D T hT
  have hn : 0 ≤ ∑ d ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, signedDivisorSlack chi D d T :=
    Finset.sum_nonneg (fun d hd => signedDivisorSlack_nonneg chi D d T hT)
  linarith

/-- Extract the ENTIRE negative first collar, including composite squarefree
labels, while leaving EVERY term outside that collar exactly as it was.
The conditional partitions the original inventory, so credits do not overlap. -/
theorem familyLowGcdCross_le_complete_collar_credit {q : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q) (D : ℕ) (hD : 1 ≤ D)
    (T : ℝ) (hT : 0 ≤ T) :
    familyLowGcdCross (dirichletCharacterCoefficients chi) D T ≤
      (∑ d ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        if D < d ∧ d ≤ 2*D then
          -(divisorLowerFactor chi 0 d *
            familyDivisorRestrictedEnergy (dirichletCharacterCoefficients chi) 1
              (max 0 (T-Real.log (d : ℝ))))
        else lowGcdSieveWeight D d *
          familyDivisorRestrictedEnergy (dirichletCharacterCoefficients chi) d T) -
      familyLowGcdSourceDiagonal (dirichletCharacterCoefficients chi) D T := by
  classical
  rw [familyHermitianDivisorSieve_proof (dirichletCharacterCoefficients chi) D T hT]
  apply sub_le_sub_right
  apply Finset.sum_le_sum
  intro d hd
  by_cases hc : D < d ∧ d ≤ 2*D
  · rw [if_pos hc,
      GRWTSK.NumberTheory.Moebius.LowGcdSieveTargetClosures.firstDivisorCollarCoefficient_proof
        D d hD hc.1 hc.2]
    have H := (familyWeightedDivisorEnergy_divisor_bounds chi d 0 T le_rfl hT).1
    simp only [familyWeightedDivisorEnergy_zero] at H
    linarith
  · simp only [if_neg hc, le_refl]

end GRWTSK.NumberTheory.Moebius.LFunctionSignedDivisorEnvelope
