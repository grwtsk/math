# Centered digamma: exact shifts, positive tails, and the archimedean consumer

Author: grwtsk contributors. Date: 2026-11-12 UTC (2026-11-11 America/Los_Angeles).
MSC2020: 33B15 (primary), 11M06, 11M26. Coordination: math issue #1801.

## Evidence boundary

`CenteredDigammaShift.lean` is a SOURCE_PROOF_CANDIDATE, not a report of accepted
Lean proofs. Elaboration, fresh kernel replay, transitive axiom audit and
independent review are NOT_RUN. The code has complete authored proof terms and
contains no authored `sorry`, `admit`, custom axiom or `native_decide`.
A source-text observation is not a transitive axiom audit.

The Lean scope is exactly the nine public declarations mapped below: actual
finite digamma shifts; a rational telescoping majorant; summability and complete
series tails; and convergence of the shifted actual source to an explicitly
retained residual. It does NOT identify that residual with zero, prove the
infinite digamma integral/series formula, or formalize the Fourier/archimedean
claims in the later sections. Those later claims have the written classical
arguments below and remain separate formalization obligations.

No RH, Dirichlet GRH, all-test Weil positivity, universal certificate existence,
or independent review is claimed. No mathematical novelty is claimed;
originality is UNASSESSED. These are classical identities and elementary
quantitative consequences, not a new proof strategy.

## Primary sources and exact formal dependencies

1. NIST Digital Library of Mathematical Functions, Chapter 5, equation 5.5.2,
   https://dlmf.nist.gov/5.5.E2: psi(z+1)=psi(z)+1/z, away from its poles.
   This is the primary mathematical source for the actual finite shifts.
2. DLMF equation 5.7.6, https://dlmf.nist.gov/5.7.E6: partial-fraction series for
   the digamma function. This is a comparator for the infinite source return;
   the Lean code does not assume that comparator as an axiom.
3. DLMF equation 5.9.16, https://dlmf.nist.gov/5.9.E16: the integral formula for
   psi(z)+Euler's constant, for Re(z)>0. Subtracting the value at a positive
   real point gives the centered integral without singular subtraction.
   DLMF equations were read on 2026-11-12 UTC; the dated comparison makes no
   assertion of an exhaustive prior-art search.
4. Mathlib revision `d13f23b723b8a846827a245b89c10fc7d3f11612`,
   `Mathlib/Analysis/SpecialFunctions/Gamma/Digamma.lean`, authored upstream by
   Thomas Browning, Apache 2.0, blob `7a13afbf72c57f912beea85d5325ca7da3e66ed1`:
   `Complex.digamma`, `Complex.digamma_apply_add_one`. The local source imports
   these declarations and does not copy or relicense their implementation.
5. Same pin, `Mathlib/Basic/Complex/Basic.lean`, blob
   `02ad0aa87f370d1fd2bbb34072fc95cefcb27d87`: `Complex.inv_re`,
   `Complex.normSq_add_mul_I`, and the real/complex coercion identities.
6. Same pin, `Mathlib/Topology/Algebra/InfiniteSum/Real.lean`, authors Sebastien
   Gouezel and Yury Kudryashov, Apache 2.0, blob
   `82131f71d8c5c0b14cb5d23cd6da8543422a4e3b`:
   `summable_of_sum_range_le`, `Real.tsum_le_of_sum_range_le`.
7. Same pin, `Mathlib/Topology/Algebra/InfiniteSum/NatInt.lean`, author Johannes
   Holzl, Apache 2.0, blob `068846239a74b9cff04c456bcba142809ac58eca`:
   `HasSum.tendsto_sum_nat`, `Summable.sum_add_tsum_nat_add`.

The inspected local source base is `daa8c88b644cf40ada77e76739d84f749068ffde`.
The Lean pin is `leanprover/lean4:v4.34.1`. Existing root imports and dependency
pins are not changed. Individual declaration provenance is in
`CenteredDigammaShift.provenance/`. Upstream authorship/licenses are preserved;
local authored statements, proofs and exposition are attributed to grwtsk
contributors, with AI-assisted source authoring and no independent reviewer.

## 1. Exact finite return to the actual special function

For real sigma>0 and y, define

    C(sigma,y) = Re psi(sigma+i*y) - Re psi(sigma),
    d(sigma,y) = y^2 / (sigma*(sigma^2+y^2)),
    S_N(sigma,y) = sum_{0<=n<N} d(sigma+n,y),
    B(sigma,y) = y^2/sigma^3 + y^2/(2*sigma^2).

`centered` is defined using Mathlib's actual analytically defined digamma. It is
not defined by `S_N` or by a nonnegative infinite sum.

Taking real parts of the digamma recurrence twice gives

    C(sigma,y) - C(sigma+1,y)
      = 1/sigma - sigma/(sigma^2+y^2)
      = d(sigma,y).

