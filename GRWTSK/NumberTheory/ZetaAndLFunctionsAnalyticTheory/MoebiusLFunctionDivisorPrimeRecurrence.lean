/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusCausalGcdTimeShift
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusLFunctionFamilySieveBridge

/-!
# Prime-adjoining recurrence for the ORIGINAL Dirichlet Mobius response

## Scope of the formal declarations

The coefficient and finite-response identities below use the actual
`dirichletCharacterCoefficients chi` inverse and `pickupResponse`.
They do not introduce a replacement source, independent integer noise,
a new energy definition, or a cancellation assumption. `S` is any finite
set of POSITIVE original integer indices. Squareful and nonunit zeros,
complex phases and the empty support are retained. The image theorem
records the actual multiplication of source labels by p.

`norm_recurrence_two_sided` is the elementary norm estimate used in the
analytical energy argument below. The endpoint-inventory restriction,
interval-L2 translation and iterated energy bound are proved here in
mathematical prose; they are NOT claimed as Lean declarations. All Lean
bodies remain candidates pending compilation and complete import replay.

## Primary analytical argument and precise consumer

For a positive modulus and any genuine character chi, put c(n)=mu(n)chi(n),
W_d(u)=sum_(d|n)c(n)r_n(u), and E_d(T)=integral_0^T |W_d(u)|^2 du.
These are exactly `familyDivisorRestrictedResponse` and
`familyDivisorRestrictedEnergy` on each horizon, not prefix substitutes:
for u<=T every omitted n>floor(exp T) has r_n(u)=0. The original responses
are zero at nonpositive time. Every displayed sum on a bounded horizon
is finite. Write E=E_1, h=log p and a=chi(p)/sqrt(p).

For a prime p and p not dividing d, coefficientwise multiplicativity,
including mu(p*n)=0 when p|n, and `pickupResponse_mul_timeShift` give

  W_(d*p)(u) = -a * (W_d(u-h) - W_(d*p)(u-h)).                 (R)

Indeed, write each index divisible by d*p uniquely as p*n with d|n;
inside the shifted sum the intersection d|n AND p|n equals d*p|n.
No squarefree index or outcome is dropped. The finite image-sum theorem
below is this calculation before specializing and reconciling cutoffs.
One may take S={n in endpointIndex T : d|n}. Terms in p*S beyond the
original endpoint vanish on [0,T], while every contributing multiple of
d*p is in p*S; the shifted support likewise fits the original inventory.

Let theta=max(0,T-h), A=|a|<1, X=sqrt(E_(d*p)(T)),
Y=sqrt(E_d(theta)), Z=sqrt(E_(d*p)(theta)). Translation with zero negative
time gives norm(W_d(.-h))=Y and norm(W_(d*p)(.-h))=Z on [0,T].
Causality and nonnegative integrands give Z<=X. The two triangle
inequalities applied to (R) give

  (1-A)*X <= A*Y <= (1+A)*X.

Thus

  A^2/(1+A)^2 * E_d(theta) <= E_(d*p)(T)
    <= A^2/(1-A)^2 * E_d(theta).                             (P)

No division by A is needed, so chi(p)=0 is included. For squarefree d>=1,
iterate (P) over its DISTINCT prime factors. Successive causal horizons
satisfy max(0,max(0,T-log a)-log b)=max(0,T-log(a*b)). Hence, with

  b_minus(d) = |chi(d)|^2/d * product_(p|d)(1+|chi(p)|/sqrt(p))^(-2),
  b_plus(d)  = |chi(d)|^2/d * product_(p|d)(1-|chi(p)|/sqrt(p))^(-2),

  b_minus(d)*E(max(0,T-log d)) <= E_d(T)
    <= b_plus(d)*E(max(0,T-log d)).                          (D)

The upper bound was already derived in math#1656 comment 6612849533 by
smooth-divisor convolution. (R) gives a finite-recursion alternative;
the lower bound in (D) supplies quantitative negative-collar credit not
supplied by that upper bound. No theorem-level priority or independent
human review is claimed. These are two presentations of the same local
Euler-factor mechanism, not independent proofs of arithmetic cancellation.

At d=1 both bounds are equality. For a nonunit d all terms are zero.
For squareful d, E_d=0; (D) is NOT asserted with nonzero b_minus(d).
For T<=log d all relevant responses vanish. The horizon shift is
necessary: with q=1, d>=2 and 0<T<log 2, E_d(T)=0 but E(T)>0.

