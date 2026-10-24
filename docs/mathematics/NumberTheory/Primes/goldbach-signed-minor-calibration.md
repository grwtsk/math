# Calibrating the signed minor target and testing scalar information

Human research direction: grwtsk contributors.
Mathematical analysis and source drafting assistance: OpenAI ChatGPT.

Issue #259 under #257. Continuation of PR #404 at
`0aee3ae2d8337c6a6b3549bc20d9cdc0379a5f0e`, tree
`2baf10135aa4df56ece77e2a8c9634870157b58d`.

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** This increment calibrates an
open supplier and tests which information it needs. It supplies no actual
uniform minor estimate. Parallel PR #406's finite kernel lower estimates
remain separate; this increment does not import or audit them.

## 1. Quantitative margin with the actual source conventions

Retain prime-only logarithmic weights, inclusive support, X=N+1, Q=2,
the actual clipped and periodized major arcs, and the complete signed minor
integral I(N). Write M for the finite progression model-major sum and R for
its complete major residual. The inherited exact identity is

\[
M(N)+R(N)+I(N)=G(N).
\]

The identity implies, for a separately specified T,

\[
\Re I(N)\ge-T\quad\Longleftrightarrow\quad
G(N)\ge\Re M(N)+\Re R(N)-T.                 \tag{1}
\]

The new source attaches (1) to the actual definitions. It is not an estimate
and does not manufacture a minor bound from scalar theta information. The
right side displays the remaining additive coefficient explicitly.

The inherited written major estimates are

\[
\Re M\ge13X/9,\qquad \|R\|\le U(X,B),\qquad
U(X,B)=40B+12+(310B^2+70B+30)/X.
\]

The two analytic integral comparisons remain formal premises. For the
scalar all-prefix input B=epsilon X, the exact normalized budget is

\[
\frac{U(X,\epsilon X)}X
=40\epsilon+310\epsilon^2+
 \frac{12+70\epsilon}{X}+\frac{30}{X^2}.      \tag{2}
\]

Thus a fixed normalized signed-minor allowance T=tau X must satisfy

\[
\tau+40\epsilon+310\epsilon^2+
 \frac{12+70\epsilon}{X}+\frac{30}{X^2}<13/9. \tag{3}
\]

This explains why a crude scalar error of order X with a large constant is
useless here, while the explicit one-percent supplier from #404 fits. The
endpoint and prime-two corrections in U are still charged. Taking absolute
values of the full minor integrand would be a different, stronger supplier.

At epsilon=1/100,

\[
U(X,X/100)=431X/1000+127/10+30/X.
\]

For X>=6000 the new rational source draft derives

\[
U(X,X/100)\le13X/30,\qquad
13X/9-U(X,X/100)-X\ge X/90>0.                \tag{4}
\]

Consequently the previous proposed allowance X/2 can be relaxed to X.
This is a weaker sufficient analytic target, not a newly proved estimate.
With the inherited cutoff, its precise quantifiers are

\[
\boxed{\forall N\in\mathbb N,\quad
 N\ge400{,}000{,}000,\ 2<N,\ 2\mid N
 \Longrightarrow\Re I(N)\ge-(N+1).}        \tag{5}
\]

The cutoff and allowance are fixed independently of G. Together with the
external theta input and actual model/envelope bridges, (5) would yield
G(N)>=(N+1)/90 for EVERY such even N. This is stronger than mere positivity;
it must not be described as equivalent to the universal Goldbach statement.
Complete finite coverage remains a separate obligation. No almost-everywhere
or averaged estimate supplies (5).

## 2. A concrete actual-prime test of the earlier constant

A finite signed calculation can be made without numerical quadrature. For
even N with 8<X, expand the actual prime exponential square on the two
disjoint periodized arcs. For an integer frequency m define

\[
K_X(0)=6/X,\qquad
K_X(m)=\frac{\sin(4\pi m/X)+(-1)^m\sin(2\pi m/X)}{\pi m}
\quad(m\ne0).                              \tag{6}
\]

The first term integrates the arc of radius 2/X at zero; the second
integrates radius 1/X at one half, including its exact character phase.
The two portions of the zero arc at the unit-interval endpoints are both
included. The denominator-zero branch is kept separately. Finite expansion
and periodicity give the written identity

\[
\Re I(N)=\sum_{p,q\le N\atop p,q\ {\rm prime}}
\log p\log q\,[1_{p+q=N}-K_X(p+q-N)].        \tag{7}
\]

At N=128, the complete prime list is

```
2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,
59,61,67,71,73,79,83,89,97,101,103,107,109,113,127.
```

An ordinary exact-rational interval calculation of all 961 ordered terms in
(7) gives the outward enclosure

\[
-95.10<\Re I(128)<-95.09<-129/2=-64.5.       \tag{8}
\]

