# Quadratic-interval budgets and coupled zero sensitivity

Issues: [#189](https://github.com/grwtsk/math/issues/189),
[#194](https://github.com/grwtsk/math/issues/194),
[#209](https://github.com/grwtsk/math/issues/209).

This is a mathematical proof note, not a replay receipt. The elementary and
analytic deductions below are written arguments. The isolated Lean source covers
only endpoint inventories and generic finite square-budget implications; it has
not been elaborated or kernel-audited. No cancellation estimate, finite zero-tail
certificate, RH theorem, or Legendre theorem is supplied. No originality claim is
made for the inequalities. Research direction: grwtsk contributors. Proof drafting
and source review assistance: OpenAI ChatGPT. Existing Mathlib and GRWTSK source
notices and their credit remain unchanged.

## Source and scope

The source snapshot is `grwtsk/math@99f310907528f620d85095b675ec1b6f9d7a7046`.
`GRWTSK/NumberTheory/Chebyshev/CorrelationPairing.lean`, blob
`85923009b211961763765b523234e9746555ca7f`, owns the actual closed-right count
`GRWTSK.RiemannHypothesis.SourcePairing.chebyshevPrimePower`. It sums Mathlib's
von Mangoldt function on `Finset.Icc 2 floor(x)`. The new endpoint module reuses
that definition, not a surrogate. `FiniteIntegrationByParts.lean`, blob
`b7541e300110331c1c6a7ca9d45a3f96e8b7b0d9`, already develops exact finite
prime-power step and integration-by-parts identities; it does not supply the
complete zero-divisor explicit formula used below.

Pinned Mathlib: `db584cd6d46c92f209a44c0f1c829460d327499d`, as recorded in
`lake-manifest.json`. The inspected `Nat.floor_eq_iff` and `Nat.floor_natCast`
provide the elementary endpoint proof interface.

For the analytic explicit formula only, the external source is
[Tao, 246B Notes 4, Theorem 8](https://terrytao.wordpress.com/2021/02/12/246b-notes-4-the-riemann-zeta-function-and-the-prime-number-theorem/).
It is applied at noninteger arguments greater than one with a symmetric height
limit over all nontrivial zeros, including multiplicities. This note does not
import that analytic theorem into Lean. Its interval manipulation, higher-power
estimate and sensitivity bounds are deductions written below, not new results
attributed to the cited source or already-accepted repository declarations.

## 1. Exact noninteger endpoints

For an integer n >= 1, put

\[
A_n=n^2,\quad B_n=(n+1)^2,\quad h_n=B_n-A_n=2n+1,
\qquad a_n=A_n+\tfrac12,\quad b_n=B_n+\tfrac12.
\]

For any natural m and 0 <= delta < 1, floor(m+delta)=m. Consequently the
closed-right Chebyshev count has exactly the same inventory at m+delta and m.
For delta>0 the shifted value is noninteger. In particular a_n,b_n>1, including
n=1, and

\[
\psi(a_n)=\psi(A_n),\qquad \psi(b_n)=\psi(B_n),\qquad b_n-a_n=h_n.
\]

The same floor argument applies to theta(x)=sum_{p<=x} log p. Write
Delta_n f=f(B_n)-f(A_n). Subtract the two explicit formulas at the **same**
symmetric zero cutoff before taking its limit:

\[
S_n=\lim_{Y\to\infty}\sum_{|\operatorname{Im}\rho|\le Y}
       \frac{b_n^\rho-a_n^\rho}{\rho},\qquad
R_n=-\frac12\log\frac{1-b_n^{-2}}{1-a_n^{-2}}.
\]

All nontrivial zeros and their analytic multiplicities occur. No critical-line
projection or RH premise is used. The constant term cancels, yielding

\[
\Delta_n\psi=h_n-S_n+R_n.
\]

R_n is finite and negative. The symmetric divisor and real elementary terms
make S_n real. Define the finite proper-prime-power correction

\[
P_n=\sum_{k\ge2}\ \sum_{\substack{p\ \mathrm{prime}\\ A_n<p^k\le B_n}}\log p.
\]

Unique factorization of prime powers separates the k=1 terms, so

\[
\boxed{\Delta_n\theta=h_n-S_n+R_n-P_n.}
\]

For n>=1 the upper endpoint (n+1)^2 is not prime. Thus Delta_n theta>0 is
exactly existence of a prime in the open interval (n^2,(n+1)^2).

## 2. A polylogarithmic bound for the proper-prime-power correction

Set

\[
K_n=\left\lfloor\frac{2\log(n+1)}{\log2}\right\rfloor\ge2,
\quad
U_n=2\log(n+1)\sum_{k=2}^{K_n}\frac1k.
\]

**Proposition.** For every integer n>=1,

\[
0\le P_n\le U_n\le 2\log(n+1)\log K_n.
\]

**Proof.** Fix k>=2 and put alpha=2/k. The derivative of t^alpha on t>=1 is
alpha t^(alpha-1)<=1. The mean-value theorem therefore gives

\[
(n+1)^{2/k}-n^{2/k}\le1.
\]

The half-open interval (n^(2/k),(n+1)^(2/k)] contains at most one integer:
two distinct integer occupants would differ by at least one, while the strict
left endpoint and inclusive right endpoint force their difference to be less
than or equal to the interval length with strictness when that length is one.
Equivalently, if u<v both lie there, v-u < upper-lower <= 1, a contradiction.
The k=2 equality case must keep the half-open convention.

Hence at most one prime contributes at exponent k. Since p>=2, an occupied
exponent satisfies 2^k<=B_n, hence k<=K_n. Its logarithmic weight is bounded by
log(p)<=log(B_n)/k=2 log(n+1)/k. Sum over exponents. Finally
sum_{k=2}^K 1/k <= integral_1^K dt/t=log K, because 1/t>=1/k on [k-1,k].
This proves the displayed inequalities. In particular, as n tends to infinity,

\[
P_n=O(\log n\,\log\log n)=o(n).
\]

This is an unconditional **nuisance-term bound**, not the required estimate on
S_n. It does not supply the sign of the prime count. A global estimate for
psi(x)-theta(x), differenced by the triangle inequality, misses this shorter
interval occupancy improvement.

## 3. An entire interval kernel, with the endpoints estimated together

For real 1<a<b define

\[
F_{a,b}(z)=\int_a^b \exp((z-1)\log t)\,dt.
\]

The finite integration domain bounds every logarithmic derivative locally
uniformly in z, so differentiation under the integral makes F entire. Direct
integration gives

\[
F_{a,b}(z)=\frac{b^z-a^z}{z}\ (z\ne0),\qquad
F_{a,b}(0)=\log(b/a),\qquad
F'_{a,b}(z)=\int_a^b \log t\,t^{z-1}\,dt.
\]

Thus the apparent denominator singularity is removable for the **coupled
interval kernel**. This does not change the individual x^z/z sensitivity profile
in #194, and says nothing about missing divisor multiplicities or tails.

Let the segment from z to w lie in Re(s)<=beta, and set

\[
M_\beta(a,b)=\max(a^{\beta-1},b^{\beta-1}).
\]

For t in [a,b], |t^(s-1)|=t^(Re(s)-1)<=M_beta(a,b). Integrating first in t,
then along the segment in s, proves

\[
|F_{a,b}(z)|\le(b-a)M_\beta(a,b),
\]
\[
\boxed{|F_{a,b}(z)-F_{a,b}(w)|
 \le |z-w|(b-a)\log b\,M_\beta(a,b).}
\]

No separation from z=0 appears. For beta<=1 the maximum is a^(beta-1).
For an exact source-identified finite family with multiplicities m_j, zero
centres z_j and certified errors |rho_j-z_j|<=r_j, this gives the included-record
uncertainty

\[
\varepsilon_{\mathrm{included}}
 \le\sum_j m_j r_j(b-a)\log b\,M_{\beta_j}(a,b),
\]

provided each connecting segment satisfies its horizontal bound beta_j.
Multiplicity drift, incompatible cutoffs and missing record identities are not
absorbed into this numeric sum. A complete omitted-zero tail remains a separate
analytic supplier.

An algebraically equivalent evaluation form is

\[
F_{a,b}(z)=a^z\log(b/a)\operatorname{exprel}(z\log(b/a)),
\quad \operatorname{exprel}(w)=(e^w-1)/w,
\quad \operatorname{exprel}(0)=1.
\]

This suggests avoiding subtractive cancellation during numerical evaluation,
but an implementation still needs a certified rounding/enclosure theorem.
No floating-point evaluation in this form is a certificate by itself.

## 4. Exact finite mean-square transfer and exceptional counts

For integer N>=1 let I_N={n in N : N<n<=2N}; it has N entries. Put

\[
e_n^\psi=\Delta_n\psi-h_n,\qquad
e_n^\theta=\Delta_n\theta-h_n=e_n^\psi-P_n,
\quad D_f(N)=\sum_{n\in I_N}|e_n^f|^2.
\]

The real inequalities (x-y)^2<=2x^2+2y^2 and
x^2<=2(x-y)^2+2y^2 give

\[
D_\theta(N)\le2D_\psi(N)+2\sum_{n\in I_N}P_n^2,
\quad D_\psi(N)\le2D_\theta(N)+2\sum_{n\in I_N}P_n^2.
\]

The bound in section 2 gives

\[
\sum_{n\in I_N}P_n^2
 =O(N\log^2 N(\log\log N)^2)=o(N^3).
\]

Consequently the two **unproved target estimates** are equivalent at this scale:

\[
D_\psi(N)=o(N^3)\quad\Longleftrightarrow\quad D_\theta(N)=o(N^3).
\]

This equivalence does not establish either target. It only shows that the
proper-prime-power correction is negligible for this particular averaged test.

For an explicit finite statement define

\[
K_N^*=\left\lfloor\frac{2\log(2N+1)}{\log2}\right\rfloor,
\quad U_N^*=2\log(2N+1)\log K_N^*,\quad H_N=2N+3.
\]

For n in I_N, P_n<=U_N^* and h_n>=H_N. Let B_N be the subset with no prime in
(n^2,(n+1)^2). At each such n, Delta_n theta=0, hence Delta_n psi=P_n and

\[
e_n^\psi=P_n-h_n\le-(H_N-U_N^*).
\]

Whenever H_N>U_N^*, summing squares over B_N and enlarging the sum to I_N gives

\[
\boxed{\#B_N\le\frac{D_\psi(N)}{(2N+3-U_N^*)^2}.}
\]

In particular D_psi(N)=o(N^3) would give #B_N=o(N); this is **density control**,
not absence of all exceptional intervals, Legendre's conjecture, or RH.
The strict positive margin is required for division; zero margin gives no
cardinality conclusion. No unsmoothing theorem is smuggled into this statement:
it is about the actual inclusive arithmetic count, not a smooth surrogate.

## 5. A source-bound sufficient test for a single interval

Suppose a finite approximation S_hat has a proved **complete** bound
|S_n-S_hat|<=epsilon, including omitted zeros, source enclosures and rounding.
Since S_n is real, |S_n-Re(S_hat)|<=epsilon. Let R_lower<=R_n and use P_n<=U_n.
Then

\[
\Delta_n\theta
 \ge h_n-\operatorname{Re}\widehat S_n+R_{\rm lower}-\varepsilon-U_n.
\]

Strict positivity of the right side supplies a prime witness at this interval.
If the tail theorem is absent, the test is unavailable, not accepted with
zero tail. Equality of the lower bound to zero is inconclusive. The generic
real implication is the scope of `positive_of_complete_budget`; it does not
construct the source/tail certificates or prove that any instance passes.

This is an optional arithmetic interval diagnostic for #209. It does not
construct #207's B_n, replace its shared-source condition, transfer positivity
of a quadratic Gram form to a linear waveform, or waive #209's unsmoothing
obligations for smoothed producers. The Möbius reciprocal-zeta energy route
(#107/#151-#155) also remains separate.

## 6. Formalization cut and falsification controls

The new isolated Lean source contains candidates for:

- exact natural floor and actual source-count equality under 0<=delta<1;
- nonintegral half-square endpoints, their valid domain and exact width;
- the source square-increment and centered-error identity;
- both finite square-budget inequalities;
- exceptional-set cardinality times margin squared bounded by total error;
- correction-sensitive zero-output specialization and strict positivity;
- controls witnessing zero-margin and correction-omission failures, and exclusion
  of delta=1 from the floor-preserving interval.

Still **written only / not Lean-formalized**: the prime-base occupancy lemma,
the P_n harmonic bound, the psi/theta prime-power decomposition adapter, the
entire kernel and derivative/sensitivity estimates, the analytic explicit
formula, its full divisor/tail theorem, and the little-o transfer. The proposed
source does not use `sorry`, new axioms, native evaluation or a postulated
arithmetic bound in place of those missing implementations.

Require hostile checks for: two integer occupants falsely admitted at k=2;
a half-jump confused with an inclusive count; delta=1 used as interior;
individual-term singularity pricing imposed on the entire coupled kernel;
unknown zero multiplicities treated as one; unknown tail treated as zero;
P_n omitted; zero or negative margin used for division; a generic scalar
identity reported as an actual arithmetic certificate; and density-zero
exceptions reported as no exceptions. No run of these checks is recorded here.

The static replay target names only the two new mathematical modules and their
isolated import root. It requires exact source, declaration types, complete
module coverage and transitive axiom/runtime-safety review. Operational replay
and acceptance records remain external. No public-root import, target promotion,
issue closure or merge is authorized by this note.
