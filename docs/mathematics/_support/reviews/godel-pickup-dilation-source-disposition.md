# Gödel chart dilation, actual Möbius pickup and sparse exclusion coverage

Local mathematical attribution: grwtsk contributors. Source proof candidates; independent finite checks are **not** Lean compilation, fresh kernel replay or a transitive axiom audit.

## Exact objects and what the construction does not claim

The arithmetic source is the existing, ordered, signed, off-diagonal pickup covariance

\[
\mathcal X(T)=\sum_{1\le m,n\le \lfloor e^T\rfloor\atop m\ne n}\mu(m)\mu(n)G_T(m,n),\qquad
G_T(m,n)=\int_0^T r_m(u)r_n(u)\,du,
\]

with \(r_n(u)=0\) for \(u<\log n\) and \(2(n^{-1/2}-e^{-u/2})\) for \(u\ge\log n\). The canonical RH-facing final arithmetic estimate remains an all-positive-rate upper bound of the COMPLETE signed regular covariance on the fixed dyadic grid. This work does **not** prove that estimate, a PNT-to-Möbius correlation theorem, or RH. Original Möbius signs, source cutoffs, square-energy diagonal, endpoint quarter-unit curvature allowance, and all missing signed regular terms are retained.

The *geometric* source is the actual Gödel Lorentzian metric

\[
g=a^2[-(dt+e^xdy)^2+dx^2+\tfrac12e^{2x}dy^2+dz^2],\qquad
h=g+u^\flat\otimes u^\flat.
\]

The previously written observer transport is the physical chart isometry \((t,x,y,z)\mapsto(t,x+s,e^{-s}y,z)\), preserving the actual observer spatial tensor and horizontal vorticity. Its coordinate-level Lean proofs do not establish Einstein-equation acceptance or a generic isometry between arithmetic coefficient spaces. At \(x=\log n\), selecting \(s=\log2\) gives the **literal chart identity** \(\log(2n)=\log n+\log2\). This is the new exact comparison of independently defined objects, not an identification of spacetime and number theory.

## New complete mathematical calculations

### 1. Causal scaling and full physical-time Gram

For every integer \(n\ge1\) and every real \(u\), checking both birth branches gives

\[
 r_{2n}(u+\log2)=2^{-1/2}r_n(u).
\]

The response \(r_{2n}\) is zero throughout \([0,\log2]\). For \(T\ge0\), split the ACTUAL interval at \(\log2\), translate the remaining variable, and use the pointwise identity twice:

\[
\begin{aligned}
G_{T+\log2}(2m,2n)
&=\int_{\log2}^{T+\log2}r_{2m}(u)r_{2n}(u)\,du\\
&=\int_0^T r_{2m}(v+\log2)r_{2n}(v+\log2)\,dv\\
&=\tfrac12 G_T(m,n).
\end{aligned}
\]

This is a source-exact equality; it depends neither on arithmetic cancellation nor on the Gödel positivity. Because \(\lfloor2e^T\rfloor\) has exactly \(\lfloor e^T\rfloor\) positive even source indices when divided by two, the EVEN–EVEN source subpacket of \(\mathcal X(T+\log2)\) is exactly

\[
\tfrac12\sum_{1\le m,n\le\lfloor e^T\rfloor\atop m\ne n,\ m,n\ \mathrm{odd}}
\mu(m)\mu(n)G_T(m,n).
\]

The odd–odd and mixed even–odd sectors of the complete covariance at the shifted horizon remain explicit; the preceding displayed identity does not estimate them.

### 2. What Möbius parity actually contributes

The source parity identity is \(\mu(2n)=-\mu(n)\) for odd \(n\), and \(\mu(2n)=0\) for even \(n\). Thus simultaneous doubling preserves the sign product for odd source indices; geometrical invariance gives no cancellation for that packet. In contrast, **one-sided doubling** has

\[
\mu(m)\mu(2m)=-\mathbf1_{m\,\mathrm{odd}}\mu(m)^2\le0.
\]

The actual \(G_T(m,2m)\) is nonnegative for \(T\ge0\), so every such signed source pair is nonpositive. Both orientations combined yield a genuine nonnegative credit

\[
C_2(T)=-2\sum_{1\le m\le\lfloor e^T\rfloor/2}\mu(m)\mu(2m)G_T(m,2m)\ge0.
\]

The original bound \(0\le G_T(m,2m)\le4T/(\sqrt2\,m)\) and \(|\mu|\le1\) give the **complete absolute price**

\[
0\le C_2(T)\le \frac{8T}{\sqrt2}\sum_{m\le\lfloor e^T\rfloor/2}\frac1m
\le \frac8{\sqrt2}T(1+T).
\]

This is polynomial. It cannot by itself cancel a hypothetical exponentially growing *complete* regular covariance. A negative subpacket may be removed for an upper-bound argument only while every complementary signed pair is retained.

### 3. The original additive exception mask does not cover dilation cheaply

The source's pre-existing mask is

\[
R_A(m)=\{m-2,\ldots,m+2\}\cap\mathbb N
\;\cup\;\{m+a:a\in A\}
\;\cup\;\{m\mathbin{\dot-}a:a\in A\},
\]

