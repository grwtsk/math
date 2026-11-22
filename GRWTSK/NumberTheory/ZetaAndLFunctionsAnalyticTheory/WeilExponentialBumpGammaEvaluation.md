# Finite gamma cells for the original exponential bump

Local attribution: grwtsk contributors. Edition 1, 2026-11-18.
Primary MSC2020: 11M26; secondary 11M41, 65D30, 65G20.
Source: [WeilExponentialBumpGammaEvaluation.lean](WeilExponentialBumpGammaEvaluation.lean).
Suppliers: [WeilGammaCellEvaluation](WeilGammaCellEvaluation.md),
[WeilExponentialBumpPrimeEvaluation](WeilExponentialBumpPrimeEvaluation.md),
[WeilExponentialBumpGamma](WeilExponentialBumpGamma.md).
Coordination: [math#1801, iteration 9 scope](https://github.com/grwtsk/math/issues/1801#issuecomment-6991820849).

Status: WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE.
Novelty UNASSESSED. No sign certificate, determining-test theorem or RH/GRH proof.
Formal execution, certified source computation and independent review NOT_RUN.

## Target and first discharged supplier

Iteration 8 returned energy and signed prime-correlation cell estimates to the
original `primitiveArithmeticValue`, but its central expression still contained

    G = integral_eta^R gammaCorrectionDensity(a,g_T,r) dr.

This module bounds G between explicitly defined FINITE sums. It does not assume
an enclosure of G or an oracle for the density's derivative. The actual function,
its gamma domain, and its complete prime response remain unchanged:

    f_T(t) = t*Phi(T^2-t^2),
    Phi(u) = exp(-1/u) if u>0, and 0 otherwise,
    g_T(t) = (f_T(t) : C).

All physical integrations are with Lebesgue measure on the whole real line.
The gamma components apply to every T>=0 and natural a, including a=0 and a=1.
The final arithmetic endpoint applies to every primitive NONPRINCIPAL character
chi of positive modulus q, T>0 and 0<eta<=1<=R. It does NOT include the
conductor-one zeta source, which needs its full pole-inclusive return.

## Exact finite data and quantifiers

Choose ANY finite physical partition x_0=-T,...,x_N=T with every cell ordered
and contained in [-T,T]. Let m_i=(x_i+x_(i+1))/2. Choose positive integer sample
orders p_i at interior m_i, sufficient for

    (T^2-m_i^2)^(-1) <= p_i.

At and outside support endpoints the maintained sample center and radius are
EXACTLY zero; no inverse-gap condition is required there. The existing supplier
uses finite binomial bounds inside support and derives global smoothness,
compactness, L1/L2 membership, |g_T|<=T and Lipschitz constant K_T=1+4T^2.

Write the maintained correlation estimate and allowance as

    A(s;w) = bumpCorrelationEstimate(T,x,p,w,N,s),
    e(s,delta;w) = bumpCorrelationBudget(T,x,p,w,N,s,delta).

The old EBP-3 supplies, for EVERY real r,s with |r-s|<=delta,

    |C_(g_T)(r)-A(s;w)| <= e(s,delta;w),

provided all the unshifted and shifted sample orders are sufficient. This is
an actual-source theorem, not evaluation of a step function in the Weil form.
The allowance is the previously derived expression

    e(s,delta;w) = K_T*B0*delta + E_cells(s;w),

where B0 is a finite L1 upper bound obtained from the SAME unshifted table and
E_cells pays physical-cell variation and both sample errors, including their
product. No new global L1 or correlation oracle is introduced.

Choose ANY finite adjacent lag partition y_0=eta,...,y_M=R with
0<y_j<=y_(j+1) for every j<M. Put

    h_j = y_(j+1)-y_j,     s_j = (y_j+y_(j+1))/2.

For each lag cell j and physical sample i, choose an order w_(j,i) sufficient
for the interior point m_i+s_j. This is a separate table from prime-lag orders.
Choose a kernel order k_j>0 such that

    k_j >= (a+1/2)*y_(j+1),    k_j >= 2*y_(j+1).

These upper-endpoint conditions imply the orders needed at both endpoints.
The kernel denominator positivity is PROVED from positive lag/order; there
is no `hgap` input. All of these conditions are finite algebraic inequalities
when T,x,y are rational and the orders are natural numbers.

## Complete primary analytical argument

### Whole-cell gamma enclosure (EBQ-1)

Use the original zero-lag table to define

    mu = Re A(0;p),        e0 = e(0,0;p).

The correlation-zero identity and the old EBP-3 imply |E(g_T)-mu|<=e0.
For cell j put

    z_j = A(s_j;w_j),
    e_j = e(s_j,h_j/2;w_j),
    b_j = 2(mu-Re z_j),    d_j = 2(e0+e_j).

EVERY r in [y_j,y_(j+1)] satisfies |r-s_j|<=h_j/2. Therefore the old EBP-3,
with true lag r and sampled lag s_j, gives |C(r)-z_j|<=e_j throughout the cell.
This substitution is the between-lag variation supplier; using delta=0 here
would only certify the midpoint and would be insufficient for integration.
The written expansion of d_j makes the complete allowance visible:

    d_j = 2*e0 + 2*E_cells(s_j;w_j) + K_T*B0*h_j.

WGC-1/2 now give, on EVERY point of the whole cell,

    max(0,b_j-d_j) <= S_(g_T)(r) <= max(0,b_j+d_j).

Use the finite kernel coefficients of WGC-4/5:

    l_j = Kminus(a,y_(j+1),k_j),
    u_j = Kplus(a,y_j,k_j),
    L_j = l_j*max(0,b_j-d_j),
    U_j = u_j*max(0,b_j+d_j).

Because 0<=l_j<=k_a(r)<=u_j, multiplication proves

    L_j <= gammaCorrectionDensity(a,g_T,r) <= U_j.     (EBQ-1)

These are exactly `bumpGammaLowerRow` and `bumpGammaUpperRow`. The original
physical function is not changed. The source kernel is not replaced by its
samples: the finite coefficients are rigorous bounds on it across each cell.

### Finite middle integral (EBQ-2)

The existing `gammaCorrectionDensity_oddExpBump_integrable` supplies the actual
gamma-domain condition for every natural a and T>=0. Apply WGC-7 to EBQ-1:

    Glo := sum_(j<M) L_j*h_j,
    Gup := sum_(j<M) U_j*h_j,
    Glo <= integral_eta^R D_a(g_T,r) dr <= Gup.         (EBQ-2)

For rational physical and lag geometry, all samples are real rational numbers
cast to C. Their complex norms reduce to rational absolute values. Thus both
bounds are finite rational expressions (with maxima and absolute values), not
expressions containing an exponential evaluation or an unevaluated integral.
The Lean statements permit exact real geometry as well. They do not implement
a rational-data parser, an interval runtime, or a certificate generator.

### Unchanged primitive arithmetic return (EBQ-3)

Keep EVERY original active prime label and its von Mangoldt weight. For prime
lags use a separate table wp_(n,i), sampled lag s_n and certified
|log(n)-s_n|<=delta_n. Keep the original complex phase in `twistedPrime`.
Let A_n,e_n be the old finite correlation estimates/allowances, a0=A(0;p),
e0 as above, and c=gammaConstant(q,gammaParity(chi)). Define

    P_hat = twistedPrime(T,chi,A),
    E_eval = |c|*e0 + primeCorrelationError(T,e).

Iteration 8 proved, with V=c*Re(a0)+G-P_hat,

    -E_eval <= Q_chi(f_T)-V <= B_gamma(T,eta,R)+E_eval,

where Q_chi is EXACTLY `primitiveArithmeticValue` and the unchanged omission
allowance is

    B_gamma = (3/4)*(2T+1)*(1+4T^2)^2*eta^2
        + [16T^3/(1-exp(-2))]*exp(-R/2).

Substitute EBQ-2 without changing any arithmetic term:

    c*Re(a0)+Glo-P_hat-E_eval <= Q_chi(f_T)
      <= c*Re(a0)+Gup-P_hat+B_gamma+E_eval.             (EBQ-3)

The lower endpoint does NOT subtract the nonnegative omitted gamma remainder;
the upper endpoint MUST include its full allowance. The absolute value of c
is retained. No zero-location, multiplicity/count, or sign premise enters this
arithmetic-side evaluation route.

The two endpoints contain NO unevaluated middle gamma integral. They STILL
contain exact c, prime weights/character phases, supplied log-enclosure
certificates and the explicit transcendental tail allowance. Their certified
scalar evaluation and every arithmetic rounding cost remain open. The gamma
kernel coefficients alone are not the entire gamma constant. No concrete
numerical value or favorable sign of either endpoint is asserted.

## Accuracy, limits and falsification

At fixed T,a,eta>0,R<infinity, kernel denominators are bounded away from zero.
The existing EBC-2 bound U_n(v)-L_n(v)<=v^2/n and convergence of the elementary
binomials give shrinking endpoint kernel intervals as k grows. Kernel
continuity then controls endpoint variation as the lag mesh shrinks. Physical
mesh/sample refinement decreases e0 and the physical-cell part of e_j; its lag
part also decreases with h_j. These observations explain how the enclosure can
be refined on a FIXED finite rectangle. A simultaneous quantitative refinement
or all-window certificate-existence theorem is NOT added by this module.

When eta tends to zero, independently fixed correlation/energy errors can be
magnified by the singular kernel. One must tighten these errors in relation
to eta; a fixed tolerance is not universal coverage. The existing omitted-near
bound tends to zero like eta^2, but that fact alone does not control the middle
integral's sampling errors. Increasing R likewise requires its own lag cells,
orders and complete far-tail allowance. No uniformity in unbounded windows
is inferred from a finite partition.

Hostile controls: (1) delta=0 in a positive-width lag cell drops a real error;
(2) using the left kernel endpoint for a lower bound reverses monotonicity;
(3) clipping an uncertain squared-translation center as if exact loses its
radius; (4) shifted samples outside support must use the exact zero branch;
(5) a negative c still requires |c|*e0; (6) dropping B_gamma from the upper
endpoint can create a false negative certificate. None refutes RH/GRH.

The alternative direct-square rectangle route is described in the supplier's
note. It may reduce cancellation near r=0 but must include the whole translated
support. It is a written comparison, not a second formal proof or independent
review. No source algorithm was numerically certified in this work.

## Individual declaration provenance

All three records have prefix
`GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain`, version 1,
date 2026-11-18, SOURCE_PROOF_CANDIDATE, novelty UNASSESSED, and all formal
execution/certified source computation/independent review NOT_RUN.

- **EBQ-1** `gammaCorrectionDensity_oddExpBump_cell_enclosure`: all natural a,
  T>=0, admissible finite physical tables, positive ordered lag cells, adequate
  integer orders and every point in the cell. Reuses EBP-3 at uncertainty equal
  to half the lag width, the established bump L2 admission, and WGC-5/6.
  This is a local consequence of maintained declarations, not a newly claimed
  direct paper formalization. Consumer EBQ-2.
- **EBQ-2** `gammaIntegral_oddExpBump_cells_enclosure`: all such data, every
  finite adjacent positive lag partition with its own shifted tables and
  kernel orders. Derives the gamma-domain/all-cell hypotheses of WGC-7 from
  existing EBG-1 and EBQ-1. Consumer EBQ-3. No sign conclusion or additional
  integral enclosure is an input.
- **EBQ-3** `primitiveArithmeticValue_oddExpBump_allCells_enclosure`: every
  positive modulus, primitive NONPRINCIPAL character, T>0, 0<eta<=1<=R and
  all physical/lag/prime tables with their stated geometry, orders and actual
  logarithm certificates. Composes EBQ-2 with unchanged EBP-4, retaining both
  gamma omissions, signed character phases and all prime powers. This is the
  explicit source-return theorem. Conductor-one transfer is NOT supplied.

Dated prior-art comparison, 2026-11-18: reopened the exact EBP-4 endpoint,
EBC-1/2 binomial supplier, gamma domain and compact cutoffs. The source kernel
convention is inherited through existing CCM arXiv:2511.22755v1 (3.17)-(3.20)
provenance; no new explicit formula is proved here. The supplied corrected
Rump 2010 section 12 is methodological comparison, NOT a theorem adaptation;
its edition/hash and precise distinction are in the supplier's adjacent note.
Incomplete repository search establishes no novelty or absence of prior work.

## Pins and exact evidence boundary

Inspection base `grwtsk/math@f5fbc2d11e06372d086cf4a1962af5a482d914fd`.
Lean `leanprover/lean4:v4.34.1`; mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`. No pins/root imports changed.
Publication, hashes and any static source/algebra checks are recorded in #1801.
They are not Lean parsing, elaboration, exact-type validation, build, fresh
kernel replay, transitive axiom audit, certified source arithmetic or independent
review; each of those remains NOT_RUN. No known executed failure is relabeled.
The canonical Noe proof skill returned 404 at
`579468f41b6fb1c02fce66f25a2deee81bde78ff`; no dependent automation ran.

OPEN: exact-source verification; actual scalar/rounding certificates for all
remaining coefficients and tail allowances; conductor-one zeta with both poles;
determining-test transfer; universal all-character/all-window/all-test signed
lower bounds. This single bump family is not asserted to determine Weil
positivity or to prove RH/primitive Dirichlet GRH.
