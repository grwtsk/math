# The real odd Weil negative index of each primitive Dirichlet source

By grwtsk contributors. 2026-11-14.

Written analytical source candidate for [math#1801](https://github.com/grwtsk/math/issues/1801)
at `grwtsk/math` baseline `ccf78022aa8be2d9bcf31485f3377821c41e4d18`.
Formalization, Lean elaboration, compilation, fresh kernel replay, transitive
axiom audit, and independent human analytical review are `NOT_RUN`. Novelty
is unassessed. The source concerns the real odd test domain in the existing
stage chains. The arithmetic sign at cofinal support radii remains open.

## 1. Original sources and statement

Fix a primitive Dirichlet character \(\chi\) of conductor \(q\ge1\), with
\(q=1\) denoting the zeta character. Write \(a\in\{0,1\}\) for its gamma
parity, \(E(f)=\|f\|_2^2\), \(C_f(r)=\int_{\mathbb R} f(t)f(t+r)\,dt\), and

\[
\begin{aligned}
 K_a(r)&=\frac{e^{-(a+1/2)r}}{1-e^{-2r}},\qquad
 \Gamma_a(f)=\int_0^\infty K_a(r)\,\|f(\cdot+r)-f\|_2^2\,dr,\\
 Q_{\chi,T}(f)&=\left[\log(q/\pi)+\psi(1/4+a/2)\right]E(f)+\Gamma_a(f)\\
 &\quad -2\sum_{2\le n<e^{2T}}\frac{\Lambda(n)}{\sqrt n}\,
               \Re\chi(n)\,C_f(\log n)
          -2\mathbf 1_{q=1}\left(\int_{\mathbb R} f(t)\sinh(t/2)\,dt\right)^2 .
\end{aligned}
\]

For \(q>1\), this is `primitiveArithmeticValue` on the real inclusion
`DirichletStageChain.liftReal`. In
`SourcePrimeCorrelation.primitive_hasSum_canonical_arithmetic`, the zero
divisor of \(\chi\) returns to the arithmetic form at \(\chi^{-1}\).
On real inputs the correlation is real and the two characters have the
same real weights and the same gamma parity. Thus the inverse convention
gives exactly the displayed form for \(\chi\). For \(q=1\), this is
`OddLiteralWindow.shiftedOddWeilEnergy T 0` on real odd inputs. To check the
pole coefficient, put \(M_\pm=\int f(t)e^{\pm t/2}\,dt\). Then
\(M_-=-M_+\) by oddness and \(M_+=\int f(t)\sinh(t/2)\,dt\). The two
actual pole orientations each contribute \(M_+M_-\).
The literal identity is `RealWeilSource.literalOdd_zeta_zeroSum`, using the upstream
`Zeta23.WeilEF.EF_lit_zetaZeroConfig` at
`anthropics/formal-math@16a5ce41304fcdaea4e0be7c132e1c361dc26da5`.
[Primitive source return](../WeilGammaPhysicalReturn.lean),
[literal zeta source return](../WeilZetaExplicitFormula.lean).

For a function supported almost everywhere in \([-T,T]\), increasing the
window leaves the value unchanged. Every added prime shift satisfies
\(r\ge2T\), and its correlation vanishes, including at the endpoint where
the overlap is a singleton. This defines a common \(Q_\chi\) on smooth compactly supported
real odd tests over all radii. [Primitive cutoff equality](../WeilConductorFrontier.lean),
[zeta cutoff equality](../WeilOddLiteralCofinal.lean).

Let \(Z_\chi\) be the actual distinct open-strip zeros in the coordinates
\(z=(\rho-1/2)/i\), with positive multiplicities \(m_z\). Take orbits using
the equivalence relation generated in \(\mathbb C\) by \(z\mapsto-z\) and
\(z\mapsto\overline z\). Count each orbit meeting \(Z_\chi\setminus\mathbb R\)
once. A given complex character may have only part of an orbit in its
divisor. The multiplicity sum of an orbit includes exactly its actual
divisor points. Then

\[
 \operatorname{ind}_{\mathbb R,-}(Q_\chi; C_c^\infty(\mathbb R,\mathbb R)_{\rm odd})
   =\#\{\text{distinct off-line orbits meeting }Z_\chi\}.
 \tag{1}
\]

The index is the supremum of dimensions of real subspaces on which the
form is strictly negative away from zero. Both sides of (1) may be infinite.
For every \(T>0\), the index on the full fixed-window real odd \(L^2\)
domain with \(\Gamma_a(f)<\infty\) equals the index on
\(C_c^\infty((-T,T),\mathbb R)_{\rm odd}\). The supremum of those
fixed-window indices therefore also equals (1).

## 2. Exact orbit contribution and the upper bound

Use \(F_f(z)=\int_{\mathbb R} f(t)e^{izt}\,dt\). For a real odd test,
\(F_f(-z)=-F_f(z)\) and \(F_f(\overline z)=-\overline{F_f(z)}\).
The autocorrelation transform at \(z\) is \(F_f(z)F_f(-z)\) by Fubini
on the compact supports. The two explicit formula returns in section 1
give exactly

\[
 Q_\chi(f)=\Re\sum_{z\in Z_\chi} m_z F_f(z)F_f(-z).
 \tag{2}
\]

In particular the sum uses the divisor of the individual character and
its analytic multiplicities. Integration by parts on the strip
\(|\Im z|\le1/2\) gives \(|F_f(z)|\le D_f/(1+|z|^2)\). The native
count with multiplicities up to height \(H\) is \(O_\chi(H(\log H+3))\)
for \(H\ge2\), also for the mod-one character. Summing dyadic height
annuli gives \(\sum_{z\in Z_\chi} m_z/(1+|z|^2)^2<\infty\), so (2) can
be grouped by orbit. [Primitive and zeta zero counts](../DirichletZeroCounting.lean).

Every real \(z\) contributes \(m_z|F_f(z)|^2\). On an off-real orbit
\(O\) with representative \(z_O\) and actual multiplicity sum \(M_O\),
the contribution is

\[
 -M_O\Re(F_f(z_O)^2)
 =M_O(\Im F_f(z_O))^2-M_O(\Re F_f(z_O))^2.
 \tag{3}
\]

The test symmetries give (3) for any subset of the orbit occurring in
the individual divisor. For a purely imaginary off-real
ordinate, \(F_f\) is real and the formula gives a single possible
negative direction. At \(z=0\), oddness gives \(F_f(0)=0\). If the
number of off-real orbits is finite, the map \(f\mapsto(\Re F_f(z_O))_O\)
is injective on any strictly negative subspace, since the form is
nonnegative in its kernel. This gives the upper bound. The infinite case
requires only the lower bound for arbitrarily many finite orbits.

## 3. A simultaneous negative subspace on a finite physical window

Choose \(k\ge1\) distinct off-real orbits meeting the divisor and one
representative \(z_j\) in the divisor from each. Real polynomial
interpolation at finitely many nodes \(z^2\) will be used twice. On a
set of distinct nodes closed under conjugation, prescribe values which
respect conjugation and are real at real nodes. The unique interpolating
polynomial of degree less than the number of nodes has real coefficients
because its coefficientwise conjugate interpolates the same data. Squaring
identifies exactly \(z\) and \(-z\), and conjugation of squared nodes
accounts for the rest of the orbit identification.

Take an even, real, smooth, compactly supported approximate identity and
choose one sufficiently narrow member \(\eta\) that its transform is
nonzero on the selected nodes and their symmetric copies. This is
possible since the transforms tend to one at each of these finitely many
points. Interpolate \(P(z_j^2)=1/F_\eta(z_j)\) and its conjugate data.
At a purely imaginary \(z_j\), the transform of the real even \(\eta\)
is real, so the prescription at the real node \(z_j^2\) is real. Then
\(b=P(-\partial_t^2)\eta\) is even, real, smooth and compactly supported,
and its transform \(B\) equals one on each selected orbit. Choose a
finite \(R\) so that the selected orbits are in \(|\Re z|\le R\) and
\(|B(z)|\le1/2\) for \(|\Re z|>R\), \(|\Im z|\le1/2\), by the strip
decay. The inner divisor is finite by the same count as in section 2.

For this larger finite set, choose another real, even smooth bump
\(\eta'\) whose transform is nonzero on every inner ordinate and its
symmetric copies. For each \(j\), prescribe the transform \(G_j\) to take
value one at \(z_j\), value zero on all other inner orbits, and extend
these values by the odd real transform symmetries. Construct it in the
form \(iz P_j(z^2)F_{\eta'}(z)\). At a nonzero node divide the prescribed
value by \(izF_{\eta'}(z)\) to obtain the interpolation datum. Under
negation the numerator and denominator both change sign, and under
conjugation they both go to their negative conjugates. At a purely
imaginary selected representative the datum is real. An inner real
nonzero ordinate has prescribed value zero and also gives real data.
At \(z=0\) the required transform value is automatically zero, with no
division. The inverse test is \(g_j=-\partial_t P_j(-\partial_t^2)\eta'\),
which is smooth, compactly supported, real and odd.

For an integer \(N\ge1\), let \(f_j=g_j*b^{*N}\). All these tests are
supported in a common finite window, with radius at most \(A+NS\)
where \(A\) and \(S\) bound the support radii of the \(g_j\) and \(b\).
Their transforms are \(G_j B^N\). For real coefficients \(c_j\), the
inner divisor contribution on \(f=\sum_j c_j f_j\) is exactly
\(-\sum_j M_{O_j}c_j^2\). For each \(j\) put
\(|G_j(z)|\le D_j/(1+|z|^2)\) on the strip. Cauchy–Schwarz bounds the
absolute outer contribution by

\[
 4^{-N}\left(\sum_j c_j^2\right)\left(\sum_j D_j^2\right)
       \sum_{z\in Z_\chi}\frac{m_z}{(1+|z|^2)^2} .
\]

Choose \(N\) so that the coefficient of \(\sum_j c_j^2\) is smaller
than \(\min_j M_{O_j}\). Evaluation at the selected representatives
shows the tests are linearly independent, and the full form is strictly
negative on their span away from zero. Admissibility at any covering
radius follows using the upper bound
\(\min(r^2\|f'\|_2^2,4\|f\|_2^2)\), which is integrable against \(K_a\)
near zero and infinity. This proves the lower bound in (1) using the
complete actual divisor in both the inner and outer terms. It extends
the single-orbit filtering argument in the compact-witness sources.
[Primitive compact filter](../WeilDirichletCompactFilterReturn.lean),
[zeta odd-transform criterion](../WeilZetaOddCriterion.lean).

## 4. Fixed-window odd form core and stage return

Fix \(T>0\). Start with a real odd \(L^2\) function supported almost
everywhere on \([-T,T]\) with finite \(\Gamma_a\). This is exactly the
literal zeta stage domain at parity zero, taking an odd measurable
representative. Reflection symmetrization and changing a function on
a null set preserve the source integrals. Plancherel and nonnegative
Tonelli give

\[
 \Gamma_a(f)=\frac1{2\pi}\int_{\mathbb R} B_a(\xi)|F_f(\xi)|^2\,d\xi,
 \qquad B_a(\xi)=\sum_{k\ge0}\frac{2\xi^2}{b_k(b_k^2+\xi^2)},
 \quad b_k=a+1/2+2k.
\]

Indeed the squared shift multiplier is \(2(1-\cos(r\xi))\). Expanding
\(K_a(r)\) as a positive exponential series and integrating each term
gives the stated \(B_a\). The series converges locally uniformly in
\(\xi\). The form norm \((E+\Gamma_a)^{1/2}\) is the Fourier \(L^2\)
norm with weight \(1+B_a\) and measure \(d\xi/(2\pi)\).

For \(1/2\le\lambda<1\), let \(D_\lambda f(t)=\lambda^{-1/2}f(t/\lambda)\).
It is odd and supported in \([-\lambda T,\lambda T]\). Its Fourier
transform is \(\sqrt\lambda F_f(\lambda\xi)\). Each summand gives
\(B_a(\xi/\lambda)\le\lambda^{-2}B_a(\xi)\), so the dilation is
uniformly bounded in the form norm. It converges strongly to the identity
first on continuous compactly supported frequency inputs by dominated
convergence, then on weighted \(L^2\) by their density and the uniform
bound. After each contraction, convolve with a real even nonnegative
smooth approximate identity of support radius strictly less than
\((1-\lambda)T\). Its Fourier multiplier is bounded by one and converges
pointwise to one as the radius decreases. For a sequence \(\lambda\to1\),
choose each radius to make the convolution error in the form norm tend
to zero. The resulting smooth tests are odd and supported strictly inside
\((-T,T)\). This specializes the established full form-core argument to
the actual stage domain. Applying real odd projection to the full core
also proves density because reflection and conjugation are isometries
for \(E+\Gamma_a\) and preserve interior support.
[Full form core, WGPC-v1-1](WeilGammaPhaseCoercivity.md).

Every prime term and the mass term are \(L^2\)-continuous, since
translation is unitary and the inventory is finite. Each zeta pole
moment is an \(L^2([-T,T])\)-continuous linear functional. The full
gamma term is continuous in the form norm. In particular any lower
bound \(Q_{\chi,T}(f)\ge -\delta E(f)\) on the fixed-window smooth odd
core holds on the full fixed-window odd domain, for any real \(\delta\).
With \(T=j+1\) and \(\delta=2^{-j}\), the zeta bound on this smooth
core is equivalent to `OddLiteralCofinal.StageLower j`, with both
original poles paid. The direct supplier in `CofinalStageSupplier`
can consume this equivalence. [Literal stage definition](../WeilOddLiteralCofinal.lean),
[direct stage supplier](../WeilCofinalStageSupplier.lean).

For the fixed-window index, approximate a basis of any finite negative
subspace in the full domain by smooth core vectors. Polarization gives
entrywise convergence of their finite real form matrices. On the unit
sphere of the coefficient space the original matrix is bounded above
by a strictly negative constant. The approximating matrices eventually
remain strictly negative, so their vectors are independent and give a
smooth negative subspace of the same dimension. The reverse bound is
inclusion. This argument also shows that the global index is the
supremum over integer radii, since each finite-dimensional smooth
subspace has one covering radius from the union of its basis supports.

## 5. Consequences and the remaining arithmetic obligation

The real odd index counts one per distinct orbit even when multiplicities
are greater than one. In particular a generic single off-line zeta
quartet in the signed divisor formula gives one negative direction on
this carrier. The full complex zeta form studied in WFDG-4 gives two
for such a quartet, counted by the separate pairs under its zero
involution. WFDG-4 uses a cyclic fixed bump and Laplace residues.
The lower bound here uses simultaneous finite real interpolation and a
common strip-decaying convolution. Both arguments use the full explicit
formula. A finite-index bound uniform in support would bound the
number of off-line orbits for that source. To force critical-line
zeros through this index criterion, the required bound is zero.
[Full complex zeta index, WFDG-4](../WeilFixedBumpNegativeDepth.md),
[conditional index consumer, math#1808](../WeilNegativeIndexReturn.lean).

The existing conductor-uniform bound at each fixed window depends on
the radius. An upper bound on the global count in (1) requires control
of the supremum of the window indices. In the other direction, a fixed
\(k\)-dimensional negative subspace has a strictly negative maximum on
its \(L^2\) unit sphere. Support invariance and \(2^{-j}\to0\) then give
at least \(k\) negative directions of \(Q_\chi+2^{-j}E\) at every sufficiently
large stage \(j\). The immediate falsifiable target for
the stage path is a lower bound on the entire smooth odd core at a new
covering radius, with its original von Mangoldt phases, gamma term and
both zeta poles where applicable. A finite list of such radii leaves
the cofinal supplier unresolved. [Fixed-window index bound](../WeilUniformConductorFixedWindowIndex.md),
[primitive stage-chain quantifiers](../WeilDirichletStageChain.lean).
