# Dyadic exponential reduction for canonical tent evaluation

Parent: `6666117ed5042d8d2c0c6d903fecf928992d7686` (draft PR #306).
Pinned Mathlib: `db584cd6d46c92f209a44c0f1c829460d327499d`.
Owners: #189 / #261, under #257.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

The construction below is classical error analysis. New and inherited Lean scripts
remain uncompiled. The exact rational diagnostic companion tests finite arithmetic,
not analytic identities, Lean elaboration, or a zero database. It is not a prime
certificate or a new prime-distribution result.

## 1. Target and unchanged dependencies

The preceding power evaluator expands exp(z lambda) directly. Its admissibility
condition R/(K+1)<=1/2 can force the degree to increase with the argument magnitude.
This increment computes a small-argument seed, then restores the exponential by
exact repeated squaring. It does not use a floating-point logarithm, a principal
phase choice, or an approximate multiple of 2*pi.

Keep the existing rational dyadic logarithm input for each positive endpoint t.
It supplies lambda and eta with |log(t)-lambda|<=eta. Its natural dyadic exponent
belongs to the real-log source factorization. The NEW squaring count s belongs
to exponential reduction. They are separate from the logarithm term count and
exponential term count K; none of these indices is a zero cutoff or arithmetic n.

## 2. Scale both the argument and its uncertainty

Set u=z log(t), v=z lambda and D=2^s. With rect(z)=|Re(z)|+|Im(z)|, define

    r = rect(z)*|lambda|/D,
    d = rect(z)*eta/D.

Exact algebra gives |v/D|<=r and |u/D-v/D|<=d. Require r<=1, d<=1, and K>=1.
These guards are finite arithmetic inequalities when the primitive data are
rational. The earlier degree/radius guard follows because r/(K+1)<=1/2.
There is no claim that K=1 gives useful accuracy, only that it makes the bound valid.

Using the original finite polynomial and its complete infinite remainder,

    P_K(q) = sum_(j<K) q^j/j!,   e_K(r)=2*r^K/K!,
    p_0 = P_K(v/D),
    E_0 = e_K(r)+2[rect(p_0)+e_K(r)]d,

supplies |exp(u/D)-p_0|<=E_0. Both Taylor truncation and uncertain-log displacement
are present before restoration. It would be invalid to divide only the centered
argument while forgetting the actual argument or its uncertainty.

The existence lemma can make both guards hold for each fixed pair of finite
bounds. It is not an executable or optimal search for s and does not supply a
requested final accuracy. In particular, arbitrarily coarse logarithm data can
pass after enough scaling, while the final propagated error is still very large.

## 3. Every squaring has a nonlinear error cost

For |a-b|<=E, the identity a^2-b^2=(a-b)(a+b) gives

    |a^2-b^2| <= E[2 rect(b)+E].

Define exact values p_(j+1)=p_j^2 and bounds

    E_(j+1)=E_j[2 rect(p_j)+E_j].

Induction yields |exp(2^j*u/D)-p_j|<=E_j. The exact exponential addition theorem
gives exp(u/D)^(2^s)=exp(u), so the final computed value V=p_s satisfies

    |exp(u)-V| <= E_s.

The old polynomial P_K(v) and the new repeated-square value are not identified.
For v=1, s=1, K=2 they are 2 and 9/4 respectively. They approximate the same
analytic source by different algebraic algorithms. The old evaluator and all
of its declarations remain unchanged.

The E^2 term is necessary: a=11/10, b=1, E=1/10 gives error 21/100, exceeding
both E and 2E. A final enclosure cannot retain only its small seed error.
Zero squarings preserve the seed value and full seed error exactly.

## 4. Local rounding has a separate, explicit generic theorem

For a supplied rounded sequence v_j and a proved local error

    |v_j^2-v_(j+1)| <= rho_j,

the generic chain theorem uses

    E_(j+1)=E_j[2 rect(v_j)+E_j]+rho_j.

It derives the final-chain error from the seed enclosure and EVERY local step
j<s. Rounding is added at the stage where it occurs, before later amplification.
Simply adding sum rho_j to an exact-squaring budget is not justified. For example,
rounding 1 to 101/100 followed by an exact square produces error 201/10000,
which is larger than the single local allowance 1/100.

The endpoint algorithm in this increment uses exact rational/algebraic squaring
and zero local rounding errors. The generic rounded-chain theorem is not silently
instantiated with machine arithmetic. A rounded endpoint implementation still
requires its stepwise evidence and a dedicated adapter. Final head accumulation
rounding remains a separate allowance in the existing prime criterion.

## 5. Reuse the actual tent kernel, not a replacement source

For h>0, a=x-h>1, b=x+h, a point record keeps the actual coordinate enclosure
|rho-c|<=r_rho, Re(c)<=1, and 0<d_c<=h|c||c+1|. Three new log-derived scaled
power inputs give A,X,B approximating a^(c+1), x^(c+1), b^(c+1), with their FULL
propagated errors e_a,e_x,e_b. The existing quotient-error theorem gives

    V_rho = (B-2X+A)/(h*c*(c+1)),
    endpoint_error <= (e_b+2e_x+e_a)/d_c.

The inherited entire-kernel coordinate sensitivity gives the separate cost
4*b*(lambda_b+eta_b)*r_rho. The new point error is their sum. The coefficient
two, radius normalization, guarded center denominator, and both true horizontal
coordinates remain. The coordinate ball need not avoid removable parameters;
only the quotient center must do so. No critical-line projection occurs.

Records remain indexed by the SAME complete canonical heightHead(T). Actual
analytic multiplicities multiply each whole record value and error:

    V_head=sum m(rho)V_rho,
    E_head=sum m(rho)epsilon_rho,
    |Z_(n,T)-V_head|<=E_head.

A separately proved |V_head-v_round|<=epsilon_round gives the included-source
error E_head+epsilon_round. This is supplied to the unchanged sufficient margin

    h_n-Re(v_round)-E_head-epsilon_round-D_n-B_n(T)-U_n > 0,
    B_n(T)=8*kappa*(n+1)^4*(log(T)+1)/(h_n*T),
    kappa=44/log(6/5), n>=2, T>=2.

No omitted tail is replaced by a smaller coefficient. No right-line truncation
error is redundantly charged. The signed correction and proper-prime-power
subtraction remain. No strict positive margin, zero record, or external-file
completeness proof is constructed here.

## 6. Scope, practicality, and verification

The mathematical implementation isolates the Taylor seed from the large argument.
This is not a measured speedup or proof of practical feasibility. Its final
precision still depends on repeated-squaring amplification. The rectangular norm
ceiling can be conservative. Exact rational numerator/denominator sizes can grow
rapidly under squaring; a certified rounded implementation or tighter norm bounds
may be needed. Automatic precision selection, phase range reduction, rational
serialization and byte-level certificate checking are not supplied.

The exact rational diagnostic suite compares candidates with independent direct,
unscaled high-degree Taylor enclosures and positive-Mercator log intervals. It
also checks exact synthetic power chains and locally rounded chains. These checks
use complete analytic allowances but do not prove their analytic foundations.
They are not actual zeta evaluations or numerical prime certificates. The source
controls are Lean proof drafts, not executed tests.

All new source stays additive under mathematical subject paths. The isolated
import target does not change GRWTSK.lean. The static manifest is not an execution
receipt. Exact-head elaboration/repair and the entire inherited type/import/axiom/
native-dependency audit remain required. No merge, issue-state change, worker
operation, execution-hold release, Legendre proof or RH proof is represented.

## Exact analytic suppliers

- Parent FiniteExponentialEnclosure: unchanged complete Taylor and argument-error
  estimates, rectangular norm, and the original positive-axis power convention.
- Parent RationalLogEnclosure: actual real-log enclosures from finite rational
  expressions and exact endpoint source identities.
- Parent TentKernelEnclosure: entire coordinate sensitivity and quotient error.
- Pinned Mathlib Analysis/Complex/Exponential.lean: exp_add and the complete
  exponential Taylor bounds used by the inherited seed theorem.
- Parent CanonicalTentPrimeCriterion: source-identified direct arithmetic tail,
  signed correction, proper-prime-power subtraction and strict margin implication.