Therefore the earlier proposed half-X bound does not hold at this target.
**N=128 is below the declared cutoff. This does not refute the half-X tail
statement from #404, nor does it establish failure at arbitrarily large N.**
It is a hostile test of a possible uniform constant and a reason to avoid
requiring more cancellation than the major margin needs. It is not a
counterexample to Goldbach: G(128) is positive.

The rational enclosure uses the following explicit procedure, so its
mathematical content is separable from any floating-point display:

- Enclose pi using Machin's identity
  pi=16 arctan(1/5)-4 arctan(1/239), with 48 and 16 alternating terms,
  respectively, and the first omitted term as a two-sided error allowance.
- For p=2^j u with 1<=u<2, enclose log p using j log 2 plus
  2 sum_(i=0)^47 z^(2i+1)/(2i+1), z=(u-1)/(u+1). Its positive tail is at
  most 2z^97/[97(1-z^2)]. Use z=1/3 for log 2. Round outward to denominator
  2^48 before multiplication.
- All sine arguments have absolute value less than 13. Evaluate the odd
  Taylor polynomial through degree 81 at the rational interval midpoint.
  Taylor through degree 82 has remainder at most 13^83/83!; the degree-82
  coefficient is zero. Add the argument radius using the Lipschitz bound
  |sin a-sin b|<=|a-b|. Round outward to denominator 2^60.
- Divide using the positive pi*|m| interval, use K_X(-m)=K_X(m), and retain
  interval signs when multiplying by each positive logarithm product.
- Sum the direct minor coefficients 1_(m=0)-K_X(m), avoiding an untracked
  floating subtraction of two separately computed large quantities.

These are ordinary exact arithmetic diagnostics, not a Lean proof of (7),
a kernel-accepted interval certificate, or a replay of transitive analytic
dependencies. The source does not assert (8) as an unconditional theorem.
Effectful scripts and execution output are not part of the math repository.

## 3. Why scalar and parity control cannot supply the additive estimate

For a fixed real 0<=c<=1, define explicitly artificial weights

\[
w_c(n)=\begin{cases}
c,&n=2,\\
4,&n\ge5\text{ and }n\equiv1\pmod4,\\
0,&\text{otherwise}.
\end{cases}
\]

One may choose c=log 2. These weights are nonnegative, vanish at zero and
one, and have the same isolated even atom as the prime-only source. Their
complete inclusive prefixes satisfy exactly

\[
T_c(k)=4\left\lfloor\frac{\max(k-1,0)}4\right\rfloor
 +1_{k\ge2}c,\qquad |T_c(k)-(k+1)|\le5.     \tag{9}
\]

Thus they satisfy the one-percent all-prefix target for every N>=499.
The q=2 odd prefix is T_c(k)-1_(k>=2)c; its discrepancy also has an O(1)
bound (at most five), and the even residue is exactly the isolated atom.
Accordingly the scalar/parity information is much better than the required
linear rate. The source drafts (9), the parity support property, and the
following exact additive obstruction.

For every N>4 divisible by four,

\[
\sum_{m=0}^Nw_c(m)w_c(N-m)=0.                \tag{10}
\]

Indeed two supported odd indices add to 2 modulo 4; one supported odd and
the even atom add to 3 modulo 4; and two even atoms add only to four. The
source packages (9),(10) into a counterexample beyond every proposed cutoff.

**The weights are not primeLogWeight. For example w_c(9)=4.** This is a
countermodel to an inference from coarse scalar/parity properties, not a
counterexample to Goldbach or to a theorem retaining the actual prime
weights. A modulus-four test immediately detects it: the residue-three
prefix has mass zero while its reduced model has mass (k+1)/2. Its
discrepancy is therefore exactly -(k+1)/2, also recorded in the new source.
This is a concrete test for any
proposed argument that silently promotes scalar control into progression
control or reflected overlap.

Adding q=4 would reject this particular countermodel, but would not by itself
prove the universal prime convolution bound. Further local congruence data,
growing-modulus distribution, or actual additive cancellation estimates must
be connected to the complete source integral with quantitative errors.

## 4. Remaining work and trust boundary

The new source contains exact reconstruction algebra, rational margin
calibration, conditional actual-prime consumers, and an artificial-weight
countermodel. It does not supply (5). The inherited Dusart input remains
external to Lean; actual frequency-envelope and model comparisons remain
formal hypotheses; finite coverage and accepted every-even positivity remain
open. The original bounded-Q two-sided norm obstruction is unchanged.

Static inspection reconciles the public declaration inventory, imports,
manifest fields, and blob bindings. Exact rational diagnostics check (8),
the rational margin boundaries, and finite countermodel cases. These checks
do not elaborate the proof drafts, which may need repair. No Lean/Lake
process, transitive axiom audit, merge, or Goldbach proof occurred. Keep
#259 and #257 open; PR #345 remains outside scope.
