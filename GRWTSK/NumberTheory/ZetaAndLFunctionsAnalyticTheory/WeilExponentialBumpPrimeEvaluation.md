# Direct cell evaluation of the bump's energy and prime correlations

Local attribution: grwtsk contributors. Edition 1, 2026-11-18.
Primary MSC2020: 11M26; secondary 11M41, 65D30, 65G20.
Maintained source: [WeilExponentialBumpPrimeEvaluation.lean](WeilExponentialBumpPrimeEvaluation.lean).
Suppliers: [WeilCorrelationCellEvaluation](WeilCorrelationCellEvaluation.md),
[WeilExponentialBumpGamma](WeilExponentialBumpGamma.md),
[ExponentialBumpCells](../../MeasureAndIntegration/ExponentialBumpCells.md).
Coordination: [math#1801](https://github.com/grwtsk/math/issues/1801),
[iteration 8 scope](https://github.com/grwtsk/math/issues/1801#issuecomment-6990978739).

Status: WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE.
Novelty UNASSESSED. No numerical sign, determining-test theorem or RH/GRH proof.
All formal execution and independent review below are NOT_RUN.

## Exact source, not a sampled replacement

Keep the original function and canonical complex inclusion

    f_T(t) = t Phi(T^2-t^2),
    Phi(u) = exp(-1/u) for u>0, and 0 for u<=0,
    g_T = liftReal(f_T),       K_T = 1+4T^2.

For T>=0, the existing sources derive global smoothness, compact support,
whole-line Lipschitz constant K_T and gamma-domain admission for every natural
parity. In particular the new quadrature is never applied to a discontinuous
approximate test in place of g_T.

For an interior sample t, put y=(T^2-t^2)^(-1). The existing finite binomial
bounds, valid for integer n>0 with n>=y, are

    L_n(y)=(1-y/n)^n <= exp(-y) <= U_n(y)=(1+y/n)^(-n).

The existing center is t(L_n+U_n)/2 and its radius is |t|(U_n-L_n)/2. The
absolute value of t in the radius is essential for negative sample locations.
The new `fullBumpSample` and `fullBumpRadius` use those expressions ONLY when
|t|<T. At |t|>=T both are exactly zero. EBP-1 proves the resulting enclosure
for every real t, including both endpoints and all shifted samples. An order
condition is required only in the interior branch. Thus no inverse-gap
expression is certified on the wrong side of the boundary.

These are finite rational expressions when T and t are rational. The Lean
statements allow exact real data and do not claim an implemented rational
certificate parser, logarithm enclosure generator or floating-point checker.

EBP-2 exposes |g_T(t)|<=T, a fact already used internally in EBG-4: inside
the support, 0<=Phi<=1 and |t|<=T; outside it g_T=0. This is not a new analytic
result. Its consumer now needs a public sup bound, not just the integrated
energy inequality.

## All cell and lag errors are explicit

Take adjacent cells x_0=-T,...,x_N=T, each weakly increasing and inside the
original support. Let h_j=x_(j+1)-x_j and m_j=(x_j+x_(j+1))/2. For a sampled
lag s, take the clipped binomial tables

    v_j = sample(T,m_j,p_j),       e_j = radius(T,m_j,p_j),
    w_j = sample(T,m_j+s,w_j^ord), d_j = radius(T,m_j+s,w_j^ord).

The notation w_j^ord denotes an integer order, not the sample value w_j.
All interior order conditions are retained in the theorem. At outside/endpoints
the table is exactly zero with zero radius; it is not a missing sample.

Define the exact finite quantities

    C_hat_T(s) = sum_(j<N) conj(v_j) w_j h_j,
    B0 = sum_(j<N) (|v_j|+K_T*h_j/2+e_j) h_j,
    E_cell(s) = sum_(j<N)
      [T*K_T*h_j+T*(e_j+d_j)+e_j*d_j] h_j,
    E_corr(s,delta) = K_T*B0*delta+E_cell(s).

For EVERY T>=0, every such finite cell table, and EVERY pair of real lags r,s
with a certified |r-s|<=delta, EBP-3 derives

    |C_(g_T)(r)-C_hat_T(s)| <= E_corr(s,delta).         (EBP-3)

Proof: compact continuity gives L1 and L2 membership; the established source
Lipschitz theorem gives K_T; EBP-2 gives the sup bound T; EBP-1 supplies both
signed sample tables. Apply WCQ-5. There is no separately assumed correlation
integral, global L1 bound, derivative-range oracle or sample-error oracle for
this family. Only finite cell geometry, conditional integer order inequalities
and the lag enclosure remain.

For uniform mesh h and sample radii at most epsilon, WCQ-9 gives the WRITTEN
specialization

    E_cell <= 2T [T*K_T*h+2T*epsilon+epsilon^2].

The same table obeys B0<=2T[T+2epsilon+K_T*h/2], by the sample triangle inequality
and telescoping cell lengths. Thus these errors tend to zero as h,epsilon,delta
tend to zero for FIXED T. This additional simplified B0 bound and the simultaneous
limit are written consequences, not extra Lean declarations.

At each fixed finite interior sample the existing EBC-11 estimate bounds its
radius by |t|*(T^2-t^2)^(-2)/(2n). Taking a sufficiently large integer n therefore
achieves any desired positive sample accuracy. Boundary samples use the zero
branch. This does not provide all-window or all-test arithmetic positivity;
constants and required orders can grow with T and proximity to an endpoint.

## Return to the original primitive arithmetic form

Fix a primitive NONPRINCIPAL character chi of positive modulus q, T>0 and
0<eta<=1<=R. For EVERY n in the original `activePrimePowers T` inventory,
supply a sampled lag s_n with

    |log(n)-s_n| <= delta_n.

The theorem retains these log-enclosure certificates explicitly. It does not
confuse binomial evaluation at rational s_n with evaluation at exact log(n).
Keep every original primeWeight, character phase and strict support cutoff.
Let A_n=C_hat_T(s_n), e_n=E_corr(s_n,delta_n) with its own shifted order table.
For the energy use the SAME unshifted table twice at exact lag zero:

    a0 = C_hat_T(0),     e0 = E_corr(0,0),
    |E(g_T)-Re(a0)| <= e0.

The zero-lag square here is the physical energy, not an illicit absolute-square
replacement of an off-line spectral pairing. All nonzero-lag correlations keep
their original signed product.

Set

    c = gammaConstant(q,gammaParity(chi)),
    P_hat = twistedPrime(T,chi,A),
    E_prime = 2 sum_active primeWeight(n)*e_n,
    V = c*Re(a0) + integral_eta^R D_(gammaParity chi)(g_T,r) dr - P_hat,
    E_eval = |c|*e0 + E_prime.

EBP-4 returns to exactly `primitiveArithmeticValue`:

    -E_eval <= Q_chi(f_T)-V <= B_gamma(T,eta,R)+E_eval.  (EBP-4)

Here B_gamma is the unchanged iteration-7 expression

    (3/4)(2T+1)(1+4T^2)^2*eta^2
        + [16T^3/(1-exp(-2))]*exp(-R/2).

Proof: EBP-3 at zero lag and WCQ-6/7 supply the mass error. EBP-3 at every actual
prime lag and WCQ-8 supply the signed-prime error. The original gamma cutoff
theorem supplies a remainder in [0,B_gamma]. The difference Q-V is exactly

    c*(E(g_T)-Re(a0)) + gamma_remainder - (P_actual-P_hat).

Its first and last terms have total absolute error at most E_eval. Therefore
the lower allowance is -E_eval and the upper allowance is B_gamma+E_eval. The
absolute value |c| is necessary because the original gamma constant can be
negative. Nothing assumes positivity of the COMPLETE arithmetic form.

The final displayed V STILL contains the original finite-lag gamma integral and
exact elementary coefficients. This is not a fully evaluated scalar certificate.
If a subsequent certified computation establishes |V-v|<=rho, elementary error
composition gives the written enclosure

    v-E_eval-rho <= Q_chi(f_T) <= v+B_gamma+E_eval+rho.

It must pay gamma quadrature, coefficient/log/character errors and summation
rounding at the relevant scope. A negative approximate central value alone is
not a negative source certificate; a positive one alone is not a positive
source certificate. No such numerical sign is asserted here.

The arithmetic endpoint is primitive nonprincipal. Although the correlation
and gamma-component estimates also make sense for q=1, this theorem does not
silently remove the two conductor-one zeta pole terms. The original negative
witness/critical-line route is untouched; universal signed positivity and a
determining-test transfer remain unproved premises, not new model definitions.

## Failure checks, prior art and source provenance

The following checks are analytical, not executed kernel or numerical tests.
Using the interior formula at T=1,t=3/2 would evaluate a negative gap, although
the ORIGINAL glued bump is zero there. EBP-1 forbids this misuse by branching
before the inverse-gap enclosure. Equality |t|=T also uses the zero branch.
Dropping the product cross term fails in the WCQ-1 example (21/100 versus 1/5).
Dropping the log-shift allowance can identify nonzero C(0) with zero C(2T).
Replacing P_hat by a magnitude sum changes the central value, not just its error.
Omitting gamma_remainder from the upper bound can produce a false negative sign.

Comparison dated 2026-11-18: the existing EBG-6 retained energy and all prime
correlations as integrals. EBP-4 replaces those integrals in the approximate
central expression by finite cells, while leaving the original source Q exactly
unchanged. EBG-7 is a DIFFERENT spectral-cell endpoint with zero-disk/count
inputs; EBP-3/4 do not require any zero-location, multiplicity or count data.
The concurrent finite-sine gamma-row/operator return at the inspection base is
preserved, not duplicated. This scalar smooth-bump route does not establish
that operator theorem or use its row-regularity contracts.

The original correlation convention is inherited from `WeilSourcePrimeCorrelation`,
whose source comparison identifies Connes--Consani--Moscovici, *Zeta Spectral
Triples*, arXiv:2511.22755v1, equations (3.17)-(3.20). No new explicit-formula
claim is made here. The direct quadrature argument and dated comparison with
Rump 2010 section 12 are recorded individually in the companion WCQ note.
Neither paper's theorem is relabeled as a new local theorem. No upstream source
implementation is copied and no novelty or complete duplicate-search claim is made.

## Individual declaration records

Prefix: `GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain`.
Each record preserves the exact typed statement in the adjacent source and its
complete argument above. All have candidate status and NOT_RUN formal checks.

| Record | Declaration | Quantified statement, provenance and consumer |
|---|---|---|
| EBP-1 | `fullBumpSample_error` | Every T>=0, real t and integer order; only interior points require n>0 and n>=(T^2-t^2)^(-1). Direct use of EBC-5/10 for the unchanged test. Supplies both EBP-3 tables. |
| EBP-2 | `norm_lift_oddExpBump_le` | Every T>=0 and real t. Exposes EBG-4's already-written internal sup estimate, not new analysis. Supplies EBP-3's B=T. |
| EBP-3 | `norm_correlation_oddExpBump_sub_cells_le` | Every finite adjacent partition, both conditional order tables and arbitrary r,s,delta with the actual lag enclosure; no integral/regularity oracle. Uses WCQ-5, EBP-1/2 and EBG-3. Supplies EBP-4. |
| EBP-4 | `primitiveArithmeticValue_oddExpBump_primeCells_enclosure` | Every primitive nonprincipal chi, T>0, 0<eta<=1<=R, every cell table and every original active label with its log enclosure and shifted orders. Uses EBP-3, WCQ-7/8 and EBG-5. Returns to the same original primitive arithmetic value. |

## Exact pins and remaining verification

Inspection base: math `600fbd0d2b49d95ae2b289c7ea46b1e58b18a81c`.
Lean `leanprover/lean4:v4.34.1`;
mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Original bump supplier blob `4a16a8841d88cc954eed006aa9b21d69db22e4ae`;
gamma supplier blob `623f5dd5053f74a778aea5310e6fd7b2bda45cd5`;
correlation supplier blob `6bc8c1ac043ae5b7f8fb2f7608cd56524bb965a6`.
The companion WCQ module is part of this same additive publication.

Parsing, elaboration, exact exported types, targeted/full builds, fresh kernel
replay, transitive axiom audit, certified arithmetic and independent mathematical
review: NOT_RUN. No root import or dependency migration. Ordinary source-text,
Git identity and publication readback observations are recorded in math#1801;
they are not proof-execution receipts. The canonical Noe proof skill was
inaccessible at `579468f41b6fb1c02fce66f25a2deee81bde78ff`, so no dependent execution
was dispatched. Historical evidence is unchanged.

OPEN: finite-lag gamma quadrature with derived whole-cell control; certified
logarithm/weight/character/gamma-constant evaluation and all rounding; original
conductor-one pole-inclusive source return; determining-test density and
universal all-character/all-test lower signs. The single bump family is not
asserted sufficient for RH or primitive Dirichlet GRH.