Consume the already-present
`LFunctionHermitianSieveClosure.familyHermitianDivisorSieve_proof`.
For N=floor(exp T), D>=1, and c_D the ORIGINAL low-GCD sieve weight,
its complete signed formula is

  LowCross(D,T)=E(T)-Diag_(n<=D)(T)
     - sum_(D<d<=min(2*D,N)) E_d(T)
     + sum_(2*D<d<=N) c_D(d)*E_d(T).                        (S)

This uses c_D(1)=1, c_D(d)=0 for 2<=d<=D, and c_D(d)=-1 on the first
collar. Replacing only that negative collar by the LOWER bound (D)
gives an explicit upper bound for (S), with credit

  sum_(D<d<=min(2*D,N), d squarefree)
    b_minus(d)*E(max(0,T-log d)).

Keep the ENTIRE last signed sum in (S). This is an alternative exact
sieve accounting, not extra credit to add to an already removed
prime-dilation packet. The positive and negative higher-divisor weights
and the source diagonal remain. Discarding the last sum or treating
its sign as known is the first unjustified step of an attempted all-rate
closure. No improved asymptotic arithmetic rate or RH/GRH conclusion is
claimed. The original E remains an unknown source quantity.

External comparison: Marco Aymone, arXiv:2009.09240v1 (2020-09-19),
Theorem 1.2 and section 3.5. With rho=2*beta-1 and eps_p=-f_beta(p),
his weighted squarefree coefficient is mu(n)*product_(p|n)(eps_p/rho).
His nonvanishing Euler-product factor transfers an RH-equivalent
almost-sure assertion; it is NOT an independent upper estimate for our
energy. The proof here uses finite source arithmetic and translation,
not that unresolved premise or an expectation of almost-sure constants.

Next formal target: specialize the image recurrence to the maintained
endpoint inventory, prove its interval-L2 translation, and instantiate
`norm_recurrence_two_sided` to obtain (P) and (D) as exact Lean theorems.
The independent signed higher-divisor estimate remains a separate
mathematical obligation. Reuse the covariance and sieve closures.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.LFunctionDivisorPrimeRecurrence

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.CausalGcdTimeShift
open GRWTSK.NumberTheory.Moebius.LFunctionFamilyInverse

/-- The prime already occurring in n is a squareful zero, not a fresh sign. -/
theorem moebius_prime_mul_eq_ite (p n : ℕ) (hp : p.Prime) :
    ArithmeticFunction.moebius (p*n) =
      if p ∣ n then 0 else -ArithmeticFunction.moebius n := by
  by_cases hpn : p ∣ n
  · have hsf : ¬ Squarefree (p*n) := by
      intro hs
      have hc : Nat.Coprime p n := Nat.coprime_of_squarefree_mul hs
      have hg : p ∣ Nat.gcd p n := Nat.dvd_gcd (dvd_refl p) hpn
      have h1 : p ∣ 1 := by simpa only [hc.gcd_eq_one] using hg
      exact hp.ne_one (Nat.dvd_one.mp h1)
    simp [hpn, ArithmeticFunction.moebius_eq_zero_of_not_squarefree hsf]
  · have hc : Nat.Coprime p n := hp.coprime_iff_not_dvd.mpr hpn
    rw [if_neg hpn,
      ArithmeticFunction.isMultiplicative_moebius.map_mul_of_coprime hc,
      ArithmeticFunction.moebius_apply_prime hp]
    ring

/-- Actual Dirichlet inverse coefficients, including nonreal characters and
nonunits. No coefficient bound or independence hypothesis is used. -/
theorem dirichlet_mobius_prime_mul {q : ℕ}
    (χ : DirichletCharacter ℂ q) (p n : ℕ) (hp : p.Prime) :
    (dirichletCharacterCoefficients χ).mobius (p*n) =
      -χ (p : ZMod q) *
        ((dirichletCharacterCoefficients χ).mobius n -
          if p ∣ n then (dirichletCharacterCoefficients χ).mobius n else 0) := by
  simp only [dirichletCharacter_mobius_apply, Nat.cast_mul, map_mul,
    moebius_prime_mul_eq_ite p n hp]
  by_cases hpn : p ∣ n <;> simp [hpn] <;> ring

