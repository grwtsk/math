# Goldbach prefix discrepancy transfer and quantitative supplier

Human research direction: grwtsk contributors.
Mathematical analysis and source drafting assistance: OpenAI ChatGPT.

Parent: issue #259 under #257; stacked on PR #379 at
`62ca45a9a4a34a8941742d71c009cd1253ab01b2`.

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** This note derives a finite
transfer and specifies the distribution input. It does not supply that input
or establish a Goldbach estimate. No Lean/Lake execution is authorized by this
note or its replay manifest.

## 1. Actual source and the next supplier

Put `e(t) = exp(2*pi*i*t)` and `X = N+1`. The inherited source uses

\[
S_{N;q,r}(\beta)=\sum_{0\le n\le N,\ n\bmod q=r}
  1_{\mathbb P}(n)\log n\,e(n\beta),\qquad
V_N(\beta)=\sum_{n=0}^N e(n\beta),
\]
\[
\Delta_{N;q,r}(\beta)=S_{N;q,r}(\beta)
  -\frac{1_{(q,r)=1}}{\varphi(q)}V_N(\beta).
\]

The new coefficient is

\[
d_{q,r}(n)=1_{n\bmod q=r}1_{\mathbb P}(n)\log n
 -1_{(q,r)=1}/\varphi(q).
\]

Thus the prefix `F_{q,r}(k) = sum_{n=0}^k d_{q,r}(n)` is exactly
`Delta_(k;q,r)(0)`. In a reduced residue it is the prime-only progression mass
minus `(k+1)/phi(q)`, not `k/phi(q)`.

An explicit candidate supplier consists of a specified integer-valued `Q(N)`,
nonnegative real bounds `B(N,q,r)`, and a fixed cutoff `N0`, with

\[
\forall N\ge N_0,\quad N>2,\ N\text{ even},\quad
\forall 1\le q\le Q(N),\quad
\forall 0\le r<q,\ (q,r)=1,\quad
\forall 0\le k\le N:\quad |F_{q,r}(k)|\le B(N,q,r).
\]

`GoldbachReducedPrefixSupplier` records precisely these quantifiers. It is a
predicate, not a theorem asserting existence. The formula and constants for
`B` must be specified and established from prime distribution independently of
the desired Goldbach convolution. Defining `B` as the largest observed error
only gives diagnostic data; it supplies no quantitative tail theorem.

## 2. Exact finite Abel transfer

For arbitrary finite coefficients `d_n` and weights `w_n`,

\[
\sum_{n=0}^N d_nw_n=F(N)w_N+
\sum_{k=0}^{N-1}F(k)(w_k-w_{k+1}).
\]

With `w_k=e(k beta)`, the norm of every adjacent difference is
`|1-e(beta)|`. Therefore a supplied bound on **every** prefix gives

\[
|\Delta_{N;q,r}(\beta)|
 \le B\{1+N|1-e(\beta)|\}
 \le B\{1+2\pi N|\beta|\}.
\]

The first equality is finite algebra. The first inequality is a norm estimate
conditional on the prefix premise. The second uses the elementary chord-angle
inequality from pinned Mathlib `Real.norm_exp_I_mul_ofReal_sub_one_le`.
Neither inequality proves that `B` is small.

For the exact source radius `rho = Q/[q(N+1)]`, the new residue budget is

\[
E_{q,r}=
\begin{cases}
B(N,q,r)\{1+2\pi NQ/[q(N+1)]\}, &(q,r)=1,\\
\theta(N;q,r), &(q,r)>1.
\end{cases}
\]

The implemented factor retains `N/(N+1)`. The simpler
`1+2*pi*Q/q` is a valid upper bound, not its definition.

The original offset `x-a/q` may be near `1` on a wrapped arc. The source first
extracts `x-a/q = beta+j`, with integer `j` and `|beta|<=rho`, then uses exact
periodicity. Applying a small-angle estimate directly to `x-a/q` would lose
the intended radius. This correction is proved for all three lifts.

## 3. Non-reduced corrections and endpoints

Non-reduced residues have zero model but can contain primes dividing `q`.
They are charged by the actual nonnegative finite prime mass
`theta(N;q,r)`, without an Abel factor. In ordinary mathematics,

\[
\sum_{(q,r)>1}\theta(N;q,r)
 =\sum_{p\mid q,\ p\le N}\log p\le\log q.
\]

The equality follows because a prime in a non-reduced residue divides `q`;
the inequality follows from the product of distinct prime divisors dividing
`q`. This aggregate logarithmic simplification is a written derivation here,
not a new Lean declaration. The Lean budget retains the exact finite mass.

At `q=2,r=0`, the discrepancy at zero is `log 2` for every `N>=2`. In
particular, an all-residue bound tending to zero is false. At `q=1,r=0,k=0`,
the prefix is `-1`, so the proposed reduced-prefix bound must be at least one.
These do not obstruct sublinear bounds with a sufficiently large fixed cutoff.

The finite model includes frequencies `0` and `1` even though their prime
weights vanish. A distribution theorem centered at `k/phi(q)` must add the
`1/phi(q)` endpoint correction. A von Mangoldt estimate must also subtract
prime powers explicitly. The elementary global prime-power correction is
`O(sqrt(N)*log(N)^2)`; no such conversion theorem is implemented in this step.

## 4. Exact integrated burden

Let `H=Theta_N+X`, where `Theta_N` is the actual prime-log total. For the new
budget, set `B_q^arc = sum_(r<q) E_(q,r)`. It is independent of the numerator.
The unchanged PR #379 consumer charges exactly

\[
\mathcal E_{\rm maj}=\frac{6QH}{X}
 \sum_{q\le Q}\frac{\varphi(q)}q B_q^{\rm arc}.
\]