The positive-real hypothesis excludes every digamma pole and makes the real
rational denominators positive. Induction, without any infinite interchange,
gives the exact source identity

    C(sigma,y) - C(sigma+N,y) = S_N(sigma,y).                 (1)

Every term is nonnegative. It is strictly positive when y is nonzero. This is
positivity of a finite DROP of the actual source, not yet of C(sigma,y) itself.

## 2. A telescoping budget and all omitted rational increments

For x>0,

    0 <= d(x,y) <= y^2/x^3.

The following exact scalar identity provides an integralless majorant:

    B(x,y)-B(x+1,y)-y^2/x^3
      = y^2*(3*x+1)/(2*x^2*(x+1)^3) >= 0.                  (2)

Therefore, for every sigma>0 and every natural N,M,

    0 <= C(sigma+N,y)-C(sigma+N+M,y)
      <= B(sigma+N,y)-B(sigma+N+M,y).                      (3)

This controls every finite tail, not a finite list of sampled tails. The
nonnegative partial sums S_N are bounded by B(sigma,y), so the rational series
is summable. Denote its actual convergent sum by S_infinity(sigma,y). Splitting
that convergent sum after N terms, and applying the same majorant at sigma+N,
gives

    0 <= S_infinity(sigma,y)-S_N(sigma,y)
      <= B(sigma+N,y).                                    (4)

For an entire frequency window |y|<=Y, Y>=0, replace y^2 by Y^2 in the right
side. This is a pointwise all-window enclosure, not a midpoint assertion.
At fixed sigma and Y its upper endpoint is O_Y(N^-2).

Equation (1) and convergence of the partial sums prove that

    lim_{N->infinity} C(sigma+N,y)
      = C(sigma,y)-S_infinity(sigma,y).                    (5)

The Lean theorem deliberately prints this value, NOT zero.

## 3. The exact remaining formal bridge; complete written return

Classically, the value in (5) is zero. Here is an analytic proof with a
quantitative bound, separate from the Lean declarations.

Subtract DLMF 5.9.16 at sigma from its real part at sigma+i*y. The constants
cancel, and the combined numerator makes the integrand integrable at zero:

    C(sigma,y) = integral_{u>0}
      e^(-sigma*u)/(1-e^(-u)) * (1-cos(y*u)) du.            (6)

The integrand is nonnegative. For u>0, e^u>=1+u implies

    1/(1-e^(-u)) <= 1+1/u.

Also 0<=1-cos(y*u)<=y^2*u^2/2. Using the elementary Laplace moments
integral u*e^(-sigma*u)=sigma^-2 and
integral u^2*e^(-sigma*u)=2*sigma^-3 yields

    0 <= C(sigma,y) <= B(sigma,y).                         (7)

This proves C(sigma+N,y)->0, uniformly on each bounded y-window. Combining
(5) and (7) gives the actual source return

    C(sigma,y) = S_infinity(sigma,y),
    0 <= C(sigma,y)-S_N(sigma,y) <= B(sigma+N,y).           (8)

Alternatively, subtract the two convergent partial-fraction expansions in
DLMF 5.7.6; their real-part difference is exactly the positive series above.
That is a second classical derivation of (8), not an independent RH proof.

The first unformalized premise in this source increment is the centered
integral identity (6), or equivalently a proven supplier of the zero limit in
(5). The pinned upstream Digamma file lists Gauss's integral representation as
a TODO. This inspection is not a claim that no supplier exists elsewhere in
the repository or in all upstream modules. The companion written proof does
not cause Lean to assume (6) or (7).

## 4. Written archimedean consumer and a two-parameter one-sided error bound

Let f be complex-valued, smooth and compactly supported on the real line.
Use the plus Fourier convention fhat(t)=integral f(x)*exp(i*t*x) dx. Put
M0=integral |f|^2, sigma=1/4+a/2 with a in {0,1}, q>=1, and c_q=log(q/pi).
For positive real sigma, psi(sigma) is real. Retain its real part explicitly
when mapping to `Complex.digamma`.

Write the actual archimedean/conductor form as

    A(f) = (c_q+Re psi(sigma))*M0
           + (1/(2*pi))*integral_R |fhat(t)|^2*C(sigma,t/2) dt.    (9)

This is the original spectral form with Plancherel used only to separate its
constant baseline. By (6), u=2x and Tonelli, it also equals

    (c_q+Re psi(sigma))*M0
      + integral_{x>0} e^(-2*sigma*x)/(1-e^(-2*x))
          * ||f-translate_x f||_2^2 dx.                         (10)

The integrability argument is explicit: the translation norm squared is at
most x^2*||f'||_2^2 near zero and at most 4*M0 everywhere. The kernel is
O(1/x) near zero and decays exponentially at infinity. The separated baseline
need not be nonnegative; (10) is a lower-bound identity, not full positivity.

