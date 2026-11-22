# Finite logarithm certificates and rational gamma omissions

Local attribution: grwtsk contributors. Edition 1, 2026-11-18.
Primary MSC2020: 11M26; secondary 11M41, 26D15, 65G20.
Source: [WeilBinomialScalarBounds.lean](WeilBinomialScalarBounds.lean).
Consumer: [WeilExponentialBumpScalarEvaluation](WeilExponentialBumpScalarEvaluation.md).
Coordination: [math#1801, iteration 10 scope](https://github.com/grwtsk/math/issues/1801#issuecomment-6994285114).

Status: WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE.
Novelty and prior-art completeness UNASSESSED. Elementary consequences, not a
new Weil criterion. Parsing, elaboration, exact exported types, builds, fresh
kernel replay, transitive axiom audit, certified source computation and
independent mathematical review are NOT_RUN.

## Source and exact domains

Reuse `ExponentialBumpCells.expNegBinomialLower/Upper`, with

    L_n(v) = (1-v/n)^n,     U_n(v) = (1+v/n)^(-n).

The inherited enclosure requires integer n>0 and 0<=v<=n. It is a consequence
of Mathlib's `Real.one_sub_div_pow_le_exp_neg`, not a newly asserted fact about
a black-box exponential implementation. The logarithm theorem concerns the
actual `Real.log x` with x>0; its totalized values at nonpositive x are not used.
The intended arithmetic input x is an original active integer label, hence x>=2.

The gamma comparison concerns the EXISTING `oddExpBumpGammaCutoffBudget`,
not a new gamma function, form, normalization or integration domain. Put

    K_T = 1+4T^2,
    A_T = (3/4)(2T+1)K_T^2,
    B_gamma(T,eta,R) = A_T eta^2
                      + 16T^3 exp(-R/2)/(1-exp(-2)).

For T>=0, the original theorem bounds the complete omitted near and infinite
lag regions when 0<eta<=1<=R. The scalar comparison below is valid already for
R>=0 and any real eta. Its use as an integral bound still requires those original
domain conditions; the consumer derives them for the displayed dyadic schedule.

## Complete primary analytical argument

### Finite logarithm tests (WBS-1, WBS-2)

Let x>0, 0<=l<=u<=n, n a positive integer. Suppose ONLY the two finite tests

    1 <= x L_n(l),                 x U_n(u) <= 1.       (1)

The inherited binomial enclosure gives

    1 <= x exp(-l),                x exp(-u) <= 1.

Multiplying the first inequality by exp(l)>0 and the second by exp(u)>0 gives
exp(l)<=x<=exp(u). Positivity now permits monotonicity of the actual logarithm,
so

    l <= log(x) <= u.                                  (WBS-1)

Set s=(l+u)/2, delta=(u-l)/2. Elementary ordered-field algebra yields

    delta>=0,            |log(x)-s| <= delta.           (WBS-2)

For rational x,l,u, tests (1) are finite rational inequalities. The source has
no executable parser, automated bracket finder or rational-checker run. It
supplies a theorem from the finite tests to the exact lag premise used by the
existing correlation quadrature. No approximate logarithm is accepted merely
because two routines agree.

A small WRITTEN arithmetic example uses x=2, l=1/2, u=1, n=2:

    2 L_2(1/2) = 9/8 >= 1,
    2 U_2(1)   = 8/9 <= 1.

Thus 1/2<=log 2<=1, with center 3/4 and radius 1/4. This is an illustration of
the analytical theorem, not an executed Lean or source-arithmetic certificate.

### Refinability of the logarithm tests: written consequence only

For x>1 and a fixed strict bracket 0<=l<log(x)<u, put

    alpha = x exp(-l)-1 > 0,    beta = 1-x exp(-u) > 0.

The EXISTING EBC-2 width bound U_n(v)-L_n(v)<=v^2/n, together with enclosure,
implies L_n(l)>=exp(-l)-l^2/n and U_n(u)<=exp(-u)+u^2/n. Any positive integer

    n > max(u, x*l^2/alpha, x*u^2/beta)

therefore passes both tests strictly. This is a complete written existence
argument for each prescribed strict bracket, not an additional Lean declaration
or a certificate-generating algorithm. For x=1 the exact bracket l=u=0 passes.
Nothing here supplies character-phase, prime-weight or gamma-constant data.

### Rational denominator floor and full-tail comparison (WBS-3, WBS-4)

Apply the inherited upper binomial bound with v=n=2:

    exp(-2) <= U_2(2) = 1/4.

Therefore 1-exp(-2)>=3/4>0. For T>=0, preserving the positive denominator,

    16T^3/(1-exp(-2)) <= (64/3)T^3.                    (WBS-3 input)

For R>=0 and positive integer n>=R/2, exp(-R/2)<=U_n(R/2). Multiplying only
nonnegative factors and adding the unchanged near-zero term proves

    B_gamma(T,eta,R)
       <= A_T eta^2 + (64/3)T^3 U_n(R/2).              (WBS-4)

The right side is `binomialGammaCutoffBudget`. It uses only finite rational
operations when T,eta,R are rational. Its potentially looser bound is paid
outward; it is not asserted equal to the original omitted integral.

### A coupled cutoff sequence (WBS-5, WBS-6)

Take m>=1, eta_m=2^(-m), R_m=2m, and binomial order n=m. Then
U_m(R_m/2)=U_m(m)=2^(-m), exactly. WBS-4 becomes

    B_gamma(T,eta_m,R_m) <= Delta_T(m),
    Delta_T(m) = A_T 4^(-m) + (64/3)T^3 2^(-m).        (WBS-5)

This is `dyadicGammaBudget`. The source proves

    for every fixed T,  Delta_T(m) -> 0 as m -> infinity. (WBS-6)

It uses Mathlib's geometric-sequence limit, its square, scalar multiplication
and addition. For fixed T>=0, the written bound
Delta_T(m)<=(A_T+(64/3)T^3)2^(-m) also gives an explicit algebraic precision
condition. Any m>=1 with 2^m>(A_T+(64/3)T^3)/epsilon suffices for Delta<epsilon.
This last precision inequality is not an additional public Lean declaration.

The constants grow with T. WBS-6 is NOT uniform over unbounded support radii.
More importantly, it says nothing about the accuracy of the growing middle-lag
quadrature: its sample errors must be tightened as eta approaches zero. It does
not produce any lower arithmetic sign, determining-test theorem or universal
family of passing certificates.

## Comparison and falsification

The orientation in (1) is essential. Replacing L by U in the lower test can
admit l=1 for x=2,n=1, although log 2<1. Replacing U by L in the upper test can
admit u=1/2 for x=2,n=1, although log 2>1/2. These are written scalar controls,
not failures of the correct theorem or counterexamples to RH.

Order zero cannot certify a decaying tail: U_0(v)=1 under totalized arithmetic.
The original n>0 and n>=v conditions remain explicit. A fixed m also leaves a
fixed nonzero omission allowance. Vanishing error is not favorable sign.

A distinct written route would integrate 1/t over a positive interval to bound
log x, with monotone rectangles or a convergent power series. It shares the
same actual logarithm but not this binomial comparison. It is not implemented
here and is NOT independent mathematical review. The present route reuses a
supplier already required by the bump samples and gamma-kernel cells.

Dated comparison, 2026-11-18: inspected EBC-1/EBC-2 and EBG-5, the complete
EBQ-3 endpoint, the current source conventions and pinned Mathlib logarithm
lemmas. Public upstream search also located the standard binomial inequality;
master search results were discovery only, not substituted for the pinned
provider. Repository indexed search was empty and proves no absence. No
novelty or corpus-wide prior-art completeness is asserted.

## Individual declaration records

All six records are edition 1, date 2026-11-18, with prefix
`GRWTSK.NumberTheory.WeilQuadraticForm.BinomialScalars`. Every record has status
SOURCE_PROOF_CANDIDATE, novelty UNASSESSED, all formal checks and independent
review NOT_RUN. The primary arguments and falsification controls above apply
at the specified individual scope.

| ID / declaration | Typed scope and dependencies | Consumer / source return |
|---|---|---|
| WBS-1 `log_enclosure_of_binomial_checks` | Positive real x; nonnegative ordered l,u; positive natural n>=u; both finite tests. EBC-1, `Real.exp_add`, `Real.log_le_log`, `Real.log_exp`. | WBS-2 returns to the actual logarithm; no error oracle. |
| WBS-2 `log_midpoint_error_of_binomial_checks` | Same data as WBS-1; ordered-field conversion to a nonnegative half-width. | EBS-1's exact prime-lag error hypothesis. |
| WBS-3 `exp_neg_two_le_quarter` | No inputs; EBC-1 at v=n=2 and finite arithmetic. | Positive denominator comparison in WBS-4. |
| WBS-4 `oddExpBumpGammaCutoffBudget_le_binomial` | T,R>=0; eta real; n>0 and R/2<=n. EBG-5's original budget definition, WBS-3, EBC-1. | WBS-5; bounds the original cutoff allowance from above. |
| WBS-5 `oddExpBumpGammaCutoffBudget_le_dyadic` | T>=0; positive natural m. WBS-4, U_m(m)=2^(-m). | EBS-1 adds this complete rational gamma allowance only to the upper endpoint. |
| WBS-6 `dyadicGammaBudget_tendsto_zero` | Fixed real T; m tends to infinity. Mathlib geometric limit and limit algebra. | Fixed-T cutoff precision; does not supply middle quadrature or signs. |

## Pins and verification obligations

Inspection source: grwtsk/math `bbf9ed09f0e29d1fd2796f4c7a5317fdcecc7ff6`.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Existing provider identities at that pin. Direct references:
[pinned binomial provider](https://github.com/grwtsk/math/blob/bbf9ed09f0e29d1fd2796f4c7a5317fdcecc7ff6/GRWTSK/MeasureAndIntegration/ExponentialBumpCells.lean),
[pinned cutoff source](https://github.com/grwtsk/math/blob/bbf9ed09f0e29d1fd2796f4c7a5317fdcecc7ff6/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilExponentialBumpGamma.lean), and
[pinned Mathlib logarithm source](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/SpecialFunctions/Log/Basic.lean).

- `ExponentialBumpCells.lean`: blob `4a16a8841d88cc954eed006aa9b21d69db22e4ae`, EBC-1/EBC-2.
- `WeilExponentialBumpGamma.lean`: blob `623f5dd5053f74a778aea5310e6fd7b2bda45cd5`, cutoff budget and EBG-5.
- Mathlib `Mathlib/Analysis/SpecialFunctions/Log/Basic.lean`: blob `0ed3c957d0d1f37094a8da10e42e6d2c2807e7be`, `Real.log_exp` and `Real.log_le_log`; upstream bylines retained there.

The local canonical skill check found no verified ~/.agents/skills or ~/.codex/skills
checkout and no Lean/lake executable. The prescribed Noe proof skill returned 404
at `5a61a05a43c4574466878657839f2488132e8d4c`. No dependent execution was dispatched.
Ordinary source-text/hash checks are not Lean parsing or mathematical acceptance.
Their exact command/output and publication identities belong in the coordinating
issue. Existing historical verification statuses remain unchanged.

Clean-checkout formal verification, after authorized canonical skill access,
should target this module and its EBS-1 consumer at the unchanged pins, inspect
all exported statements, replay the resulting declarations and audit transitive
axioms. Those checks are NOT_RUN. No third-party code or paper text is copied.