`goldbachPrefixMajorErrorBudget` is the original finite index sum, so its
definition does not assume a denominator-counting theorem. The displayed
regrouping uses the elementary cardinality of reduced numerators.

If all reduced prefix bounds are at most `b_N`, ordinary finite estimates give

\[
\mathcal E_{\rm maj}\le\frac{6QH}{X}
 \left\{b_N\left[\frac{Q(Q+1)}2+2\pi Q^2\right]
       +Q\log Q\right\},\qquad Q\ge1.
\]

For the reduced part, use `phi(q)<=q` in
`sum phi(q)^2/q + 2*pi*Q*sum phi(q)^2/q^2`. For the non-reduced part use
`sum (phi(q)/q) log q <= Q log Q`.

Suppose independently that `H<=KX`, and that a proved model-major lower bound
`L_N` minus a proved complete signed minor allowance `T_N` is at least `delta*X`
for fixed positive `delta`. A sufficient, explicit strict requirement is

\[
6KQ\left\{b_N\left[\frac{Q(Q+1)}2+2\pi Q^2\right]
                  +Q\log Q\right\}<\delta X.
\]

Thus `Q^3 b_N=o(N)` and `Q^2 log Q=o(N)` suffice asymptotically for this
transfer, but the terminal theorem still needs actual constants and a cutoff.
For `Q=floor(log(N)^b)` and `b_N=C*N/log(N)^A`, `A>3b` is sufficient for the
reduced part. This is a sufficient condition for this uniform allocation,
not a necessary condition for Goldbach or for sharper nonuniform suppliers.

Classical Siegel-Walfisz-type estimates suggest the needed savings at
polylogarithmic moduli. Applying them requires a prime-only prefix conversion,
small-prefix treatment, and any needed effectivity. No distribution theorem
or effective cutoff has been imported or proved here. A quantitative primary
reference is Thorner and Zaman, *Refinements to the prime number theorem for
arithmetic progressions*, https://arxiv.org/abs/2108.10878.

## 5. Why the elementary triangle budget cannot close

The direct residue bound `theta(N;q,r)+1_(q,r)=1*X/phi(q)` sums to `H`.
The source then charges

\[
\frac{6QH^2}{X}\sum_{q\le Q}\frac{\varphi(q)}q.
\]

The source's own bounds on the model and arc measures place the model-major
real part below `6QX sum_(q<=Q) phi(q)/q`. Since `H>=X`, this particular
elementary budget already exceeds or equals that upper bound. It cannot meet
the strict criterion even before the minor term. Improving the arc-length
constant alone does not repair the missing distribution saving.

## 6. Feasibility controls

The smallest exact obstruction is the retained `log 2` at the non-reduced
even residue. A second counterexample uses coefficients `(1,-1)` and weights
`(1,-1)`: the terminal prefix is zero while the twisted sum is two. Hence a
bound only at `k=N` cannot replace the full prefix hypothesis.

For a declared `Q(N)`, a useful finite diagnostic is to compare the actual
prefix-derived budget with the model-major integral, or an independently
proved lower bound for it. Finite prefix maxima are computable diagnostic
inputs, not a universal supplier. Under the declared separation scale, a
finite formula for exploring the actual model is

\[
J_N(\rho)=2\rho X+
 2\sum_{k=1}^N(X-k)\frac{\sin(2\pi k\rho)}{\pi k},
\qquad
M_{Q,N}=\sum_{q\le Q}\frac{\mu(q)^2c_q(N)}{\varphi(q)^2}
 J_N\left(\frac Q{qX}\right).
\]

Here `c_q(N)=sum_(d|gcd(q,N)) d*mu(q/d)`. The formula follows by expanding
`V_N(beta)^2 e(-N beta)` into frequencies `-N,...,N` with coefficients
`X-|k|`, integrating each frequency, and summing the reduced-center phases.
Wrapped pieces combine by periodicity. This is a written finite derivation,
not an implemented Lean evaluation theorem or a model-major lower bound.
Computing its signed finite sum with ordinary floating point is exploratory,
not certified integration.

An optional frequency-grid diagnostic can
be enclosed using

\[
|\Delta'_{q,r}(\beta)|\le2\pi\left(
\sum_{p\le N,\ p\equiv r(q)}p\log p
+\frac{1_{(q,r)=1}}{\varphi(q)}\frac{N(N+1)}2\right).
\]

Unenclosed floating-point samples are not supremum bounds. Finite algebra and
numerical diagnostics do not execute Lean, certify its proof terms, establish
a distribution rate, or provide finite Goldbach exception coverage.

## 7. Remaining universal obligations

The new terminal source consumes the prefix hypothesis and retains separate
model-major, complete signed minor, and strict-margin premises. Its tail
wrapper quantifies over every even `N>2` above one fixed cutoff. It does not
weaken this to almost every target or permit an unaccounted exceptional set.
Complete finite coverage below the cutoff remains separate.

The minor obligation is the norm of the signed integral
`integral_minor S_N(alpha)^2 e(-N alpha) d alpha`. Replacing it by the integral
of `|S_N|^2` discards target-dependent cancellation; the complete Parseval mass
has scale `N log N`, whereas the intended main scale is linear. Neither
Parseval nor the new prefix transfer supplies a suitable signed minor bound.

Still open: a genuine quantitative prefix distribution supplier, an effective
cutoff where required, model-major lower bounds and model/local-main comparison,
any infinite singular-series estimates used, signed universal minor control,
a strict combined margin, finite exception coverage, and all exact-head Lean
elaboration and trust obligations. Issue #259 stays open. PR #345 is outside
this work. Existing mathematical files and `GRWTSK.lean` remain unchanged.
