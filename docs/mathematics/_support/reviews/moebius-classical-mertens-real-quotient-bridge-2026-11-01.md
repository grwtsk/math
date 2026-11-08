# One classical Möbius/Mertens input across integer, real cutoff and quotient sources

Research: 2026-11-01. Local attribution: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.

**Classification:** ordinary finite/arithmetic-logarithmic proof; Lean SOURCE_PROOF_CANDIDATE; compilation, expected types, fresh kernel replay and transitive axiom audit NOT_RUN. The classical Mertens arithmetic input is an explicit unproved-in-pinned-Lean proposition, and the near-square-root Euler consumer remains conditional. This is not a proof of the Riemann Hypothesis.

## Exact source connection and arithmetic conventions

The established original causal Abel bridge defines

  M(n)=finiteMertensPrefix n=sum_(j=1..n) moebiusReal(j),

and the proposition ClassicalMertensLogPowerInput says that, **for each integer A>=1**, a **single C_A>=0** bounds

  |M(n)| <= C_A*n/(1+log n)^A   for EVERY n>=1.         (I)

The finite prime-bank Euler source instead defines QuotientMertensLogPower A D:

  |M(floor(N/d))| <= D*(N/d)/(1+log(N/d))^A,
  for all integer N>=d>=1, with the RHS ratio in REAL arithmetic.   (Q)

The cutoff floor, the real logarithm in (Q), all non-squarefree zero coefficients, n=1, and the original finite range Icc 1 (N/d) must be preserved. A direct use of the **same** C_A is not justified: for A>=2, x/(1+log x)^A can decrease as x rises from 1 to 2. The bridge pays a simple universal A-dependent multiplier, not a horizon-dependent refit.

## Main new finite proof: the floor/log interpolation

Let x>=1 and q=floor(x) in the natural numbers. Then q>=1 and

  q <= x < q+1 <= 2q.

The real-logarithm inequalities log(2)<=1 and log x<=log(2q) give

  1+log x <= 2*(1+log q).

For every A>=0, both bases are strictly positive; therefore

  (1+log x)^A <= 2^A*(1+log q)^A.

For every nonnegative C, the exact original integer source (I) consequently implies

  |M(floor x)|
  <= C*q/(1+log q)^A
  <= (2^A*C)*x/(1+log x)^A.                             (R)

Take x=N/d. The pinned Mathlib theorem Nat.floor_div_eq_div identifies floor((N:real)/(d:real)) with the original *integer* quotient N/d; a finite bijection j -> j+1 identifies Finset.range N with Finset.Icc 1 N, including N=0. Thus (R) is exactly QuotientMertensLogPower A (2^A*C), with no new arithmetic hypothesis, no term omission and no alternative cutoff. The sole loss is the explicit 2^A.

Conversely, the global family of quotient estimates (Q) gives (I) at d=1, x=N without any constant change. Hence

  ClassicalMertensLogPowerInput
   <-> (for every A>=1, exists D_A>=0, QuotientMertensLogPower A D_A).

The forward direction uses D_A=2^A*C_A. The reverse direction can retain C_A=D_A. The equivalence is at the quantified-family level, **not** equality of optimal constants, and does not assert the truth of either external analytic theorem in Lean.

## Near-square-root Euler consumer

The already published NearSquareRootEulerFormalizationTarget uses QuotientMertensLogPower (2*A) D with the separately exposed FiniteSmoothEulerMoments B. The new source supplies this quotient premise from the **same original** ClassicalMertensLogPowerInput used by MoebiusQuantitativeMertensAbsoluteAbel:

  D_(2A)=2^(2A)*C_(2A).

For every fixed finite true-prime bank B with moments W_B and V_B, and N>=1, the conditional near-square-root conclusion retains the original signs:

  |M_rough(N)| <= D_(2A)*W_B*N/(1+log N)^A
                  + V_B*sqrt N*exp(sqrt(log N));

  |M_matched(N)| <= D_(2A)*(1+W_B)*N/(1+log N)^A
                    + V_B*sqrt N*exp(sqrt(log N)).

Both conditions are **conditional** on (i) the external classical Mertens input (I), (ii) finite positive smooth Euler moment inequalities in pinned Lean, and (iii) the exact finite near-square-root transfer target being proved and replayed. The present source *only* discharges the integer-to-real-quotient hypothesis conversion. It does not claim the other premises.

The high-smooth/high-smooth signed pair bound, 8*T*exp(2*sqrt(T))*V_B^2, remains a separate ordinary mathematical estimate whose current Lean proof targets are open. A bank growing with T requires independent control V_B=exp(o(T)); no implicit bank uniformity is asserted. The low/low and mixed long-gap signed source remains the actual all-positive-rate RH frontier.

## Pinned theorem API and independent checks

Pinned environment: Lean v4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. The relevant Mathlib source was inspected at its exact revision:

- Mathlib/Algebra/Order/Floor/Semifield.lean: Nat.floor_div_eq_div (natural quotient equals floor of real quotient).
- Mathlib/Algebra/Order/Floor/Semiring.lean: Nat.lt_floor_add_one and Nat.floor_le.
- Mathlib/Analysis/SpecialFunctions/Log/Basic.lean: Real.log_mul, Real.log_le_log, Real.log_le_sub_one_of_pos.

Independent local preflight checked q=N//d>=1, q<=N/d<q+1<=2q, and the derived logarithmic/interpolation allowance, for N=1..600, all 1<=d<=N, and A=0,1,2,3,4,8: 1,081,800 evaluated interpolation inequalities, no violations. The local check used floating-point logs and **does not** qualify as a formally verified proof or an all-integer Mertens constant.

For external arithmetic context, Ethan Simpson Lee and Nicol Leong, *New explicit bounds for Mertens function and the reciprocal of the Riemann zeta-function*, arXiv:2208.06141v5 (2026-09-09), https://arxiv.org/abs/2208.06141, provides unconditional Vinogradov–Korobov-type Mertens bounds that imply the fixed-A logarithmic family in ordinary mathematics. Its proof is **not** imported into the pinned local Lean corpus.

## Acceptance and hostile controls

- No positive-integer endpoint, squareful zero, finite-prime-bank member, source sign or original quotient cutoff has been changed.
- The universal constant D_A is chosen **before** N,d,B; it may depend on the fixed exponent A. Do not treat 2^A as a uniform constant as A -> infinity.
- The reverse transport is only from a **global** all-exponent quotient family, not an individual A bound to all A.
- A proof of classical PNT M(x)=o(x), without quantitative zero-free-region input, is insufficient to instantiate (I).
- Neither the original rate-one logarithmic energy profile nor the near-square-root Euler tail establishes the global all-positive-rate signed endpoint estimate.
- Lean source contains no research axiom, no sorry, and no admitted result at source-text level; this is **not** a transitive axiom audit.

**Formal checks still NOT_RUN:** parse/elaborate, expected types, fresh independent kernel replay, transitive source/dependency axiom audit and generated/private trust review. No native runner, CI, scheduler or remote proof workflow was initiated. The independent quantitative Mertens theorem, finite smooth Euler moments, near-square-root proof target and full signed all-positive-rate endpoint estimate remain separately OPEN.