For k>=1, T>=1 and L>=||f^(k)||_1, set p=2k-1 and

    K_sigma = 1/sigma + (1/2)*log(1+1/(4*sigma^2)),
    E_frequency = L^2/(pi*p*T^p)*(K_sigma+log(T)+1/p).

The decreasing rational summand in (8), bounded by its first term plus its
integral in the real shift, gives

    0 <= C(sigma,t/2)
      <= 1/sigma+(1/2)*log(1+t^2/(4*sigma^2))
      <= K_sigma+log(|t|)                for |t|>=1.

Repeated integration by parts gives |fhat(t)|<=L*|t|^-k. Integrating the
positive tail over |t|>T proves the stated E_frequency. No conductor term is
included in that tail because its whole contribution is retained in (9).

Now replace the centered multiplier on [-T,T] by its first N rational terms:

    A_{T,N}(f) = (c_q+Re psi(sigma))*M0
      + (1/(2*pi))*integral_{-T}^T |fhat(t)|^2*S_N(sigma,t/2) dt.

The uniform window form of (8), with Y=T/2, and Plancherel give

    E_series = M0*(T^2/4)*((sigma+N)^-3+(1/2)*(sigma+N)^-2),

    0 <= A(f)-A_{T,N}(f) <= E_frequency+E_series.           (11)

This is a genuine two-parameter enclosure: a finite rational multiplier on a
finite frequency interval with both omitted tails accounted for. In
particular, if a sound core certificate proves l<=A_{T,N}(f)<=u, then

    l <= A(f) <= u+E_frequency+E_series.                   (12)

Neither the finite-core quadrature, baseline scalar enclosures, (6), nor the
Fourier/Plancherel consumer (9)-(12) is implemented by this Lean file. They
remain named formalization obligations, not hidden structure fields.
The estimates may depend on f, sigma, k and T as displayed. For every desired
accuracy, first choose T controlling E_frequency and then N controlling
E_series; increasing T with N fixed need not improve the complete budget.

The complete Weil form still needs the exact signed prime-power term,
conductor/parity/character identification, both zeta pole contributions, and
all-test all-window positivity. This increment does not change the canonical
Dirichlet source or its inverse-character adapter for the plus convention.

## 5. Falsification and regression scope

At y=1 the two parity unit drops are exactly

    C(1/4,1)-C(5/4,1)=64/17,
    C(3/4,1)-C(7/4,1)=64/75.

The source includes these as actual-digamma theorem conclusions, not `True`
examples. Their elaboration remains NOT_RUN. They do not certify individual
values of the digamma function or a Weil matrix.

Recurrence by itself cannot justify erasing the residual in (5). For example,
replace psi(z) by psi(z)-lambda*sin(2*pi*z), with lambda real. Its unit
recurrence is unchanged because the additional function is 1-periodic. At
sigma=1/4 its centered real part changes by

    -lambda*(cosh(2*pi*y)-1),

which is independent of the integer shift and can have arbitrarily large
negative magnitude for fixed nonzero y. This is a hostile check on the
inference from recurrence to positivity; it is not a different definition of
the canonical source or a counterexample to RH/GRH.

Other boundaries: sigma>0 is retained; no bound uniform through sigma=0 is
asserted. At y=0 all centered differences and budgets vanish. Finite-width
spectral convergence does not imply all-window Weil positivity. A finite
collection of f does not test every vector in their span.

## 6. Declaration map and verification obligations

All declarations are in `GRWTSK.SpecialFunctions.CenteredDigamma`:

- `centered_sub_shift_one`: exact actual-source unit recurrence.
- `centered_sub_shift_nat`: exact finite rational sum, with source residual.
- `shifted_drop_bounds`: one-sided all-finite-tail bound for actual digamma.
- `summable_terms`: convergence of the positive rational series.
- `tsum_terms_bounds`: nonnegative whole-series majorant at every positive shift.
- `series_tail_enclosure`: complete omitted-series bound after any cutoff N.
- `series_tail_enclosure_on_window`: uniform omitted-series bound for |y|<=Y.
- `shifted_residual_tendsto`: actual shifted-source limit, left explicitly unevaluated.
- `parity_unit_shift_regression`: both exact parity source identities above.

At the unchanged pins the first formal check is

    lake env lean GRWTSK/SpecialFunctions/CenteredDigammaShift.lean

This command was NOT_RUN. A separate source-bound audit should print the
transitive axioms of every public theorem, check that no `sorryAx` or research
axiom occurs, and inspect each statement against the map above. A successful
root build alone would not suffice because no root/default import was added.
Independent mathematical review is NOT_RUN. The canonical proof-automation
skill was inaccessible at Noe revision
`a5ef0a774b3e5decabc2ed2885108805ea7022bc`; no dependent proof execution was
launched. Ordinary authenticated source publication is separate from execution.
