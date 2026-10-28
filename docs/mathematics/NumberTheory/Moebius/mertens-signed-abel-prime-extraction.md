# Exact prime-divisor extraction of the signed Abel bulk

grwtsk

**SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.**
This is finite arithmetic and exact source transport, not a cancellation estimate.
No arithmetic-expander, entropy-decrement, or external analytic theorem is imported.

## Immutable source

Both leaves coexist at `grwtsk/math@bace7b57f02f048084e9ab88b00abcb8e419a034`.
The reviewed parent main was `fb3399c5511f271ace1c6e4c0282006bfdf81a89`.

| Module beneath GRWTSK/NumberTheory/Moebius | Introduction commit | Git blob |
|---|---|---|
| FinitePrimeDivisorExtraction.lean | a993ffd4b152fe0ef2a9738b86aaede311bd48ca | 89c8290fa1cc3b05e0035d01249cbf90b4e0d3ff |
| MertensSignedAbelPrimeExtraction.lean | bace7b57f02f048084e9ab88b00abcb8e419a034 | 86dfea00c3ffccd9eb26fd028e8fd09acb2adaa7 |

Pinned Lean: `leanprover/lean4:v4.33.0`.
Pinned Mathlib: `db584cd6d46c92f209a44c0f1c829460d327499d`.
The source has 36 explicit declaration commands: 9 definitions and 27 theorem
scripts. This lexical count is not an elaborated declaration census.

## 1. Extraction of the actual Mobius coefficient

Let P be a finite set of primes and let k_P(n) count its DISTINCT divisors of n.
Define

\[
 u_P(n)=\mathbf1_{k_P(n)=0}\mu(n),\qquad
 a_P(n)=\frac{1}{k_P(n)}\sum_{p\in P,\ p\mid n}\mu(n/p),
\]
\[
 r_P(n)=\frac{1}{k_P(n)}\sum_{p\in P,\ p\mid n,\ p\mid n/p}\mu(n/p).
\]

For k_P(n)=0 the last two quantities use the real totalized division convention
and equal zero. No actual nonzero term relies on division by zero.
The source proves the exact identity

\[
 \boxed{\mu(n)=u_P(n)-a_P(n)+r_P(n).}
\]

For each selected prime divisor p, actual Mobius multiplicativity gives
mu(p*m)=-mu(m) when p does not divide m. When p divides m, p squared divides
p*m and the original coefficient is zero. This gives

\[
 \mu(n)=-\mu(n/p)+\mathbf1_{p\mid n/p}\mu(n/p).
\]

Summing over selected divisors and dividing by their count gives the identity.
The zero-count case is handled separately, not discarded. The source also
proves transport under any finite real weight, with no sign assumption.

Primary declarations, in namespace
`GRWTSK.NumberTheory.Moebius.FinitePrimeDivisorExtraction`:
`moebiusReal_prime_mul`, `count_mul_moebiusReal`,
`moebiusReal_eq_extraction`, `weighted_sum_extraction`,
`primeAverage_sum_eq_prime_first`, `repeatedAverage_sum_eq_prime_first`,
and `sum_divisible_window_eq_quotient`.

## 2. Ordinary prefixes, not fixed-form or logarithmic substitutes

Use the existing source

\[
 C_h(N)=\sum_{a=0}^{N-1}\mu(a+1)\mu(a+1+h)
       =\sum_{h<n\le N+h}\mu(n-h)\mu(n).
\]

The new `unsiftedPrefix`, `primePrefix`, and `repeatedPrefix` are this SAME
right window paired respectively with u_P, a_P, and r_P. The source derives

\[
 \boxed{C_h(N)=U_P(h,N)-A_P(h,N)+R_P(h,N).}
\]

The quotient reindexing is a finite bijection, not an asymptotic estimate:

\[
 A_P(h,N)=\sum_{p\in P}\sum_{\substack{1\le m\le\lfloor(N+h)/p\rfloor\\h<pm}}
 \frac{\mu(pm-h)\mu(m)}{k_P(pm)},
\]
\[
 R_P(h,N)=\sum_{p\in P}\sum_{\substack{1\le m\le\lfloor(N+h)/p\rfloor\\h<pm,\ p\mid m}}
 \frac{\mu(pm-h)\mu(m)}{k_P(pm)}.
\]

The lower cutoff, upper floor, variable prefix length and repeated-prime
condition remain literal. Every selected p satisfies k_P(pm)>=1, proved by
`quotient_count_positive`. The identities hold for all natural h and N,
including N=0. The actual Abel consumer still uses its original positive shifts.

The arithmetic scope is ordinary unnormalized prefixes. No fixed-shift
cancellation result, probability independence, or logarithmic average is used.

## 3. Exact substitution into the retained signed bulk

