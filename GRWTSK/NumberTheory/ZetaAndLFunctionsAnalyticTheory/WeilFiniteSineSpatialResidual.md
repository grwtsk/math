# Source-specific finite spatial residual enclosures

Local attribution: grwtsk contributors. Edition 1, 2026-11-18.
Owner: [WeilFiniteSineSpatialResidual.lean](WeilFiniteSineSpatialResidual.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.FiniteSineSpatialResidual`.
Primary MSC2020: 11M06; supporting 46C05, 65G20, 65D30.
Coordination: [math#1837](https://github.com/grwtsk/math/issues/1837).

Status: WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE.
Novelty/prior-art completeness: UNASSESSED. No novelty asserted.
All Lean execution, certified arithmetic and independent review: NOT_RUN.

## Exact target and newly supplied obligations

The input is the existing real odd finite-sine source family at T>0. The
output is an upper bound for its COMPLETE high-test residual pairing.
There is no new Weil form, physical completion, spectral model or RH target.
The existing source beta convention is retained: beta=-epsilon means adding
positive epsilon times physical L2 mass. The scalar pole port is not shifted.

The new result takes only finite scalar enclosures for the specified spatial
row samples and a specified scalar slope upper bound. It DERIVES the whole-cell
ranges, complete Gram enclosure, rational matrix assembly and all-vector
upper comparison. A separate theorem combines that Gram comparison with the
already-proved canonical gamma row error against every original high test.
No successful signed Schur matrix or cofinal certificate family is supplied.

## WSRE-1: explicit spatial representatives of the same source

For any original finite sine f_c, lag mesh x and finite count N, define

    F_mid(t)=sum_(k<N) nu_k [2 f_c(t)-f_c(t+h_k)-f_c(t-h_k)],
    nu_k=cellWeight(x_k,x_(k+1)), h_k=(x_k+x_(k+1))/2,
    kappa=tailWeight(x_N).

The scalar spatial output is exactly

    zhat_c(t)=1_I(t) F_mid(t)+2 kappa f_c(t)
       +primePoleOutput(T,beta,f_c,polePort(T,c))(t),      (1)
    I=[-T,T], polePort(T,c)=-2 integral f_c(t)sinh(t/2) dt.

The bounded remainder in (1) retains the constant gamma term, beta physical
shift, BOTH prime orientations, EVERY active prime power, and the ORIGINAL
negative odd pole. No term is replaced by its absolute value in this output.

To control a high residual, subtract ANY original finite source sine head
f_d on the first K modes:

    y_c,d(t)=zhat_c(t)-f_d(t).                            (2)

The gamma Lp differences have the original scalar differences as a.e.
representatives. Finite Lp sums, physical restriction and the pre-existing
prime/pole representative prove that (1) is the representative of
`approximateOutput`. Subtraction gives the actual `correctedColumn`.
It is supported in I and belongs to physical L2. Hence all spatial products
are integrable. These facts are derived in the new code, not hsource inputs.

## WSRE-2: a genuine whole-window spatial modulus

Let K(c)=sineLipschitz(T,c), the previously constructed GLOBAL Lipschitz
constant of the zero-extended finite sine. The endpoint zeros are essential.
No H2 regularity or everywhere differentiability of shifted sines is used.

Put

    A=4 sum_(k<N)|nu_k|+2|kappa|+|gammaConstant(1,0)-beta|
       +2 sum_(q in activePrimePowers(T)) |primeWeight(q)|,
    L(c,d)=A K(c)+|polePort(T,c)| cosh(T/2)/2+K(d).        (3)

The constant L is nonnegative. For every u,v in I,

    |y_c,d(u)-y_c,d(v)| <= L(c,d)|u-v|.                  (4)

Proof: each symmetric difference has modulus 4K(c); each pair of prime
translations has modulus 2K(c); multiply by the corresponding absolute
scalar weights and sum. The gamma tail and mass terms are scalar multiples
of the same f_c. On I the mean-value inequality gives

    |sinh(u/2)-sinh(v/2)|<=cosh(T/2)|u-v|/2.

The head contributes K(d). Indicators in (1) are removed only because BOTH
points are in I. Internal points where a shifted sine meets its zero extension
are allowed: its global Lipschitz estimate remains valid there.

Absolute values in (3) bound a numerical VARIATION ERROR. They do not replace
the signed prime or pole contributions in the evaluated matrix.

## WSRE-3: a finite rational table supplies the full spatial Gram

Let the source family have finite index set i, with original trials c_i and
arbitrary head corrections d_i. Choose rational spatial mesh y_0,...,y_J,
monotone, whose REAL endpoints are -T,T. Keep this spatial mesh separate from
the positive gamma-LAG mesh x. Exact rational endpoints cover rational T,
in particular the integer cofinal stage radii. The preceding real-mesh theorem
covers arbitrary T. At spatial midpoints m_k obtain rational
centers p_ki, sample errors e_ki>=0 and rational slope upper bounds Lhat_i:

    |y_(c_i,d_i)(m_k)-p_ki|<=e_ki,  L(c_i,d_i)<=Lhat_i.

There are finitely many scalar obligations. No whole-cell range oracle is
left: (4) supplies rational radii

    r_ki=Lhat_i*(y_(k+1)-y_k)/2+e_ki.

With w_k=y_(k+1)-y_k, define

    C_ij=sum_k w_k p_ki p_kj,
    E_ij=sum_k w_k(|p_ki|r_kj+|p_kj|r_ki+r_ki r_kj),
    Rupper=C+diag_i(sum_j E_ij).                          (5)

These are exact finite rational operations, implemented by the generic
`rationalCellRadii` and `rationalUpper`. The actual scalar enclosures of
trigonometric, exponential, logarithmic and integrated kernel values still
must be supplied by a certified evaluator; none is assumed to have run here.

The proved elementary product inequality, complete interval splitting and
symmetric row-sum diagonal bound imply, for EVERY real coefficient vector v,

    ||sum_i v_i correctedColumn_i||^2 <= v^T Rupper v.   (6)

There is no unobserved Fourier-mode tail in (6). It is an integral over the
entire physical support of the actual finite spatial expression. The matrix
is not being asserted positive merely because its entries are positive.
The comparison is in quadratic-form order.

For a fixed finite source/mesh family the spatial moduli and sup norms are
finite. Uniformly refining the spatial cells and reducing scalar sample
errors makes every E_ij tend to zero. This is a fixed-family approximation
statement, not uniformity as T or the trial dimension tends to infinity.

## WSRE-4: arbitrary head removal is a safe upper residual supplier

Let U_i=finiteLift(T,c_i), with physical source outputs z_i and approximate
outputs zhat_i. Let h_i=finiteInput(T,d_i). For any original form-domain test
w satisfying all K original sine-coefficient equations

    sineCoefficient(T,input(w),a+1)=0, 0<=a<K,

finite source linearity gives <h_i,input(w)>=0. This is a statement about
the actual high complement, not an imposed restriction on the final full
positivity theorem. A Schur application must still retain the corresponding
low space and prove an independent floor on this complement.

Write n=number of trial columns, delta=x_0+x_0^2+5eta, and

    e_i=delta*slopeBound(T,c_i), Erow=diag_i(n e_i^2).

The previously constructed canonical operator estimate supplies
||z_i-zhat_i||<=e_i, under its full lag geometry hypotheses. For
U(v)=sum_i v_i U_i and every high w, arbitrary head cancellation and finite
Cauchy--Schwarz prove, for t>0,

    |sourceForm(T,beta,U(v),w)|^2
      <= [(1+t) v^T Rupper v+(1+1/t)v^T Erow v]
            *||input(w)||^2.                            (7)

The new theorem quantifies EVERY v and EVERY such original-domain w.
No exact projection, inverse Gram, coefficient-independence, or sample-only
norm premise is used. All original source pairings are supplied by the
canonical `finiteLift_sourceForm` and finite linearity.

If the genuine shifted high form separately satisfies a[w]>=m||input(w)||^2,
m>0, (7) implies the corresponding energy-dual residual allowance

    ||r_v||_(a*)^2 <=
       [(1+t)v^T Rupper v+(1+1/t)v^T Erow v]/m.           (8)

The multiplier in brackets is nonnegative: the first quadratic dominates
a norm square and the second is a nonnegative diagonal. Formula (8) is the
written Schur consumer of the all-test result, not a new proof of the core floor.

## What still must establish the signed lower bound

Apply the existing exact identity s[v]=q_epsilon[Uv]-||r_v||_(a*)^2.
A legitimate complete certificate needs the signed trial-energy lower matrix
F_lower, its observation/rounding allowances, and the low-coordinate identity
for the chosen synthesis U. It must prove

    F_lower-[(1+t)Rupper+(1+1/t)Erow]/m >=0.              (9)

The finite scalar data in (5), a passing (9), suitability/approximation of
the selected corrections, and cofinal existence at all required dyadic
accuracies remain OPEN. Complete physical output convergence is not sign
preservation. No unproved sine form-core assertion is used here.

For `CofinalFlexibleHead` the prescribed `completeRemoteAllowance` is not
silently replaced by (6). Use the existing energy-dual source return, or
prove the required comparison with that older packet's particular allowance.
No checker soundness theorem is upgraded to universal certificate existence.

## Individual declaration map

Fully qualified names are the namespace above followed by each listed name.
All are local consequences of the specified canonical source, not new paper
results. Private algebra helpers are supporting details, not separate claims.

| Declaration | Argument / source supplier / exact consumer |
|---|---|
| `finite_symmetricDifference_ae` | Translated a.e. input identity in both orientations; WSRE-1. |
| `midpointRow_ae` | Complete finite sum of original source-integrated weights; WSRE-1. |
| `approximateOutput_ae` | Physical restriction plus full tail and original bounded remainder; WSRE-1. |
| `correctedColumn_ae` | Actual Lp subtraction of the chosen finite source head. |
| `spatialColumn_memLp` | Representative transport from the canonical Lp class; product integrability. |
| `spatialColumn_supported` | All source indicators and original finite-sine support; full interval. |
| `sinh_window_modulus` | Mean-value inequality and cosh monotonicity, including the real pole. |
| `spatialSlope_nonneg` | Nonnegative coefficients in the error allowance (3). |
| `spatialColumn_modulus` | Four gamma differences, two prime shifts, tail, mass and pole; WSRE-2. |
| `spatialColumn_midpoint_range` | Actual modulus plus scalar midpoint error, not an external range oracle. |
| `residualGram_eq_integral` | Complete original physical Gram and actual representative (2). |
| `residualGram_upper_of_cells` | All cells and all coefficient vectors, complete support. |
| `residualGram_upper_of_rational_samples` | Derived whole-cell radii and exact rational assembly (5). |
| `sourceForm_trial` | Original continuous signed source bilinearity and all-domain finite-sine pairing. |
| `finiteInput_pair` | Original normalized sine coefficients, not a model coordinate map. |
| `source_high_pairing_sq_le` | Canonical gamma row error, arbitrary source-head annihilation, complete Gram. |
| `source_high_pairing_sq_le_cells` | Finite complete range table supplying (7). |

## Pinned provenance and prior-art comparison

Source base `grwtsk/math@600fbd0d2b49d95ae2b289c7ea46b1e58b18a81c`, inspected
2026-11-18. The following canonical objects are consumed unchanged:

- [WeilFiniteSineGammaQuadrature.lean](WeilFiniteSineGammaQuadrature.lean),
  blob `4c0038754542e9ad2e0b33b55add264d074320db`: `finiteSine_lipschitz`,
  `sineLipschitz`, `slopeBound`, `primePolePart_ae`, `finiteOutput_error_le`.
- [WeilGammaBochnerRow.lean](WeilGammaBochnerRow.lean), blob
  `2b6539c6c70075bb022a8487e8b3192a70df3aa6`: original `quadratureRow`,
  all-test source correspondence, and exact separated far row.
- [WeilFiniteSineOperator.lean](WeilFiniteSineOperator.lean), blob
  `c504693911bd7a8ee9e1dec909fa41480c185013`: actual domain lift,
  physical output, minimizing pole port, `finiteLift_sourceForm`.
- [WeilClosedSourceBilinear.lean](WeilClosedSourceBilinear.lean), blob
  `3ea2590f7129a8e1905b2042d0157d64f8b479ce`: continuous bilinear
  signed source on the complete original domain.
- [WeilOddPrimePoleOutput.lean](WeilOddPrimePoleOutput.lean), blob
  `15e472b9fa1e7ad7c9d56de19cc4bdc2333cf235`: all active translations,
  source support and exact signed scalar/pole expression.
- [WeilOddSineHeadRemoval.lean](WeilOddSineHeadRemoval.lean), blob
  `2640a927c24095fe38fff1529c2884c66c9256b6`: the exact projection
  coefficient route. This increment does not duplicate it; arbitrary head
  subtraction avoids requiring those exact coefficients in a numerical upper bound.
- [SpatialGramEnclosure.lean](../../FunctionalAnalysis/SpatialGramEnclosure.lean):
  direct generic finite integral and matrix enclosure supplier, same increment.

Mathlib `Analysis/InnerProductSpace/GramMatrix.lean` at
`d13f23b723b8a846827a245b89c10fc7d3f11612` supplies the exact norm interpretation.
`Analysis/Calculus/MeanValue.lean` and
`Analysis/SpecialFunctions/Trigonometric/DerivHyp.lean` supply the mean-value
and `Real.cosh_le_cosh` facts. These are API uses, not copied proof adaptations.
Exact signatures remain an elaboration obligation.

Rump's supplied corrected Acta Numerica 2010 survey is a comparison for
interval dependency, residuals and whole-domain verification, not a claimed
proof of this source sign. The coefficient cancellation, interval products,
Gram identity and error propagation are classical; novelty is UNASSESSED.

## Falsification and limitations

Written controls, not executed certificates or independent review:

- A sine can vanish at all spatial midpoint samples while its squared L2 norm
  is positive. The derived cell radius is indispensable.
- Ordinary finite sines are globally Lipschitz after zero extension, but
  their derivatives jump at the support boundary. Shifted copies create
  internal derivative corners. Formula (4) avoids the false C1/H2 premise.
- Taking the unbordered pole port to be zero changes (1). Both the output
  and slope retain the original port -2p(f).
- Subtracting an inaccurate head is still safe only because it belongs to
  the actual retained space. Subtracting an arbitrary vector outside that
  space would invalidate the high-test cancellation.
- A whole-space bounded quadrature operator cannot replace the true
  unbounded gamma form in the high-floor theorem.
- Gram upper bounds and conservative diagonal error budgets need not be
  sharp enough for (9). Refinement proves accuracy, not a successful sign.
- The real odd zeta source is not automatically a primitive-character GRH
  source; phases, parity, conductor and dual-character return remain separate.

## Publication and evidence

Lean 4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
No root imports, pins or existing source are changed. Publication readback
and static text/hash checks are reported in math#1837, separately from proof
execution. Lean parsing/elaboration, exact types, fresh kernel replay,
transitive axiom audit, rational-assembler execution, transcendental
interval evaluation, signed matrix checking and independent review: NOT_RUN.
Known earlier statuses are not promoted. The new code may need elaboration repairs.

Concurrent main increment `5bdac64494d6aa14d1c0796f5660457a73433921` adds
primal/dual response correction sources and changes none of the inspected
dependencies. It is preserved by publication. No equivalence between its
full solve residual and a high-complement residual is inferred here.
