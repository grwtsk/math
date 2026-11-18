# Actual exponential-bump tables in the signed primitive Weil enclosure

Local attribution: grwtsk contributors. Edition 1, 2026-11-18.
Primary MSC2020: 11M26; secondary 11M41, 65G20.
Source: [WeilExponentialBumpEvaluation.lean](WeilExponentialBumpEvaluation.lean).
Supplier: [ExponentialBumpCells](../../MeasureAndIntegration/ExponentialBumpCells.md).
Existing endpoint: [WeilFiniteNormEvaluation](WeilFiniteNormEvaluation.lean).
Coordination: [math#1801](https://github.com/grwtsk/math/issues/1801),
[iteration 6 scope](https://github.com/grwtsk/math/issues/1801#issuecomment-6988414250).

Status: WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE.
Novelty UNASSESSED. All Lean execution, certified computation and independent
review are NOT_RUN. This is a concrete test-data supplier and its source return,
not a positivity theorem, a certified numerical Weil value, or an RH/GRH proof.

## Exact source and first remaining premise

The test is the SAME explicit real odd function

    f_T(t)=t*expNegInvGlue(T^2-t^2),   T>0,
    g_T=liftReal(f_T).

Fix a primitive NONPRINCIPAL Dirichlet character chi modulo q, q!=0, with hp
and hn as in the canonical source. The evaluated quantity is exactly

    primitiveArithmeticValue chi hp hn T g_T.

The source-specific domain hypothesis still supplied to both new declarations is

    IntegrableOn
      (gammaCorrectionDensity (gammaParity chi) g_T) (Ioi 0).

This is the actual gamma/parity density, not an arbitrary proxy. We have NOT
silently removed it because the test is smooth. A source-native theorem deriving
this integrability from the proved smooth compact support would discharge this
remaining domain premise. It is distinct from the gamma contribution's sign.

## WEB-1: derive all the other native admissibility components

The existing `Admissible chi T f` is the conjunction of T>0, C2 regularity,
compact support, oddness, membership of liftReal f in L2(volume), vanishing
outside [-T,T], and integrability of that gamma density on (0,infinity).
It contains no target positivity assumption.

EBC-3 supplies C-infinity regularity of f_T, hence C2 regularity. EBC-6 supplies
compact support and EBC-4 supplies oddness. The complex lift is continuous with
compact support, so pinned mathlib's
`Continuous.memLp_of_hasCompactSupport` gives its L2 membership. EBC-5 supplies
vanishing outside the source interval, including its endpoints. Combining
these conclusions with the separately supplied gamma integrability gives

    admissible_oddExpBump_of_gamma_integrable :
      [the explicit gamma premise] -> Admissible chi T f_T.

This is domain assembly with six genuine suppliers, not a new admissibility
definition, a research axiom or a claim that gamma integrability has been proved.

## WEB-2: complete quantified arithmetic endpoint

Retain D,L>=0 and the original all-height counting premise

    for EVERY real U>=2: N_chi(U)<=D U(log U+L).

Choose J in N, H in R with 2^J<=1+H. Supply a finite subset S of actual
critical-strip zeros inside the STRICT source window |Im rho|<H and a true
multiplicity-count upper bound N_chi(H)<=M. For each rho in S use the actual
analytic multiplicity m_chi(rho), full complex spectral coordinate
z_rho=-i(rho-1/2), center c_rho and radius delta_rho satisfying

    delta_rho>=0, |z_rho-c_rho|<=delta_rho,
    |c_rho|<=C, C>=0.

The source inclusion/count hypotheses remain exactly those of WFN-5. A finite
set indexed by actual zeros is not an implemented root-isolation or association
algorithm. The count is not the number of supplied disks.

Choose a finite strict covering partition -T=x_0<...<x_N=T, with
h_j=x_(j+1)-x_j, q_j=(x_j+x_(j+1))/2, and positive integers

    p_j >= y_j := (T^2-q_j^2)^(-1),  for every j<N.

The new supplier fixes, rather than requests, the data

    K=1+4T^2,
    L_j=(1-y_j/p_j)^(p_j),  U_j=(1+y_j/p_j)^(-p_j),
    w_j=q_j(L_j+U_j)/2 in C,
    s_j=|q_j|(U_j-L_j)/2,
    epsilon_j=K h_j/2+s_j,
    E=sum_j epsilon_j h_j,
    B0=sum_j (|w_j|+epsilon_j)h_j,
    B1=sum_j K h_j.

EBC-12 proves EVERY closed-cell derivative bound and every midpoint error for
the actual g_T. Their analytic inequalities are no longer assumptions in WEB-2.
For rational T and x_j, these table expressions are finite rational operations.
A particular machine representation or rational-cast executable checker is not
installed by this theorem, and the full later error expression still has other
transcendental evaluations requiring certified outward arithmetic.

Keep the ORIGINAL Taylor order n with TC/(n+1)<=1/2, rounded moments mu_k,
moment-rounding bounds tau_k for k<n, and BOTH reflected polynomial evaluations:

    |quadratureMoment(x,w,N,k)-mu_k|<=tau_k,
    P_n(c;mu)=sum_(k<n) (ic)^k mu_k/k!,
    |P_n(c_rho;mu)-a_rho|<=r_plus,rho,
    |P_n(conj(c_rho);mu)-b_rho|<=r_minus,rho.

Define the unchanged error inputs

    eta_k=T^k E+tau_k,
    E_center=2 B0 (TC)^n/n! + sum_(k<n) C^k eta_k/k!,
    Delta_rho=T delta_rho exp(T|Im c_rho|+T delta_rho)B0,
    alpha_rho=Delta_rho+E_center+r_plus,rho,
    beta_rho=Delta_rho+E_center+r_minus,rho.

Retain final finite-sum rounding

    |Re sum_(rho in S) m_chi(rho) a_rho conj(b_rho)-v|<=r.

The endpoint is

    |primitiveArithmeticValue chi hp hn T g_T-v|
      <= Tail+Missing+Disk+r,

where EXACTLY the existing finite-norm expressions are used:

    Tail=4 exp(T)D(L+1)[2(B0+B1)]^2(J+2)2^(-J),
    Missing=(M-sum_(rho in S)m_chi(rho)) exp(T)(2B0)^2,
    Disk=sum_(rho in S)m_chi(rho)
      [alpha_rho |b_rho|+beta_rho |a_rho|+alpha_rho beta_rho].

Natural subtraction in the Lean Missing definition is unchanged; its legitimate
use still depends on the original actual-set inclusion and count conditions.
The original analysis establishes the needed multiplicity comparison. It is not
licensed by supplying arbitrary disks or an arbitrary integer M.

## Complete argument and return to the arithmetic source

1. Use WEB-1 to construct the original Admissible predicate, keeping the explicit
   gamma-integrability premise. Use EBC-3 for the stronger smoothness required by
   WFN-5. There is no arithmetic sign in either step.
2. Strict cell geometry proves the finitely many midpoints are interior.
   EBC-12 derives nonnegative sample errors, actual sample enclosures and the
   whole-cell derivative ranges from the explicit formula and integer orders.
3. Instantiate the UNCHANGED WFN-5 theorem with x,w,K,s. Its DCB chain gives
   the same original raw-moment and both L1 bounds; its norm substitution returns
   to the unchanged primitiveArithmeticValue and complete error budget.
4. Supply the unchanged root locations, analytic multiplicities, strict height
   inclusion, count bound, all-height count growth, Taylor order and the three
   finite-rounding stages. The conclusion is literally WFN-5's estimate for g_T.

No ordinate projection, norm-square substitute or discarded mixed error appears.
The primitive character, conductor, parity/gamma term, character phases, all
prime powers and dual-character source identifications are inherited unchanged.
A step function is never substituted into the arithmetic form. No finite head
is declared complete merely because its disks were supplied; missing-head mass
and the infinite height tail remain separate charges.

## Individual declaration/provenance records

Both declarations have prefix
`GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain`.

### WEB-1: admissible_oddExpBump_of_gamma_integrable

Typed domain: q:N with NeZero q, chi:DirichletCharacter C q, T:R, 0<T, and the
literal gamma integrability proposition above. Conclusion: the EXISTING
Admissible chi T (oddExpBump T).

Providers: local EBC-3/4/5/6; pinned
Continuous.memLp_of_hasCompactSupport; the existing Admissible definition.
Exact mathlib source: [Indicator.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/MeasureTheory/Function/LpSpace/Indicator.lean),
blob `c59ef3ab1a7d551186ffbec150f636eebba6725f`, mathlib contributors,
Topology section, Continuous.memLp_of_hasCompactSupport. Retain its continuous,
compact-support and finite-on-compacts measure hypotheses; Lebesgue measure
supplies the latter. No copied upstream source. Mathematical consumer WEB-2.
The gamma premise is OPEN here. Formal execution/review NOT_RUN.

### WEB-2: abs_primitiveArithmeticValue_sub_oddExpBump_estimate_le

Typed domain: the complete source signature described above. Every character,
window, finite zero subset, multiplicity/count condition, cell, order and rounding
bound is retained. The conclusion is an enclosure of the original arithmetic
source for the specific unchanged test f_T.

Providers: WEB-1, EBC-3/12, and WFN-5
`abs_primitiveArithmeticValue_sub_derivativeCell_estimate_le` at inspection base
`8575a7d64b2b1ddc5b67618b9b55c950a2861fbb`, file
[WeilFiniteNormEvaluation.lean](https://github.com/grwtsk/math/blob/8575a7d64b2b1ddc5b67618b9b55c950a2861fbb/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilFiniteNormEvaluation.lean),
blob `5628027c360699d30cd116286a953354eba4e525`, grwtsk contributors.

Consumer: source-local evaluation or sign testing of this actual test. A negative
total upper endpoint would be usable by the existing same-character negative-sign
consumer; no such endpoint is exhibited here. This is a local consequence of the
existing explicit-formula chain, NOT a new explicit formula or a new paper theorem.
Shared premises and source execution status are preserved. Formal execution,
transitive axiom audit, certified evaluation and independent review NOT_RUN.

Comparison dated 2026-11-18: reopened the exact Admissible definition, WFN-5,
DCB-3 and pinned mathlib providers. Repository code search returned no useful
complete results; no absence or novelty conclusion follows. Novelty UNASSESSED.
Individual EBC provider mappings and boundary/precision falsification checks are
in the adjacent supplier record, not promoted to an independent proof.

## Open obligations and evidence boundary

The remaining gamma-integrability premise must still be discharged against the
source density. Root-region association, analytic multiplicities/counts, all-height
count constants, and later outward arithmetic remain inputs. No executed full
Weil interval, arithmetic sign, spectral identification or universal certificate
existence is established. This is not a determining-test or density theorem.

Conductor-one pole-inclusive zeta is NOT covered by this primitive nonprincipal
endpoint. No RH or primitive Dirichlet GRH conclusion follows. The exact poles
cannot be restored merely by setting q=1 in a theorem requiring chi!=1.

Lean pin `leanprover/lean4:v4.34.1`; mathlib pin
`d13f23b723b8a846827a245b89c10fc7d3f11612`; both unchanged.
Parsing, elaboration, exact exported types, targeted/full builds, fresh kernel
replay, transitive axiom audit, certified arithmetic execution and independent
review: NOT_RUN. Root imports and historical evidence are unchanged.

No verified local Noe skill or Lean/lake executable was present. The required
proof-execution skill returned 404 at Noe main
`7a0139525137109a68534a0c3f28f6e77b7bc7f7`; no dependent execution,
worker, scheduler or cross-chat messaging was dispatched. Ordinary publication
receipts and source hashes are recorded in issue #1801. They are source-identity
evidence only, not formal-proof execution evidence.