For any existing width function L(j), write Y=2^(j+1) and define the linear
finite functional

\[
 \mathcal T_{j,L}(F)=\frac2Y
 \sum_{\substack{0\le t<Y\\L(j)\le t<Y-L(j)}}
 \sum_{1\le h<Y}K_{j,t}(h)F(h,t+1).
\]

`bulkPacket_eq_prefixFunctional` identifies this functional at F=C with the
EXISTING `MertensSignedAbelBoundaryCore.bulkPacket`. It is not a hypothetical
model with a source-equality premise. The original kernel, all source weights,
triangular support, prefix lengths, middle depths and 2/Y remain unchanged.
Finite linearity then yields

\[
 \boxed{B_{j,L}=\mathcal T_{j,L}(U_P)-\mathcal T_{j,L}(A_P)
                   +\mathcal T_{j,L}(R_P).}
\]

There is no new approximation remainder. In namespace
`GRWTSK.NumberTheory.Moebius.MertensSignedAbelPrimeExtraction`, the principal
script is `bulkPacket_eq_prime_extraction`.

For the already defined `sqrtWidth`, the prior boundary theorem is reused:

\[
 \left|P_j-\left(\mathcal T_{j,\sqrt{}}(U_P)
 -\mathcal T_{j,\sqrt{}}(A_P)+\mathcal T_{j,\sqrt{}}(R_P)\right)\right|\le2.
\]

This is `abs_full_packet_sub_extracted_sqrt_bulk_le_two`. No arithmetic
boundary-loss estimate is added, and no old source acceptance is transferred.

## 4. Failure controls

At n=p squared with P={p}, u_P(n)=0 and a_P(n)=r_P(n)=-1. The corrected
identity is 0=0-(-1)+(-1). Deleting the repeated-prime correction would give
0=1. This is implemented as `no_uncorrected_extraction_at_prime_square`.

Empty P leaves the entire original prefix unsifted. Zero prefix length gives
three zero prefixes. Empty bulk intervals remain valid. A selected prime larger
than the right endpoint has no quotient terms. Prime-divisor count means
DISTINCT selected divisors, not the number of prime factors with multiplicity.
No termwise absolute values are inserted in the bulk or its three channels.

## 5. RH-facing scope and next arithmetic task

The new conditional consumer
`riemannHypothesis_of_prime_extracted_bulk_budget` permits a prime set P_j
varying with scale. It retains primality of every selected element and the
complete signed estimate

\[
 \forall\delta>0\ \exists C_\delta\ge0\ \forall j,\quad
 \mathcal T_j(U_{P_j})-\mathcal T_j(A_{P_j})+\mathcal T_j(R_{P_j})
 \le C_\delta(2^j)^\delta.
\]

It returns the unchanged root RH predicate via the existing bulk consumer.
The estimate is UNSUPPLIED. This increment does not prove even a new
power-saving bound for it. Splitting all three channels into absolute values
can impose a stronger requirement and destroy cancellation.

Next: select a concrete finite prime range and compare this exact quotient
expression with a named arithmetic operator or mean-value estimate. Retain
mu(pm-h), the varying floor((t+1+h)/p), k_P(pm), the no-selected-prime term,
and the repeated-prime correction (or prove their exact combination with a
p-not-dividing-m guard). Exceptional integers/vertices are not automatically
exceptional shifts. Every normalization and residual must be paid explicitly.

## 6. Provenance and verification

Imported arithmetic is Mathlib's actual Mobius function, multiplicativity,
prime value, squarefree vanishing and finite sums; upstream Aaron Anderson,
`Mathlib/NumberTheory/ArithmeticFunction/Moebius.lean` and
`Mathlib/Data/Nat/Squarefree.lean` at the pinned revision, Apache-2.0.
The natural quotient and coprimality identities are from the same pinned
Lean/Mathlib environment. Existing GRWTSK source predicates are imported unchanged.

Classification: LOCAL_FINITE_ARITHMETIC / SOURCE_PROOF_CANDIDATE for extraction
and reindexing; EXACT_SOURCE_TRANSPORT for the prefix and bulk identities;
CONDITIONAL_RH_CONSUMER for the last implication. No Ramaré paper theorem,
Tao entropy decrement, divisibility-expander theorem or analytic estimate is
imported. No historical influence claim is made.

Source text and immutable blobs were read back. Warning-clean compilation,
fresh kernel replay and transitive axiom/unsafe audit are NOT_RUN; no accepted
receipt exists. Finite rational diagnostics are recorded separately in the
passive issue and are not formal acceptance. The mirrored verification target
lists every source declaration and the requested commands. The public root,
toolchain, dependencies and previous modules are unchanged. Effectful execution
and accepted receipts belong in grwtsk/noeaaeue, not this repository.