where natural-number subtraction is truncated. For any \(m\ge3\), the inclusion \(2m\in R_A(m)\) forces \(m\in A\): it cannot enter the five-neighbor interval or the backward-translation image, and entering the forward image requires offset \(a=m\). Consequently, if all pairs \((m,2m)\) with \(3\le m\le M\) are labeled exceptional under this unchanged mask, then \(|A|\ge M-2\). Taking \(M\asymp e^T\) destroys the sparse-family premise. This finite obstruction is not a disproof of RH; it rules out an unjustified application of the previously paid **additive** mask to all Gödel-aligned dilation pairs.

### 4. Source-constructed paid multiplicative extension

Define the actual symmetric neighbor relation

\[
D(m)=\{2m\}\cup\bigl(\{m/2\}\text{ if }2\mid m,\;\varnothing\text{ otherwise}\bigr),\quad
R_A^{\mathrm G}(m)=R_A(m)\cup D(m).
\]

For positive m,n, \(n\in D(m)\iff(n=2m\lor m=2n)\). Every genuine doubled pair (including its reversed orientation) belongs to the new mask. The total row degree obeys

\[
\lvert R_A^{\mathrm G}(m)\rvert\le2|A|+7.
\]

This differs from adding all source displacements to A: a dense family of different additive differences forms only a degree-two graph. The existing *weighted symmetric-mask* inequality applied to the ACTUAL causal Gram gives

\[
\boxed{\quad|\mathcal X^{\mathrm G}_{\mathrm{paid}}(T;A)|
\le 4T(1+T)(2|A|+7)\quad(T\ge0).\quad}
\]

Here \(\mathcal X^{\mathrm G}_{\mathrm{paid}}\) is the original fully ordered signed cross sum with exactly the pair predicate \(m\ne n\land n\in R_A^{\mathrm G}(m)\). The source is decomposed without modifying its coefficients:

\[
\boxed{\mathcal X(T)=\mathcal X^{\mathrm G}_{\mathrm{regular}}(T;A)+
\mathcal X^{\mathrm G}_{\mathrm{paid}}(T;A).}
\]

The same previously established comparison then gives

\[
\mathcal E(T)\le \mathcal X^{\mathrm G}_{\mathrm{regular}}(T;A)
+4T(1+T)(2|A|+7)+\tfrac14.
\]

For fixed A, the paid term is subexponential at every positive rate. A new conditional Lean consumer feeds an all-positive-rate upper bound for the complete signed regular term on the existing dyadic scales to the canonical RH return. **No such all-positive-rate arithmetic upper bound is constructed.**

## Independent hostile tests and precise remaining frontier

1. Gödel's x-shift is an isometry of the physical observer tensor but NOT an isometry of arbitrary Möbius coefficient observations. The causal Gram scales by 1/2, not by 1, and the prime-multiplicativity condition contains a nonunit branch.
2. The old additive paid mask needs exponentially many offsets to cover all doubled pairs; the new symmetric multiplicative mask has degree at most 2 more. A small *degree* is an upper bound on absolute exceptional work, not a proof that the source-selected complement cancels.
3. The genuine one-sided doubling packet is nonpositive but its whole contribution has only quadratic-size upper absolute mass in T. It cannot provide the missing regular-sector all-positive-rate estimate through magnitude alone.
4. For a growing prime-dilation family, an extra uniformity and degree bound is necessary; this formalization only pays the concrete doubling relation. It makes no claim that all automircron prime fibers or arbitrary mathematical exceptions belong to this new mask.
5. The Gödel vorticity norm is nonzero and invariant under the chart shift; this is *not* a source-specific spectral gap for the Möbius covariance or a coupling to the Riemann zeros.

The remaining mathematical obligation is exactly

\[
\forall\delta>0\ \exists C_\delta\ge0\ \forall j\in\mathbb N:\quad
\mathcal X^{\mathrm G}_{\mathrm{regular}}(j\log2;A)
\le C_\delta 2^{\delta j},
\]

for one fixed A (or a properly controlled family A(T) with its joint hypotheses), together with the source-specific proof that any additional arithmetic bad pairs to be discarded belong to the selected paid relation. The Gödel symmetry by itself supplies neither obligation.

## Source comparison, provenance and acceptance

Local original mathematical sources are the *unchanged* `MertensPrimitive`, `FiniteResponseSum`, `PickupSparseExceptionalCovariance`, `PickupSparseRegularDyadic`, `ParityMertensDyadicReconstruction`, `MobiusDilationPairSplit`, `GodelObserverMetricVorticity`, `GodelObserverRootTransport`, and `ExactRootAndTransportContract`. The prior physically rooted Gödel computation and its attribution are in `documentation/mathematics/_support/reviews/godel-observer-root-transport-2026-10-31.md` and its central Gödel 1949 literature ledger entry. No external result beyond these source constructions is being claimed as a newly accepted theorem.

The new Lean candidate modules are `GodelPickupDilationTransport.lean` and `GodelPickupDilationExclusions.lean` under the MSC2020 elementary arithmetic-function source tree. Source compilation, expected types, fresh kernel replay, full imported-closure checking and transitive axiom audit are **NOT_RUN**. The independent finite checks use exact set membership and rational signed sums, plus arbitrary-precision evaluation of the analytically derived source Gram; they cannot establish Lean acceptance, a global arithmetic estimate, or novelty. The new code contains no explicit `sorry`, research `axiom`, `native_decide` or proof oracle. Publication on main is separate from proof qualification.