/-- Termwise source-exact causal recurrence. The same log(p) shift is used
for both the signed source and the shared-prime residual. -/
theorem dirichlet_prime_response_step {q : ℕ}
    (χ : DirichletCharacter ℂ q) (p n : ℕ) (hp : p.Prime)
    (hn : 1 ≤ n) (u : ℝ) :
    (dirichletCharacterCoefficients χ).mobius (p*n) *
        (pickupResponse (p*n) u : ℂ) =
      -(χ (p : ZMod q) * ((Real.sqrt (p : ℝ))⁻¹ : ℂ)) *
        ((dirichletCharacterCoefficients χ).mobius n *
            (pickupResponse n (u-Real.log (p : ℝ)) : ℂ) -
          if p ∣ n then
            (dirichletCharacterCoefficients χ).mobius n *
              (pickupResponse n (u-Real.log (p : ℝ)) : ℂ)
          else 0) := by
  rw [dirichlet_mobius_prime_mul χ p n hp,
    pickupResponse_mul_timeShift p n (by omega) hn u,
    Complex.ofReal_mul]
  by_cases hpn : p ∣ n <;> simp [hpn] <;> ring

/-- Finite exact recurrence before endpoint-inventory reconciliation.
S may already contain any divisor mask; the shared-prime residual is kept. -/
theorem dirichlet_prime_dilation_sum {q : ℕ}
    (χ : DirichletCharacter ℂ q) (S : Finset ℕ) (p : ℕ) (hp : p.Prime)
    (hS : ∀ n ∈ S, 1 ≤ n) (u : ℝ) :
    (∑ n ∈ S, (dirichletCharacterCoefficients χ).mobius (p*n) *
        (pickupResponse (p*n) u : ℂ)) =
      -(χ (p : ZMod q) * ((Real.sqrt (p : ℝ))⁻¹ : ℂ)) *
        ((∑ n ∈ S, (dirichletCharacterCoefficients χ).mobius n *
            (pickupResponse n (u-Real.log (p : ℝ)) : ℂ)) -
          ∑ n ∈ S, if p ∣ n then
            (dirichletCharacterCoefficients χ).mobius n *
              (pickupResponse n (u-Real.log (p : ℝ)) : ℂ)
          else 0) := by
  classical
  rw [mul_sub, Finset.mul_sum, Finset.mul_sum, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  rw [dirichlet_prime_response_step χ p n hp (hS n hn) u]
  ring

/-- The left side really is the response on the multiplied ORIGINAL labels,
not a fresh independent copy or an integer-index equicorrelation model. -/
theorem dirichlet_prime_dilation_image_sum {q : ℕ}
    (χ : DirichletCharacter ℂ q) (S : Finset ℕ) (p : ℕ) (hp : p.Prime)
    (hS : ∀ n ∈ S, 1 ≤ n) (u : ℝ) :
    (∑ m ∈ S.image (fun n => p*n),
      (dirichletCharacterCoefficients χ).mobius m * (pickupResponse m u : ℂ)) =
      -(χ (p : ZMod q) * ((Real.sqrt (p : ℝ))⁻¹ : ℂ)) *
        ((∑ n ∈ S, (dirichletCharacterCoefficients χ).mobius n *
            (pickupResponse n (u-Real.log (p : ℝ)) : ℂ)) -
          ∑ n ∈ S, if p ∣ n then
            (dirichletCharacterCoefficients χ).mobius n *
              (pickupResponse n (u-Real.log (p : ℝ)) : ℂ)
          else 0) := by
  classical
  rw [Finset.sum_image]
  · exact dirichlet_prime_dilation_sum χ S p hp hS u
  · intro a ha b hb hab
    exact Nat.eq_of_mul_eq_mul_left hp.pos hab

/-- Both triangle inequalities for a delayed recurrence. For the causal
L2 application x is W_(d*p), y is shifted W_d, z is shifted W_(d*p),
and r=|chi(p)|/sqrt(p). The shift contraction hz must actually be proved;
no unknown arithmetic energy bound is assumed by this norm calculation. -/
theorem norm_recurrence_two_sided {V : Type*} [NormedAddCommGroup V]
    (x y z : V) (r : ℝ) (hr : 0 ≤ r)
    (hrec : ‖x‖ = r * ‖y-z‖) (hz : ‖z‖ ≤ ‖x‖) :
    (1-r)*‖x‖ ≤ r*‖y‖ ∧ r*‖y‖ ≤ (1+r)*‖x‖ := by
  have hu := mul_le_mul_of_nonneg_left (norm_sub_le y z) hr
  have hy : ‖y‖ ≤ ‖y-z‖ + ‖z‖ := by
    simpa only [sub_add_cancel] using norm_add_le (y-z) z
  have hl := mul_le_mul_of_nonneg_left hy hr
  have hz' := mul_le_mul_of_nonneg_left hz hr
  constructor <;> nlinarith [hrec]

end GRWTSK.NumberTheory.Moebius.LFunctionDivisorPrimeRecurrence
