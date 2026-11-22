# The original native Gm integer slope and centered weighted-Mertens supplier

**Consumer:** grwtsk/math #1850 (RH-independent Jacobi -> native Gm), #1828 (one-sided analytic AND/OR target), and #1819 (source-prime readout).  
**Maintained isolated candidate:** [CenteredSlope.lean](CenteredSlope.lean), original Alpöge Lean v4.33.1 / Mathlib 0df444a360eaa60ab8c11dca51a86af692955474. Native definitions in tamnd/riemann-lean@af705e0d9a5904326eb0693310e36d9484df7f8f: Formalism/StatementOC.lean blob 12ab19c0176bd4135c2b23a7ee3ac22888df0122; Formalism/.../Analytic.lean blob 599699b5b35f6fb7bf2ab94f5f0c577b14f35ea1; ExplicitFormulaErrorOfHostConditions.lean blob ed60b4b997cd4703713660b185b9e43fd95559a1. Exact arithmetic native Gm normalization in [Normalization.md](Normalization.md). No final Alpöge RH/GRH theorem, Weil positivity or zeta-zero data is used.

## Theorem A: complete original integer first-difference identity

For the genuine original Level L, let
\[
c_L(m)=1+\sum_{\psi\in L.Nt}L.wt(\psi)\Re\psi.\chi(m),
\quad
A_L=1+\gamma_E+\sum_{\psi\in L.Nt}
L.wt(\psi)\Re[L'(1,\psi.\chi)/L(1,\psi.\chi)].
\]
Define the *source-weighted Mertens sum*
\[
B_L(n)=\sum_{1\le m\le n}\frac{\Lambda(m)c_L(m)}m,\quad n\ge1.
\]
The original literal Gm is
\[
G_m(x)=\sum_{m\le x}\Lambda(m)c_L(m)(x/m-1)-x\log x+A_Lx.
\]
At integers n,n+1, the new term m=n+1 has coefficient (n+1)/(n+1)-1=0. Every old term increases by \(\Lambda(m)c_L(m)/m\), and the affine A_L contribution increases by exactly A_L. Hence, with \(D(n)=(n+1)\log(n+1)-n\log n\),
\[
\boxed{G_m(n+1)-G_m(n)=B_L(n)+A_L-D(n).}\tag{S1}
\]
This holds for EVERY original Level, including exceptional ones, and every integer n≥1. The source is the actual signed primitive-character family, not a generic synthetic Gm.

The adjacent Lean candidate states signedSmoothedPrimeHead_integer_step and levelGm_integer_step. Both have proposed full proof bodies, but Lean elaboration, independent trusted kernel and transitive axioms remain **NOT_RUN**.

## Theorem B: the centered Mertens error is the true source Gm slope

For t≥1, \(f(t)=t\log t\) has increasing derivative \(f'(t)=\log t+1\). Integrating over [n,n+1] gives
\[
\log n+1\le D(n)\le\log(n+1)+1
\le \log n+1+\frac1n.
\]
Define \(r(n)=D(n)-(\log n+1)\), so \(0\le r(n)\le1/n\). Set
\[
\boxed{
E_L(n)=B_L(n)-\log n+(A_L-1)
=B_L(n)-\log n+\gamma_E+
\sum_{\psi\in L.Nt}L.wt(\psi)
\Re[L'(1,\psi.\chi)/L(1,\psi.\chi)].
}\tag{S2}
\]
Combining S1 and S2 gives the **exact all-integer identity**
\[
\boxed{G_m(n+1)-G_m(n)=E_L(n)-r(n),\quad 0\le r(n)\le1/n.}\tag{S3}
\]

This isolates the original arithmetic cancellation problem as a one-sided bound on a weighted Mertens error. No RH theorem is used. The supplied finite log-derivative/gamma certificates can enclose A_L at an individual n; they do **not** prove a rate of convergence of E_L(n) as n→∞.

## Theorem C: a source-specific sufficient all-scale analytic supplier

Fix an original Level L and \(\theta\in(0,1)\). Suppose for some N≥1 and \(0\le C<\theta\), the **new arithmetic supplier**
\[
\boxed{\forall n\ge N,\quad E_L(n)\le C n^{\theta-1}.}\tag{S4}
\]
Then S3 implies \(G_m(n+1)-G_m(n)\le Cn^{\theta-1}\) for every n≥N.

Since \(t^{\theta-1}\) decreases on t≥1,
\[
\sum_{n=N}^{X-1}n^{\theta-1}
\le N^{\theta-1}+\int_N^X t^{\theta-1}\,dt
=N^{\theta-1}+\frac{X^\theta-N^\theta}{\theta}.
\]
Thus for all X≥N,
\[
\boxed{G_m(X)\le (C/\theta)X^\theta+K_{L,N,\theta,C}}\tag{S5}
\]
with a genuine finite base constant
\(K=G_m(N)+CN^{\theta-1}-(C/\theta)N^\theta\).
Since C/θ<1, there is an integer \(N'\ge N\) such that
\[
\boxed{\forall X\in\mathbb N,\ X\ge N':\qquad
G_m(X)\le X^\theta-\frac1{4X}.}\tag{S6}
\]
The original curvature interpolation in PrimeJacobiGmDiscreteCurvature.md then promotes S6 to an all-real Gm power bound. Alpöge's *intermediate*, separately pinned Landau.zero_free_of_Chebyshev_growth consumes that bound and returns original Level.ZeroFreeAbove θ.

**This is a NEW PRECISE PROOF OBLIGATION, not a proof that S4 holds.** Proving S4 for θ arbitrarily close to 1/2 would be RH/GRH-hard. Neither finite experiments nor positivity of the source cyclic phase establishes it.

### What the existing Mathlib dependency actually provides

Pinned original Mathlib v4.33.1 has unconditional nonprincipal L(1) nonvanishing and Dirichlet's theorem on primes in arithmetic progressions, but this turn did NOT locate a pinned kernel-verified all-scale weighted Mertens power-saving estimate. The newer Mathlib WeakPNT source is not present at the project's pinned revision; it must not be silently imported as if available. The classical prime number theorem in arithmetic progressions supplies weaker error estimates, not automatically S4.

## Exact independent finite checks

The exact-Fraction checker [scripts/verify_cyclic_level_centered_slope.py](../../../../scripts/verify_cyclic_level_centered_slope.py) is a generated **conversation** result, not a committed source fixture. It tests source-exact algebra with rationally approximated prime-power logarithms and original cyclic phases for moduli 4, 5 and 15. It passed **768 integer slope identities** and **768 rational-interval bounds** of \(D(n)-(\log n+1)\in[0,1/n]\) at integers 1..256. All analytic constants A were fixed as explicitly synthetic rational values to test cancellation, **not claimed to be an evaluation of a native Level**.

This check cannot prove S4 at any unbounded range. The Lean source statements in CenteredSlope.lean are candidates, their transitive imported native normalization is also uncompiled. Mathematical source equality, analytic supplier, finite computational checks and kernel evidence remain separate.

## Next mathematical work

1. Supply S4 from a genuinely all-scale arithmetic/host estimate (or exhibit an obstruction), preferably via weighted character prime-gap/correlation analysis rather than a derived RH conclusion.
2. Prove the exact source character-family cardinality and original finite cutoff/slope identities in isolated Lean; independently verify the calculus inequality for D(n).
3. Consume the typed original EAtH/CoreAtH where appropriate, but do not replace them with a generic Prop, synthetic character family or assumed final RH theorem.
4. Audit the binary coset phase and the ramified primitive-character correction before deploying any finite-dimensional diffusion on E_L; diffusion cannot create power savings without a new analytic estimate.

The weighted Mertens representation and Abel summation are classical. Novel global mathematics is not asserted; source-specific formalization is the maintained advance.
