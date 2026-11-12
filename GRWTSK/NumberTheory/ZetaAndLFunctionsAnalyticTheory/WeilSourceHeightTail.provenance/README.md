# Actual-source Weil sums and complete strict-height error bounds

Local attribution: grwtsk contributors. Date/version: 2026-11-12, v1.
MSC2020: 11M41 (primary), 11M26, 40A05, 42A38.
Coordination: [math#1801](https://github.com/grwtsk/math/issues/1801),
[scope comment 6829992098](https://github.com/grwtsk/math/issues/1801#issuecomment-6829992098).
Maintained source: [WeilSourceHeightTail.lean](../WeilSourceHeightTail.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation`.

Inspection pin: `grwtsk/math@3b02408c60b704321cdf7e2afa452d458778ca1d`.
Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
All declarations are SOURCE_PROOF_CANDIDATE. Elaboration, complete dependency
build, fresh kernel replay, transitive axiom audit, certified computation,
independent analytical review and repository-wide validation: NOT_RUN.
Originality UNASSESSED. Imported candidates retain their actual evidence status.

## 1. Correction of the preceding handoff, without changing old declarations

The preceding WeilZeroSumReturn handoff incorrectly described an absent formal
source-count supplier. `DirichletZeroCounting.lean` ALREADY contains
`heightCount_le_source_bound`, `exists_heightCount_bound` and
`summable_primitive_correlation_source_bound`, without a counting or growth
hypothesis. Its Git blob is `9a9fc7bcf6f16b8953ce4d69cf86cbe1b161614a` at BOTH
this inspection pin and the preceding handoff's pin
`6f7d2e3b6d15f0d2c49aaba984af27c48786943c`. Thus this is a correction of source
inspection, not a newly proved counting theorem. Its provenance dates the
source development to 2026-11-11. It remains an unelaborated proof candidate.

The maintained bound is, for every primitive character chi of positive level N,

    heightCount_chi(U) <= D_chi * U * (log U + 3),  U >= 2,
    D_chi = sourceCountConstant chi
          = (centralStripGrowthConstant N + farLeftGrowthConstant chi
             + 8 + log 4) / log 2 >= 0.

The source constants are finite kernel/growth expressions fixed before U and
before the test. They have not been numerically evaluated or proved
conductor-uniform here. This is NOT the separately written D=324,
L=log(3N) estimate. No numerical constant or unverified written Jensen bound is
silently installed as a Lean fact.

The old `_of_heightCount` theorem types and WZSR-v1 statement locators are
unchanged. The new WSHT-v1-01--03 declarations consume the existing count.
Old source bytes, historical receipts and prior failures are not rewritten.
The correction supersedes the handoff's claim of absence, not its declared
verification status. Existence of a source body is not formal acceptance.

## 2. Original arithmetic target and objects

The ultimate target remains `WeilNegativeWitness.criticalStripStatement chi`
on Mathlib's analytically continued `DirichletCharacter.LFunction`: every
zero rho with 0 < Re rho < 1 has Re rho = 1/2. Primitive Dirichlet characters,
including the conductor-one source, remain the scope. The final source consumer
`criticalStripStatement_of_detection_and_nonnegativity` still needs its
negative-witness and full-domain nonnegativity suppliers. Neither is concluded.

Fix N>0, primitive chi, f in C_c^infinity(R;C), A>=0 and tsupport(f) subset
[-A,A]. Reuse, without new Lean definitions,

    C_f(r) = integral conjugate(f(x))*f(x+r) dx,
    M_f(s) = integral f(x)*exp((s-1/2)*x) dx,
    W_f(s) = integral C_f(r)*exp((s-1/2)*r) dr,
    z_rho = -i*(rho-1/2), m_rho = zeroMultiplicity chi rho,
    c_k(f) = derivativeL1Cost f k.

The maintained exact adapter says
W_f(s)=M_f(s)*conjugate(M_f(1-conjugate(s))) for every complex s.
No off-line product is replaced by a modulus square. The source index is the
existing `CriticalStripZero chi`; its weights are actual analytic orders.

Write E_chi(f) for the EXISTING contour endpoint, only in this exposition:

    E_chi(f) = integral I_chi,f(t) dt/(2*pi)
               + if N=1 then W_f(0)+W_f(1) else 0,
    s_t = 2+i*t,
    I_chi,f(t) = log N * W_f(1-s_t)
      +(W_f(s_t)+W_f(1-s_t))*(-log(pi)/2+psi((s_t+a_chi)/2)/2)
      -W_f(s_t)*sum_n chi(n)*Lambda(n)*n^(-s_t)
      -W_f(1-s_t)*sum_n chi^(-1)(n)*Lambda(n)*n^(-s_t).

Both prime series are on Re(s)=2, where they converge absolutely. All prime
powers, complex phases, conductor, gamma/parity and inverse-character legs
remain. Absolute integrability is supplied by `WeilVerticalLimits`, not added
as a premise. The new source-count application gives the unordered HasSum

    sum_rho m_rho*W_f(rho) = E_chi(f).

The separate zeta declaration expands the literal gamma/von-Mangoldt integrand
and includes W_f(0)+W_f(1)=2*Re(M_f(0)*conjugate(M_f(1))). These are signed pole
terms. The level-one LFunction is literally riemannZeta, not an alternative model.

## 3. Complete positive-moment argument for the height tail

The existing coordinate estimate retains the full complex zero:

    |Im z_rho| <= 1/2,
    |Im rho| <= norm(z_rho) <= |Im rho|+1/2.

Repeated integration by parts of the compact-smooth test supplies the maintained
bound, for EVERY integer k>=1,

    norm(m_rho*W_f(rho))
      <= c_k(f)^2 * m_rho * decayWeight(A,k,z_rho)^2,
    decayWeight(A,k,z) = exp(A*|Im z|)/(1+norm z)^k.

No varying-test uniform bound on c_k(f) is asserted. The comparison is an upper
bound on absolute values; the signed arithmetic terms are not redefined.

The existing all-finite-subsets adapter `heightCount_le_iff` and the source count
supply radial dyadic mass at most

    8*D_chi*(n+1)*2^n

in 1+norm(z)<2^(n+1). Indeed |Re z|<=norm z, and log 2<=1 gives
2*D_chi*(3+1)=8*D_chi in `dyadic_count_of_height_count`.
Set r_k=2/2^(2*k); then 0<r_k<1. Summing the complete positive moment over
radial shells with n>=J gives the already maintained exact budget

    B_k(A,chi,J) = 8*D_chi*exp(A)*r_k^J
       *((J+1)/(1-r_k) + r_k/(1-r_k)^2).

This is `tailBudget A (1/2) (8*sourceCountConstant chi) 1 k J`.
The proof of that budget groups EVERY finite subset by its dyadic shell and
then uses the full affine-geometric series. It does not sample the infinite tail.

Now take ANY real H and natural J with 2^J<=1+H. If H<=|Im rho|, then

    2^J <= 1+H <= 1+|Im rho| <= 1+norm(z_rho).

Thus the omitted HEIGHT tail is a subset of the controlled radial tail. Apply
this inclusion to the NONNEGATIVE moment, not to the signed radial sum. With

    v_H(rho) = if H<=|Im rho| then m_rho*W_f(rho) else 0,
    u_J(rho) = if 2^J<=1+norm(z_rho)
               then m_rho*decayWeight(A,k,z_rho)^2 else 0,

one has norm(v_H(rho))<=c_k(f)^2*u_J(rho). The existing moment theorem proves
Summable u_J. Direct comparison proves Summable(norm v_H), and ordered summation
gives the stronger absolute estimate WSHT-v1-04:

    sum_rho norm(v_H(rho)) <= c_k(f)^2 * B_k(A,chi,J).       (A)

There is no assumption that either a signed sum or its real part is nonnegative.
Every point with |Im rho|=H is included in (A).

## 4. Exact return to the finite source head and the endpoint

Let S=heightWindow chi hprim H, with exact membership |Im rho|<H, and put
h_S(rho)=m_rho*W_f(rho) on S, zero elsewhere. Absolute convergence of the full
source gives Summable h_S. Its tsum is the literal finite sum on S. Pointwise,

    m_rho*W_f(rho)-h_S(rho)=v_H(rho).

Subtract the finite-head HasSum from the count-free source HasSum. This proves

    HasSum v_H (E_chi(f)-sum_(rho in S) m_rho*W_f(rho)).

The triangle inequality and (A) give WSHT-v1-05:

    norm(E_chi(f)-sum_(rho in heightWindow(H)) m_rho*W_f(rho))
       <= c_k(f)^2 * B_k(A,chi,J).                         (B)

This identifies the full omitted tail with the ORIGINAL arithmetic contour
endpoint minus the ORIGINAL finite head. It is not an error estimate for an
unidentified abstract series. H need not be one of the special contour heights.
It may equal a zero ordinate. This does NOT authorize contour integration through
a zero: the selected-height contour argument was used once to identify the total
HasSum, while (B) is subsequently a decomposition of that absolutely convergent sum.

For k=1, r_k=1/2 and the exact simplification is WSHT-v1-06:

    norm(E_chi(f)-finiteHead(H))
      <= 16*exp(A)*D_chi*c_1(f)^2*(J+2)*2^(-J).            (C)

In particular H=2^J is always allowed, and the budget tends to zero for fixed
source and test. For arbitrary H>=0 one may choose the dyadic J supplied by
2^J<=1+H<2^(J+1). No growing support/derivative cost is hidden in that observation.
The all-order bound (B) retains the ratio r_k and the full derivative cost.

WSHT-v1-07 independently consumes the existing finite-set cofinality theorem:
for EVERY H:Nat->Real with H(n)->infinity, the corresponding canonical finite
heads converge to E_chi(f). H need not be monotone or avoid zero ordinates.
Pointwise occurrence in a window is not substituted for eventual containment of
every finite set. Absolute convergence and cofinality are both supplied.

## 5. Hostile checks, consumers and limits

A small signed radial sum does not control a height sub-tail: the synthetic
terms +R and -R sum to zero, while selecting only +R leaves arbitrary magnitude.
This is a logical negative control, not an arithmetic zero divisor or RH
counterexample. It explains why the new theorem proves the sum-of-norms bound
(A), rather than applying subset monotonicity to a signed sum.

Strict cutoffs, equality at H, central zeros, both signs of the ordinate, repeated
analytic multiplicities and complex tests are retained. The source index is not
made nonempty or simple. The exponent exp(A) comes from the entire ordinary strip
|Im z|<=1/2; no narrower zero-location theorem is used. Source constants depend
on chi. The test derivative cost and support are not declared uniformly bounded.

The consumer is exact finite-height evaluation of the contour endpoint and its
future physical-form assembly. A mathematical `heightWindow` is noncomputable;
these declarations provide neither a numerical enumeration nor proof that a
supplied finite list contains all zeros in that window. Numerical use additionally
requires complete zero enclosures, multiplicities, certified transform values,
source-constant bounds and all rounding errors. No such certificates are produced.

Concurrent gamma-line work is coordinated in math#1801 comment 6829902598.
It is not duplicated or declared formally complete here. The canonical physical
form `primitiveArithmeticValue` still requires the gamma/orientation assembly
with the maintained prime-leg evaluation. Positivity for all tests is a different
assertion. A tail error tending to zero does not prove finite-head nonnegativity,
universal certificate existence, the actual negative-witness supplier, RH or GRH.
No new research axiom or stronger target replacement is used.

## 6. Primary source comparison and exact provenance

Dated comparison: 2026-11-12. These are local consequences of existing counting,
decay, summation and contour statements; no new general theory, paper theorem,
independent proof or novelty is claimed. WSHT-v1-01--07 are source-local statement
locators, not new frontier registry claims or verification promotions. Each has
an adjacent individual record containing its literal type and retained hypotheses.

Relevant local sources at the inspection pin:

- [DirichletZeroCounting.lean](../DirichletZeroCounting.lean), blob
  `9a9fc7bcf6f16b8953ce4d69cf86cbe1b161614a`: actual source count and its constants.
- [DirichletZeroCounting.provenance/README.md](../DirichletZeroCounting.provenance/README.md),
  blob `b4923383846273b265c7eaa1844c18cd8a3f40a4`: the complete prior growth/Jensen
  argument and its preserved indirect primary-source records.
- [WeilZeroSumReturn.lean](../WeilZeroSumReturn.lean), blob
  `f6cad9f85638ccb8765499ebf2b44e25ac525107`: parameterized HasSum, Mellin adapter,
  zeta specialization and actual height-window cofinality.
- [WeilCorrelationMoment.lean](../WeilCorrelationMoment.lean), blob
  `ab532a6b1345b299c67a0eb18ce7b50ff093d402`: original coordinate geometry.
- [DyadicDecayMoment.lean](../../../MeasureAndIntegration/DyadicDecayMoment.lean),
  blob `95cb8454fc11ecab6c954cf67de9b0a9e293031d`: positive moment, all-subset
  counting adapter, exact budget and its first-order evaluation.
- [WeilContourWeight.lean](../WeilContourWeight.lean): exact Fourier adapter;
  [WeilCorrelationDecay.lean](../WeilCorrelationDecay.lean): all-order test decay.
- [WeilVerticalLimits.lean](../WeilVerticalLimits.lean), blob
  `093765bad5c2aa68b057700be8e70a85a9472356`: integrability and source-selected
  contour endpoint with both poles. Its dependency closure is not revalidated.

Direct primary Mathlib APIs are pinned to the revision above (Apache-2.0):

- Johannes Hölzl, [InfiniteSum/Order.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Topology/Algebra/InfiniteSum/Order.lean),
  blob `33c7a42409953218c559973feeefd441eca9f5d5`, `Summable.tsum_le_tsum`
  (generated additively from `Multipliable.tprod_le_tprod`).
- Johannes Hölzl, [InfiniteSum/Group.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Topology/Algebra/InfiniteSum/Group.lean),
  blob `59ab373226bf669c56ef3ab1fda7e63c75176d39`, `HasSum.sub`
  (generated additively from `HasProd.div`).
- Sébastien Gouëzel, Heather Macbeth, Johannes Hölzl and Yury Kudryashov,
  [Normed/Group/InfiniteSum.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Normed/Group/InfiniteSum.lean),
  blob `8d025095fe1651bee64c5e50b94011c5640e4139`, `Summable.of_norm_bounded`
  and `tsum_of_norm_bounded`. The unchanged source API is reused, not imported
  from a different Lean environment.

## 7. Verification and clean-checkout obligations

No Lean, Lake, proof runner, CI, scheduler or cross-chat execution was dispatched.
The canonical `noe-proof-automation/SKILL.md` read returned HTTP 404 at Noe main
`3a22e1022074ecc99d5cdeaabeb5dc919711a55b`; no verified local skill checkout or
Lean/Lake executable was found. Dependent execution stopped. Ordinary authorized
source authoring, static text checks and Git publication do not supply proof evidence.

On a clean checkout at the publication commit recorded in the coordination
receipt, retain the exact pins and first restore authorized canonical-skill
access. Then the proposed targeted command is (NOT_RUN):

    lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilSourceHeightTail

After elaboration, run the per-declaration axiom queries in the individual records,
fresh kernel replay, statement/dependency review and an independent analytic check.
These are obligations, not successful receipts. Static source-integrity results,
Git hashes and exact publication readbacks are recorded separately in the issue.
No root import, pin, CI configuration or prior verification status is changed.
